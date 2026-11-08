// Streams the currently sung lyric line to the device home-screen widgets.
// The launcher's player and lyrics widgets render the active line from the
// state the PlayerWidgetService publishes; this provider resolves it from
// the same parsed lyrics the in-app card follows, and only real line
// changes reach the platform channel.
import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/providers/lyrics_preview_provider.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/providers/theme_provider.dart';
import 'package:toadplayer/services/player_widget_service.dart';
import 'package:toadplayer/utils/lyrics_timeline.dart';

/// Watching this provider keeps the widget lyric feed alive for the session;
/// the bootstrap watches it once during startup.
final widgetLyricSyncProvider = Provider<void>((ref) {
  final lines = ref.watch(
    lyricsPreviewProvider.select((value) => value.value?.lines),
  );
  final position = ref.watch(playbackPositionProvider);
  // Mirror the in-app view: the user's lyrics offset shifts line timings, so
  // the home-screen widget highlights the same line the player does.
  final offset = Duration(
    milliseconds: ref.watch(
      themeProvider.select((theme) => theme.lyricsOffsetMs),
    ),
  );
  final shifted = lines == null ? null : lyricsShiftedBy(lines, offset);
  final active = shifted == null || shifted.isEmpty
      ? null
      : activeLyricLine(shifted, position);
  final text = active?.text.trim() ?? '';
  if (Platform.isAndroid || Platform.isIOS) {
    unawaited(PlayerWidgetService.instance.setLyric(text.isEmpty ? null : text));
  }
});
