import 'package:flutter/material.dart';
import 'package:toadplayer/controllers/player_metadata_controller.dart';
import 'package:toadplayer/l10n/l10n.dart';
import 'package:toadplayer/utils/logger.dart';
import 'package:toadplayer/utils/lyrics_metadata_helper.dart';
import 'package:toadplayer/widgets/app_bottom_sheet.dart';
import 'package:toadplayer/widgets/app_text_field.dart';
import 'package:toadplayer/widgets/expressive_button.dart';

final _log = AppLogger('LyricsVerification');

/// How many cleaned lyric lines the review sheet shows before summarizing
/// the rest.
const _previewLineLimit = 12;

/// Fetches one result held for review, bound to the source and generation
/// it was fetched under ([OnlineLyricsReview]).
typedef LyricsReviewFetch =
    Future<OnlineLyricsReview?> Function(String track, String artist);

/// What a refine round returns: the details the user searched with, plus
/// the lyrics found for them.
typedef LyricsRefineResult =
    ({String track, String artist, OnlineLyricsReview result});

enum _ReviewAction { save, refine }

/// The verify-first flow for online lyrics on a track whose lyrics were
/// deleted twice: the third search no longer embeds whatever the provider
/// returned. The fetched lyrics go to a review sheet — "does this match
/// what you intended?" — and reach the file only when the user approves
/// them. Wrong matches lead to a refine form (corrected track and artist),
/// another search and another review, repeating until the user approves an
/// exact match or closes the flow; nothing is written without approval.
Future<void> runLyricsVerificationFlow(
  BuildContext context,
  PlayerMetadataController metadata,
) async {
  var lastTrack = metadata.item?.title ?? '';
  var lastArtist = metadata.item?.artist ?? '';
  var fetched = await metadata.fetchOnlineForReview();
  while (fetched != null) {
    if (!context.mounted) return;
    // The sheet outlives track changes on the root navigator, so it is
    // labelled by the details the search actually used, not by the live
    // controller state.
    final subtitle = [lastTrack, lastArtist]
        .where((part) => part.trim().isNotEmpty)
        .join(' · ');
    final action = await _showReviewSheet(context, fetched, subtitle);
    if (!context.mounted) return;
    if (action == _ReviewAction.save) {
      await metadata.saveFetchedOnlineLyrics(
        fetched.raw,
        fetched.parsed,
        source: fetched.source,
        generation: fetched.generation,
      );
      return;
    }
    if (action != _ReviewAction.refine) return;
    final corrected = await showLyricsRefineSheet(
      context,
      initialTrack: lastTrack,
      initialArtist: lastArtist,
      fetch: (track, artist) =>
          metadata.fetchOnlineForReview(track: track, artist: artist),
    );
    if (corrected == null || !context.mounted) return;
    lastTrack = corrected.track;
    lastArtist = corrected.artist;
    fetched = corrected.result;
  }
}

