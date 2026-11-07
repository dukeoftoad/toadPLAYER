// The "Library & folders" page: the moved open-audio-folder action, the
// default music folder and quick playback from it. Promoted from the inline
// section on the old settings hub into its own page.
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:toadplayer/controllers/open_audio_controller.dart';
import 'package:toadplayer/providers/settings_provider.dart';
import 'package:toadplayer/screens/settings/settings_widgets.dart';
import 'package:toadplayer/services/audio_file_open_service.dart';
import 'package:toadplayer/services/platform_bridge.dart';
import 'package:toadplayer/widgets/app_snack_bar.dart';

class LibrarySettingsPage extends ConsumerWidget {
  const LibrarySettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final hasDefaultFolder = settings.defaultAudioFolder.isNotEmpty;

    return Scaffold(
      appBar: AppBar(title: const Text('Library & folders')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        children: [
          const SettingsSectionHeader('Folders'),
          SettingsCard(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.folder_open_outlined),
                  title: const Text('Open audio folder'),
                  subtitle: const Text(
                    "Add a folder's songs to the queue now",
                  ),
                  onTap: () => _openAudioFolder(context, ref),
                ),
                ListTile(
                  leading: const Icon(Icons.folder_special_outlined),
                  title: const Text('Default music folder'),
                  subtitle: Text(
                    settings.defaultAudioFolder.isEmpty
                        ? 'Not set — pick the folder you open most'
                        : (settings.defaultAudioFolderName.isEmpty
                              ? settings.defaultAudioFolder
                              : settings.defaultAudioFolderName),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: settings.defaultAudioFolder.isEmpty
                      ? null
                      : IconButton(
                          tooltip: 'Clear default folder',
                          icon: const Icon(Icons.clear_outlined),
                          onPressed: () => ref
                              .read(settingsProvider.notifier)
                              .setDefaultAudioFolder(''),
                        ),
                  onTap: () => _pickDefaultFolder(context, ref),
                ),
                ListTile(
                  enabled: hasDefaultFolder,
                  leading: const Icon(Icons.play_circle_outline),
                  title: const Text('Play default folder'),
                  subtitle: const Text(
                    'Queue every song in the default folder',
                  ),
                  onTap: hasDefaultFolder
                      ? () => _playDefaultFolder(context, ref)
                      : null,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'The default folder also fills Quick refresh on the home '
              'screen and lets the library rebuild itself without a picker.',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openAudioFolder(BuildContext context, WidgetRef ref) async {
    try {
      await ref.read(openAudioControllerProvider.notifier).pickFolder();
    } on Object catch (error) {
      if (context.mounted) showCannotOpenFileSnackBar(context, error);
    }
  }

  Future<void> _pickDefaultFolder(BuildContext context, WidgetRef ref) async {
    try {
      final picked = await _pickFolderUri();
      if (picked == null) return;
      ref
          .read(settingsProvider.notifier)
          .setDefaultAudioFolder(picked.$1, displayName: picked.$2);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Default folder: ${picked.$2}')),
        );
      }
    } on Object catch (error) {
      if (context.mounted) showCannotOpenFileSnackBar(context, error);
    }
  }

  Future<void> _playDefaultFolder(BuildContext context, WidgetRef ref) async {
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

  /// The same folder pickers the player uses, without starting playback:
  /// Android returns a persistable SAF tree, desktops a plain path.
  Future<(String, String)?> _pickFolderUri() async {
    if (Platform.isAndroid) {
      final folder = await PlatformBridge.pickSafTree();
      final uri = folder?['tree_uri'];
      if (uri is! String || uri.isEmpty) return null;
      final name = folder?['display_name'];
      return (uri, name is String && name.isNotEmpty ? name : uri);
    }
    final path = await FilePicker.getDirectoryPath();
    if (path == null) return null;
    return (path, p.basename(p.normalize(path)));
  }
}
