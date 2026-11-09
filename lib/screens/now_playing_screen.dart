import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:toadplayer/controllers/clickable_metadata.dart';
import 'package:toadplayer/controllers/player_track_navigation.dart';
import 'package:toadplayer/controllers/player_metadata_controller.dart';
import 'package:toadplayer/l10n/l10n.dart';
import 'package:toadplayer/providers/library_collections_provider.dart';
import 'package:toadplayer/providers/lyrics_translation_provider.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/providers/settings_provider.dart';
import 'package:toadplayer/routes/now_playing_route.dart';
import 'package:toadplayer/screens/equalizer_screen.dart';
import 'package:toadplayer/screens/lyrics_share_screen.dart';
import 'package:toadplayer/theme/toadplayer_theme.dart';
import 'package:toadplayer/theme/player_artwork_theme.dart';
import 'package:toadplayer/utils/file_access.dart';
import 'package:toadplayer/utils/lyrics_parser.dart';
import 'package:toadplayer/utils/playback_seek_preview.dart';
import 'package:toadplayer/widgets/app_bottom_sheet.dart';
import 'package:toadplayer/widgets/app_snack_bar.dart';
import 'package:toadplayer/widgets/app_icon.dart';
import 'package:toadplayer/widgets/app_icon_button.dart';
import 'package:toadplayer/widgets/expressive_icon_button.dart';
import 'package:toadplayer/widgets/audio_output_button.dart';
import 'package:toadplayer/widgets/desktop/desktop_commands.dart'
    show DesktopCommand, desktopTooltip;
import 'package:toadplayer/widgets/desktop/desktop_inspector.dart';
import 'package:toadplayer/widgets/link/link_actions.dart';
import 'package:toadplayer/widgets/network_offline_actions.dart';
import 'package:toadplayer/widgets/link/link_devices_sheet.dart';
import 'package:toadplayer/widgets/lyrics_options_button.dart';
import 'package:toadplayer/widgets/lyrics_screen_awake.dart';
import 'package:toadplayer/widgets/player_artwork.dart';
import 'package:toadplayer/widgets/player_gesture_regions.dart';
import 'package:toadplayer/widgets/player_playback_controls.dart';
import 'package:toadplayer/widgets/player_queue_sheet.dart';
import 'package:toadplayer/widgets/player_details_sheet.dart';
import 'package:toadplayer/widgets/material_player_backdrop.dart';
import 'package:toadplayer/widgets/material_player_layout.dart';
import 'package:toadplayer/widgets/toadplayer_player_layout.dart';
import 'package:toadplayer/widgets/player_lyrics_controls.dart';
import 'package:toadplayer/widgets/player_lyrics_section.dart';
import 'package:toadplayer/widgets/player_track_swipe.dart';
import 'package:toadplayer/widgets/playlist_picker_sheet.dart';
import 'package:toadplayer/widgets/settings_group.dart';
import 'package:toadplayer/widgets/sleep_timer_sheet.dart';
import 'package:toadplayer/widgets/toadplayer_player_background.dart';
import 'package:toadplayer/widgets/toadplayer_artwork_contrast.dart';
import 'package:toadplayer/widgets/toadplayer_player_actions_sheet.dart';
import 'package:toadplayer/widgets/toadplayer_context_menu.dart';
import 'package:toadplayer/widgets/toadplayer_player_artwork.dart';
import 'package:toadplayer/providers/player_motion_artwork_provider.dart';

export 'package:toadplayer/routes/now_playing_route.dart';

/// Portrait's "Playing on" row, kept while empty.
const _playingOnRowHeight = 36.0;

/// Screens shorter than this keep Toadplayer's volume row clear by leaving the
/// empty row out; its cover and controls need the height.
const _toadplayerPlayingOnMinScreenHeight = 720.0;

/// What Toadplayer holds back above its volume row, so the toolbar reaches
/// Material's height while the track header stays level with Material's.
const _toadplayerControlsHeadroom = 20.0;

/// How much of an iPhone's home indicator inset stays under that row. The
/// indicator sits in the screen's bottom 13pt, and the label's text ends 8pt
/// above the row's bottom, so it still clears the indicator.
const _homeIndicatorBelowRow = 12.0;

/// AppBar wrapper that fades with the route transition (see contentOpacity
/// in [_NowPlayingScreenState.build]).
class _FadingAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Animation<double> opacity;
  final AppBar child;

  /// Material's immersive lyrics fade the bar's buttons away too.
  final bool hidden;

  const _FadingAppBar({
    required this.opacity,
    required this.child,
    this.hidden = false,
  });

  @override
  Size get preferredSize => child.preferredSize;

  @override
  Widget build(BuildContext context) => FadeTransition(
    opacity: opacity,
    child: PlayerLyricsControlsVisibility(hidden: hidden, child: child),
  );
}

class NowPlayingScreen extends ConsumerStatefulWidget {
  const NowPlayingScreen({
    super.key,
    this.metadataControllerFactory,
    this.initialPage = 0,
    this.embedded = false,
  });

  final PlayerMetadataController Function()? metadataControllerFactory;

  /// The page shown first: 0 is the player, 1 the lyrics and 2 Up Next
  /// (Toadplayer only).
  final int initialPage;

  /// Shown in the desktop content pane rather than as a route. Minimizing
  /// returns to the content, and lyrics and Up Next open in the desktop
  /// inspector beside the player instead of replacing it.
  final bool embedded;

