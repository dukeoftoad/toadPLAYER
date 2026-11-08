// Lyrics of the track this device is playing, read straight from the file's
// tags so Home's lyrics widget shows the current line without opening the
// full player.
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/services/platform_bridge.dart';
import 'package:toadplayer/utils/logger.dart';
import 'package:toadplayer/utils/lyrics_parser.dart';

final _log = AppLogger('LyricsPreview');

/// The parsed lyrics of the current source. Empty while nothing plays, for
/// network streams, and for files without embedded lyrics.
final lyricsPreviewProvider = FutureProvider.autoDispose<ParsedLyrics>((
  ref,
) async {
  final source = ref.watch(
    currentMediaItemProvider.select(
      (state) => state.value?.extras?['source']?.toString() ?? '',
    ),
  );
  if (source.isEmpty || source.startsWith('network://')) {
    return ParsedLyrics.empty;
  }
  try {
    final metadata = await PlatformBridge.readFileMetadata(source);
    final raw = metadata['lyrics']?.toString() ?? '';
    if (raw.trim().isEmpty) return ParsedLyrics.empty;
    return await LyricsParser.parseAsyncNative(raw);
  } on Object catch (error) {
    // Never blank the widget feed silently: a transient read failure should
    // be visible in logs, and the provider re-runs when the source changes.
    _log.e('Lyrics preview read failed for $source: $error');
    return ParsedLyrics.empty;
  }
});

/// The line of [lines] sounding at [position], or null before the first one
/// starts. A binary search keeps the widget cheap on every position tick.
LyricLine? activeLyricLine(List<LyricLine> lines, Duration position) {
  var low = 0;
  var high = lines.length - 1;
  var result = -1;
  while (low <= high) {
    final mid = (low + high) ~/ 2;
    if (lines[mid].time <= position) {
      result = mid;
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return result < 0 ? null : lines[result];
}
