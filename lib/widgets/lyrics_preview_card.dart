// Home's lyrics widget: a compact card above the mini player that follows
// the current line of the playing song. Tapping it opens the full player,
// where the synced lyrics view and the editor live.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/providers/lyrics_preview_provider.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/screens/now_playing_screen.dart';
import 'package:toadplayer/utils/lyrics_parser.dart';

class LyricsPreviewCard extends ConsumerWidget {
  const LyricsPreviewCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasTrack = ref.watch(
      currentMediaItemProvider.select((state) => state.value != null),
    );
    if (!hasTrack) return const SizedBox.shrink();

    final lyrics = ref.watch(lyricsPreviewProvider);
    final lines = lyrics.value?.lines ?? const <LyricLine>[];
    if (lines.isEmpty) return const SizedBox.shrink();

    final position = ref.watch(playbackPositionProvider);
    final line = activeLyricLine(lines, position);
    final text =
        line?.text.trim() ?? (lines.first.time > position ? '♪' : '');

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        // The right inset keeps the play/pause button's corner clear.
        padding: const EdgeInsets.fromLTRB(16, 0, 88, 12),
        child: Material(
          color: Theme.of(
            context,
          ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.94),
          borderRadius: BorderRadius.circular(20),
          elevation: 3,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => Navigator.of(context).push(
              NowPlayingRoute(child: const NowPlayingScreen()),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.lyrics_outlined,
                    size: 18,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 220),
                      child: Text(
                        text.isEmpty ? '♪' : text,
                        key: ValueKey(text),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