  @override
  ConsumerState<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends ConsumerState<NowPlayingScreen> {
  ProviderSubscription<AsyncValue<MediaItem?>>? _mediaItemSub;
  ProviderSubscription<bool>? _lyricsPlayingSub;
  ProviderSubscription<bool>? _lyricsAutoHideSub;
  late final _trackMetadata =
      widget.metadataControllerFactory?.call() ?? PlayerMetadataController();
  late final LyricsTranslationController _lyricsTranslation;
  late int _currentPage = widget.initialPage;
  bool _landscape = false;
  bool _queueSheetShowing = false;
  String? _measuredMotionSource;
  double? _motionAspectRatio;
  String? _failedMotionSource;
  bool _lyricsControlsHidden = false;
  bool _lyricsOptionsOpen = false;
  bool _audioOutputOpen = false;
  bool _sharingLyrics = false;
  double _lyricsScrollDistance = 0;
  Timer? _lyricsIdleTimer;
  final _lyricsPointers = <int, Offset>{};
  bool _lyricsPointerMoved = false;
  // Feature: a single tap on the cover opens the lyrics, and three seconds
  // later they fill the screen (the controls fade like immersive lyrics).
  bool _lyricsForceFullscreen = false;
  Timer? _lyricsFullscreenTimer;
  // Features: a double-tap on the cover (or the auto-hide setting) hides the
  // player's chrome, keeping the cover and the timeline (wave bar) visible.
  bool _playerUiHidden = false;
  Timer? _playerUiIdleTimer;
  // Skipping, seeking or opening the queue from the compact player keeps it
  // compact; only a touch elsewhere restores the full player.
  bool _compactPlayerTouched = false;
  final _artworkHeaderKey = GlobalKey();
  final _artworkControlsKey = GlobalKey();
  final _artworkVolumeKey = GlobalKey();
  final _expandedArtworkKey = GlobalKey();
  final _compactArtworkKey = GlobalKey();
  final _motionArtworkKey = GlobalKey();
  final _artworkForeground = ValueNotifier<Map<String, Color>>({});
  final _seekPreview = PlaybackSeekPreview();
  NowPlayingRoute? _artworkRoute;

  @override
  void initState() {
    super.initState();
    _lyricsTranslation = ref.read(lyricsTranslationProvider.notifier);
    if (widget.embedded) desktopInspectorPanel.addListener(_onInspectorChanged);
    _mediaItemSub = ref.listenManual<AsyncValue<MediaItem?>>(
      currentMediaItemProvider,
      (previous, next) {
        if (previous?.value?.id != next.value?.id) _seekPreview.reset();
        unawaited(
          _trackMetadata.load(
            next.value,
            inspectUnresolvedContentUri: _currentPage == 1,
          ),
        );
      },
    );
    _lyricsPlayingSub = ref.listenManual<bool>(playbackPlayingProvider, (
      previous,
      playing,
    ) {
      if (!playing && _lyricsControlsHidden) {
        setState(() => _lyricsControlsHidden = false);
      }
      if (!playing && _playerUiHidden) {
        setState(() => _playerUiHidden = false);
      }
      if (!playing && _lyricsForceFullscreen) {
        setState(() => _lyricsForceFullscreen = false);
      }
      if (playing) {
        _scheduleLyricsControlsHide();
        _schedulePlayerUiAutoHide();
      } else {
        _playerUiIdleTimer?.cancel();
      }
    });
    _lyricsAutoHideSub = ref.listenManual<bool>(
      settingsProvider.select((settings) => settings.autoHideLyricsControls),
      (_, enabled) {
        if (!enabled) {
          _lyricsPointers.clear();
          _lyricsScrollDistance = 0;
          if (_lyricsControlsHidden) {
            setState(() => _lyricsControlsHidden = false);
          }
        }
        _scheduleLyricsControlsHide();
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      unawaited(
        _trackMetadata.load(
          ref.read(currentMediaItemProvider).value,
          inspectUnresolvedContentUri: _currentPage == 1,
        ),
      );
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final size = MediaQuery.sizeOf(context);
    _landscape = context.isToadplayer && size.width > size.height;
    if (!_lyricsAutoHideLayout || MediaQuery.accessibleNavigationOf(context)) {
      _lyricsControlsHidden = false;
    }
    _scheduleLyricsControlsHide();
  }

  void _onInspectorChanged() {
    if (mounted) setState(() {});
  }

  /// Whether the lyrics (1) or Up Next (2) toggle shows as selected. The
  /// embedded player shows them in the desktop inspector instead.
  bool _showsPage(int page) => widget.embedded
      ? desktopInspectorPanel.value ==
            (page == 1
                ? DesktopInspectorPanel.lyrics
                : DesktopInspectorPanel.upNext)
      : _currentPage == page;

  /// Opens lyrics (1) or Up Next (2) in the desktop inspector when embedded.
  /// Returns false when the player should switch pages itself.
  bool _toggleInspector(int page) {
    if (!widget.embedded) return false;
    if (page == 1 || page == 2) {
      toggleDesktopInspector(
        page == 1 ? DesktopInspectorPanel.lyrics : DesktopInspectorPanel.upNext,
      );
    }
    return true;
  }

  String _minimizeTooltip(BuildContext context) => desktopTooltip(
    context,
    context.l10n.nowPlayingMinimize,
    DesktopCommand.dismiss,
  );

  void _minimize() {
    if (widget.embedded) {
      desktopNowPlayingOpen.value = false;
    } else {
      unawaited(Navigator.of(context).maybePop());
    }
  }

  @override
  void dispose() {
    if (widget.embedded) {
      desktopInspectorPanel.removeListener(_onInspectorChanged);
    }
    _artworkRoute?.readArtwork = null;
    _lyricsIdleTimer?.cancel();
    _lyricsFullscreenTimer?.cancel();
    _playerUiIdleTimer?.cancel();
    _mediaItemSub?.close();
    _lyricsPlayingSub?.close();
    _lyricsAutoHideSub?.close();
    _lyricsTranslation.cancel(owner: this);
    _trackMetadata.dispose();
    _artworkForeground.dispose();
    _seekPreview.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!ref.watch(playerUiEnabledProvider)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && ModalRoute.of(context)?.isCurrent == true) {
          Navigator.of(context).maybePop();
        }
      });
      return const SizedBox.shrink();
    }
    final mediaItem = ref.watch(currentMediaItemProvider).value;
    final toadplayer = context.isToadplayer;
    final fullScreenCover = ref.watch(
      settingsProvider.select(
        (s) => s.playerCoverStyleFor(toadplayer: toadplayer) == 'fullscreen',
      ),
    );
    return LyricsScreenAwake(
      visible: _currentPage == 1 && mediaItem != null,
      child: toadplayer
          ? _buildPlayer(context, mediaItem, fullScreenCover: fullScreenCover)
          // Material takes the track's artwork scheme. The providers it needs
          // are read above, so the scoped builder reads none.
          : PlayerArtworkTheme(
              artUri: mediaItem?.artUri?.toString(),
              child: Builder(
                builder: (context) => _buildPlayer(
                  context,
                  mediaItem,
                  fullScreenCover: fullScreenCover,
                ),
              ),
            ),
    );
  }

  Widget _buildPlayer(
    BuildContext context,
    MediaItem? mediaItem, {
    required bool fullScreenCover,
  }) {
    final toadplayer = context.isToadplayer;
    final colorScheme = toadplayer
        ? ToadplayerTheme.fromContext(
            context,
            brightness: Brightness.dark,
          ).colorScheme
        : Theme.of(context).colorScheme;

    if (mediaItem == null) {
      return Scaffold(
        appBar: AppBar(
          leading: AppIconButton(
            tooltip: _minimizeTooltip(context),
            icon: const AppIcon(Icons.keyboard_arrow_down),
            onPressed: _minimize,
          ),
        ),
        body: Center(child: Text(context.l10n.nowPlayingNothingPlaying)),
      );
    }

    final source = mediaItem.extras?['source']?.toString() ?? '';
    final motionState =
        toadplayer &&
            ref.watch(settingsProvider.select((s) => s.motionArtworkEnabled)) &&
            !MediaQuery.disableAnimationsOf(context)
        ? ref.watch(
            playerMotionArtworkProvider((
              album: mediaItem.album ?? '',
              artist: mediaItem.artist ?? '',
            )),
          )
        : null;
    final resolvedMotion = motionState?.value;
    final motionArtwork = resolvedMotion?.source == _failedMotionSource
        ? null
        : resolvedMotion;
    final motionRatio =
        motionArtwork?.aspectRatio ??
        (_measuredMotionSource == motionArtwork?.source
            ? _motionAspectRatio
            : null);
    final squareArtwork =
        motionArtwork == null || (motionRatio != null && motionRatio >= 0.95);
    // Motion artwork is always full-bleed in Toadplayer; still covers follow the
    // cover style setting through the same layout, as a square video would.
    final fullBleed = toadplayer && (motionArtwork != null || fullScreenCover);
    final screen = MediaQuery.sizeOf(context);
    // A still cover is cropped at the sides to reach down to the title, as
    // in the Material full-screen style; landscape keeps the square card.
    final stillFullBleed = fullBleed && motionArtwork == null;
    final artworkRatio = stillFullBleed
        ? _landscape || screen.height <= 0
              ? 1.0
              : (screen.width / (screen.height * 0.56)).clamp(0.5, 1.0)
        : motionRatio;
    final materialBackdrop = !toadplayer && fullScreenCover;
    // Two-pane landscape keeps its side-by-side cover over the blurred surface.
    final materialFullScreen =
        materialBackdrop &&
        MediaQuery.orientationOf(context) == Orientation.portrait;
    final overCover = materialFullScreen && _currentPage != 1;
    // Portrait keeps the "Playing on" row while empty, so the controls stay
    // put when a computer takes over playback. On an iPhone the row reaches
    // into the home indicator's inset rather than stacking a second empty
    // band on top of it.
    final reservesPlayingOnRow =
        MediaQuery.orientationOf(context) == Orientation.portrait &&
        screen.height >= (toadplayer ? _toadplayerPlayingOnMinScreenHeight : 640);
    final bottomInset = MediaQuery.paddingOf(context).bottom;
    final homeIndicatorBelowRow =
        reservesPlayingOnRow && Theme.of(context).platform == TargetPlatform.iOS
        ? bottomInset.clamp(0.0, _homeIndicatorBelowRow)
        : null;
    if (!fullBleed && _artworkForeground.value.isNotEmpty) {
      _artworkForeground.value = {};
    }
    Widget artwork() => ToadplayerPlayerArtwork(
      mediaItem: mediaItem,
      videoUrl: motionArtwork?.source,
      resolvingVideo: motionState?.isLoading == true,
      onAspectRatioChanged: (ratio) {
        if (!mounted ||
            (_measuredMotionSource == motionArtwork?.source &&
                _motionAspectRatio == ratio)) {
          return;
        }
        setState(() {
          _measuredMotionSource = motionArtwork?.source;
          _motionAspectRatio = ratio;
        });
      },
      onError: () {
        if (mounted) {
          setState(() => _failedMotionSource = motionArtwork?.source);
        }
      },
    );

    // The Toadplayer route moves the entire player together. A second,
    // delayed content fade would make dismissal appear to pause partway down.
    final route = ModalRoute.of(context);
    final routeAnimation = route?.animation ?? kAlwaysCompleteAnimation;
    if (_artworkRoute != route) {
      _artworkRoute?.readArtwork = null;
      _artworkRoute = null;
    }
    if (toadplayer && route is NowPlayingRoute) {
      _artworkRoute = route;
      route.readArtwork = () {
        final key = _landscape
            ? _expandedArtworkKey
            : _currentPage != 0
            ? _compactArtworkKey
            : fullBleed
            ? _motionArtworkKey
            : _expandedArtworkKey;
        final box = key.currentContext?.findRenderObject();
        if (box is! RenderBox || !box.attached || !box.hasSize) return null;
        final overlay = route.navigator?.overlay?.context.findRenderObject();
        return (
          bounds: MatrixUtils.transformRect(
            box.getTransformTo(overlay),
            Offset.zero & box.size,
          ),
          fullBleed: key == _motionArtworkKey,
          child: Theme(
            data: ToadplayerTheme.fromContext(context, brightness: Brightness.dark),
            child: key == _compactArtworkKey
                ? PlayerArtwork(
                    artUri: mediaItem.artUri?.toString(),
                    colorScheme: colorScheme,
                    cacheWidth: PlayerArtwork.transitionCacheWidth(context),
                  )
                : artwork(),
          ),
        );
      };
    }
    final contentOpacity = toadplayer
        ? kAlwaysCompleteAnimation
        : routeAnimation.drive(
            CurveTween(curve: const Interval(0.4, 1.0, curve: Curves.easeOut)),
          );

    // The embedded desktop player keeps a toolbar for its minimize button,
    // which a route reaches by swiping down instead.
    final double? toadplayerToolbarHeight = !toadplayer
        ? null
        : widget.embedded
        ? 48
        : MediaQuery.orientationOf(context) == Orientation.landscape
        ? 0
        : 36;
    final materialLandscapeArtwork =
        !toadplayer &&
        !widget.embedded &&
        MediaQuery.orientationOf(context) == Orientation.landscape &&
        ref.watch(settingsProvider.select((s) => s.landscapeLyricsArtwork));
    final player = Scaffold(
      extendBodyBehindAppBar: materialLandscapeArtwork,
      backgroundColor: toadplayer || materialBackdrop
          ? Colors.transparent
          : colorScheme.surface,
      appBar: _FadingAppBar(
        opacity: contentOpacity,
        hidden: !toadplayer && _lyricsImmersive,
        child: AppBar(
          backgroundColor: toadplayer || materialBackdrop
              ? Colors.transparent
              : colorScheme.surface,
          foregroundColor: overCover ? Colors.white : colorScheme.onSurface,
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle: toadplayer || overCover
              ? SystemUiOverlayStyle.light
              : null,
          toolbarHeight: toadplayerToolbarHeight ?? kToolbarHeight,
          automaticallyImplyLeading: false,
          title: toadplayer
              ? MediaQuery.orientationOf(context) == Orientation.landscape ||
                        widget.embedded
                    ? null
                    : PlayerLyricsControlsVisibility(
                        hidden: _playerUiHidden,
                        child: IconButton(
                          tooltip: context.l10n.nowPlayingMinimize,
                          onPressed: _minimize,
                          icon: Container(
                            width: 36,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.4),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      )
              : Text(
                  context.l10n.nowPlayingTitle,
                  // The app theme's title style carries its own colour.
                  style: overCover
                      ? const TextStyle(color: Colors.white)
                      : null,
                ),
          centerTitle: true,
          leading: toadplayer && !widget.embedded
              ? null
              : AppIconButton(
                  key: const ValueKey('now-playing-minimize'),
                  tooltip: _minimizeTooltip(context),
                  color: overCover || toadplayer ? Colors.white : null,
                  icon: const AppIcon(Icons.keyboard_arrow_down),
                  onPressed: _minimize,
                ),
          actions: toadplayer
              ? null
              : [
                  LinkDevicesButton(color: overCover ? Colors.white : null),
                  AppIconButton(
                    tooltip: context.l10n.nowPlayingUpNext,
                    color: overCover ? Colors.white : null,
                    icon: const AppIcon(Icons.queue_music),
                    onPressed: () => _showQueueSheet(context, colorScheme),
                  ),
                  AppIconButton(
                    color: overCover ? Colors.white : null,
                    tooltip: MaterialLocalizations.of(
                      context,
                    ).moreButtonTooltip,
                    icon: const AppIcon(Icons.more_vert),
                    onPressed: () => _showMoreActions(
                      context: context,
                      mediaItem: mediaItem,
                      source: source,
                      colorScheme: colorScheme,
                    ),
                  ),
                ],
        ),
      ),
      body: FadeTransition(
        opacity: contentOpacity,
        child: SafeArea(
          top: !materialLandscapeArtwork,
          bottom: homeIndicatorBelowRow == null,
          child: _trackSwipeScope(
            Column(
            children: [
              if (materialLandscapeArtwork) ...[
                SizedBox(height: MediaQuery.viewPaddingOf(context).top),
                PlayerLyricsControlsCollapse(
                  key: const ValueKey('material-landscape-toolbar-space'),
                  hidden: _lyricsImmersive,
                  child: const SizedBox(height: kToolbarHeight),
                ),
              ],
              Expanded(
                child: toadplayer
                    ? NotificationListener<ScrollUpdateNotification>(
                        onNotification: _onLyricsScroll,
                        child: ToadplayerPlayerLayout(
                          mediaItem: mediaItem,
                          metadata: _trackMetadata,
                          seekPreview: _seekPreview,
                          colorScheme: colorScheme,
                          page: _currentPage,
                          motionArtwork: artwork(),
                          artworkAspectRatio: artworkRatio,
                          controlsHeadroom: reservesPlayingOnRow
                              ? _toadplayerControlsHeadroom
                              : 0,
                          insetArtwork: !fullBleed,
                          artworkTopInset:
                              MediaQuery.paddingOf(context).top +
                              (widget.embedded ? toadplayerToolbarHeight! : 36),
                          artworkKeys: (
                            header: _artworkHeaderKey,
                            controls: _artworkControlsKey,
                            volume: _artworkVolumeKey,
                            expanded: _expandedArtworkKey,
                            compact: _compactArtworkKey,
                          ),
                          artworkForeground: _artworkForeground,
                          lyricsControlsHidden: _lyricsControlsHidden,
                          lyricsOptionsOpen: _lyricsOptionsOpen,
                          uiHidden: _playerUiHidden,
                          onArtworkTap: _onArtworkTap,
                          onArtworkDoubleTap: _onArtworkDoubleTap,
                          lyricsBuilder: (showOptions) => _lyricsSection(
                            colorScheme,
                            isActive: _currentPage == 1,
                            showOptions: showOptions,
                          ),
                          lyricsOptions: _lyricsOptionsButton(colorScheme),
                          onPageChanged: _setToadplayerPage,
                          onTrackNavigation: _showTrackNavigationMenu,
                          onMoreActions: (buttonContext, item, anchor) =>
                              _showMoreActions(
                                context: buttonContext,
                                mediaItem: item,
                                source:
                                    item.extras?['source']?.toString() ?? '',
                                colorScheme: colorScheme,
                                anchor: anchor,
                              ),
                        ),
                      )
                    : MaterialPlayerLayout(
                        mediaItem: mediaItem,
                        metadata: _trackMetadata,
                        seekPreview: _seekPreview,
                        colorScheme: colorScheme,
                        showLyrics: _currentPage == 1,
                        immersive: _lyricsImmersive,
                        compactPlayer: ref.watch(
                          settingsProvider.select((s) => s.compactPlayer),
                        ),
                        onCompactPlayerTouch: () =>
                            _compactPlayerTouched = true,
                        fullScreenArtwork: materialFullScreen,
                        landscapeLyricsArtwork: ref.watch(
                          settingsProvider.select(
                            (s) => s.landscapeLyricsArtwork,
                          ),
                        ),
                        lyricsBuilder: (_) =>
                            _lyricsSection(colorScheme, isActive: true),
                        onOpenQueue: () =>
                            _showQueueSheet(context, colorScheme),
                      ),
              ),
              _autoHidingLyricsControls(
                PlayerTrackSwipeRegion(
                  child: PlayerQueueSwipeRegion(
                    onOpenQueue: () => _showQueueSheet(context, colorScheme),
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (toadplayer && !_landscape)
                        FractionallySizedBox(
                          widthFactor: 0.72,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                tooltip: _currentPage == 1
                                    ? context.l10n.nowPlayingTabPlayer
                                    : context.l10n.nowPlayingTabLyrics,
                                isSelected: _showsPage(1),
                                color: Colors.white,
                                style: IconButton.styleFrom(
                                  backgroundColor: _showsPage(1)
                                      ? Colors.white.withValues(alpha: 0.16)
                                      : Colors.transparent,
                                ),
                                icon: const AppIcon(
                                  CupertinoIcons.quote_bubble,
                                ),
                                onPressed: _toggleToadplayerLyrics,
                              ),
                              AudioOutputButton(
                                color: Colors.white,
                                onPickerChanged: (open) {
                                  if (!mounted) return;
                                  setState(() => _audioOutputOpen = open);
                                  _scheduleLyricsControlsHide();
                                },
                              ),
                              // The row spreads its buttons apart, so the
                              // Devices entry only takes a slot when paired.
                              if (ref.watch(linkPhoneClientProvider) != null)
                                const LinkDevicesButton(color: Colors.white),
                              IconButton(
                                tooltip: context.l10n.nowPlayingUpNext,
                                color: Colors.white,
                                isSelected: _showsPage(2),
                                style: IconButton.styleFrom(
                                  backgroundColor: _showsPage(2)
                                      ? Colors.white.withValues(alpha: 0.16)
                                      : Colors.transparent,
                                ),
                                icon: const AppIcon(CupertinoIcons.list_bullet),
                                onPressed: () =>
                                    _setToadplayerPage(_currentPage == 2 ? 0 : 2),
                              ),
                            ],
                          ),
                        )
                      else if (!toadplayer)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Filled pills like the shuffle and repeat
                              // segments between them.
                              ExpressiveIconButton(
                                key: const ValueKey('material-lyrics-toggle'),
                                tooltip: _currentPage == 1
                                    ? context.l10n.nowPlayingTabPlayer
                                    : context.l10n.nowPlayingTabLyrics,
                                selected: _showsPage(1),
                                width: PlayerPlaybackModeToolbar.segmentWidth,
                                foregroundColor: _showsPage(1)
                                    ? colorScheme.onPrimaryContainer
                                    : colorScheme.onSurfaceVariant,
                                backgroundColor: _showsPage(1)
                                    ? colorScheme.primaryContainer
                                    : colorScheme.surfaceContainerHigh,
                                icon: const AppIcon(Icons.lyrics_outlined),
                                onPressed: _toggleMaterialLyrics,
                              ),
                              PlayerPlaybackModeToolbar(
                                colorScheme: colorScheme,
                              ),
                              AudioOutputButton(
                                color: colorScheme.onSurfaceVariant,
                                backgroundColor:
                                    colorScheme.surfaceContainerHigh,
                                width: PlayerPlaybackModeToolbar.segmentWidth,
                              ),
                            ],
                          ),
                        ),
                      // Landscape has no row to spare; the toolbar's devices
                      // button shows the device there. Short phones' lyrics
                      // keep the room an empty row would take.
                      if (MediaQuery.orientationOf(context) ==
                          Orientation.portrait) ...[
                        if (!reservesPlayingOnRow) ...[
                          LinkPlayingOnLabel(
                            color: toadplayer ? Colors.white : null,
                          ),
                          const SizedBox(height: 8),
                        ] else
                          SizedBox(
                            key: const ValueKey('link-playing-on-row'),
                            height: _playingOnRowHeight,
                            child: Center(
                              child: LinkPlayingOnLabel(
                                color: toadplayer ? Colors.white : null,
                                height: _playingOnRowHeight,
                              ),
                            ),
                          ),
                      ],
                    ],
                  ),
                ),
                ),
                collapse: true,
                hidden: _playerUiHidden || _lyricsImmersive,
              ),
              if (homeIndicatorBelowRow != null)
                SizedBox(height: homeIndicatorBelowRow),
            ],
            ),
          ),
        ),
      ),
    );
    if (!toadplayer) {
      if (!materialBackdrop) return _lyricsPointerListener(player);
      return Stack(
        fit: StackFit.expand,
        children: [
          MaterialPlayerBackdrop(
            mediaItem: mediaItem,
            colorScheme: colorScheme,
            showArtwork: materialFullScreen && _currentPage != 1,
          ),
          _lyricsPointerListener(player),
        ],
      );
    }
    return HeroMode(
      // A route Hero renders outside the panel's gradient and slide, briefly
      // exposing a detached rectangle. Keep Toadplayer artwork inside its panel.
      enabled: false,
      child: Theme(
        data: ToadplayerTheme.fromContext(context, brightness: Brightness.dark),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ToadplayerArtworkContrast(
              enabled: fullBleed && !_landscape && _currentPage == 0,
              continuous: motionArtwork != null,
              targets: {
                'header': _artworkHeaderKey,
                'controls': _artworkControlsKey,
                'volume': _artworkVolumeKey,
              },
              onChanged: (colors) {
                if (!mounted) return;
                _artworkForeground.value = colors;
              },
              child: ToadplayerPlayerBackground(
                artUri: mediaItem.artUri,
                squareArtwork: squareArtwork,
                artworkAspectRatio: artworkRatio,
                fadeStart: stillFullBleed ? 0.72 : 0.58,
                artwork: fullBleed && !_landscape && _currentPage == 0
                    ? PlayerTransitionArtwork(
                        artworkKey: _motionArtworkKey,
                        child: Hero(
                          tag: kNowPlayingArtworkHeroTag,
                          child: artwork(),
                        ),
                      )
                    : null,
              ),
            ),
            _lyricsPointerListener(player),
          ],
        ),
      ),
    );
  }

  /// A touch on the lyrics page holds the controls; a tap brings hidden
  /// ones back.
  Widget _lyricsPointerListener(Widget child) => Listener(
    behavior: HitTestBehavior.translucent,
    onPointerDown: (event) {
      if (!_canAutoHideLyricsControls && !_lyricsForceFullscreen) return;
      if (_lyricsPointers.isEmpty) _lyricsPointerMoved = false;
      _lyricsPointers[event.pointer] = event.position;
      _lyricsIdleTimer?.cancel();
    },
    onPointerMove: (event) {
      final origin = _lyricsPointers[event.pointer];
      if (origin != null && (event.position - origin).distance > 12) {
        _lyricsPointerMoved = true;
      }
    },
    onPointerUp: (event) => _endLyricsInteraction(event.pointer),
    onPointerCancel: (event) =>
        _endLyricsInteraction(event.pointer, cancelled: true),
    child: child,
  );

  void _toggleMaterialLyrics() {
    if (_toggleInspector(1)) return;
    setState(() {
      _currentPage = _currentPage == 1 ? 0 : 1;
      _lyricsControlsHidden = false;
    });
    _scheduleLyricsControlsHide();
    if (_currentPage == 1) {
      unawaited(
        _trackMetadata.load(
          ref.read(currentMediaItemProvider).value,
          inspectUnresolvedContentUri: true,
        ),
      );
    }
  }

  void _toggleToadplayerLyrics() {
    _setToadplayerPage(_currentPage == 1 ? 0 : 1);
  }

  void _setToadplayerPage(int page) {
    if (_toggleInspector(page)) return;
    _lyricsFullscreenTimer?.cancel();
    setState(() {
      _currentPage = page;
      _lyricsControlsHidden = false;
      _lyricsScrollDistance = 0;
      if (page != 1) _lyricsForceFullscreen = false;
      if (page != 0) _playerUiHidden = false;
    });
    _scheduleLyricsControlsHide();
    if (page == 0) {
      _schedulePlayerUiAutoHide();
    } else {
      _playerUiIdleTimer?.cancel();
    }
    if (_currentPage == 1) {
      unawaited(
        _trackMetadata.load(
          ref.read(currentMediaItemProvider).value,
          inspectUnresolvedContentUri: true,
        ),
      );
    }
  }

  /// Feature 1: a double-tap on the cover hides the player's chrome — the
  /// header, transport, volume and toolbar fade, leaving the cover and the
  /// timeline (wave bar). A double-tap brings them back.
  void _onArtworkDoubleTap() {
    if (_currentPage != 0) return;
    _lyricsFullscreenTimer?.cancel();
    setState(() => _playerUiHidden = !_playerUiHidden);
    if (!_playerUiHidden) _schedulePlayerUiAutoHide();
  }

  /// Feature 2: a single tap on the cover shows the lyrics and, three
  /// seconds later, they fill the screen. While the chrome is hidden, a tap
  /// only brings it back.
  void _onArtworkTap() {
    if (_currentPage != 0) return;
    if (_playerUiHidden) {
      setState(() => _playerUiHidden = false);
      _schedulePlayerUiAutoHide();
      return;
    }
    _setToadplayerPage(1);
    _lyricsFullscreenTimer?.cancel();
    _lyricsFullscreenTimer = Timer(const Duration(seconds: 3), () {
      if (!mounted || _currentPage != 1) return;
      setState(() => _lyricsForceFullscreen = true);
    });
  }

  /// Feature 5: with the setting on, the chrome hides itself after five idle
  /// seconds while playing, exactly like the double-tap hide.
  bool get _canAutoHidePlayerUi =>
      context.isToadplayer &&
      !_landscape &&
      _currentPage == 0 &&
      ref.read(settingsProvider).playerAutoHideUi &&
      ref.read(playbackPlayingProvider) &&
      !MediaQuery.accessibleNavigationOf(context);

  void _schedulePlayerUiAutoHide() {
    _playerUiIdleTimer?.cancel();
    if (!_canAutoHidePlayerUi || _playerUiHidden) return;
    _playerUiIdleTimer = Timer(const Duration(seconds: 5), () {
      if (!mounted || !_canAutoHidePlayerUi || _playerUiHidden) return;
      if (ModalRoute.of(context)?.isCurrent == false) {
        _schedulePlayerUiAutoHide();
        return;
      }
      setState(() => _playerUiHidden = true);
    });
  }

  /// Lyrics fill the column, so idle controls can hide: Toadplayer in portrait
  /// (its landscape player hides its own actions), and Material's portrait
  /// column or its landscape artwork beside lyrics, which shows no transport
  /// either, like Toadplayer's. Two plain panes keep the transport beside the
  /// lyrics, and the desktop opens lyrics in the inspector.
  bool get _lyricsAutoHideLayout => context.isToadplayer
      ? !_landscape
      : !widget.embedded &&
            (MediaQuery.orientationOf(context) == Orientation.portrait ||
                ref.read(settingsProvider).landscapeLyricsArtwork);

  bool get _canAutoHideLyricsControls =>
      _lyricsAutoHideLayout &&
      ref.read(settingsProvider).autoHideLyricsControls &&
      _currentPage == 1 &&
      ref.read(playbackPlayingProvider) &&
      !MediaQuery.accessibleNavigationOf(context);

  void _scheduleLyricsControlsHide() {
    _lyricsIdleTimer?.cancel();
    if (!_canAutoHideLyricsControls ||
        _lyricsOptionsOpen ||
        _audioOutputOpen ||
        _lyricsControlsHidden ||
        _lyricsPointers.isNotEmpty) {
      return;
    }
    _lyricsIdleTimer = Timer(const Duration(seconds: 5), () {
      if (!mounted || !_canAutoHideLyricsControls) return;
      if (ModalRoute.of(context)?.isCurrent == false) {
        _scheduleLyricsControlsHide();
        return;
      }
      setState(() => _lyricsControlsHidden = true);
    });
  }

  void _endLyricsInteraction(int pointer, {bool cancelled = false}) {
    if (_lyricsPointers.remove(pointer) == null || _lyricsPointers.isNotEmpty) {
      return;
    }
    final compactTouch = _compactPlayerTouched;
    _compactPlayerTouched = false;
    if (!cancelled && !_lyricsPointerMoved && !compactTouch) {
      if (_lyricsControlsHidden) {
        setState(() => _lyricsControlsHidden = false);
      }
      if (_lyricsForceFullscreen) {
        setState(() => _lyricsForceFullscreen = false);
      }
    }
    _scheduleLyricsControlsHide();
  }

  bool _onLyricsScroll(ScrollUpdateNotification notification) {
    if (_currentPage != 1 ||
        !ref.read(settingsProvider).autoHideLyricsControls ||
        _landscape ||
        notification.dragDetails == null ||
        notification.metrics.axis != Axis.vertical) {
      return false;
    }
    final delta = notification.scrollDelta ?? 0;
    if (delta.sign != _lyricsScrollDistance.sign) _lyricsScrollDistance = 0;
    _lyricsScrollDistance += delta;
    if (_lyricsScrollDistance.abs() >= 16) {
      final hidden = _lyricsScrollDistance > 0;
      if (hidden != _lyricsControlsHidden) {
        setState(() => _lyricsControlsHidden = hidden);
      }
      _lyricsScrollDistance = 0;
    }
    return false;
  }

  bool get _lyricsImmersive =>
      _currentPage == 1 &&
      _lyricsAutoHideLayout &&
      (_lyricsControlsHidden || _lyricsForceFullscreen);

  /// Toadplayer fades the controls in place; Material folds a [collapse] row
  /// away so the lyrics take its room.
  Widget _autoHidingLyricsControls(
    Widget child, {
    bool collapse = false,
    bool? hidden,
  }) => !context.isToadplayer && collapse
  ? PlayerLyricsControlsCollapse(
      hidden: hidden ?? _lyricsImmersive,
      child: child,
    )
  : PlayerLyricsControlsVisibility(
      hidden: hidden ?? _lyricsImmersive,
      child: child,
    );

  Widget _lyricsSection(
    ColorScheme colorScheme, {
    required bool isActive,
    bool showOptions = true,
  }) => PlayerLyricsSection(
    metadata: _trackMetadata,
    seekPreview: _seekPreview,
    colorScheme: colorScheme,
    isActive: isActive,
    options: showOptions && isActive && !_landscape
        ? _autoHidingLyricsControls(_lyricsOptionsButton(colorScheme))
        : null,
    onShareLyrics: _shareLyrics,
  );

  Future<void> _shareLyrics([LyricLine? line]) async {
    if (_sharingLyrics) return;
    final mediaItem = ref.read(currentMediaItemProvider).value;
    if (mediaItem == null) return;
    _sharingLyrics = true;
    try {
      // The menu offers sharing before the lyrics page has read the file, so
      // read it now (including an unresolved document) and wait for parsing.
      if (_trackMetadata.lyrics.isEmpty) {
        await _trackMetadata.load(mediaItem, inspectUnresolvedContentUri: true);
        await _untilMetadataLoaded();
      }
      if (!mounted ||
          ref.read(currentMediaItemProvider).value?.id != mediaItem.id) {
        return;
      }
      if (_trackMetadata.lyrics.isEmpty) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(content: Text(context.l10n.nowPlayingNoLyrics)),
          );
        return;
      }
      await openLyricsShare(
        context,
        mediaItem: mediaItem,
        lyrics: _trackMetadata.lyrics,
        initial: line,
      );
    } finally {
      _sharingLyrics = false;
    }
  }

  /// Completes once a load already in flight (started elsewhere) finishes.
  Future<void> _untilMetadataLoaded() {
    if (!_trackMetadata.loading) return Future.value();
    final done = Completer<void>();
    void listener() {
      if (_trackMetadata.loading || done.isCompleted) return;
      _trackMetadata.removeListener(listener);
      done.complete();
    }

    _trackMetadata.addListener(listener);
    return done.future.timeout(
      const Duration(seconds: 10),
      onTimeout: () => _trackMetadata.removeListener(listener),
    );
  }

  Widget _lyricsOptionsButton(ColorScheme colorScheme) => LyricsOptionsButton(
    metadata: _trackMetadata,
    colorScheme: colorScheme,
    translationOwner: this,
    onOpenChanged: _onLyricsOptionsOpenChanged,
  );

  void _onLyricsOptionsOpenChanged(bool open) {
    if (!mounted) return;
    if (open) _lyricsIdleTimer?.cancel();
    setState(() => _lyricsOptionsOpen = open);
    if (!open) _scheduleLyricsControlsHide();
  }

  Future<void> _openExternally(String source) async {
    if (source.isEmpty) return;
    try {
      await openFile(source);
    } catch (e) {
      if (!mounted) return;
      showCannotOpenFileSnackBar(context, e);
    }
  }

  Future<void> _showTrackNavigationMenu(
    BuildContext titleContext,
    MediaItem mediaItem,
  ) async {
    final action = await showToadplayerContextMenu<String>(
      context: titleContext,
      preferAbove: true,
      maxWidth: 280,
      builder: (_) => ToadplayerPlayerNavigationMenu(mediaItem: mediaItem),
    );
    if (!mounted) return;
    if (action == 'album') {
      await _goToCurrentAlbum(
        mediaItem: mediaItem,
        source: mediaItem.extras?['source']?.toString() ?? '',
      );
    } else if (action == 'artist') {
      await _goToCurrentArtist(mediaItem);
    }
  }

  Future<void> _goToCurrentArtist(MediaItem mediaItem) =>
      openPlayingArtist(context, ref, mediaItem);

  Future<void> _updatePlayerCollection(
    MediaItem item, {
    required bool favorite,
  }) async {
    try {
      final provider = playerCollectionTrackProvider(item);
      if (ref.read(provider).hasError) ref.invalidate(provider);
      final track = await ref.read(provider.future);
      if (!mounted) return;
      if (favorite) {
        await ref.read(libraryCollectionsProvider.notifier).toggleLoved(track);
      } else {
        await showAddTrackToPlaylistSheet(context, ref, track);
      }
    } catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            context.l10n.snackbarError(context.friendlyError(error)),
          ),
        ),
      );
    }
  }

  Future<void> _showMoreActions({
    required BuildContext context,
    required MediaItem mediaItem,
    required String source,
    required ColorScheme colorScheme,
    Rect? anchor,
  }) async {
    final controller = ref.read(musicPlayerControllerProvider);
    final sleepTimerEndsAt = controller.sleepTimerEndsAt;
    final sleepTimerSubtitle = sleepTimerEndsAt == null
        ? (controller.sleepTimerStopAfterTrack
            ? context.l10n.nowPlayingSleepTimerStopAfterTrack
            : null)
        : context.l10n.nowPlayingSleepTimerActive(
            MaterialLocalizations.of(
              context,
            ).formatTimeOfDay(TimeOfDay.fromDateTime(sleepTimerEndsAt)),
          );
    final volumeShown = ref.read(settingsProvider).playerShowVolume;
    final linkClient = ref.read(linkPhoneClientProvider);
    final transfer = await linkTransferSongsOfPlaying(
      ref,
      mediaId: mediaItem.id,
      source: source,
    );
    if (!mounted || !context.mounted) return;
    final sendToDesktop = transfer.phone.isEmpty || linkClient == null
        ? null
        : linkDesktopName(linkClient);
    final saveToPhone = transfer.desktop.isNotEmpty;
    final action = context.isToadplayer
        ? await showToadplayerContextMenu<String>(
            context: context,
            anchor: anchor,
            preferAbove: true,
            maxWidth: 280,
            builder: (_) => ToadplayerPlayerActionsSheet(
              mediaItem: mediaItem,
              sleepTimerSubtitle: sleepTimerSubtitle,
              volumeShown: volumeShown,
              sendToDesktop: sendToDesktop,
              saveToPhone: saveToPhone,
            ),
          )
        : await showAppBottomSheet<String>(
            context: context,
            useRootNavigator: true,
            backgroundColor: colorScheme.surfaceContainerHigh,
            title: mediaItem.title,
            subtitle: mediaItem.artist,
            builder: (sheetContext) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SettingsGroup(
                children: [
                  if ((mediaItem.album ?? '').trim().isNotEmpty)
                    SettingsItem(
                      icon: Icons.album_outlined,
                      title: sheetContext.l10n.homeGoToAlbum,
                      onTap: () => Navigator.of(sheetContext).pop('album'),
                    ),
                  SettingsItem(
                    icon: Icons.info_outline,
                    title: sheetContext.l10n.nowPlayingDetails,
                    onTap: () => Navigator.of(sheetContext).pop('details'),
                  ),
                  SettingsItem(
                    icon: Icons.format_quote_outlined,
                    title: sheetContext.l10n.lyricsShareTitle,
                    onTap: () => Navigator.of(sheetContext).pop('shareLyrics'),
                  ),
                  if (sendToDesktop != null)
                    SettingsItem(
                      icon: Icons.computer,
                      title: sheetContext.l10n.linkSendToDesktop(sendToDesktop),
                      onTap: () => Navigator.of(sheetContext).pop('linkSend'),
                    ),
                  if (saveToPhone)
                    SettingsItem(
                      icon: Icons.phone_android,
                      title: sheetContext.l10n.linkSaveToPhone,
                      onTap: () => Navigator.of(sheetContext).pop('linkSave'),
                    ),
                  if (!saveToPhone && canSaveNetworkOfflineSource(source))
                    SettingsItem(
                      icon: Icons.download_for_offline_outlined,
                      title: sheetContext.l10n.offlineSave,
                      onTap: () =>
                          Navigator.of(sheetContext).pop('networkOffline'),
                    ),
                  SettingsItem(
                    icon: Icons.bedtime_outlined,
                    title: sheetContext.l10n.nowPlayingSleepTimer,
                    subtitle: sleepTimerSubtitle,
                    onTap: () => Navigator.of(sheetContext).pop('sleepTimer'),
                  ),
                  SettingsItem(
                    icon: Icons.speed,
                    title: sheetContext.l10n.nowPlayingPlaybackSpeed,
                    subtitle: (controller.playbackRate - 1.0).abs() < 0.001
                        ? null
                        : '${controller.playbackRate.toStringAsFixed(2)}x',
                    onTap: () =>
                        Navigator.of(sheetContext).pop('playbackSpeed'),
                  ),
                  SettingsItem(
                    icon: Icons.repeat_one_outlined,
                    title: sheetContext.l10n.nowPlayingAbRepeat,
                    subtitle: controller.abRepeatActive
                        ? sheetContext.l10n.nowPlayingAbRepeatOn
                        : null,
                    onTap: () => Navigator.of(sheetContext).pop('abRepeat'),
                  ),
                  SettingsItem(
                    icon: Icons.equalizer,
                    title: sheetContext.l10n.equalizerTitle,
                    onTap: () => Navigator.of(sheetContext).pop('equalizer'),
                  ),
                  SettingsItem(
                    icon: volumeShown
                        ? Icons.volume_off_outlined
                        : Icons.volume_up_outlined,
                    title: volumeShown
                        ? sheetContext.l10n.nowPlayingHideVolume
                        : sheetContext.l10n.nowPlayingShowVolume,
                    onTap: () => Navigator.of(sheetContext).pop('volume'),
                  ),
                  SettingsItem(
                    icon: Icons.open_in_new,
                    title: sheetContext.l10n.nowPlayingOpenInExternalPlayer,
                    trailing: AppIcon(
                      Icons.open_in_new,
                      size: 18,
                      color: Theme.of(
                        sheetContext,
                      ).colorScheme.onSurfaceVariant,
                    ),
                    showDivider: false,
                    onTap: () => Navigator.of(sheetContext).pop('external'),
                  ),
                ],
              ),
            ),
          );
    if (!mounted || !context.mounted) return;
    switch (action) {
      case 'favorite':
        await _updatePlayerCollection(mediaItem, favorite: true);
        break;
      case 'playlist':
        await _updatePlayerCollection(mediaItem, favorite: false);
        break;
      case 'artist':
        await _goToCurrentArtist(mediaItem);
        break;
      case 'share':
        await SharePlus.instance.share(
          ShareParams(
            text: '${mediaItem.title} — ${mediaItem.artist ?? ''}',
            sharePositionOrigin:
                anchor ??
                Rect.fromCenter(
                  center: MediaQuery.sizeOf(context).center(Offset.zero),
                  width: 1,
                  height: 1,
                ),
          ),
        );
        break;
      case 'album':
        await _goToCurrentAlbum(mediaItem: mediaItem, source: source);
        break;
      case 'shareLyrics':
        await _shareLyrics();
        break;
      case 'linkSend':
        await linkSendSongsToDesktop(context, ref, transfer.phone);
        break;
      case 'linkSave':
        linkSaveSongsToPhone(context, ref, transfer.desktop);
        break;
      case 'networkOffline':
        await savePlayingNetworkOffline(context, ref, mediaItem);
        break;
      case 'details':
        unawaited(
          showPlayerDetailsSheet(
            context,
            colorScheme,
            metadata: _trackMetadata,
            mediaItem: ref.read(currentMediaItemProvider).value,
          ),
        );
        break;
      case 'sleepTimer':
        await showSleepTimerSheet(context, controller, colorScheme);
        break;
      case 'playbackSpeed':
        await _showPlaybackSpeedSheet(context, controller, colorScheme);
        break;
      case 'abRepeat':
        await _showAbRepeatSheet(context, controller, colorScheme);
        break;
      case 'equalizer':
        await pushPage<void>(context, (_) => const EqualizerScreen());
        break;
      case 'volume':
        ref.read(settingsProvider.notifier).setPlayerShowVolume(!volumeShown);
        break;
      case 'external':
        await _openExternally(source);
        break;
    }
  }

  /// Feature 3: swiping left and right anywhere on the player moves to the
  /// previous or next song. The scope drives the transport and toolbar swipe
  /// regions; the cover and the titles carry their own regions already.
  Widget _trackSwipeScope(Widget child) {
    final queue = ref.watch(playQueueProvider).value ?? const <MediaItem>[];
    final currentIndex = ref.watch(currentQueueIndexProvider);
    return PlayerTrackSwipe(
      queue: queue,
      currentIndex: currentIndex,
      onSelected: (item) async {
        final latest = ref.read(playQueueProvider).value ?? const <MediaItem>[];
        final index = latest.indexWhere((entry) => identical(entry, item));
        if (index >= 0) {
          await ref.read(musicPlayerControllerProvider).jumpTo(index);
        }
      },
      child: child,
    );
  }

  Future<void> _showPlaybackSpeedSheet(
    BuildContext context,
    MusicPlayerController controller,
    ColorScheme colorScheme,
  ) async {
    const presets = [0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0];
    final selected = await showAppBottomSheet<double>(
      context: context,
      useRootNavigator: true,
      backgroundColor: colorScheme.surfaceContainerHigh,
      title: context.l10n.nowPlayingPlaybackSpeed,
      builder: (sheetContext) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: SettingsGroup(
          children: [
            for (final rate in presets)
              SettingsItem(
                icon: rate == 1.0 ? Icons.speed : Icons.fast_forward,
                title: rate == 1.0
                    ? '${sheetContext.l10n.nowPlayingPlaybackSpeedNormal} (1.00x)'
                    : '${rate.toStringAsFixed(2)}x',
                selected: (controller.playbackRate - rate).abs() < 0.001,
                showDivider: rate != presets.last,
                onTap: () => Navigator.of(sheetContext).pop(rate),
              ),
          ],
        ),
      ),
    );
    if (!mounted || !context.mounted || selected == null) return;
    await controller.setPlaybackRate(selected);
  }

  Future<void> _showAbRepeatSheet(
    BuildContext context,
    MusicPlayerController controller,
    ColorScheme colorScheme,
  ) async {
    final action = await showAppBottomSheet<String>(
      context: context,
      useRootNavigator: true,
      backgroundColor: colorScheme.surfaceContainerHigh,
      title: context.l10n.nowPlayingAbRepeat,
      builder: (sheetContext) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: SettingsGroup(
          children: [
            SettingsItem(
              icon: Icons.flag_outlined,
              title: sheetContext.l10n.nowPlayingAbRepeatSetStart,
              subtitle: controller.abRepeatStart == null
                  ? null
                  : _formatDuration(controller.abRepeatStart!),
              showDivider: true,
              onTap: () => Navigator.of(sheetContext).pop('setA'),
            ),
            SettingsItem(
              icon: Icons.flag_circle_outlined,
              title: sheetContext.l10n.nowPlayingAbRepeatSetEnd,
              subtitle: controller.abRepeatEnd == null
                  ? null
                  : _formatDuration(controller.abRepeatEnd!),
              showDivider: true,
              onTap: controller.abRepeatStart != null
                  ? () => Navigator.of(sheetContext).pop('setB')
                  : null,
            ),
            SettingsItem(
              icon: Icons.clear,
              title: sheetContext.l10n.nowPlayingAbRepeatClear,
              showDivider: false,
              onTap: controller.abRepeatStart != null ||
                      controller.abRepeatEnd != null
                  ? () => Navigator.of(sheetContext).pop('clear')
                  : null,
            ),
          ],
        ),
      ),
    );
    if (!mounted || !context.mounted || action == null) return;
    switch (action) {
      case 'setA':
        controller.setAbRepeatStart();
        break;
      case 'setB':
        controller.setAbRepeatEnd();
        break;
      case 'clear':
        controller.clearAbRepeat();
        break;
    }
  }

  String _formatDuration(Duration d) {
    final m = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  Future<void> _goToCurrentAlbum({
    required MediaItem mediaItem,
    required String source,
  }) => openPlayingAlbum(context, ref, mediaItem: mediaItem, source: source);

  /// Opens Up Next. The Material sheet captures the theme of [context], the
  /// player's artwork scope.
  void _showQueueSheet(BuildContext context, ColorScheme colorScheme) {
    if (_toggleInspector(2)) return;
    if (context.isToadplayer) {
      _setToadplayerPage(2);
      return;
    }
    if (_queueSheetShowing) return;
    _queueSheetShowing = true;
    showPlayerQueueSheet(
      context,
      colorScheme,
    ).whenComplete(() => _queueSheetShowing = false);
  }
}