/// The approval sheet for one fetched result: an excerpt of the lyrics plus
/// the save / mismatch choice.
Future<_ReviewAction?> _showReviewSheet(
  BuildContext context,
  OnlineLyricsReview fetched,
  String subtitle,
) {
  final l10n = context.l10n;
  final preview = _preview(fetched.raw);
  final scheme = Theme.of(context).colorScheme;
  return showAppScrollableBottomSheet<_ReviewAction>(
    context: context,
    title: l10n.lyricsVerifyTitle,
    subtitle: subtitle.isEmpty ? null : subtitle,
    builder: (sheetContext, scrollController) => SingleChildScrollView(
      controller: scrollController,
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              l10n.lyricsVerifyQuestion,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 240),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: scheme.surfaceContainerHighest.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: SingleChildScrollView(
                child: Text(
                  preview.text,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: scheme.onSurface,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ),
          if (preview.remaining > 0)
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 6, 24, 0),
              child: Text(
                l10n.lyricsVerifyMoreLines(preview.remaining),
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ExpressiveButton(
                  onPressed: () =>
                      Navigator.pop(sheetContext, _ReviewAction.save),
                  child: Text(l10n.lyricsVerifyLooksRight),
                ),
                const SizedBox(height: 8),
                ExpressiveButton(
                  text: true,
                  onPressed: () =>
                      Navigator.pop(sheetContext, _ReviewAction.refine),
                  child: Text(l10n.lyricsVerifyWrong),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

({String text, int remaining}) _preview(String raw) {
  final cleaned = cleanLyricsForDisplay(raw);
  final lines = (cleaned.trim().isNotEmpty ? cleaned : raw.trim()).split('\n');
  final shown = lines.take(_previewLineLimit).toList();
  return (text: shown.join('\n'), remaining: lines.length - shown.length);
}

/// One refine round: the user corrects the track and artist used for the
/// search, every new search runs a review when it finds lyrics, and a miss
/// keeps the form open so more details can be added. Returns the search
/// details plus the fetched result, or null when the sheet was closed.
Future<LyricsRefineResult?> showLyricsRefineSheet(
  BuildContext context, {
  required String initialTrack,
  required String initialArtist,
  required LyricsReviewFetch fetch,
}) => showAppModalBottomSheet<LyricsRefineResult>(
  context: context,
  useRootNavigator: true,
  isScrollControlled: true,
  builder: (_) => _LyricsRefineSheet(
    initialTrack: initialTrack,
    initialArtist: initialArtist,
    fetch: fetch,
  ),
);

class _LyricsRefineSheet extends StatefulWidget {
  const _LyricsRefineSheet({
    required this.initialTrack,
    required this.initialArtist,
    required this.fetch,
  });

  final String initialTrack;
  final String initialArtist;
  final LyricsReviewFetch fetch;

  @override
  State<_LyricsRefineSheet> createState() => _LyricsRefineSheetState();
}

class _LyricsRefineSheetState extends State<_LyricsRefineSheet> {
  late final TextEditingController _track = TextEditingController(
    text: widget.initialTrack,
  );
  late final TextEditingController _artist = TextEditingController(
    text: widget.initialArtist,
  );
  bool _searching = false;
  String? _error;

  @override
  void dispose() {
    _track.dispose();
    _artist.dispose();
    super.dispose();
  }

  Future<void> _search() async {
    if (_searching) return;
    final track = _track.text.trim();
    final artist = _artist.text.trim();
    if (track.isEmpty && artist.isEmpty) return;
    setState(() {
      _searching = true;
      _error = null;
    });
    final OnlineLyricsReview? fetched;
    try {
      fetched = await widget.fetch(track, artist);
    } catch (error) {
      _log.w('Verification refine search failed: $error');
      if (!mounted) return;
      setState(() {
        _searching = false;
        _error = context.l10n.lyricsVerifyNoResults;
      });
      return;
    }
    if (!mounted) return;
    if (fetched == null) {
      setState(() {
        _searching = false;
        _error = context.l10n.lyricsVerifyNoResults;
      });
      return;
    }
    setState(() => _searching = false);
    Navigator.pop(context, (track: track, artist: artist, result: fetched));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              l10n.lyricsVerifyRefineTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            Text(
              l10n.lyricsVerifyRefineDescription,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            AppTextField(
              controller: _track,
              label: l10n.lyricsVerifyTrackField,
              textInputAction: TextInputAction.next,
              onChanged: _clearError,
            ),
            const SizedBox(height: 12),
            AppTextField(
              controller: _artist,
              label: l10n.lyricsVerifyArtistField,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) {
                _search();
              },
              onChanged: _clearError,
            ),
            if (_error != null)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  _error!,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: scheme.error,
                  ),
                ),
              ),
            const SizedBox(height: 20),
            ExpressiveButton(
              onPressed: _searching ? null : _search,
              child: Text(l10n.lyricsVerifySearch),
            ),
          ],
        ),
      ),
    );
  }

  void _clearError(String _) {
    if (_error == null || !mounted) return;
    setState(() => _error = null);
  }
}
