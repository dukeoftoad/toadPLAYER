// Smart playlists on the Playlists tab: Favourites (the loved collection)
// and Recently added (session sources ordered by when they first appeared).
// Rows keep the playlist detail page's presentation so the three list kinds
// read as one family.
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/providers/library_collections_provider.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/services/playable_media.dart';
import 'package:toadplayer/services/recently_added_store.dart';
import 'package:toadplayer/widgets/library/library_views.dart';
import 'package:toadplayer/widgets/player_queue_artwork.dart';

/// Which smart playlist the screen shows.
enum SmartList { favourites, recentlyAdded }

class LibrarySmartScreen extends ConsumerWidget {
  const LibrarySmartScreen.favourites({super.key})
    : list = SmartList.favourites;

  const LibrarySmartScreen.recentlyAdded({super.key})
    : list = SmartList.recentlyAdded;

  final SmartList list;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queue = ref.watch(playQueueProvider).value ?? const <MediaItem>[];
    if (list == SmartList.favourites) {
      return _FavouritesBody(queue: queue);
    }
    return _RecentlyAddedBody(queue: queue);
  }
}

/// Plays [playable] starting at [initialIndex], with the same "not loaded
/// in this session" note the playlist detail page shows.
void _playResolved(
  BuildContext context,
  WidgetRef ref,
  List<PlayableMedia> playable, {
  required int initialIndex,
  required String playingLabel,
}) {
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
  ref
      .read(musicPlayerControllerProvider)
      .playAll(playable, initialIndex: initialIndex.clamp(0, playable.length - 1));
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(playingLabel)));
}

/// Favourites: every loved track, playable rows first-class, unplayable rows
/// marked "Not loaded" like the playlist detail page.
class _FavouritesBody extends ConsumerWidget {
  const _FavouritesBody({required this.queue});

  final List<MediaItem> queue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collections = ref.watch(libraryCollectionsProvider);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final loved = collections.loved;

    final playable = <PlayableMedia>[];
    for (var row = 0; row < loved.length; row++) {
      final resolved = resolvePlaylistTrackPlayable(loved[row].track, queue);
      if (resolved == null) continue;
      playable.add(resolved);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
        actions: [
          IconButton(
            tooltip: 'Shuffle favourites',
            icon: const Icon(Icons.shuffle_outlined),
            onPressed: playable.isEmpty
                ? null
                : () {
                    final start =
                        (DateTime.now().millisecondsSinceEpoch.abs()) %
                        playable.length;
                    _playResolved(
                      context,
                      ref,
                      playable,
                      initialIndex: start,
                      playingLabel: 'Shuffling ${playable.length} favourites',
                    );
                  },
          ),
          IconButton(
            tooltip: 'Play all',
            icon: const Icon(Icons.play_arrow),
            onPressed: playable.isEmpty
                ? null
                : () => _playResolved(
                    context,
                    ref,
                    playable,
                    initialIndex: 0,
                    playingLabel: 'Playing favourites',
                  ),
          ),
        ],
      ),
      body: loved.isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  'Nothing loved yet. Long-press a song and choose the '
                  'favourite action.',
                  textAlign: TextAlign.center,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
              itemCount: loved.length,
              itemBuilder: (context, index) =>
                  _LovedRow(entry: loved[index]),
            ),
    );
  }
}

class _LovedRow extends ConsumerWidget {
  const _LovedRow({required this.entry});

  final CollectionTrackEntry entry;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final track = entry.track;
    final artist = track.artistName.trim().isEmpty
        ? 'Unknown artist'
        : track.artistName;
    final playable = resolvePlaylistTrackPlayable(
      track,
      ref.watch(playQueueProvider).value ?? const <MediaItem>[],
    );

    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      leading: PlayerQueueArtwork(
        item: MediaItem(
          id: track.id,
          title: track.name,
          artist: track.artistName,
          album: track.albumName,
          artUri: track.coverUrl != null
              ? Uri.tryParse(track.coverUrl!)
              : null,
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
          : null,
      onTap: playable == null
          ? null
          : () {
              final queue = ref.read(playQueueProvider).value ?? const [];
              // The loved song resolves from this session, so jump straight
              // to its queue slot; a history-only fallback plays it alone.
              final queueIndex = queue.indexWhere(
                (item) => item.id == playable.id,
              );
              if (queueIndex >= 0) {
                ref.read(musicPlayerControllerProvider).jumpTo(queueIndex);
                return;
              }
              _playResolved(
                context,
                ref,
                [playable],
                initialIndex: 0,
                playingLabel: 'Playing "${track.name}"',
              );
            },
    );
  }
}

/// Recently added: the session's rows ordered by when their source first
/// entered the library, newest first.
class _RecentlyAddedBody extends ConsumerWidget {
  const _RecentlyAddedBody({required this.queue});

  final List<MediaItem> queue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final tracks = libraryTracksFromQueue(queue);
    if (tracks.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            'Choose a music folder in Settings to build your library.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      );
    }

    final sources = [
      for (final track in tracks)
        track.item.extras?['source']?.toString() ?? '',
    ];
    final byIndex = <int, int>{};
    return FutureBuilder<List<String>>(
      future: RecentlyAddedStore.instance.mostRecentFirst(sources),
      builder: (context, snapshot) {
        final order = snapshot.data;
        if (order != null) {
          for (var i = 0; i < sources.length; i++) {
            byIndex[tracks[i].queueIndex] = order.indexOf(sources[i]);
          }
        }
        final sorted = [...tracks]..sort((a, b) {
          final rankA = byIndex[a.queueIndex] ?? a.queueIndex;
          final rankB = byIndex[b.queueIndex] ?? b.queueIndex;
          return rankA.compareTo(rankB);
        });
        final currentIndex = ref.watch(currentQueueIndexProvider);
        final controller = ref.read(musicPlayerControllerProvider);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Recently added'),
            actions: [
              IconButton(
                tooltip: 'Play all',
                icon: const Icon(Icons.play_arrow),
                onPressed: sorted.isEmpty
                    ? null
                    : () => controller.jumpTo(sorted.first.queueIndex),
              ),
            ],
          ),
          body: ListView.builder(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
            itemCount: sorted.length,
            itemBuilder: (context, index) {
              final track = sorted[index];
              return LibraryTrackTile(
                track: track,
                isCurrent: track.queueIndex == currentIndex,
                onTap: () => controller.jumpTo(track.queueIndex),
                onLongPress: () =>
                    showLibraryTrackActionsSheet(context, ref, track.item),
              );
            },
          ),
        );
      },
    );
  }
}
