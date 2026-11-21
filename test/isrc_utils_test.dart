import 'package:flutter_test/flutter_test.dart';
import 'package:toadplayer/utils/isrc_utils.dart';

void main() {
  group('normalizeIsrc', () {
    test('uppercases and strips separators', () {
      expect(normalizeIsrc('aa-9bq-22-00061'), 'AA9BQ2200061');
      expect(normalizeIsrc(' aa 9bq 22 00061 '), 'AA9BQ2200061');
      expect(normalizeIsrc(null), '');
    });
  });

  group('canonicalIsrcForCopy', () {
    test('returns the compact value for valid ISRCs', () {
      expect(canonicalIsrcForCopy('aa-9bq-22-00061'), 'AA9BQ2200061');
      expect(canonicalIsrcForCopy('AA9BQ2200061'), 'AA9BQ2200061');
    });

    test('keeps invalid values untouched', () {
      expect(canonicalIsrcForCopy('not-an-isrc'), 'not-an-isrc');
      expect(canonicalIsrcForCopy('AA9BQ220006'), 'AA9BQ220006');
      expect(canonicalIsrcForCopy(null), '');
      expect(canonicalIsrcForCopy('  '), '');
    });
  });

  group('formatIsrcForDisplay', () {
    test('groups a valid ISRC', () {
      expect(formatIsrcForDisplay('AA9BQ2200061'), 'AA-9BQ-22-00061');
      expect(formatIsrcForDisplay('aa9bq2200061'), 'AA-9BQ-22-00061');
    });

    test('leaves invalid ISRCs as entered', () {
      expect(formatIsrcForDisplay('maybe?'), 'maybe?');
      expect(formatIsrcForDisplay(null), '');
    });
  });
}
