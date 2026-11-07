// The Settings hub. Appearance gets its own section, "Library & folders" is
// the new category that owns the moved "Open audio folder" action plus the
// default music folder, and playback, lyrics, the equalizer and the About
// page hang off it in one organized place.
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:toadplayer/constants/app_info.dart';
import 'package:toadplayer/controllers/open_audio_controller.dart';
import 'package:toadplayer/models/theme_settings.dart';
import 'package:toadplayer/providers/settings_provider.dart';
import 'package:toadplayer/providers/theme_provider.dart';
import 'package:toadplayer/screens/equalizer_screen.dart';
import 'package:toadplayer/screens/settings/about_page.dart';
import 'package:toadplayer/screens/settings/lyrics_settings_page.dart';
import 'package:toadplayer/screens/settings/playback_settings_page.dart';
import 'package:toadplayer/services/audio_file_open_service.dart';
import 'package:toadplayer/services/platform_bridge.dart';
import 'package:toadplayer/theme/toadplayer_theme.dart';
import 'package:toadplayer/widgets/app_snack_bar.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        children: [
          const _SectionHeader('Appearance'),
          _Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 14, 16, 4),
                  child: Text('Theme', style: Theme.of(context).textTheme.labelLarge),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: SegmentedButton<AppThemeStyle>(
                    segments: const [
                      ButtonSegment(
                        value: AppThemeStyle.material,
                        icon: Icon(Icons.android_outlined, size: 18),
                        label: Text('System'),
                      ),
                      ButtonSegment(
                        value: AppThemeStyle.toad,
                        icon: Icon(Icons.emoji_nature_outlined, size: 18),
                        label: Text('Toad'),
                      ),
                      ButtonSegment(
                        value: AppThemeStyle.toadplayer,
                        icon: Icon(Icons.auto_awesome_outlined, size: 18),
                        label: Text('Glass'),
                      ),
                    ],
                    selected: {theme.style},
                    onSelectionChanged: (selection) => ref
                        .read(themeProvider.notifier)
                        .setStyle(selection.first),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Text(
                    switch (theme.style) {
                      AppThemeStyle.material =>
                        'Material You follows your wallpaper on Android 12+',
                      AppThemeStyle.toad =>
                        'The crafted Toad palette — moss green, every device',
                      AppThemeStyle.toadplayer =>
                        'The frosted Toadplayer glass look',
                    },
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 6, 16, 8),
                  child: SegmentedButton<ThemeMode>(
                    segments: const [
                      ButtonSegment(
                        value: ThemeMode.system,
                        icon: Icon(Icons.brightness_auto_outlined, size: 18),
                        label: Text('System'),
                      ),
                      ButtonSegment(
                        value: ThemeMode.light,
                        icon: Icon(Icons.light_mode_outlined, size: 18),
                        label: Text('Light'),
                      ),
                      ButtonSegment(
                        value: ThemeMode.dark,
                        icon: Icon(Icons.dark_mode_outlined, size: 18),
                        label: Text('Dark'),
                      ),
                    ],
                    selected: {theme.themeMode},
                    onSelectionChanged: (selection) => ref
                        .read(themeProvider.notifier)
                        .setThemeMode(selection.first),
                  ),
                ),
                SwitchListTile(
                  title: const Text('Use system colors'),
                  subtitle: const Text(
                    'Follow the wallpaper palette on Android 12+',
                  ),
                  value: theme.useDynamicColor,
                  onChanged: theme.style == AppThemeStyle.material
                      ? (value) => ref
                            .read(themeProvider.notifier)
                            .setUseDynamicColor(value)
                      : null,
                ),
                SwitchListTile(
                  title: const Text('Pure black dark theme'),
                  subtitle: const Text('AMOLED-friendly black surfaces'),
                  value: theme.useAmoled,
                  onChanged: theme.style == AppThemeStyle.material
                      ? (value) =>
                          ref.read(themeProvider.notifier).setUseAmoled(value)
                      : null,
                ),
                if (theme.style == AppThemeStyle.toadplayer) ...[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 6),
                    child: Text(
                      'Accent',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Wrap(
                      spacing: 12,
                      children: [
                        for (final accent in ToadplayerAccent.values)
                          _AccentDot(
                            color: ToadplayerTheme.accentColor(
                              accent,
                              Theme.of(context).brightness,
                            ),
                            selected: theme.toadplayerAccent == accent,
                            onTap: () => ref
                                .read(themeProvider.notifier)
                                .setToadplayerAccent(accent),
                          ),
                      ],
                    ),
                  ),
                ] else
                  const SizedBox(height: 8),
              ],
            ),
          ),
          const _SectionHeader('Library & folders'),
          _Card(
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
                  enabled: settings.defaultAudioFolder.isNotEmpty,
                  leading: const Icon(Icons.play_circle_outline),
                  title: const Text('Play default folder'),
                  subtitle: const Text(
                    'Queue every song in the default folder',
                  ),
                  onTap: settings.defaultAudioFolder.isEmpty
                      ? null
                      : () => _playDefaultFolder(context, ref),
                ),
              ],
            ),
          ),
          const _SectionHeader('Playback & sound'),
          _Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.tune),
                  title: const Text('Playback settings'),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => const PlaybackSettingsPage(),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.equalizer),
                  title: const Text('Equalizer'),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => const EqualizerScreen(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const _SectionHeader('Lyrics'),
          _Card(
            child: ListTile(
              leading: const Icon(Icons.lyrics_outlined),
              title: const Text('Lyrics settings'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => const LyricsSettingsPage(),
                ),
              ),
            ),
          ),
          const _SectionHeader('About'),
          _Card(
            child: ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About ${AppInfo.appName}'),
              subtitle: Text('Version ${AppInfo.displayVersion}'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (_) => const AboutPage()),
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

class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 18, 4, 8),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: Theme.of(context).colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}

class _AccentDot extends StatelessWidget {
  const _AccentDot({
    required this.color,
    required this.selected,
    required this.onTap,
  });

  final Color color;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: selected
                ? Theme.of(context).colorScheme.onSurface
                : Colors.transparent,
            width: 2.4,
          ),
        ),
        child: selected
            ? const Icon(Icons.check, size: 18, color: Colors.white)
            : null,
      ),
    );
  }
}
