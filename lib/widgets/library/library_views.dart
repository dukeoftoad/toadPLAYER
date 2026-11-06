// Shared building blocks for the standalone library home: track entries,
// artist/album grouping, the queue-backed track tile, and the per-track
// action sheet. Hardcoded English labels match the standalone slice's other
// shell screens.
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/models/track.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/services/playable_media.dart';
import 'package:toadplayer/widgets/app_bottom_sheet.dart';
import 'package:toadplayer/widgets/player_queue_artwork.dart';
import 'package:toadplayer/widgets/playlist_picker_sheet.dart';

/// A queue-backed track with its position in the full play queue, so a
/// filtered list can still jump to the right queue slot.
class LibraryTrack {
  final int queueIndex;
  final MediaItem item;

  const LibraryTrack({required this.queueIndex, required this.item});
}

/// A named group of tracks: one artist or one album.
class LibraryGroup {
  final String key;
  final String title;

  /// Artist for an album group; null for an artist group (its count is the
  /// subtitle instead).
  final String? subtitle;
  final List<LibraryTrack> tracks;

  const LibraryGroup({
    required this.key,
    required this.title,
    this.subtitle,
    required this.tracks,
  });
}

String libraryArtistLabel(MediaItem item) {
  final artist = item.artist?.trim() ?? '';
  if (artist.isEmpty) return 'Unknown artist';
  return artist;
}

String libraryAlbumLabel(MediaItem item) {
  final album = item.album?.trim() ?? '';
  if (album.isEmpty) return 'Unknown album';
  return album;
}

List<LibraryTrack> libraryTracksFromQueue(List<MediaItem> queue) => [
  for (var i = 0; i < queue.length; i++)
    LibraryTrack(queueIndex: i, item: queue[i]),
];

String formatTrackDuration(Duration? duration) {
  if (duration == null || duration <= Duration.zero) return '';
  final minutes = duration.inMinutes;
  final seconds = duration.inSeconds % 60;
  return '$minutes:${seconds.toString().padLeft(2, '0')}';
}

bool libraryMatchesQuery(Iterable<String?> fields, String query) {
  if (query.trim().isEmpty) return true;
  final needle = query.trim().toLowerCase();
  for (final field in fields) {
    final value = field?.trim() ?? '';
    if (value.isNotEmpty && value.toLowerCase().contains(needle)) return true;
  }
  return false;
}

List<LibraryGroup> groupTracksByArtist(List<LibraryTrack> tracks) {
  final labels = <String, String>{};
  final groups = <String, List<LibraryTrack>>{};
  for (final track in tracks) {
    final label = libraryArtistLabel(track.item);
    final key = label.toLowerCase();
    labels.putIfAbsent(key, () => label);
    groups.putIfAbsent(key, () => []).add(track);
  }
  final keys = groups.keys.toList()
    ..sort((a, b) => labels[a]!.compareTo(labels[b]!));
  return [
    for (final key in keys)
      LibraryGroup(key: key, title: labels[key]!, tracks: groups[key]!),
  ];
}

List<LibraryGroup> groupTracksByAlbum(List<LibraryTrack> tracks) {
  final labels = <String, String>{};
  final subtitles = <String, String>{};
  final groups = <String, List<LibraryTrack>>{};
  for (final track in tracks) {
    final label = libraryAlbumLabel(track.item);
    final key = label.toLowerCase();
    labels.putIfAbsent(key, () => label);
    final artist = libraryArtistLabel(track.item);
    // The first credited artist names the album; featured guests come later.
    if (!subtitles.containsKey(key) || subtitles[key] == 'Unknown artist') {
      subtitles[key] = artist;
    }
    groups.putIfAbsent(key, () => []).add(track);
  }
  final keys = groups.keys.toList()
    ..sort(
      (a, b) => labels[a]!.toLowerCase().compareTo(labels[b]!.toLowerCase()),
    );
  return [
    for (final key in keys)
      LibraryGroup(
        key: key,
        title: labels[key]!,
        subtitle: subtitles[key],
        tracks: groups[key]!,
      ),
  ];
}

/// Rebuilds a playable item from a queue entry: its extras keep the file
/// source the audio handler plays.
PlayableMedia playableFromQueueItem(MediaItem item) => PlayableMedia(
  id: item.id,
  source: item.extras?['source']?.toString() ?? '',
  title: item.title,
  artist: item.artist ?? '',
  album: item.album ?? '',
  artUri: item.artUri?.toString(),
  duration: item.duration,
);

