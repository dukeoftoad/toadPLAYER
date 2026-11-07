// Shared building blocks for the standalone library home: track entries,
// artist/album grouping, the queue-backed track tile, and the per-track
// action sheet. Hardcoded English labels match the standalone slice's other
// shell screens.
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/models/library_collections.dart';
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

/// Ways the Songs tab can order its rows. [queue] keeps the play queue's
/// own order (the default); the others sort the filtered rows, including
/// search results, on demand.
enum LibrarySort { queue, title, artist, album, duration }

extension LibrarySortLabel on LibrarySort {
  String get label => switch (this) {
    LibrarySort.queue => 'Queue order',
    LibrarySort.title => 'Title A–Z',
    LibrarySort.artist => 'Artist A–Z',
    LibrarySort.album => 'Album A–Z',
    LibrarySort.duration => 'Longest first',
  };

  IconData get icon => switch (this) {
    LibrarySort.queue => Icons.queue_music_outlined,
    LibrarySort.title => Icons.sort_by_alpha_outlined,
    LibrarySort.artist => Icons.person_outline,
    LibrarySort.album => Icons.album_outlined,
    LibrarySort.duration => Icons.timelapse_outlined,
  };
}

/// The Songs tab's chosen order for this session.
final librarySortProvider = NotifierProvider<LibrarySortNotifier, LibrarySort>(
  LibrarySortNotifier.new,
);

class LibrarySortNotifier extends Notifier<LibrarySort> {
  @override
  LibrarySort build() => LibrarySort.queue;

  void set(LibrarySort sort) {
    if (sort != state) state = sort;
  }
}

/// Ways the grouped tabs (Artists / Albums / Genres) can order their rows.
enum LibraryGroupSort { nameAZ, nameZA, mostSongs, fewestSongs }

extension LibraryGroupSortLabel on LibraryGroupSort {
  String get label => switch (this) {
    LibraryGroupSort.nameAZ => 'Name A–Z',
    LibraryGroupSort.nameZA => 'Name Z–A',
    LibraryGroupSort.mostSongs => 'Most songs',
    LibraryGroupSort.fewestSongs => 'Fewest songs',
  };

  IconData get icon => switch (this) {
    LibraryGroupSort.nameAZ ||
    LibraryGroupSort.nameZA => Icons.sort_by_alpha_outlined,
    LibraryGroupSort.mostSongs ||
    LibraryGroupSort.fewestSongs => Icons.library_music_outlined,
  };
}

/// Each grouped tab remembers its own order for the session.
final artistGroupSortProvider =
    NotifierProvider<ArtistGroupSortNotifier, LibraryGroupSort>(
      ArtistGroupSortNotifier.new,
    );

final albumGroupSortProvider =
    NotifierProvider<AlbumGroupSortNotifier, LibraryGroupSort>(
      AlbumGroupSortNotifier.new,
    );

final genreGroupSortProvider =
    NotifierProvider<GenreGroupSortNotifier, LibraryGroupSort>(
      GenreGroupSortNotifier.new,
    );

/// Shared build/set behavior for the grouped tabs' sort state.
abstract class GroupSortNotifier extends Notifier<LibraryGroupSort> {
  @override
  LibraryGroupSort build() => LibraryGroupSort.nameAZ;

  void set(LibraryGroupSort sort) {
    if (sort != state) state = sort;
  }
}

class ArtistGroupSortNotifier extends GroupSortNotifier {}

class AlbumGroupSortNotifier extends GroupSortNotifier {}

class GenreGroupSortNotifier extends GroupSortNotifier {}

/// Returns [groups] in [sort]'s order. Name A–Z keeps the incoming order —
/// the grouping helpers already sort by name — so it doubles as the default.
List<LibraryGroup> sortLibraryGroups(
  List<LibraryGroup> groups,
  LibraryGroupSort sort,
) {
  if (groups.length < 2) return groups;
  final sorted = [...groups];
  switch (sort) {
    case LibraryGroupSort.nameAZ:
      break;
    case LibraryGroupSort.nameZA:
      sorted.sort(
        (a, b) => b.title.toLowerCase().compareTo(a.title.toLowerCase()),
      );
    case LibraryGroupSort.mostSongs:
      sorted.sort((a, b) {
        final byCount = b.tracks.length.compareTo(a.tracks.length);
        if (byCount != 0) return byCount;
        return a.title.toLowerCase().compareTo(b.title.toLowerCase());
      });
    case LibraryGroupSort.fewestSongs:
      sorted.sort((a, b) {
        final byCount = a.tracks.length.compareTo(b.tracks.length);
        if (byCount != 0) return byCount;
        return a.title.toLowerCase().compareTo(b.title.toLowerCase());
      });
  }
  return sorted;
}

/// Ways the Playlists tab can order its rows.
enum PlaylistSort { nameAZ, nameZA, mostSongs, newest }

extension PlaylistSortLabel on PlaylistSort {
  String get label => switch (this) {
    PlaylistSort.nameAZ => 'Name A–Z',
    PlaylistSort.nameZA => 'Name Z–A',
    PlaylistSort.mostSongs => 'Most songs',
    PlaylistSort.newest => 'Newest first',
  };

  IconData get icon => switch (this) {
    PlaylistSort.nameAZ || PlaylistSort.nameZA => Icons.sort_by_alpha_outlined,
    PlaylistSort.mostSongs => Icons.queue_music_outlined,
    PlaylistSort.newest => Icons.schedule_outlined,
  };
}

/// The Playlists tab's chosen order for this session.
final playlistSortProvider = NotifierProvider<PlaylistSortNotifier, PlaylistSort>(
  PlaylistSortNotifier.new,
);

