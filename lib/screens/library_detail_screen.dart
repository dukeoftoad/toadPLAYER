// Detail pages the library home pushes: an artist or album group of the
// session queue, and a persisted user playlist.
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/models/library_collections.dart';
import 'package:toadplayer/providers/library_collections_provider.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/services/playable_media.dart';
import 'package:toadplayer/widgets/app_bottom_sheet.dart';
import 'package:toadplayer/widgets/library/library_views.dart';
import 'package:toadplayer/widgets/player_queue_artwork.dart';

class LibraryDetailScreen extends ConsumerWidget {
  const LibraryDetailScreen.artistGroup({super.key, required this.group})
    : playlistId = null;

  const LibraryDetailScreen.userPlaylist({super.key, required this.playlistId})
    : group = null;

  /// Set for an artist or album detail page: its tracks are queue-backed.
  final LibraryGroup? group;

  /// Set for a persisted playlist detail page.
  final String? playlistId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final group = this.group;
    if (group != null) return _GroupDetailScreen(group: group);
    return _PlaylistDetailScreen(playlistId: playlistId!);
  }
}

/// Artist or album page: every row jumps into the session queue.
class _GroupDetailScreen extends ConsumerWidget {
  const _GroupDetailScreen({required this.group});

  final LibraryGroup group;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queue = ref.watch(playQueueProvider).value ?? const <MediaItem>[];
    final currentIndex = ref.watch(currentQueueIndexProvider);
    final controller = ref.read(musicPlayerControllerProvider);
    final countLabel =
        '${group.tracks.length} ${group.tracks.length == 1 ? 'song' : 'songs'}';
    // A group's queueIndex was captured at push time and goes stale once the
    // queue is reordered or replaced while this page is open; re-resolve each
    // row against the live queue by id instead of trusting the snapshot.
    int? liveQueueIndex(LibraryTrack track) {
      final id = track.item.id;
      for (var i = 0; i < queue.length; i++) {
        if (queue[i].id == id) return i;
      }
      return null;
    }

    final firstLive = group.tracks.isEmpty
        ? null
        : liveQueueIndex(group.tracks.first);

    return Scaffold(
      appBar: AppBar(
        title: Text(group.title),
        actions: [
          IconButton(
            tooltip: 'Play',
            icon: const Icon(Icons.play_arrow),
            onPressed: firstLive == null
                ? null
                : () => controller.jumpTo(firstLive),
          ),
        ],
      ),
      body: group.tracks.isEmpty
          ? const SizedBox.shrink()
          : ListView.builder(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
              itemCount: group.tracks.length,
              itemBuilder: (context, index) {
                final track = group.tracks[index];
                final live = liveQueueIndex(track);
                return LibraryTrackTile(
                  track: track,
                  isCurrent: live != null && live == currentIndex,
                  onTap: live == null
                      ? null
                      : () => controller.jumpTo(live),
                  onLongPress: live == null
                      ? null
                      : () => showLibraryTrackActionsSheet(
                          context,
                          ref,
                          track.item,
                        ),
                );
              },
            ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  countLabel,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Playlist page: rows come from the persisted collection; playable rows
/// resolve against the session queue and the whole playlist plays back in
/// its saved order.
class _PlaylistDetailScreen extends ConsumerWidget {
  const _PlaylistDetailScreen({required this.playlistId});

  final String playlistId;

  void _playPlaylist(
    BuildContext context,
    WidgetRef ref,
    UserPlaylistCollection playlist, {
    int startRow = 0,
  }) {
    final queue = ref.read(playQueueProvider).value ?? const <MediaItem>[];
    final playable = <PlayableMedia>[];
    var playableIndexOfRow = -1;
    for (var row = 0; row < playlist.tracks.length; row++) {
      final resolved = resolvePlaylistTrackPlayable(
        playlist.tracks[row].track,
        queue,
      );
      if (resolved == null) continue;
      playable.add(resolved);
      if (row == startRow) playableIndexOfRow = playable.length - 1;
    }
    if (playable.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'These songs are not loaded in this session. '
            'Open their files or folder first.',
          ),
        ),
      );
      return;
    }
    // A tapped missing song falls back to the playlist's first loaded song.
    final index = playableIndexOfRow >= 0 ? playableIndexOfRow : 0;
    ref.read(musicPlayerControllerProvider).playAll(
          playable,
          initialIndex: index,
        );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Playing playlist "${playlist.name}"'),
      ),
    );
  }

  Future<void> _showRemoveRowSheet(
    BuildContext context,
    WidgetRef ref,
    UserPlaylistCollection playlist,
    CollectionTrackEntry entry,
  ) async {
    await showAppModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  Icons.playlist_remove,
                  color: Theme.of(sheetContext).colorScheme.error,
                ),
                title: Text('Remove from playlist'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                onTap: () async {
                  Navigator.of(sheetContext).pop();
                  await ref
                      .read(libraryCollectionsProvider.notifier)
                      .removeTracksFromPlaylist(playlist.id, [entry.key]);
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Removed from playlist'),
                      ),
                    );
                  }
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collections = ref.watch(libraryCollectionsProvider);
    final playlist = collections.playlistById(playlistId);
    final queue = ref.watch(playQueueProvider).value ?? const <MediaItem>[];
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    if (playlist == null) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: Text('Playlist not found')),
      );
    }

    final tracksLoaded = playlist.tracksLoaded || playlist.tracks.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: Text(playlist.name),
        actions: [
          IconButton(
            tooltip: 'Play all',
            icon: const Icon(Icons.play_arrow),
            onPressed: playlist.tracks.isEmpty
                ? null
                : () => _playPlaylist(context, ref, playlist),
          ),
        ],
      ),
      body: !tracksLoaded
          ? const Center(child: CircularProgressIndicator())
          : playlist.tracks.isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  'No songs here yet. Add some from the Songs tab.',
                  textAlign: TextAlign.center,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
              itemCount: playlist.tracks.length,
              itemBuilder: (context, index) {
                final entry = playlist.tracks[index];
                final track = entry.track;
                final playable = resolvePlaylistTrackPlayable(track, queue);
                final artist = track.artistName.trim().isEmpty
                    ? 'Unknown artist'
                    : track.artistName;
                final duration = track.duration > 0
                    ? formatTrackDuration(Duration(seconds: track.duration))
                    : '';
                // The synthetic item keeps the song's file source so
                // visible rows recover embedded artwork from the file.
                final source = track.id.startsWith('opened:')
                    ? track.id.substring('opened:'.length)
                    : '';
                return ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  leading: PlayerQueueArtwork(
                    item: MediaItem(
                      id: track.id,
                      title: track.name,
                      artist: track.artistName,
                      album: track.albumName,
                      artUri: track.coverUrl != null
                          ? Uri.tryParse(track.coverUrl!)
                          : null,
                      extras: {if (source.isNotEmpty) 'source': source},
                    ),
                    colorScheme: colorScheme,
                    cacheWidth: 96,
                    iconSize: 22,
                  ),
                  title: Text(
                    track.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodyLarge,
                  ),
                  subtitle: Text(
                    artist,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  trailing: playable == null
                      ? Text(
                          'Not loaded',
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        )
                      : (duration.isEmpty
                            ? null
                            : Text(
                                duration,
                                style: textTheme.bodySmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              )),
                  onTap: playable == null
                      ? null
                      : () => _playPlaylist(
                          context,
                          ref,
                          playlist,
                          startRow: index,
                        ),
                  onLongPress: () =>
                      _showRemoveRowSheet(context, ref, playlist, entry),
                );
              },
            ),
    );
  }
}