/// A playlist track's playable form, resolved against the session queue:
/// by its stored id first, then by title and artist, then from the
/// `opened:<path>` id the standalone player assigns. Null when the song is
/// not part of this session's sources.
PlayableMedia? resolvePlaylistTrackPlayable(Track track, List<MediaItem> queue) {
  for (final item in queue) {
    if (item.id == track.id) return playableFromQueueItem(item);
  }
  final name = track.name.trim().toLowerCase();
  final artist = track.artistName.trim().toLowerCase();
  if (name.isNotEmpty) {
    for (final item in queue) {
      final sameSong =
          item.title.trim().toLowerCase() == name &&
          (item.artist ?? '').trim().toLowerCase() == artist;
      if (sameSong) return playableFromQueueItem(item);
    }
  }
  if (track.id.startsWith('opened:')) {
    final source = track.id.substring('opened:'.length);
    if (source.isNotEmpty) {
      return PlayableMedia(
        id: track.id,
        source: source,
        title: track.name,
        artist: track.artistName,
        album: track.albumName,
        artUri: track.coverUrl,
        duration: track.duration > 0
            ? Duration(seconds: track.duration)
            : null,
      );
    }
  }
  return null;
}

class LibraryTrackTile extends StatelessWidget {
  const LibraryTrackTile({
    super.key,
    required this.track,
    required this.onTap,
    this.isCurrent = false,
    this.onLongPress,
  });

  final LibraryTrack track;

  /// Null disables the tap, as for a row whose queue slot is gone.
  final VoidCallback? onTap;
  final bool isCurrent;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final item = track.item;
    final artist = libraryArtistLabel(item);
    final album = item.album?.trim() ?? '';
    final duration = formatTrackDuration(item.duration);

    return ListTile(
      selected: isCurrent,
      selectedTileColor: colorScheme.primaryContainer.withValues(alpha: 0.35),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      leading: PlayerQueueArtwork(
        item: item,
        colorScheme: colorScheme,
        cacheWidth: 96,
        iconSize: 22,
      ),
      title: Text(
        item.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: textTheme.bodyLarge?.copyWith(
          color: isCurrent ? colorScheme.primary : null,
          fontWeight: isCurrent ? FontWeight.w600 : null,
        ),
      ),
      subtitle: Text(
        album.isEmpty || album == 'Unknown album'
            ? artist
            : '$artist  •  $album',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: textTheme.bodySmall?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
      trailing: duration.isEmpty
          ? null
          : Text(
              duration,
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }
}

class LibraryArtistTile extends StatelessWidget {
  const LibraryArtistTile({super.key, required this.group, this.onTap});

  final LibraryGroup group;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final initial = group.title.isEmpty ? '' : group.title[0].toUpperCase();

    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      leading: CircleAvatar(
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
        child: initial.isEmpty
            ? const Icon(Icons.person_outline, size: 20)
            : Text(initial),
      ),
      title: Text(group.title, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: Text(
        '${group.tracks.length} ${group.tracks.length == 1 ? 'song' : 'songs'}',
        style: textTheme.bodySmall?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
      trailing: Icon(Icons.chevron_right, color: colorScheme.onSurfaceVariant),
      onTap: onTap,
    );
  }
}

class LibraryAlbumCard extends StatelessWidget {
  const LibraryAlbumCard({super.key, required this.album, this.onTap});

  final LibraryGroup album;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final first = album.tracks.first;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox.expand(
                child: PlayerQueueArtwork(
                  item: first.item,
                  colorScheme: colorScheme,
                  cacheWidth: 256,
                  iconSize: 36,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            album.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '${album.subtitle ?? 'Unknown artist'}  •  '
            '${album.tracks.length} ${album.tracks.length == 1 ? 'song' : 'songs'}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

/// Long-press actions for a queue-backed track: play next, add to the queue,
/// or send it to a playlist.
Future<void> showLibraryTrackActionsSheet(
  BuildContext context,
  WidgetRef ref,
  MediaItem item,
) async {
  Future<void> enqueue(Future<void> Function(PlayableMedia) action) async {
    try {
      await action(playableFromQueueItem(item));
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Added to your queue')),
        );
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Couldn't queue this song")),
        );
      }
    }
  }

  await showAppModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    builder: (sheetContext) {
      final colorScheme = Theme.of(sheetContext).colorScheme;
      Widget actionTile(IconData icon, String label, VoidCallback onTap) =>
          ListTile(
            leading: Icon(icon, color: colorScheme.onSurfaceVariant),
            title: Text(label),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            onTap: onTap,
          );

      return SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 4, 20, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(sheetContext).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  actionTile(
                    Icons.skip_next_outlined,
                    'Play next',
                    () {
                      Navigator.of(sheetContext).pop();
                      enqueue(
                        ref.read(musicPlayerControllerProvider).playNext,
                      );
                    },
                  ),
                  actionTile(
                    Icons.playlist_add,
                    'Add to queue',
                    () {
                      Navigator.of(sheetContext).pop();
                      enqueue(
                        ref.read(musicPlayerControllerProvider).addToQueue,
                      );
                    },
                  ),
                  actionTile(Icons.playlist_add_check_outlined,
                      'Add to playlist…', () async {
                    Navigator.of(sheetContext).pop();
                    try {
                      final track = await ref.read(
                        playerCollectionTrackProvider(item).future,
                      );
                      if (!context.mounted) return;
                      await showAddTracksToPlaylistSheet(context, ref, [track]);
                    } catch (_) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Couldn't prepare this song"),
                          ),
                        );
                      }
                    }
                  }),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
