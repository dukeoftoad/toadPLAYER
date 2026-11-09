import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/providers/settings_provider.dart';

/// Blacks the display for as long as a sleep timer runs.
///
/// With the sleep mode setting on, arming the sleep timer covers the whole
/// app with a black surface, so the screen can keep its backlight as low as
/// the device allows (a true black surface lights nothing on OLED). The app
/// never wakes the display itself: once the system turns it off, only the
/// user's own wake (power button) brings it back, still dark.
///
/// While dark, a double-tap on the screen's left third goes to the previous
/// song and on the right third to the next one, without the display turning
/// on for the change. A single tap anywhere wakes the screen inside the app,
/// and the cover lifts by itself when the timer fires, the timer is
/// cancelled or playback pauses.
class SleepModeGate extends ConsumerStatefulWidget {
  const SleepModeGate({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<SleepModeGate> createState() => _SleepModeGateState();
}

class _SleepModeGateState extends ConsumerState<SleepModeGate> {
  Timer? _poll;

  /// The sleep-timer state the user dismissed with a tap: a new timer (or a
  /// new "stop after track" arm) covers the screen again.
  (DateTime?, bool)? _dismissedState;
  bool _covered = false;

  @override
  void initState() {
    super.initState();
    ref.listenManual<bool>(
      settingsProvider.select((settings) => settings.sleepModeEnabled),
      (_, enabled) => _syncPolling(enabled),
    );
    _syncPolling(ref.read(settingsProvider).sleepModeEnabled);
  }

  @override
  void dispose() {
    _poll?.cancel();
    super.dispose();
  }

  void _syncPolling(bool enabled) {
    if (enabled && _poll == null) {
      _poll = Timer.periodic(const Duration(seconds: 1), (_) => _evaluate());
    } else if (!enabled) {
      _poll?.cancel();
      _poll = null;
      _dismissedState = null;
      _setCovered(false);
    }
    _evaluate();
  }

  /// The sleep timer exposes no listenable, so the gate polls once a second:
  /// arming, cancelling and the timer's own expiry are all visible through
  /// the controller's getters.
  void _evaluate() {
    if (!mounted || !ref.read(settingsProvider).sleepModeEnabled) {
      _setCovered(false);
      return;
    }
    final controller = ref.read(musicPlayerControllerProvider);
    final state = (
      controller.sleepTimerEndsAt,
      controller.sleepTimerStopAfterTrack,
    );
    final armed = state.$1 != null || state.$2;
    if (!armed || _dismissedState == state) {
      _setCovered(false);
      return;
    }
    _setCovered(true);
  }

  void _setCovered(bool covered) {
    if (_covered == covered) return;
    setState(() => _covered = covered);
  }

  void _wake() {
    final controller = ref.read(musicPlayerControllerProvider);
    _dismissedState = (
      controller.sleepTimerEndsAt,
      controller.sleepTimerStopAfterTrack,
    );
    _setCovered(false);
  }

  @override
  Widget build(BuildContext context) {
    // A pause while dark (the timer's own expiry, the notification's pause
    // button, headphones unplugged) lifts the cover at once.
    ref.listen<bool>(playbackPlayingProvider, (previous, playing) {
      if (!playing && _covered) _wake();
    });
    return Stack(
      children: [
        widget.child,
        if (_covered) SleepModeOverlay(onWake: _wake),
      ],
    );
  }
}

/// The black surface itself: absorbs touches, routes the double-tap thirds
/// to the transport and shows a faint fading hint about the gestures.
class SleepModeOverlay extends ConsumerStatefulWidget {
  const SleepModeOverlay({super.key, required this.onWake});

  final VoidCallback onWake;

  @override
  ConsumerState<SleepModeOverlay> createState() => _SleepModeOverlayState();
}

class _SleepModeOverlayState extends ConsumerState<SleepModeOverlay> {
  bool _hintVisible = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      if (mounted) setState(() => _hintVisible = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return ColoredBox(
      color: Colors.black,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        // An empty onDoubleTap keeps a double-tap from reaching the single
        // tap's wake, so the zone gestures never lift the cover.
        onDoubleTap: () {},
        onDoubleTapDown: (details) {
          final controller = ref.read(musicPlayerControllerProvider);
          if (details.localPosition.dx < width / 3) {
            unawaited(controller.previous());
          } else if (details.localPosition.dx > width * 2 / 3) {
            unawaited(controller.next());
          }
        },
        onTap: widget.onWake,
        child: IgnorePointer(
          child: Center(
            child: AnimatedOpacity(
              opacity: _hintVisible ? 1 : 0,
              duration: const Duration(milliseconds: 600),
              child: Text(
                'Sleep mode · double-tap left / right to change songs · tap '
                'to wake',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.28),
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
