// Standalone Music Player entrypoint for Toadplayer (isolated player slice).
import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toadplayer/app.dart';
import 'package:toadplayer/constants/app_info.dart';
import 'package:toadplayer/l10n/supported_locales.dart';
import 'package:toadplayer/models/theme_settings.dart';
import 'package:toadplayer/providers/runtime_profile_provider.dart';
import 'package:toadplayer/providers/lyrics_widget_sync_provider.dart';
import 'package:toadplayer/providers/settings_provider.dart';
import 'package:toadplayer/providers/theme_provider.dart';
import 'package:toadplayer/screens/now_playing_screen.dart';
import 'package:toadplayer/services/activity_attachment.dart';
import 'package:toadplayer/services/app_orientation.dart';
import 'package:toadplayer/services/audio_file_open_service.dart';
import 'package:toadplayer/services/background_favorites.dart';
import 'package:toadplayer/services/cover_cache_manager.dart';
import 'package:toadplayer/services/desktop_diagnostics.dart';
import 'package:toadplayer/services/music_player_service.dart';
import 'package:toadplayer/services/playback_notification.dart';
import 'package:toadplayer/services/player_widget_service.dart';
import 'package:toadplayer/utils/android_tv.dart';
import 'package:toadplayer/utils/desktop_platform.dart';
import 'package:toadplayer/utils/logger.dart';
import 'package:toadplayer/widgets/desktop/desktop_inspector.dart'
    show bindDesktopFullScreenLyrics;
import 'package:toadplayer/widgets/desktop/desktop_window.dart'
    show listenDesktopWindowFullScreen;

final _log = AppLogger('PlayerMain');

void main() {
  runZonedGuarded(
    () async {
      final binding = WidgetsFlutterBinding.ensureInitialized();
      final preferences = SharedPreferences.getInstance();
      if (Platform.isAndroid) {
        if (!isActivityAttached(binding)) {
          unawaited(_startBackgroundPlayback());
        }
        await waitForActivityAttachment(binding);
      }
      final dynamicColors = DynamicColors.request();
      final orientation = _initializeOrientation()..ignore();
      await DesktopDiagnostics.initialize();
      _registerPlayerLicenses();

      final prefs = await preferences;
      final bootstrapSettings = loadBootstrapSettings(prefs);
      musicPlayerRuntime.configure(bootstrapSettings);
      final bootstrapTheme = loadBootstrapThemeSettings(prefs);
      await orientation;
      await dynamicColors.settle(const Duration(milliseconds: 100));

      runApp(
        ProviderScope(
          overrides: [
            lowEndDeviceProvider.overrideWithValue(false),
            deviceSupportsBackdropBlurProvider.overrideWithValue(true),
            deviceSupportsLiquidGlassProvider.overrideWithValue(true),
            initialSettingsProvider.overrideWithValue(bootstrapSettings),
            initialSafAccessLostProvider.overrideWithValue(false),
            initialThemeSettingsProvider.overrideWithValue(bootstrapTheme),
            initialDynamicColorsProvider.overrideWithValue(dynamicColors),
          ],
          child: const StandalonePlayerBootstrap(child: ToadplayerPlayerApp()),
        ),
      );

      musicPlayerRuntime.prepareCovers();
      musicPlayerRuntime.startSongAnalysis();
      if (Platform.isAndroid || Platform.isIOS) {
        unawaited(
          PlayerWidgetService.instance.initialize((command) async {
            await restorePersistedPlaybackSession();
            final handler = await initMusicPlayer();
            if (command == 'open') {
              await WidgetsBinding.instance.endOfFrame;
              final navigator = playerRootNavigatorKey.currentState;
              if (navigator != null && handler.mediaItem.value != null) {
                unawaited(
                  navigator.push<void>(
                    NowPlayingRoute(child: const NowPlayingScreen()),
                  ),
                );
              }
            } else {
              await PlayerWidgetService.control(handler, command);
            }
          }),
        );
      }
    },
    (error, stack) {
      _log.e('Uncaught zone error: $error', error, stack);
    },
  );
}

