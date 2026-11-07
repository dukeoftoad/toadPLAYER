import 'dart:async';
import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/providers/settings_provider.dart';
import 'package:toadplayer/services/audio_file_open_service.dart';
import 'package:toadplayer/services/playable_media.dart';
import 'package:toadplayer/services/platform_bridge.dart';
import 'package:toadplayer/services/recently_added_store.dart';
import 'package:toadplayer/utils/audio_format_utils.dart';
import 'package:path/path.dart' as p;

final openAudioControllerProvider = NotifierProvider<OpenAudioController, bool>(
  OpenAudioController.new,
);

class OpenAudioController extends Notifier<bool> {
  int _request = 0;
  final _hydrated = <String>{};
  final _iosLeases = <IosSecurityScopedAccess>[];

  @override
  bool build() {
    ref.listen(localMediaItemProvider, (_, next) {
      final item = next.value;
      if (item == null ||
          !item.id.startsWith('opened:') ||
          !_hydrated.add(item.id)) {
        return;
      }
      final source = item.extras?['source'];
      if (source is String) {
        unawaited(
          ref
              .read(musicPlayerRuntimeProvider)
              .handler
              ?.onSourceMetadataChanged(source),
        );
      }
    });
    ref.onDispose(() {
      _request++;
      for (final token in _iosLeases) {
        unawaited(PlatformBridge.stopAccessingIosBookmark(token));
      }
    });
    return false;
  }

