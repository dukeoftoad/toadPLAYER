// The standalone player's home: a search top bar, library tabs
// (Songs / Artists / Albums / Playlists), and the moved file/queue actions.
// Replaces the old button-row shell.
import 'dart:async';
import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/controllers/open_audio_controller.dart';
import 'package:toadplayer/providers/library_collections_provider.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/providers/settings_provider.dart';
import 'package:toadplayer/screens/library_detail_screen.dart';
import 'package:toadplayer/screens/now_playing_screen.dart';
import 'package:toadplayer/screens/settings/settings_screen.dart';
import 'package:toadplayer/services/audio_file_open_service.dart';
import 'package:toadplayer/services/platform_bridge.dart';
import 'package:toadplayer/utils/desktop_platform.dart';
import 'package:toadplayer/widgets/app_snack_bar.dart';
import 'package:toadplayer/widgets/cached_cover_image.dart';
import 'package:toadplayer/widgets/desktop/desktop_player_bar.dart';
import 'package:toadplayer/widgets/library/library_views.dart';
import 'package:toadplayer/widgets/lyrics_preview_card.dart';
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
  StreamSubscription<List<OpenAudioFile>>? _osOpenRequests;
  String _query = '';

  @override
  void initState() {
    super.initState();
    // Consume OS "Open with Toadplayer" events (ACTION_VIEW / ACTION_SEND).
    // The service buffers batches raised before this listener attached;
    // takePending() drains those, the stream feeds everything after it.
    _osOpenRequests = AudioFileOpenService.instance.requests.listen(
      _handleOsOpenBatch,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      for (final batch in AudioFileOpenService.instance.takePending()) {
        _handleOsOpenBatch(batch);
      }
    });
  }

  @override
  void dispose() {
    unawaited(_osOpenRequests?.cancel());
    _searchController.dispose();
    super.dispose();
  }

  void _setQuery(String value) => setState(() => _query = value);

  Future<void> _handleOsOpenBatch(List<OpenAudioFile> files) async {
    if (!mounted) return;
    try {
      await ref.read(openAudioControllerProvider.notifier).open(files);
    } on Object catch (error) {
      if (mounted) showCannotOpenFileSnackBar(context, error);
    }
  }

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
              child: Stack(
                children: [
                  TabBarView(
                    children: [
                      _SongsTab(tracks: tracks, query: _query),
                      _ArtistsTab(tracks: tracks, query: _query),
                      _AlbumsTab(tracks: tracks, query: _query),
                      _PlaylistsTab(query: _query),
                    ],
                  ),
                  // The home-screen lyrics widget follows the current line
                  // above the mini player; the play/pause button owns the
                  // bottom-right corner where the queue chip used to sit.
                  const LyricsPreviewCard(),
                  const _PlayPauseFab(),
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
            if (mediaItem != null)
              PopupMenuItem(
                value: 'full_player',
                child: _menuRow(
                  context,
                  Icons.open_in_full,
                  'Full player',
                ),
            ),
            if (queueLength > 0)
              PopupMenuItem(
                value: 'queue',
                child: _menuRow(context, Icons.queue_music_outlined, 'Queue'),
              ),
            const PopupMenuDivider(),
            PopupMenuItem(
              value: 'settings',
              child: _menuRow(context, Icons.settings_outlined, 'Settings'),
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

  /// Picker failures were previously swallowed by the zone logger; surface
  /// them so an empty folder pick is not mistaken for a dead button.
  Future<void> _pickAudioFiles(BuildContext context, WidgetRef ref) async {
    try {
      await ref.read(openAudioControllerProvider.notifier).pickFiles();
    } on Object catch (error) {
      if (context.mounted) showCannotOpenFileSnackBar(context, error);
    }
  }

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
        _pickAudioFiles(context, ref);
      case 'full_player':
        Navigator.of(context).push(
          NowPlayingRoute(child: const NowPlayingScreen()),
        );
      case 'queue':
        showPlayerQueueSheet(context, Theme.of(context).colorScheme);
      case 'settings':
        Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const SettingsScreen()),
        );
    }
  }
}

/// The Songs tab: every session track with artwork, artist/album line and
/// duration, with a sort menu that orders the list — including search
/// results. Long-press offers play next, add to queue and playlists.
class _SongsTab extends ConsumerWidget {
  const _SongsTab({required this.tracks, required this.query});

  final List<LibraryTrack> tracks;
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentQueueIndexProvider);
    final controller = ref.read(musicPlayerControllerProvider);
    final sort = ref.watch(librarySortProvider);
    final filtered = tracks
        .where(
          (track) => libraryMatchesQuery([
            track.item.title,
            track.item.artist,
            track.item.album,
          ], query),
        )
        .toList();
    final sorted = sortLibraryTracks(filtered, sort);

    if (tracks.isEmpty) return const _LibraryEmptyState();
    if (filtered.isEmpty) return _NoResults(query: query);

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
      itemCount: sorted.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) return _SortBar(count: filtered.length, sort: sort);
        final track = sorted[index - 1];
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

