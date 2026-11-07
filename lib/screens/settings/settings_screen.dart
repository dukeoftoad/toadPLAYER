// The Settings hub. Every section is a modern nav tile that opens its own
// page: Appearance, Playback & sound, Library & folders, Lyrics and About.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/constants/app_info.dart';
import 'package:toadplayer/models/theme_settings.dart';
import 'package:toadplayer/providers/settings_provider.dart';
import 'package:toadplayer/providers/theme_provider.dart';
import 'package:toadplayer/screens/equalizer_screen.dart';
import 'package:toadplayer/screens/settings/about_page.dart';
import 'package:toadplayer/screens/settings/appearance_settings_page.dart';
import 'package:toadplayer/screens/settings/library_settings_page.dart';
import 'package:toadplayer/screens/settings/lyrics_settings_page.dart';
import 'package:toadplayer/screens/settings/playback_settings_page.dart';
import 'package:toadplayer/screens/settings/settings_widgets.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        children: [
          const SettingsSectionHeader('Look & feel'),
          SettingsCard(
            child: SettingsNavTile(
              icon: Icons.palette_outlined,
              title: 'Appearance',
              subtitle: switch (theme.style) {
                AppThemeStyle.material => 'System Material theme',
                AppThemeStyle.toad => 'Toad theme',
                AppThemeStyle.toadplayer => 'Glass theme',
              },
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => const AppearanceSettingsPage(),
                ),
              ),
            ),
          ),
          const SettingsSectionHeader('Playback & sound'),
          SettingsCard(
            child: Column(
              children: [
                SettingsNavTile(
                  icon: Icons.tune,
                  title: 'Playback settings',
                  subtitle: 'Playback preferences',
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => const PlaybackSettingsPage(),
                    ),
                  ),
                ),
                SettingsNavTile(
                  icon: Icons.equalizer,
                  title: 'Equalizer',
                  subtitle: 'Shape how your music sounds',
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => const EqualizerScreen(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SettingsSectionHeader('Library'),
          SettingsCard(
            child: SettingsNavTile(
              icon: Icons.folder_open_outlined,
              title: 'Library & folders',
              subtitle: settings.defaultAudioFolder.isEmpty
                  ? 'No default folder set'
                  : (settings.defaultAudioFolderName.isEmpty
                        ? settings.defaultAudioFolder
                        : settings.defaultAudioFolderName),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => const LibrarySettingsPage(),
                ),
              ),
            ),
          ),
          const SettingsSectionHeader('Lyrics'),
          SettingsCard(
            child: SettingsNavTile(
              icon: Icons.lyrics_outlined,
              title: 'Lyrics settings',
              subtitle: 'Lyrics preferences',
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => const LyricsSettingsPage(),
                ),
              ),
            ),
          ),
          const SettingsSectionHeader('About'),
          SettingsCard(
            child: SettingsNavTile(
              icon: Icons.info_outline,
              title: 'About ${AppInfo.appName}',
              subtitle: 'Version ${AppInfo.displayVersion}',
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (_) => const AboutPage()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
