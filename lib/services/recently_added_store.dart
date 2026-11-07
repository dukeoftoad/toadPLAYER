import 'package:shared_preferences/shared_preferences.dart';

/// Remembers when every source first entered the session library, so the
/// Playlists tab can offer a "Recently added" smart playlist that survives
/// restarts. Sources never recorded (for example a restored queue from an
/// older build) sort last, in queue order.
class RecentlyAddedStore {
  RecentlyAddedStore._();

  static final RecentlyAddedStore instance = RecentlyAddedStore._();

  static const _prefKey = 'library_recently_added_first_seen';
  static const _maxEntries = 2000;

  Future<Map<String, int>>? _loading;

  Future<Map<String, int>> _load() {
    final pending = _loading;
    if (pending != null) return pending;
    final future = SharedPreferences.getInstance()
        .then((prefs) => prefs.getStringList(_prefKey) ?? const <String>[])
        .then((rows) {
          final map = <String, int>{};
          // "source|milliseconds": a source never contains a NUL and the
          // open pipeline already rejects those, so the join is unambiguous.
          for (final row in rows) {
            final separator = row.lastIndexOf('|');
            if (separator <= 0 || separator == row.length - 1) continue;
            final millis = int.tryParse(row.substring(separator + 1));
            if (millis == null || millis <= 0) continue;
            map[row.substring(0, separator)] = millis;
          }
          return map;
        })
      ..whenComplete(() => _loading = null);
    _loading = future;
    return future;
  }

  /// Records [sources] as added now; sources already known keep their first
  /// timestamp, so re-opening a folder never reshuffles the playlist.
  Future<void> noteAdded(Iterable<String> sources) async {
    final stamps = await _load();
    final now = DateTime.now().millisecondsSinceEpoch;
    var changed = false;
    for (final source in sources) {
      final clean = source.trim();
      if (clean.isEmpty || stamps.containsKey(clean)) continue;
      stamps[clean] = now;
      changed = true;
    }
    if (!changed) return;
    await _write(stamps);
  }

  /// [sources] ordered most-recently-added first; unrecorded sources keep
  /// their given order at the end.
  Future<List<String>> mostRecentFirst(Iterable<String> sources) async {
    final stamps = await _load();
    final known = <String>[];
    final unknown = <String>[];
    for (final source in sources) {
      (stamps.containsKey(source) ? known : unknown).add(source);
    }
    known.sort((a, b) => (stamps[b] ?? 0).compareTo(stamps[a] ?? 0));
    return [...known, ...unknown];
  }

  Future<void> forgetUnknown(Iterable<String> sources) async {
    final stamps = await _load();
    final removed = sources.toSet();
    if (removed.isEmpty) return;
    final next = Map<String, int>.fromEntries(
      stamps.entries.where((entry) => !removed.contains(entry.key)),
    );
    if (next.length == stamps.length) return;
    await _write(next);
  }

  Future<void> _write(Map<String, int> stamps) async {
    final prefs = await SharedPreferences.getInstance();
    final entries = stamps.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    await prefs.setStringList(_prefKey, [
      for (final entry in entries.take(_maxEntries))
        '${entry.key}|${entry.value}',
    ]);
  }
}
