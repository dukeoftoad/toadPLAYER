import 'package:flutter_test/flutter_test.dart';
import 'package:toadplayer/utils/int_utils.dart';

void main() {
  group('readPositiveInt', () {
    test('accepts positive numbers and numeric strings', () {
      expect(readPositiveInt(1), 1);
      expect(readPositiveInt(2.0), 2);
      expect(readPositiveInt('42'), 42);
      expect(readPositiveInt(' 7 '), 7);
    });

    test('rejects zero, negatives and unparsable input', () {
      expect(readPositiveInt(null), isNull);
      expect(readPositiveInt(0), isNull);
      expect(readPositiveInt(-3), isNull);
      expect(readPositiveInt(''), isNull);
      expect(readPositiveInt('abc'), isNull);
      expect(readPositiveInt('0'), isNull);
      expect(readPositiveInt('-1'), isNull);
    });
  });

  group('extractDurationMs', () {
    test('prefers duration_ms in any shape', () {
      expect(extractDurationMs({'duration_ms': 1500}), 1500);
      expect(extractDurationMs({'duration_ms': 12.5}), 12);
      expect(extractDurationMs({'duration_ms': '2100'}), 2100);
    });

    test('converts duration seconds to milliseconds', () {
      expect(extractDurationMs({'duration': 3}), 3000);
      expect(extractDurationMs({'duration': '2.5'}), 2500);
    });

    test('ignores zero and negative values', () {
      expect(extractDurationMs({'duration_ms': 0, 'duration': 4}), 4000);
      expect(extractDurationMs({'duration_ms': -5}), 0);
      expect(extractDurationMs({}), 0);
    });
  });
}
