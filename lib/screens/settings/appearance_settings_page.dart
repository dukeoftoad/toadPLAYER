// The Appearance page: the theme style picked from full-width cards (System
// Material / the crafted Toad / Glass), light-dark mode and the color
// switches. Promoted from the crowded inline section on the old hub.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toadplayer/models/theme_settings.dart';
import 'package:toadplayer/providers/theme_provider.dart';
import 'package:toadplayer/screens/settings/settings_widgets.dart';
import 'package:toadplayer/theme/toadplayer_theme.dart';

class AppearanceSettingsPage extends ConsumerWidget {
  const AppearanceSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final material = theme.style == AppThemeStyle.material;

    return Scaffold(
      appBar: AppBar(title: const Text('Appearance')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        children: [
          const SettingsSectionHeader('Theme style'),
          _StyleCard(
            icon: Icons.android_outlined,
            title: 'System Material',
            subtitle: 'Material You follows your wallpaper on Android 12+',
            selected: theme.style == AppThemeStyle.material,
            onTap: () => ref
                .read(themeProvider.notifier)
                .setStyle(AppThemeStyle.material),
          ),
          _StyleCard(
            icon: Icons.emoji_nature_outlined,
            title: 'Toad',
            subtitle: 'The crafted Toad palette — moss green, every device',
            selected: theme.style == AppThemeStyle.toad,
            onTap: () =>
                ref.read(themeProvider.notifier).setStyle(AppThemeStyle.toad),
          ),
          _StyleCard(
            icon: Icons.auto_awesome_outlined,
            title: 'Glass',
            subtitle: 'The frosted Toadplayer glass look',
            selected: theme.style == AppThemeStyle.toadplayer,
            onTap: () => ref
                .read(themeProvider.notifier)
                .setStyle(AppThemeStyle.toadplayer),
          ),
          const SettingsSectionHeader('Mode'),
          SettingsCard(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Light or dark', style: Theme.of(context).textTheme.labelLarge),
                  const SizedBox(height: 10),
                  SegmentedButton<ThemeMode>(
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
                ],
              ),
            ),
          ),
          const SettingsSectionHeader('Colors'),
          SettingsCard(
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('Use system colors'),
                  subtitle: const Text(
                    'Follow the wallpaper palette on Android 12+',
                  ),
                  value: theme.useDynamicColor,
                  onChanged: material
                      ? (value) => ref
                            .read(themeProvider.notifier)
                            .setUseDynamicColor(value)
                      : null,
                ),
                SwitchListTile(
                  title: const Text('Pure black dark theme'),
                  subtitle: const Text('AMOLED-friendly black surfaces'),
                  value: theme.useAmoled,
                  onChanged: material
                      ? (value) =>
                          ref.read(themeProvider.notifier).setUseAmoled(value)
                      : null,
                ),
                if (!material)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                    child: Text(
                      'These switches style the System Material theme; the '
                      'Toad and Glass palettes keep their crafted colors.',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          if (theme.style == AppThemeStyle.toadplayer) ...[
            const SettingsSectionHeader('Accent'),
            SettingsCard(
              child: Padding(
                padding: const EdgeInsets.all(16),
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
            ),
          ],
        ],
      ),
    );
  }
}

/// A full-width, tappable theme choice with its own description and a check
/// when selected — an easier target than the old cramped segmented button.
class _StyleCard extends StatelessWidget {
  const _StyleCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: selected
            ? colorScheme.primaryContainer.withValues(alpha: 0.4)
            : colorScheme.surfaceContainerLow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: selected ? colorScheme.primary : colorScheme.outlineVariant,
            width: selected ? 1.6 : 1,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: selected
                      ? colorScheme.primary
                      : colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                if (selected)
                  Icon(Icons.check_circle, color: colorScheme.primary),
              ],
            ),
          ),
        ),
      ),
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