  Future<void> pickFiles() async {
    final result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: openAudioExtensions,
    );
    if (!ref.mounted || result.isEmpty) return;
    await open([
      for (final file in result)
        if (file.path case final path?) OpenAudioFile(path, name: file.name),
    ]);
  }

  Future<void> pickFolder() async {
    if (Platform.isAndroid) {
      final folder = await PlatformBridge.pickSafTree();
      if (!ref.mounted || folder == null) return;
      final uri = folder['tree_uri'];
      if (uri is! String) return;
      final files = await PlatformBridge.listSafAudioFiles(uri);
      if (!ref.mounted) return;
      await open(files.map(OpenAudioFile.parse).whereType<OpenAudioFile>());
      return;
    }
    if (Platform.isIOS) {
      final folder = await PlatformBridge.pickIosDirectory();
      if (!ref.mounted || folder == null) return;
      final access = await PlatformBridge.startAccessingIosBookmark(
        folder.bookmark,
      );
      if (access == null) {
        throw const FileSystemException('Folder access was not granted');
      }
      if (!ref.mounted) {
        await PlatformBridge.stopAccessingIosBookmark(access);
        return;
      }
      await open([OpenAudioFile(access.path)], access: access);
      return;
    }
    final path = await FilePicker.getDirectoryPath();
    if (ref.mounted && path != null) await open([OpenAudioFile(path)]);
  }

  /// Reads tags for every opened source without waiting for each song to
  /// play, so titles, artists, albums and covers show up immediately.
  Future<void> _hydrateMetadata(List<String> sources, int request) async {
    final handler = ref.read(musicPlayerRuntimeProvider).handler;
    if (handler == null) return;
    for (final source in sources) {
      if (!ref.mounted || request != _request) return;
      try {
        await handler.onSourceMetadataChanged(source);
      } on Object {
        // A source that vanished between the pick and this read just keeps
        // its filename as the title.
      }
    }
  }

  /// The menu's Refresh: re-reads tags and embedded covers for every song
  /// currently in the session, one source at a time so a huge queue stays
  /// responsive. Returns how many rows were re-read.
  Future<int> refreshSessionMetadata() async {
    final handler = ref.read(musicPlayerRuntimeProvider).handler;
    if (handler == null) return 0;
    final queue = ref.read(playQueueProvider).value ?? const <MediaItem>[];
    final sources = <String>{
      for (final item in queue)
        if (item.extras?['source'] case final String source)
          if (source.isNotEmpty) source,
    };
    var refreshed = 0;
    for (final source in sources) {
      try {
        await handler.onSourceMetadataChanged(source);
        refreshed++;
      } on Object {
        // A missing file must not stop the rest of the sweep.
      }
    }
    return refreshed;
  }

  /// The menu's Quick refresh: re-lists the saved default folder and appends
  /// only the songs that are not queued yet. Returns how many were added,
  /// or -1 when no default folder is set.
  Future<int> quickRefreshFromDefaultFolder() async {
    final folder = ref.read(settingsProvider).defaultAudioFolder;
    if (folder.isEmpty) return -1;
    final listed = await PlatformBridge.listSafAudioFiles(folder);
    final files = listed
        .map(OpenAudioFile.parse)
        .whereType<OpenAudioFile>()
        .toList(growable: false);
    if (files.isEmpty) return 0;
    final queue = ref.read(playQueueProvider).value ?? const <MediaItem>[];
    final queued = <String>{
      for (final item in queue)
        if (item.extras?['source'] case final String source) source,
    };
    final fresh = [
      for (final file in files)
        if (!queued.contains(file.source)) file,
    ];
    if (fresh.isEmpty) return 0;
    await RecentlyAddedStore.instance.noteAdded([
      for (final file in fresh) file.source,
    ]);
    final controller = ref.read(musicPlayerControllerProvider);
    await controller.enqueueMedia([
      for (final file in fresh)
        PlayableMedia(
          id: 'opened:${file.source}',
          source: file.source,
          title: p.basenameWithoutExtension(file.displayName),
          artist: '',
          format: audioFormatForPath(file.displayName),
        ),
    ]);
    // Tags for the new rows right away, like a plain open does.
    final handler = ref.read(musicPlayerRuntimeProvider).handler;
    if (handler != null) {
      for (final file in fresh) {
        try {
          await handler.onSourceMetadataChanged(file.source);
        } on Object {
          // Keep its filename as the title.
        }
      }
    }
    return fresh.length;
  }

  Future<void> open(
    Iterable<OpenAudioFile> inputs, {
    IosSecurityScopedAccess? access,
  }) async {
    final request = ++_request;
    var retainedAccess = false;
    state = true;
    try {
      final files = await collectOpenAudioFiles(inputs);
      if (!ref.mounted || request != _request) return;
      if (files.isEmpty) {
        throw const FileSystemException('No supported audio files found');
      }
      // An explicit Open with Toadplayer request must not launch the OS handler
      // again when the user's ordinary Library player is external.
      if (ref.read(settingsProvider).playerMode != 'internal') {
        ref.read(settingsProvider.notifier).setPlayerMode('internal');
      }
      if (!ref.mounted || request != _request) return;
      _hydrated.clear();
      await RecentlyAddedStore.instance.noteAdded([
        for (final file in files) file.source,
      ]);
      await ref.read(musicPlayerControllerProvider).playAll([
        for (final file in files)
          PlayableMedia(
            id: 'opened:${file.source}',
            source: file.source,
            title: p.basenameWithoutExtension(file.displayName),
            artist: '',
            format: audioFormatForPath(file.displayName),
          ),
      ], initialIndex: 0);
      if (!ref.mounted || request != _request) return;
      // Tags are otherwise read only while a source plays, so a freshly
      // opened folder showed "Unknown artist" on every row until each song
      // had been played once. Refresh every opened file right away instead;
      // one unreadable file must not stop the remaining rows.
      final sources = [
        for (final file in files) file.source,
      ];
      unawaited(_hydrateMetadata(sources, request));
      if (!ref.mounted || request != _request) return;
      final oldLeases = _iosLeases.toList();
      _iosLeases.clear();
      if (access != null) {
        _iosLeases.add(access);
        retainedAccess = true;
      }
      for (final old in oldLeases) {
        await PlatformBridge.stopAccessingIosBookmark(old);
      }
    } finally {
      if (access != null && !retainedAccess) {
        await PlatformBridge.stopAccessingIosBookmark(access);
      }
      if (ref.mounted && request == _request) state = false;
    }
  }
}
