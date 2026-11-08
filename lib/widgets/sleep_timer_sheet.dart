import 'package:flutter/material.dart';
import 'package:toadplayer/l10n/l10n.dart';
import 'package:toadplayer/providers/music_player_provider.dart';
import 'package:toadplayer/widgets/app_bottom_sheet.dart';
import 'package:toadplayer/widgets/settings_group.dart';

/// The one sleep-timer sheet used by the full player and the home menu.
///
/// Offers the preset durations, "stop after current track", a custom-duration
/// dialog, and turning the timer off. The playback handler owns the countdown;
/// this sheet only arms/cancels it. Shared so every entry point shows the same
/// options and localized strings.
Future<void> showSleepTimerSheet(
  BuildContext context,
  MusicPlayerController controller,
  ColorScheme colorScheme,
) async {
  const durations = [15, 30, 45, 60];
  final isActive =
      controller.sleepTimerEndsAt != null ||
      controller.sleepTimerStopAfterTrack;
  final selection = await showAppBottomSheet<String>(
    context: context,
    useRootNavigator: true,
    backgroundColor: colorScheme.surfaceContainerHigh,
    title: context.l10n.nowPlayingSleepTimer,
    builder: (sheetContext) => Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SettingsGroup(
        children: [
          for (final minutes in durations)
            SettingsItem(
              icon: Icons.timer_outlined,
              title: sheetContext.l10n.nowPlayingSleepTimerMinutes(minutes),
              showDivider: true,
              onTap: () => Navigator.of(sheetContext).pop('$minutes'),
            ),
          SettingsItem(
            icon: Icons.stop_circle_outlined,
            title: sheetContext.l10n.nowPlayingSleepTimerStopAfterTrack,
            showDivider: true,
            onTap: () => Navigator.of(sheetContext).pop('track'),
          ),
          SettingsItem(
            icon: Icons.edit_outlined,
            title: sheetContext.l10n.nowPlayingSleepTimerCustom,
            showDivider: isActive,
            onTap: () => Navigator.of(sheetContext).pop('custom'),
          ),
          if (isActive)
            SettingsItem(
              icon: Icons.timer_off_outlined,
              title: sheetContext.l10n.nowPlayingSleepTimerOff,
              showDivider: false,
              onTap: () => Navigator.of(sheetContext).pop('off'),
            ),
        ],
      ),
    ),
  );
  if (!context.mounted || selection == null) return;

  if (selection == 'off') {
    controller.cancelSleepTimer();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(context.l10n.nowPlayingSleepTimerCancelled)),
    );
    return;
  }

  if (selection == 'track') {
    controller.setSleepTimerStopAfterTrack();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          context.l10n.nowPlayingSleepTimerSet(
            context.l10n.nowPlayingSleepTimerStopAfterTrack,
          ),
        ),
      ),
    );
    return;
  }

  if (selection == 'custom') {
    final minutes = await _promptCustomSleepMinutes(context, colorScheme);
    if (minutes == null || minutes <= 0) return;
    if (!context.mounted) return;
    controller.setSleepTimer(Duration(minutes: minutes));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          context.l10n.nowPlayingSleepTimerSet(
            context.l10n.nowPlayingSleepTimerMinutesCustom(minutes),
          ),
        ),
      ),
    );
    return;
  }

  final minutes = int.tryParse(selection);
  if (minutes == null) return;
  controller.setSleepTimer(Duration(minutes: minutes));
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        context.l10n.nowPlayingSleepTimerSet(
          context.l10n.nowPlayingSleepTimerMinutes(minutes),
        ),
      ),
    ),
  );
}

/// Prompts the user for a custom sleep timer duration in minutes.
Future<int?> _promptCustomSleepMinutes(
  BuildContext context,
  ColorScheme colorScheme,
) async {
  final controller = TextEditingController(text: '20');
  final result = await showDialog<int>(
    context: context,
    useRootNavigator: true,
    builder: (dialogContext) => AlertDialog(
      backgroundColor: colorScheme.surfaceContainerHigh,
      title: Text(context.l10n.nowPlayingSleepTimerCustom),
      content: TextField(
        controller: controller,
        autofocus: true,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: context.l10n.nowPlayingSleepTimerCustom,
          suffixText: 'min',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(dialogContext).pop(null),
          child: Text(MaterialLocalizations.of(context).cancelButtonLabel),
        ),
        TextButton(
          onPressed: () {
            final value = int.tryParse(controller.text.trim());
            Navigator.of(dialogContext).pop(value);
          },
          child: Text(MaterialLocalizations.of(context).okButtonLabel),
        ),
      ],
    ),
  );
  controller.dispose();
  return result;
}
