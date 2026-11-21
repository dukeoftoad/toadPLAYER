import 'package:flutter_test/flutter_test.dart';
import 'package:toadplayer/utils/string_utils.dart';

void main() {
  group('normalizeOptionalString', () {
    test('trims and keeps non-empty values', () {
      expect(normalizeOptionalString('  Hello '), 'Hello');
    });

    test('drops null, empty and whitespace-only values', () {
      expect(normalizeOptionalString(null), isNull);
      expect(normalizeOptionalString(''), isNull);
      expect(normalizeOptionalString('   '), isNull);
    });

    test('drops literal null spellings', () {
      expect(normalizeOptionalString('null'), isNull);
      expect(normalizeOptionalString(' NULL '), isNull);
    });
  });

  group('parseExplicitFlag', () {
    test('accepts bool, number and string payloads', () {
      expect(parseExplicitFlag(true), isTrue);
      expect(parseExplicitFlag(false), isFalse);
      expect(parseExplicitFlag(1), isTrue);
      expect(parseExplicitFlag(0), isFalse);
      expect(parseExplicitFlag('true'), isTrue);
      expect(parseExplicitFlag(' 1 '), isTrue);
      expect(parseExplicitFlag('False'), isFalse);
      expect(parseExplicitFlag('0'), isFalse);
    });

    test('returns null for unknown payloads', () {
      expect(parseExplicitFlag(null), isNull);
      expect(parseExplicitFlag(''), isNull);
      expect(parseExplicitFlag('null'), isNull);
      expect(parseExplicitFlag('yes'), isFalse);
    });
  });

  group('normalizeCoverReference', () {
    test('completes protocol-relative URLs', () {
      expect(
        normalizeCoverReference('//example.com/a.jpg'),
        'https://example.com/a.jpg',
      );
    });

    test('keeps http(s) and local references', () {
      expect(normalizeCoverReference('http://a/b.jpg'), 'http://a/b.jpg');
      expect(normalizeCoverReference('https://a/b.jpg'), 'https://a/b.jpg');
      expect(normalizeCoverReference('/storage/a.jpg'), '/storage/a.jpg');
      expect(normalizeCoverReference('content://media/a'), 'content://media/a');
      expect(normalizeCoverReference('file:///tmp/a.jpg'), 'file:///tmp/a.jpg');
      expect(normalizeCoverReference(r'C:\Users\a.jpg'), r'C:\Users\a.jpg');
    });

    test('drops bare hostnames and empty values', () {
      expect(normalizeCoverReference('example.com/a.jpg'), isNull);
      expect(normalizeCoverReference('  '), isNull);
      expect(normalizeCoverReference(null), isNull);
    });

    test('normalizeStoredCoverReference also keeps network sources', () {
      expect(
        normalizeStoredCoverReference('network://smb/a.jpg'),
        'network://smb/a.jpg',
      );
      expect(normalizeStoredCoverReference('https://a/b.jpg'), 'https://a/b.jpg');
      expect(normalizeStoredCoverReference('example.com/a.jpg'), isNull);
    });
  });

  group('normalizeRemoteHttpUrl', () {
    test('keeps only http(s)', () {
      expect(normalizeRemoteHttpUrl('http://a/b'), 'http://a/b');
      expect(normalizeRemoteHttpUrl('https://a/b'), 'https://a/b');
      expect(normalizeRemoteHttpUrl('/storage/a'), isNull);
      expect(normalizeRemoteHttpUrl('content://a'), isNull);
    });
  });

  group('formatBytes', () {
    test('formats each magnitude boundary', () {
      expect(formatBytes(0), '0 B');
      expect(formatBytes(512), '512 B');
      expect(formatBytes(1024), '1.0 KB');
      expect(formatBytes(3.4 * 1024 ~/ 1), '3.4 KB');
      expect(formatBytes(12 * 1024 * 1024), '12.0 MB');
      expect(formatBytes(1024 * 1024 * 1024), '1.00 GB');
    });
  });

  test('formatMegabytes', () {
    expect(formatMegabytes(0), '0.0');
    expect(formatMegabytes(3.4 * 1024 * 1024), '3.4');
  });

  group('formatClock', () {
    test('pads seconds below ten', () {
      expect(formatClock(5), '0:05');
      expect(formatClock(65), '1:05');
      expect(formatClock(600), '10:00');
    });

    test('rounds fractional seconds', () {
      expect(formatClock(5.4), '0:05');
      expect(formatClock(5.5), '0:06');
    });
  });

  group('formatSampleRateKHz', () {
    test('omits decimals for whole kHz', () {
      expect(formatSampleRateKHz(44100), '44.1kHz');
      expect(formatSampleRateKHz(48000), '48kHz');
      expect(formatSampleRateKHz(192000), '192kHz');
    });
  });

  group('buildDisplayAudioQuality', () {
    test('prefers bitrate with format', () {
      expect(buildDisplayAudioQuality(bitrateKbps: 320, format: 'mp3'), 'MP3 320kbps');
      expect(buildDisplayAudioQuality(bitrateKbps: 320), '320kbps');
    });

    test('uses bit depth and sample rate without bitrate', () {
      expect(
        buildDisplayAudioQuality(bitDepth: 24, sampleRate: 96000),
        '24-bit/96kHz',
      );
    });

    test('falls back to the stored label', () {
      expect(buildDisplayAudioQuality(storedQuality: 'FLAC Stereo'), 'FLAC Stereo');
      expect(buildDisplayAudioQuality(), isNull);
    });
  });

  group('isPlaceholderQualityLabel', () {
    test('recognizes marketing placeholders', () {
      expect(isPlaceholderQualityLabel('Hi-Res'), isTrue);
      expect(isPlaceholderQualityLabel(' lossless '), isTrue);
      expect(isPlaceholderQualityLabel('BEST'), isTrue);
      expect(isPlaceholderQualityLabel('CD'), isTrue);
      expect(isPlaceholderQualityLabel('FLAC 24-bit'), isFalse);
      expect(isPlaceholderQualityLabel(null), isFalse);
      expect(isPlaceholderQualityLabel(''), isFalse);
    });
  });
}
