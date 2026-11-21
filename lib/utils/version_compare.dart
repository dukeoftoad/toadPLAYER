/// Semantic-ish version comparison for release tags against the installed
/// version. Handles the shapes GitHub tags actually use:
///  - an optional leading "v" ("v1.7.0" == "1.7.0"),
///  - dot-separated numeric components ("1.6.1"), with shorter tags treated
///    as padded ("1.6" == "1.6.0"),
///  - "-" pre-release segments split like any other component, and a
///    MISSING suffix means the stable release, so "1.7.0-beta" < "1.7.0".
///
/// Components compare numerically (1.10.0 > 1.9.0), never lexicographically.
/// Pure Dart — no Flutter imports — so the whole thing is unit-testable.
abstract final class VersionCompare {
  /// True only when [candidate] is strictly newer than [current].
  static bool isNewer(String current, String candidate) =>
      compare(current, candidate) < 0;

  /// Component-wise comparison: negative when [a] < [b], positive when
  /// [a] > [b], 0 when equivalent ("1.6" vs "1.6.0"). A string with no
  /// numeric components at all ("", "v", "blob") parses as component 0 —
  /// which deliberately makes it never "newer" than any real release, so a
  /// malformed tag can never push an update.
  static int compare(String a, String b) {
    final left = _parse(a);
    final right = _parse(b);
    if (left == null || right == null) return 0;
    for (var i = 0; i < left.length || i < right.length; i++) {
      final l = i < left.length ? left[i] : _missing;
      final r = i < right.length ? right[i] : _missing;
      if (l.number != r.number) return l.number.compareTo(r.number);
      if (l.suffix != r.suffix) {
        if (l.suffix == null) return 1; // stable outranks its pre-releases
        if (r.suffix == null) return -1;
        return l.suffix!.compareTo(r.suffix!);
      }
    }
    return 0;
  }

  static const _missing = _Component(0, null);
  static final _leadingV = RegExp(r'^[vV]+');
  static final _split = RegExp(r'[.-]');
  static final _part = RegExp(r'^(\d*)(.*)$');

  static List<_Component>? _parse(String version) {
    final cleaned = version.trim().replaceFirst(_leadingV, '');
    if (cleaned.isEmpty) return null;
    return cleaned.split(_split).map((part) {
      final match = _part.firstMatch(part)!;
      final digits = match.group(1) ?? '';
      final suffix = match.group(2) ?? '';
      return _Component(
        int.tryParse(digits) ?? 0,
        suffix.isEmpty ? null : suffix,
      );
    }).toList();
  }
}

class _Component {
  const _Component(this.number, this.suffix);
  final int number;
  final String? suffix;
}
