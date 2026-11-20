import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/providers/player_artwork_video_provider.dart';
import 'package:toadplayer/providers/settings_provider.dart';
import 'package:toadplayer/theme/app_motion.dart';
import 'package:toadplayer/widgets/motion_header_banner.dart';
import 'package:toadplayer/widgets/player_artwork.dart';
import 'package:video_player/video_player.dart';

class ToadplayerPlayerArtwork extends ConsumerStatefulWidget {
  const ToadplayerPlayerArtwork({
    super.key,
    required this.mediaItem,
    this.videoUrl,
    this.onAspectRatioChanged,
    this.onError,
    this.resolvingVideo = false,
    this.squareWhileLoading = true,
    this.crossfade,
  });

  final MediaItem mediaItem;
  final String? videoUrl;
  final ValueChanged<double>? onAspectRatioChanged;
  final VoidCallback? onError;
  final bool resolvingVideo;

  /// While a video loads, keep the square cover at the top of its box.
  /// False fills the box at once, for a backdrop that crops the sides.
  final bool squareWhileLoading;

  /// Fades a new track's artwork in over the previous one, like
  /// [PlayerArtwork.crossfade]. Null, a zero duration or reduced motion
  /// swap the artwork at once.
  final AppMotionSpec? crossfade;

  @override
  ConsumerState<ToadplayerPlayerArtwork> createState() =>
      _ToadplayerPlayerArtworkState();
}

class _ToadplayerPlayerArtworkState
    extends ConsumerState<ToadplayerPlayerArtwork> {
  String? _displayedSource;
  VideoPlayerController? _displayedController;

  @override
  Widget build(BuildContext context) {
    final cover = PlayerArtwork(
      artUri: widget.mediaItem.artUri?.toString(),
      colorScheme: Theme.of(context).colorScheme,
      cacheWidth: PlayerArtwork.transitionCacheWidth(context),
    );
    // Without a video, the still cover fills its box (a full-screen box is
    // taller than wide and crops the sides). A video keeps the square cover
    // at its top while it loads, since its own frame may be wider.
    final fallback = widget.videoUrl == null || !widget.squareWhileLoading
        ? SizedBox.expand(child: cover)
        : Align(
            alignment: Alignment.topCenter,
            child: AspectRatio(aspectRatio: 1, child: cover),
          );
    if (MediaQuery.disableAnimationsOf(context) ||
        !ref.watch(settingsProvider.select((s) => s.motionArtworkEnabled))) {
      _displayedSource = null;
      _displayedController = null;
      return _crossfaded(context, fallback);
    }
    final videoUrl = widget.videoUrl;
    final prepared = videoUrl == null
        ? null
        : ref.watch(playerArtworkVideoProvider(videoUrl));
    if (prepared?.hasError == true) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) widget.onError?.call();
      });
    }
    if (prepared?.value case final controller?) {
      _displayedSource = videoUrl;
      _displayedController = controller;
    } else if (!widget.resolvingVideo &&
        (videoUrl == null || prepared?.hasError == true)) {
      _displayedSource = null;
      _displayedController = null;
    }
    // Retain the outgoing decoder only while it is still displayed. Watching
    // it before accepting the new frame keeps its heap alive until a later
    // unrelated rebuild, even after the old banner has been removed.
    if (_displayedSource != null && _displayedSource != videoUrl) {
      ref.watch(playerArtworkVideoProvider(_displayedSource!));
    }
    return _crossfaded(
      context,
      Stack(
        fit: StackFit.expand,
        children: [
          fallback,
          if (_displayedController != null)
            MotionHeaderBanner(
              videoUrl: _displayedSource!,
              fallback: const SizedBox.shrink(),
              controller: _displayedController,
              fadeDuration: Duration.zero,
              onAspectRatioChanged: (ratio) {
                if (_displayedSource == widget.videoUrl) {
                  widget.onAspectRatioChanged?.call(ratio);
                }
              },
              onError: () {
                if (_displayedSource == widget.videoUrl) widget.onError?.call();
              },
            ),
        ],
      ),
    );
  }

  /// Fades a changed track's artwork in over the previous one; the outgoing
  /// frame stays behind until the fade ends, so a skip never blanks.
  Widget _crossfaded(BuildContext context, Widget content) {
    final motion = widget.crossfade;
    if (motion == null ||
        motion.duration <= Duration.zero ||
        MediaQuery.disableAnimationsOf(context)) {
      return content;
    }
    return AnimatedSwitcher(
      duration: motion.duration,
      switchInCurve: motion.curve,
      transitionBuilder: (child, animation) =>
          FadeTransition(opacity: animation, child: child),
      layoutBuilder: (current, previous) => Stack(
        fit: StackFit.passthrough,
        alignment: Alignment.center,
        children: [...previous, current],
      ),
      child: KeyedSubtree(
        key: ValueKey(widget.mediaItem.artUri?.toString()),
        child: content,
      ),
    );
  }
}
