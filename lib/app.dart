// Standalone Music Player application shell (no onboarding, no extensions, no downloads).
// The library home lives in screens/library_home_screen.dart: a search top
// bar with Songs / Artists / Albums / Playlists tabs.
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/l10n/l10n.dart';
import 'package:toadplayer/l10n/supported_locales.dart';
import 'package:toadplayer/providers/equalizer_provider.dart';
import 'package:toadplayer/providers/settings_provider.dart';
import 'package:toadplayer/screens/library_home_screen.dart';
import 'package:toadplayer/theme/dynamic_color_wrapper.dart';
import 'package:toadplayer/widgets/android_keyboard_lifecycle.dart';
import 'package:toadplayer/widgets/app_snack_bar.dart';
import 'package:toadplayer/widgets/toadplayer_glass_preparation.dart';
import 'package:toadplayer/widgets/playback_feedback.dart';

final GlobalKey<NavigatorState> playerRootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'playerRootNavigator');

class ToadplayerPlayerApp extends ConsumerWidget {
  const ToadplayerPlayerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(equalizerProvider);
    final localeSetting = ref.watch(settingsProvider.select((s) => s.locale));
    final requestedLocale = localeFromSetting(localeSetting);

    return DynamicColorWrapper(
      builder: (theme, darkTheme, themeMode) {
        return MaterialApp(
          title: 'Toadplayer Music Player',
          debugShowCheckedModeBanner: false,
          navigatorKey: playerRootNavigatorKey,
          theme: theme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          locale: requestedLocale,
          supportedLocales: filteredSupportedLocales,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (locale, supportedLocales) =>
              resolveSupportedLocale(
                requestedLocale ?? locale,
                supportedLocales,
              ),
          builder: (context, child) => AppScaffoldMessenger(
            child: ToadplayerGlassPreparation(
              child: AndroidKeyboardLifecycle(
                child: PlaybackFeedback(
                  child: child ?? const SizedBox.shrink(),
                ),
              ),
            ),
          ),
          home: const StandalonePlayerHomeScreen(),
        );
      },
    );
  }
}
