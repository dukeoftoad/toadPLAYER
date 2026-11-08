import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:toadplayer/utils/logger.dart';

final _log = AppLogger('LyricsVerification');

/// How many lyric deletions a song accumulates before the online search
/// stops auto-saving and asks the user to verify the match first. Two
/// deletions signal "the search keeps returning wrong lyrics"; the third
/// cycle therefore runs the verification flow.
const int lyricsVerificationDeletionsRequired = 2;

/// Counts lyric deletions per song so the online search can switch to a
/// verify-first flow once repeated deletions signal persistently wrong
/// matches. Counts live in their own preferences entry: they are behavioral
/// state, not user settings, so a malformed entry here must never block the
/// settings decode path.
class LyricsVerificationStore {
  LyricsVerificationStore({Future<SharedPreferences>? prefs})
    : _prefsFuture = prefs ?? SharedPreferences.getInstance();

  static final LyricsVerificationStore instance = LyricsVerificationStore();

  static const _key = 'lyrics.delete_counts.v1';

  /// The per-song map never grows without bound: once past [_maxEntries],
  /// the smallest counts (the oldest, weakest signals) are dropped first.
  static const _maxEntries = 200;

  final Future<SharedPreferences> _prefsFuture;
  Future<void>? _loading;
  Map<String, int> _counts = {};
  Future<void>? _flushing;

  Future<void> _ensureLoaded() =>
      _loading ??= () async {
        try {
          final prefs = await _prefsFuture;
          final raw = prefs.getString(_key);
          if (raw == null || raw.isEmpty) return;
          final decoded = jsonDecode(raw);
          if (decoded is! Map) return;
          final counts = <String, int>{};
          for (final entry in decoded.entries) {
            final key = entry.key.toString();
            final value = entry.value;
            if (key.isEmpty || value is! int) continue;
            counts[key] = value < 0 ? 0 : value;
          }
          _counts = counts;
        } catch (error) {
          // An unreadable counter map is the same as no counters: the
          // verification layer simply starts fresh.
          _log.w('Failed to load lyrics deletion counts: $error');
        }
      }();

  Future<void> _flush() async {
    final pending = _flushing;
    final flush = () async {
      if (pending != null) await pending;
      try {
        final prefs = await _prefsFuture;
        await prefs.setString(_key, jsonEncode(_counts));
      } catch (error) {
        _log.w('Failed to save lyrics deletion counts: $error');
      }
    }();
    _flushing = flush;
    await flush;
    if (identical(_flushing, flush)) _flushing = null;
  }

  /// The deletion count recorded for [source], or 0.
  Future<int> deletionCountFor(String? source) async {
    if (source == null || source.isEmpty) return 0;
    await _ensureLoaded();
    return _counts[source] ?? 0;
  }

  /// Whether the online search for [source] must verify before saving: the
  /// song has been deleted [lyricsVerificationDeletionsRequired] times, so
  /// the next search is the third cycle.
  Future<bool> needsVerificationFor(String? source) async =>
      await deletionCountFor(source) >= lyricsVerificationDeletionsRequired;

  /// Records one deletion for [source]. A song without a track source
  /// (streams) has no editable lyrics and never accumulates deletions.
  Future<void> recordDeletion(String? source) async {
    if (source == null || source.isEmpty) return;
    await _ensureLoaded();
    _counts[source] = (_counts[source] ?? 0) + 1;
    while (_counts.length > _maxEntries) {
      String? smallest;
      var smallestCount = -1;
      for (final entry in _counts.entries) {
        if (smallest == null || entry.value < smallestCount) {
          smallest = entry.key;
          smallestCount = entry.value;
        }
      }
      if (smallest == null) break;
      _counts.remove(smallest);
    }
    await _flush();
  }

  /// Clears the counter once lyrics for [source] were saved from an approved
  /// match, so the verification signal reflects only deletions since.
  Future<void> resetFor(String? source) async {
    if (source == null || source.isEmpty) return;
    await _ensureLoaded();
    if (_counts.remove(source) == null) return;
    await _flush();
  }
}
