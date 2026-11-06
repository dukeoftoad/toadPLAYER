// The standalone player's home: a search top bar, library tabs
// (Songs / Artists / Albums / Playlists), and the moved file/queue actions.
// Replaces the old button-row shell.
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/controllers/open_audio_controller.dart';
import 'package:toadplayer/models/library_collections.dart';
import 'package:toadplayer/providers/library_collections_provider.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/routes/now_playing_route.dart';
import 'package:toadplayer/screens/equalizer_screen.dart';
import 'package:toadplayer/screens/library_detail_screen.dart';
import 'package:toadplayer/screens/now_playing_screen.dart';
import 'package:toadplayer/screens/settings/lyrics_settings_page.dart';
import 'package:toadplayer/screens/settings/playback_settings_page.dart';
import 'package:toadplayer/utils/desktop_platform.dart';
import 'package:toadplayer/widgets/cached_cover_image.dart';
import 'package:toadplayer/widgets/desktop/desktop_player_bar.dart';
import 'package:toadplayer/widgets/library/library_views.dart';
import 'package:toadplayer/widgets/mini_player.dart';
import 'package:toadplayer/widgets/player_queue_sheet.dart';

class StandalonePlayerHomeScreen extends ConsumerStatefulWidget {
  const StandalonePlayerHomeScreen({super.key});

  @override
  ConsumerState<StandalonePlayerHomeScreen> createState() =>
      _StandalonePlayerHomeScreenState();
}

class _StandalonePlayerHomeScreenState
    extends ConsumerState<StandalonePlayerHomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _setQuery(String value) => setState(() => _query = value);

  @override
  Widget build(BuildContext context) {
    final queue = ref.watch(playQueueProvider).value ?? const <MediaItem>[];
    final tracks = libraryTracksFromQueue(queue);

    // One controller drives the app bar's TabBar and the body's TabBarView.
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: _LibraryAppBar(
          tracks: tracks,
          searchController: _searchController,
          query: _query,
          onQueryChanged: _setQuery,
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  _SongsTab(tracks: tracks, query: _query),
                  _ArtistsTab(tracks: tracks, query: _query),
                  _AlbumsTab(tracks: tracks, query: _query),
                  _PlaylistsTab(query: _query),
                ],
              ),
            ),
            if (isDesktopPlatform) DesktopPlayerBar() else const MiniPlayer(),
          ],
        ),
      ),
    );
  }
}

