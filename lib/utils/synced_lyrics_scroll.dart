import 'dart:math' as math;

/// Symmetric list padding that lets the first and last lyric lines reach the
/// vertical center instead of getting pinned to a viewport edge.
double syncedLyricsCenterPadding({
  required double viewportDimension,
  required double estimatedLineExtent,
  double minimumPadding = 24,
}) {
  return math.max(
    minimumPadding,
    (viewportDimension - estimatedLineExtent) / 2,
  );
}

/// Estimated scroll offset when symmetric center padding is applied.
double syncedLyricsEstimatedOffset({
  required int index,
  required double estimatedLineExtent,
}) {
  if (index <= 0) return 0;
  return index * estimatedLineExtent;
}

/// Advances to the final lyric line whose timestamp is already due.
int syncedLyricsDueLineIndex({
  required List<Duration> lineStarts,
  required int currentIndex,
  required Duration position,
}) {
  if (lineStarts.isEmpty) return -1;
  var dueIndex = currentIndex;
  if (dueIndex < -1) dueIndex = -1;
  if (dueIndex >= lineStarts.length) dueIndex = lineStarts.length - 1;
  while (dueIndex + 1 < lineStarts.length &&
      lineStarts[dueIndex + 1] <= position) {
    dueIndex++;
  }
  return dueIndex;
}

/// Extrapolates the latest player position for the lyrics animation only.
///
/// The global playback state intentionally updates at a lower frequency to
/// avoid rebuilding unrelated UI on every frame. The active lyric line uses
/// this value to animate between those updates.
Duration interpolatedSyncedLyricsPosition({
  required Duration anchorPosition,
  required Duration elapsedSinceAnchor,
  required bool isPlaying,
}) {
  if (!isPlaying || elapsedSinceAnchor.isNegative) return anchorPosition;
  return anchorPosition + elapsedSinceAnchor;
}

/// Keeps small timing corrections from making the lyric highlight jump while
/// still applying a seek or another large position change immediately.
Duration reconcileSyncedLyricsPosition({
  required Duration predictedPosition,
  required Duration reportedPosition,
  Duration seekThreshold = const Duration(milliseconds: 750),
}) {
  final drift = (reportedPosition - predictedPosition).abs();
  if (drift >= seekThreshold) return reportedPosition;

  const correctionFraction = 0.25;
  final correction =
      ((reportedPosition - predictedPosition).inMicroseconds *
              correctionFraction)
          .round();
  return predictedPosition + Duration(microseconds: correction);
}

/// Continuous progress for one timed TTML or enhanced LRC segment.
double syncedLyricSegmentProgress({
  required Duration position,
  required Duration start,
  required Duration end,
}) {
  if (position <= start) return 0;
  if (position >= end || end <= start) return 1;
  return (position - start).inMicroseconds / (end - start).inMicroseconds;
}

/// Subtle vertical emphasis relative to the normal highlighted position.
/// Long timed segments rise further while held, then settle back to 1. This
/// follows lyric duration, not pitch, and is deterministic on pause or seek.
double syncedLyricSegmentLift({
  required Duration position,
  required Duration start,
  required Duration end,
}) {
  if (end <= start) return 0;
  final elapsed = (position - start).inMicroseconds / 1000;
  final duration = (end - start).inMicroseconds / 1000;
  double ease(double value) {
    final t = value.clamp(0.0, 1.0);
    return t * t * (3 - 2 * t);
  }

  // Start gently before the color sweep and let the movement trail it. Keep
  // this envelope independent of word length: fast syllables must not snap
  // upwards just because their highlight finishes in a few frames.
  // The whole timed word shares this movement, independent of the color sweep.
  final normalLift = ease((elapsed + 180) / 720);
  final heldStrength = ((duration - 1000) / 1500).clamp(0.0, 1.0);
  if (heldStrength == 0) return normalLift;
  final rise = ease((elapsed - 400) / math.min(1200, (duration - 400) * 0.6));
  final settle = ease((duration - elapsed) / 600);
  return normalLift + 1.3 * heldStrength * rise * settle;
}

/// Glow strength from 0 to 1 for a word held for a long time. Short words
/// never glow; a held word brightens while it is sung, then fades shortly
/// after its end instead of switching off with the sweep.
double syncedLyricSegmentGlow({
  required Duration position,
  required Duration start,
  required Duration end,
}) {
  final duration = (end - start).inMicroseconds / 1000;
  final strength = ((duration - 900) / 1100).clamp(0.0, 1.0);
  if (strength == 0) return 0;
  final elapsed = (position - start).inMicroseconds / 1000;
  double ease(double value) {
    final t = value.clamp(0.0, 1.0);
    return t * t * (3 - 2 * t);
  }

  final rise = ease((elapsed - 250) / math.min(900, duration * 0.5));
  final fade = ease((duration + 500 - elapsed) / 500);
  return strength * rise * fade;
}

/// How long the clock may run at a different pace to close its gap with the
/// reported position. Reports come about every half second; within this
/// window the sweep catches up without ever stepping back.
const Duration syncedLyricsCatchUpWindow = Duration(milliseconds: 900);

/// The pace that closes the gap between where the animation clock is and
/// where the player says it is over [syncedLyricsCatchUpWindow]: 1 keeps the
/// player's pace, more runs faster, less slower.
double syncedLyricsCatchUpRate({
  required Duration predictedPosition,
  required Duration reportedPosition,
}) {
  final gap =
      (reportedPosition - predictedPosition).inMicroseconds /
      syncedLyricsCatchUpWindow.inMicroseconds;
  // A pace that would run backwards is a seek; the caller anchors instead.
  return gap <= -1 ? 1 : 1 + gap;
}

/// How far ahead of the audio lines change while lyrics advance, so the
/// scroll and highlight land on a line as its first word is sung. A coarse
/// display (a TV) has to start earlier than a smooth high-refresh one.
Duration lyricsDisplayLead(double? refreshRate) {
  final rate = refreshRate ?? 60;
  if (!rate.isFinite || rate <= 0) return const Duration(milliseconds: 67);
  // About four display frames.
  return Duration(microseconds: (4 * 1e6 / rate).round());
}

/// Keeps the line already shown from flickering back while playback
/// advances: a position report that arrives late (common over Link) steps
/// the active line back for a moment, and the shown line holds until the
/// report catches up. A seek stands out because [position] lands before the
/// shown line's start; that moves at once.
int steadySyncedLyricsIndex({
  required int index,
  required int shown,
  required Duration shownStart,
  required Duration position,
}) {
  if (index >= shown) return index;
  return position < shownStart ? index : shown;
}