/// The slim header above the song rows: how many rows match, and the sort
/// menu that orders them.
class _SortBar extends ConsumerWidget {
  const _SortBar({required this.count, required this.sort});

  final int count;
  final LibrarySort sort;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
      child: Row(
        children: [
          Text(
            count == 1 ? '1 song' : '$count songs',
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const Spacer(),
          PopupMenuButton<LibrarySort>(
            tooltip: 'Sort songs',
            initialValue: sort,
            onSelected: (value) =>
                ref.read(librarySortProvider.notifier).set(value),
            itemBuilder: (context) => [
              for (final option in LibrarySort.values)
                PopupMenuItem(
                  value: option,
                  child: Row(
                    children: [
                      Icon(
                        option.icon,
                        size: 18,
                        color: option == sort
                            ? colorScheme.primary
                            : colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(width: 12),
                      Expanded(child: Text(option.label)),
                      if (option == sort)
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
                  sort.label,
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
                // Lazily hydrated rows keep an empty `tracks` list but a full
                // membership index; count from the index, not the list.
                '${playlist.trackCount} '
                '${playlist.trackCount == 1 ? 'song' : 'songs'}',
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
    // The dialog's text controller is created per call; dispose it once the
    // dialog is gone instead of leaking it for the lifetime of the app.
  ).whenComplete(controller.dispose);
}

class _PlaylistThumbnail extends StatelessWidget {
  const _PlaylistThumbnail({required this.playlist});

  final UserPlaylistCollection playlist;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    // The user's custom cover wins over the derived first-track preview;
    // the playlist picker sheet applies the same precedence.
    final coverPath = (playlist.coverImagePath ?? '').trim();
    final preview = (playlist.previewCover ?? '').trim();
    final cover = coverPath.isNotEmpty ? coverPath : preview;

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
                  : () async {
                      try {
                        await ref
                            .read(openAudioControllerProvider.notifier)
                            .pickFiles();
                      } on Object catch (error) {
                        if (context.mounted) {
                          showCannotOpenFileSnackBar(context, error);
                        }
                      }
                    },
              icon: const Icon(Icons.audio_file_outlined),
              label: const Text('Open audio files'),
            ),
            const SizedBox(height: 12),
            if (ref
                .watch(settingsProvider)
                .defaultAudioFolder
                .isNotEmpty) ...[
              FilledButton.tonalIcon(
                onPressed: openingAudio
                    ? null
                    : () => _playDefaultFolder(context, ref),
                icon: const Icon(Icons.play_circle_outline),
                label: const Text('Play default folder'),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => const SettingsScreen(),
                  ),
                ),
                icon: const Icon(Icons.folder_open_outlined),
                label: const Text('Folders & settings'),
              ),
            ] else
              OutlinedButton.icon(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => const SettingsScreen(),
                  ),
                ),
                icon: const Icon(Icons.folder_open_outlined),
                label: const Text('Folders & settings'),
              ),
          ],
        ),
      ),
    );
  }

  /// Queues every song in the saved default folder without a picker round
  /// trip; the grant was persisted when the folder was chosen.
  Future<void> _playDefaultFolder(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final folder = ref.read(settingsProvider).defaultAudioFolder;
    if (folder.isEmpty) return;
    try {
      if (Platform.isAndroid) {
        final files = await PlatformBridge.listSafAudioFiles(folder);
        await ref
            .read(openAudioControllerProvider.notifier)
            .open(files.map(OpenAudioFile.parse).whereType<OpenAudioFile>());
      } else {
        await ref
            .read(openAudioControllerProvider.notifier)
            .open([OpenAudioFile(folder)]);
      }
    } on Object catch (error) {
      if (context.mounted) showCannotOpenFileSnackBar(context, error);
    }
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

/// The home screen's play/pause button in the bottom-right corner, above the
/// mini player. Hidden until a queue exists.
class _PlayPauseFab extends ConsumerWidget {
  const _PlayPauseFab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasQueue = ref.watch(
      playQueueProvider.select(
        (state) => (state.value ?? const <MediaItem>[]).isNotEmpty,
      ),
    );
    if (!hasQueue) return const SizedBox.shrink();

    final playing = ref.watch(playbackPlayingProvider);
    final loading = ref.watch(playbackLoadingProvider);

    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 16),
        child: FloatingActionButton(
          heroTag: 'home-play-pause',
          tooltip: playing ? 'Pause' : 'Play',
          onPressed: loading
              ? null
              : () => ref
                    .read(musicPlayerControllerProvider)
                    .togglePlayPause(playing),
          child: loading
              ? const SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(strokeWidth: 2.4),
                )
              : AnimatedSwitcher(
                  duration: const Duration(milliseconds: 180),
                  child: Icon(
                    playing ? Icons.pause : Icons.play_arrow,
                    key: ValueKey(playing),
                  ),
                ),
        ),
      ),
    );
  }
}