/// The search field is the top bar: opening files and folders, the full
/// player, and the queue moved into it so the library gets the whole body.
class _LibraryAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const _LibraryAppBar({
    required this.tracks,
    required this.searchController,
    required this.query,
    required this.onQueryChanged,
  });

  final List<LibraryTrack> tracks;
  final TextEditingController searchController;
  final String query;
  final ValueChanged<String> onQueryChanged;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 48);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final openingAudio = ref.watch(openAudioControllerProvider);
    final mediaItem = ref.watch(currentMediaItemProvider).value;
    final queueLength = tracks.length;

    return AppBar(
      title: TextField(
        controller: searchController,
        onChanged: onQueryChanged,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: 'Search songs, artists, albums',
          isDense: true,
          filled: true,
          fillColor: colorScheme.surfaceContainerHigh,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(Icons.search),
          prefixIconConstraints: const BoxConstraints(minWidth: 40),
          suffixIcon: query.isEmpty
              ? null
              : IconButton(
                  tooltip: 'Clear search',
                  icon: const Icon(Icons.close, size: 20),
                  onPressed: () {
                    searchController.clear();
                    onQueryChanged('');
                  },
                ),
        ),
      ),
      actions: [
        if (openingAudio)
          const Padding(
            padding: EdgeInsets.all(14),
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2.4),
            ),
          ),
        IconButton(
          tooltip: 'Queue',
          onPressed: queueLength == 0
              ? null
              : () => showPlayerQueueSheet(context, colorScheme),
          icon: Badge(
            isLabelVisible: queueLength > 0,
            label: Text('$queueLength'),
            child: const Icon(Icons.queue_music_outlined),
          ),
        ),
        PopupMenuButton<String>(
          tooltip: 'More options',
          icon: const Icon(Icons.more_vert),
          onSelected: (value) => _onMenuSelected(context, ref, value),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 'open_files',
              enabled: !openingAudio,
              child: _menuRow(
                context,
                Icons.audio_file_outlined,
                'Open audio files',
              ),
            ),
            PopupMenuItem(
              value: 'open_folder',
              enabled: !openingAudio,
              child: _menuRow(
                context,
                Icons.folder_open_outlined,
                'Open audio folder',
              ),
            ),
            if (mediaItem != null)
              PopupMenuItem(
                value: 'full_player',
                child: _menuRow(
                  context,
                  Icons.open_in_full,
                  'Full player',
                ),
              ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 'equalizer',
              child: Row(
                children: [
                  Icon(Icons.equalizer),
                  SizedBox(width: 12),
                  Text('Equalizer'),
                ],
              ),
            ),
            const PopupMenuItem(
              value: 'lyrics',
              child: Row(
                children: [
                  Icon(Icons.lyrics_outlined),
                  SizedBox(width: 12),
                  Text('Lyrics'),
                ],
              ),
            ),
            const PopupMenuItem(
              value: 'playback',
              child: Row(
                children: [
                  Icon(Icons.tune),
                  SizedBox(width: 12),
                  Text('Playback settings'),
                ],
              ),
            ),
          ],
        ),
      ],
      bottom: TabBar(
        tabs: [for (final label in _tabLabels) Tab(text: label)],
      ),
    );
  }

  static const _tabLabels = ['Songs', 'Artists', 'Albums', 'Playlists'];

  Widget _menuRow(BuildContext context, IconData icon, String label) => Row(
    children: [
      Icon(icon, color: Theme.of(context).colorScheme.onSurfaceVariant),
      const SizedBox(width: 12),
      Text(label),
    ],
  );

  void _onMenuSelected(BuildContext context, WidgetRef ref, String value) {
    switch (value) {
      case 'open_files':
        ref.read(openAudioControllerProvider.notifier).pickFiles();
      case 'open_folder':
        ref.read(openAudioControllerProvider.notifier).pickFolder();
      case 'full_player':
        Navigator.of(context).push(
          NowPlayingRoute(child: const NowPlayingScreen()),
        );
      case 'equalizer':
        Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const EqualizerScreen()),
        );
      case 'lyrics':
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) => const LyricsSettingsPage(),
          ),
        );
      case 'playback':
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) => const PlaybackSettingsPage(),
          ),
        );
    }
  }
}

/// The Songs tab: every session track with artwork, artist/album line and
/// duration. Long-press offers play next, add to queue and playlists.
class _SongsTab extends ConsumerWidget {
  const _SongsTab({required this.tracks, required this.query});

  final List<LibraryTrack> tracks;
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentQueueIndexProvider);
    final controller = ref.read(musicPlayerControllerProvider);
    final filtered = tracks
        .where(
          (track) => libraryMatchesQuery([
            track.item.title,
            track.item.artist,
            track.item.album,
          ], query),
        )
        .toList();

    if (tracks.isEmpty) return const _LibraryEmptyState();
    if (filtered.isEmpty) return _NoResults(query: query);

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
      itemCount: filtered.length,
      itemBuilder: (context, index) {
        final track = filtered[index];
        return LibraryTrackTile(
          track: track,
          isCurrent: track.queueIndex == currentIndex,
          onTap: () => controller.jumpTo(track.queueIndex),
          onLongPress: () =>
              showLibraryTrackActionsSheet(context, ref, track.item),
        );
      },
    );
  }
}

/// The Artists tab: the session's tracks grouped by credited artist.
class _ArtistsTab extends ConsumerWidget {
  const _ArtistsTab({required this.tracks, required this.query});