void _registerPlayerLicenses() {
  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(
      const [AppInfo.appName],
      '${AppInfo.copyright}\n\n${AppInfo.license}\n\n'
      '${await rootBundle.loadString('LICENSE')}\n\n'
      '${await rootBundle.loadString('COPYING')}',
    );
    yield LicenseEntryWithLineBreaks(
      const ['Inter'],
      await rootBundle.loadString('assets/fonts/Inter-LICENSE.txt'),
    );
    yield LicenseEntryWithLineBreaks(
      const ['Google Sans Flex'],
      await rootBundle.loadString('assets/fonts/GoogleSansFlex-LICENSE.txt'),
    );
    if (Platform.isAndroid) {
      yield LicenseEntryWithLineBreaks(
        const ['libusb', 'libusb1-sys'],
        await rootBundle.loadString('assets/licenses/usb.txt'),
      );
      yield LicenseEntryWithLineBreaks(
        const ['Oboe'],
        await rootBundle.loadString('assets/licenses/oboe.txt'),
      );
      yield LicenseEntryWithLineBreaks(
        const ['WavPack'],
        await rootBundle.loadString('assets/licenses/wavpack.txt'),
      );
      yield LicenseEntryWithLineBreaks(
        const ['libFLAC'],
        await rootBundle.loadString('assets/licenses/flac.txt'),
      );
    }
  });
}

Future<void> _startBackgroundPlayback() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    if (isActivityAttached(WidgetsBinding.instance)) return;
    final settings = loadBootstrapSettings(prefs);
    final runtime = musicPlayerRuntime
      ..configure(settings)
      ..prepareCovers();
    final l10n = appLocalizationsFor(settings.locale);
    runtime.updateStrings(
      unknownTitle: l10n.unknownTitle,
      unknownArtist: l10n.unknownArtist,
    );
    final dependencies = runtime.dependencies;
    runtime.configureBackgroundNotification(
      presentation: PlaybackNotification(
        toadplayer: loadBootstrapThemeSettings(prefs).style == AppThemeStyle.toadplayer,
        favoriteLabel: l10n.trackOptionAddToLoved,
        unfavoriteLabel: l10n.trackOptionRemoveFromLoved,
        shuffleOnLabel: l10n.nowPlayingShuffleOn,
        shuffleOffLabel: l10n.nowPlayingPlayInOrder,
      ),
      favorites: BackgroundFavorites(
        library: dependencies.libraryDatabase,
        history: dependencies.historyDatabase,
        collections: dependencies.collectionsDatabase,
        covers: dependencies.coverStore,
      ),
    );
    await runtime.restoreSession();
    await runtime.initialize();
  } catch (error, stack) {
    _log.e('Failed to start background playback', error, stack);
  }
}

Future<void> _initializeOrientation() async {
  await initializeAndroidTv();
  if (Platform.isAndroid && !isAndroidTv) return;
  await setAppOrientation();
}

class StandalonePlayerBootstrap extends ConsumerStatefulWidget {
  const StandalonePlayerBootstrap({super.key, required this.child});
  final Widget child;

  @override
  ConsumerState<StandalonePlayerBootstrap> createState() =>
      _StandalonePlayerBootstrapState();
}

class _StandalonePlayerBootstrapState
    extends ConsumerState<StandalonePlayerBootstrap> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;
      if (isDesktopPlatform) {
        listenDesktopWindowFullScreen();
        bindDesktopFullScreenLyrics();
      }
      await CoverCacheManager.initialize();
      CoverCacheManager.scheduleMaintenance();
      await AudioFileOpenService.instance.initialize();
      await restorePersistedPlaybackSession();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Keep the launcher widgets' lyric line following playback for the
    // whole session; the provider no-ops on desktop.
    ref.watch(widgetLyricSyncProvider);
    return widget.child;
  }
}
