import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:toadplayer/controllers/player_metadata_controller.dart';
import 'package:toadplayer/l10n/l10n.dart';
import 'package:toadplayer/utils/logger.dart';
import 'package:toadplayer/utils/lyrics_metadata_helper.dart';
import 'package:toadplayer/widgets/app_snack_bar.dart';

final _log = AppLogger('LyricsImport');

/// Picks a `.lrc` file and embeds its content as the playing track's lyrics,
/// through the same tag pipeline the lyrics editor and the online search
/// use, so the write lands in the file the same way every other lyrics save
/// does. An import replaces any lyrics the song had; deleting them first is
/// the editor's job.
Future<void> importLyricsFromFile(
  BuildContext context,
  PlayerMetadataController metadata,
) async {
  final l10n = context.l10n;
  final picked = await FilePicker.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['lrc'],
  );
  if (picked.isEmpty || !context.mounted) return;
  final path = picked.first.path;
  if (path == null || !context.mounted) {
    showAppSnackBar(context, content: Text(l10n.lyricsImportFailed));
    return;
  }
  final String raw;
  try {
    raw = await File(path).readAsString();
  } catch (error) {
    _log.w('Could not read the picked lyrics file: $error');
    if (context.mounted) {
      showAppSnackBar(context, content: Text(l10n.lyricsImportFailed));
    }
    return;
  }
  if (!hasUsableLyricsContent(raw)) {
    if (context.mounted) {
      showAppSnackBar(context, content: Text(l10n.lyricsImportInvalid));
    }
    return;
  }
  try {
    await metadata.saveEditedLyrics(raw);
  } catch (error) {
    _log.w('Could not save the imported lyrics: $error');
    if (context.mounted) {
      showAppSnackBar(context, content: Text(l10n.lyricsEditSaveFailed));
    }
  }
}