  final List<LibraryTrack> tracks;
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (tracks.isEmpty) return const _LibraryEmptyState();

    final groups = groupTracksByArtist(tracks)
        .where((group) => libraryMatchesQuery([group.title], query))
        .toList();
    if (groups.isEmpty) return _NoResults(query: query);

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
      itemCount: groups.length,
      itemBuilder: (context, index) => LibraryArtistTile(
        group: groups[index],
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) =>
                LibraryDetailScreen.artistGroup(group: groups[index]),
          ),
        ),
      ),
    );
  }
}

/// The Albums tab: a cover grid grouped by album name.
class _AlbumsTab extends ConsumerWidget {
  const _AlbumsTab({required this.tracks, required this.query});

  final List<LibraryTrack> tracks;
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (tracks.isEmpty) return const _LibraryEmptyState();

    final albums = groupTracksByAlbum(tracks)
        .where(
          (album) => libraryMatchesQuery([album.title, album.subtitle], query),
        )
        .toList();
    if (albums.isEmpty) return _NoResults(query: query);

    return GridView.builder(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 180,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.82,
      ),
      itemCount: albums.length,
      itemBuilder: (context, index) => LibraryAlbumCard(
        album: albums[index],
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) =>
                LibraryDetailScreen.artistGroup(group: albums[index]),
          ),
        ),
      ),
    );
  }
}

/// The Playlists tab: persisted collections with create, rename and delete.
class _PlaylistsTab extends ConsumerWidget {
  const _PlaylistsTab({required this.query});

  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collections = ref.watch(libraryCollectionsProvider);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final playlists = collections.playlists
        .where((playlist) => libraryMatchesQuery([playlist.name], query))
        .toList();

    return ListView(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
      children: [
        ListTile(
          leading: Icon(Icons.add, color: colorScheme.primary),
          title: Text(
            'New playlist',
            style: textTheme.bodyLarge?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          onTap: () => _showCreatePlaylistDialog(context, ref),
        ),
        if (!collections.isLoaded)
          const Padding(
            padding: EdgeInsets.all(24),
            child: Center(child: CircularProgressIndicator()),
          )
        else if (playlists.isEmpty)
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              query.isEmpty
                  ? 'No playlists yet. Create one, or long-press a song and '
                      'choose "Add to playlist".'
                  : 'No playlists match your search.',
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          )
        else
          for (final playlist in playlists)
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              leading: _PlaylistThumbnail(playlist: playlist),
              title: Text(
                playlist.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '${playlist.tracks.length} '
                '${playlist.tracks.length == 1 ? 'song' : 'songs'}',
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              trailing: PopupMenuButton<String>(
                icon: Icon(
                  Icons.more_vert,
                  color: colorScheme.onSurfaceVariant,
                ),
                onSelected: (value) =>
                    _onPlaylistMenuSelected(context, ref, playlist, value),
                itemBuilder: (context) => const [
                  PopupMenuItem(
                    value: 'rename',
                    child: Row(
                      children: [
                        Icon(Icons.edit_outlined),
                        SizedBox(width: 12),
                        Text('Rename'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Row(
                      children: [
                        Icon(Icons.delete_outline),
                        SizedBox(width: 12),
                        Text('Delete'),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () => _openPlaylist(context, ref, playlist),
            ),
      ],
    );
  }

  Future<void> _openPlaylist(
    BuildContext context,
    WidgetRef ref,
    UserPlaylistCollection playlist,
  ) async {
    // Playlist rows hydrate lazily; load before the detail page reads them.
    await ref
        .read(libraryCollectionsProvider.notifier)
        .ensurePlaylistLoaded(playlist.id);
    if (!context.mounted) return;
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) =>
            LibraryDetailScreen.userPlaylist(playlistId: playlist.id),
      ),
    );
  }

  Future<void> _onPlaylistMenuSelected(
    BuildContext context,
    WidgetRef ref,
    UserPlaylistCollection playlist,
    String value,
  ) async {
    switch (value) {
      case 'rename':
        final name = await _askPlaylistName(
          context,
          title: 'Rename playlist',
          confirmLabel: 'Rename',
          initial: playlist.name,
        );
        if (name == null || name.isEmpty || name == playlist.name) return;
        await ref
            .read(libraryCollectionsProvider.notifier)
            .renamePlaylist(playlist.id, name);
      case 'delete':
        final confirmed = await showDialog<bool>(
          context: context,
          builder: (dialogContext) => AlertDialog(
            title: const Text('Delete playlist'),
            content: Text(
              'Delete "${playlist.name}"? Its songs stay in your library.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(false),
                child: const Text('Cancel'),
              ),
              FilledButton(
                onPressed: () => Navigator.of(dialogContext).pop(true),
                child: const Text('Delete'),
              ),
            ],
          ),
        );
        if (confirmed != true || !context.mounted) return;
        await ref
            .read(libraryCollectionsProvider.notifier)
            .deletePlaylists([playlist.id]);
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Deleted "${playlist.name}"')),
          );
        }
    }
  }

  Future<void> _showCreatePlaylistDialog(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final name = await _askPlaylistName(
      context,
      title: 'New playlist',
      confirmLabel: 'Create',
    );
    if (name == null || name.isEmpty || !context.mounted) return;
    await ref.read(libraryCollectionsProvider.notifier).createPlaylist(name);
    if (context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Created "$name"')));
    }
  }
}

Future<String?> _askPlaylistName(
  BuildContext context, {
  required String title,
  required String confirmLabel,
  String? initial,
}) {
  final controller = TextEditingController(text: initial ?? '');
  return showDialog<String>(
    context: context,
    builder: (dialogContext) {
      return AlertDialog(
        title: Text(title),
        content: TextField(
          controller: controller,
          autofocus: true,
          textCapitalization: TextCapitalization.words,
          maxLength: 80,
          decoration: const InputDecoration(labelText: 'Name'),
          onSubmitted: (value) =>
              Navigator.of(dialogContext).pop(value.trim()),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () =>
                Navigator.of(dialogContext).pop(controller.text.trim()),
            child: Text(confirmLabel),
          ),
        ],
      );
    },
  );
}