class PlaylistSortNotifier extends Notifier<PlaylistSort> {
  @override
  PlaylistSort build() => PlaylistSort.nameAZ;

  void set(PlaylistSort sort) {
    if (sort != state) state = sort;
  }
}

/// Returns [playlists] in [sort]'s order. Name A–Z keeps the store's order.
List<UserPlaylistCollection> sortPlaylists(
  List<UserPlaylistCollection> playlists,
  PlaylistSort sort,
) {
  if (playlists.length < 2) return playlists;
  final sorted = [...playlists];
  switch (sort) {
    case PlaylistSort.nameAZ:
      break;
    case PlaylistSort.nameZA:
      sorted.sort(
        (a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()),
      );
    case PlaylistSort.mostSongs:
      sorted.sort((a, b) {
        final byCount = b.trackCount.compareTo(a.trackCount);
        if (byCount != 0) return byCount;
        return a.name.toLowerCase().compareTo(b.name.toLowerCase());
      });
    case PlaylistSort.newest:
      sorted.sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }
  return sorted;
}

/// The count-and-sort header row shared by every library list: how many rows
/// match, and a menu that reorders them. The Songs tab's bar and the grouped
/// tabs' bars all render this one design, so every list sorts the same way.
class LibrarySortBar<T> extends StatelessWidget {
  const LibrarySortBar({
    super.key,
    required this.count,
    required this.countNoun,
    required this.current,
    required this.options,
    required this.onSelected,
  });

  final int count;

  /// Singular noun for the count label ('artist', 'album', 'genre',
  /// 'playlist'); the widget pluralises it with a trailing s.
  final String countNoun;
  final T current;

  /// The menu entries as (value, icon, label) records.
  final List<(T, IconData, String)> options;
  final ValueChanged<T> onSelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
      child: Row(
        children: [
          Text(
            count == 1 ? '1 $countNoun' : '$count ${countNoun}s',
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const Spacer(),
          PopupMenuButton<T>(
            tooltip: 'Sort',
            initialValue: current,
            onSelected: onSelected,
            itemBuilder: (context) => [
              for (final (value, icon, label) in options)
                PopupMenuItem(
                  value: value,
                  child: Row(
                    children: [
                      Icon(
                        icon,
                        size: 18,
                        color: value == current
                            ? colorScheme.primary
                            : colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(width: 12),
                      Expanded(child: Text(label)),
                      if (value == current)
                        Icon(Icons.check, size: 16, color: colorScheme.primary),
                    ],
                  ),
                ),
            ],
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.sort,
                  size: 18,
                  color: colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 6),
                Text(
                  options.firstWhere((option) => option.$1 == current).$3,
                  style: textTheme.labelMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Returns [tracks] in [sort]'s order. The queue order returns the list
/// untouched; every other sort copies first, so callers can keep using the
/// queue-indexed original.
List<LibraryTrack> sortLibraryTracks(
  List<LibraryTrack> tracks,
  LibrarySort sort,
) {
  if (sort == LibrarySort.queue || tracks.length < 2) return tracks;
  int key(LibraryTrack track) => track.queueIndex;
  final sorted = [...tracks];
  switch (sort) {
    case LibrarySort.queue:
      return tracks;
    case LibrarySort.title:
      sorted.sort(
        (a, b) => _byLabel(
          a.item.title.trim().toLowerCase(),
          b.item.title.trim().toLowerCase(),
          key(a),
          key(b),
        ),
      );
    case LibrarySort.artist:
      sorted.sort(
        (a, b) => _byLabel(
          libraryArtistLabel(a.item).toLowerCase(),
          libraryArtistLabel(b.item).toLowerCase(),
          key(a),
          key(b),
        ),
      );
    case LibrarySort.album:
      sorted.sort(
        (a, b) => _byLabel(
          libraryAlbumLabel(a.item).toLowerCase(),
          libraryAlbumLabel(b.item).toLowerCase(),
          key(a),
          key(b),
        ),
      );
    case LibrarySort.duration:
      sorted.sort((a, b) {
        final aDuration = a.item.duration ?? Duration.zero;
        final bDuration = b.item.duration ?? Duration.zero;
        if (aDuration != bDuration) return bDuration.compareTo(aDuration);
        return key(a).compareTo(key(b));
      });
  }
  return sorted;
}

int _byLabel(String a, String b, int aIndex, int bIndex) =>
    a == b ? aIndex.compareTo(bIndex) : a.compareTo(b);

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

/// A track's genre from the session metadata, defaulting like the artist
/// and album labels do. Tags hydrate this into the item's extras.
String libraryGenreLabel(MediaItem item) {
  final genre = item.extras?['genre']?.toString().trim() ?? '';
  if (genre.isEmpty) return 'Unknown genre';
  return genre;
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

/// The Genres tab: the session's tracks grouped by their tagged genre,
/// shaped like the artist and album groups so the same detail page shows it.
List<LibraryGroup> groupTracksByGenre(List<LibraryTrack> tracks) {
  final labels = <String, String>{};
  final groups = <String, List<LibraryTrack>>{};
  for (final track in tracks) {
    final label = libraryGenreLabel(track.item);
    final key = label.toLowerCase();
    labels.putIfAbsent(key, () => label);
    groups.putIfAbsent(key, () => []).add(track);
  }
  final keys = groups.keys.toList()
    ..sort(
      (a, b) => labels[a]!.toLowerCase().compareTo(labels[b]!.toLowerCase()),
    );
  return [
    for (final key in keys)
      LibraryGroup(key: key, title: labels[key]!, tracks: groups[key]!),
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
  genre: item.extras?['genre']?.toString(),
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