class _PlaylistThumbnail extends StatelessWidget {
  const _PlaylistThumbnail({required this.playlist});

  final UserPlaylistCollection playlist;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final coverPath = (playlist.coverImagePath ?? '').trim();
    final preview = (playlist.previewCover ?? '').trim();
    final cover = preview.isNotEmpty ? preview : coverPath;

    final fallback = Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        Icons.playlist_play,
        color: colorScheme.onPrimaryContainer,
        size: 24,
      ),
    );

    if (cover.isEmpty) return fallback;

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: 48,
        height: 48,
        child: LocalOrNetworkCoverImage(
          url: cover,
          fit: BoxFit.cover,
          placeholder: (_) => fallback,
        ),
      ),
    );
  }
}

/// Shown on the library tabs while nothing has been opened yet; keeps the
/// moved open actions discoverable.
class _LibraryEmptyState extends ConsumerWidget {
  const _LibraryEmptyState();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final openingAudio = ref.watch(openAudioControllerProvider);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.library_music_outlined,
              size: 72,
              color: colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 16),
            Text('Your library is empty', style: textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(
              'Open audio files or a folder to build your songs, artists '
              'and albums.',
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: openingAudio
                  ? null
                  : () =>
                        ref.read(openAudioControllerProvider.notifier)
                            .pickFiles(),
              icon: const Icon(Icons.audio_file_outlined),
              label: const Text('Open audio files'),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: openingAudio
                  ? null
                  : () =>
                        ref.read(openAudioControllerProvider.notifier)
                            .pickFolder(),
              icon: const Icon(Icons.folder_open_outlined),
              label: const Text('Open audio folder'),
            ),
          ],
        ),
      ),
    );
  }
}

class _NoResults extends StatelessWidget {
  const _NoResults({required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          'No results for "$query"',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
