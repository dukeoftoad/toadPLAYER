import 'package:flutter_test/flutter_test.dart';
import 'package:toadplayer/utils/audio_conversion_utils.dart';

void main() {
  group('availableLosslessBitDepthOptions', () {
    test('offers both depths for unknown sources', () {
      expect(availableLosslessBitDepthOptions(null), [16, 24]);
      expect(availableLosslessBitDepthOptions(0), [16, 24]);
    });

    test('offers only depths below the source', () {
      expect(availableLosslessBitDepthOptions(24), [16]);
      expect(availableLosslessBitDepthOptions(16), isEmpty);
    });
  });

  group('availableLosslessSampleRateOptions', () {
    test('offers every rate for unknown sources', () {
      expect(
        availableLosslessSampleRateOptions(null),
        [192000, 96000, 48000, 44100],
      );
    });

    test('offers only rates below the source', () {
      expect(availableLosslessSampleRateOptions(48000), [44100]);
      expect(availableLosslessSampleRateOptions(44100), isEmpty);
    });
  });

  group('conversionSourceMaximum', () {
    test('returns the highest source value', () {
      expect(conversionSourceMaximum([16, 24, 16]), 24);
    });

    test('any unknown value leaves the batch open', () {
      expect(conversionSourceMaximum([16, null]), isNull);
      expect(conversionSourceMaximum([0, 192000]), isNull);
      expect(conversionSourceMaximum([]), isNull);
    });
  });

  group('normalizeAutoConvert settings', () {
    test('keeps supported values and zero', () {
      expect(normalizeAutoConvertBitDepth(24), 24);
      expect(normalizeAutoConvertBitDepth(0), 0);
      expect(normalizeAutoConvertSampleRate(44100), 44100);
      expect(normalizeAutoConvertSampleRate(0), 0);
    });

    test('replaces unsupported values with the defaults', () {
      expect(normalizeAutoConvertBitDepth(8), 16);
      expect(normalizeAutoConvertSampleRate(22050), 48000);
    });
  });

  group('LosslessConversionQuality', () {
    test('caps only values above the maximum', () {
      const quality = LosslessConversionQuality(maxBitDepth: 16, maxSampleRate: 48000);
      expect(quality.hasCaps, isTrue);
      expect(quality.effectiveBitDepth(24), 16);
      expect(quality.effectiveBitDepth(16), 16);
      expect(quality.effectiveSampleRate(96000), 48000);
      expect(quality.effectiveSampleRate(44100), 44100);
    });

    test('unknown sources adopt the caps', () {
      const quality = LosslessConversionQuality(maxBitDepth: 24);
      expect(quality.effectiveBitDepth(null), 24);
      expect(quality.effectiveSampleRate(null), isNull);
      expect(const LosslessConversionQuality().hasCaps, isFalse);
    });
  });

  group('format classification', () {
    test('lossless targets', () {
      expect(isLosslessConversionTarget(' flac '), isTrue);
      expect(isLosslessConversionTarget('ALAC'), isTrue);
      expect(isLosslessConversionTarget('aiff'), isTrue);
      expect(isLosslessConversionTarget('mp3'), isFalse);
      expect(isLosslessConversionTarget('opus'), isFalse);
    });

    test('lossless sources', () {
      expect(isLosslessConversionSource('M4A'), isTrue);
      expect(isLosslessConversionSource('aif'), isTrue);
      expect(isLosslessConversionSource('mp3'), isFalse);
      expect(isLosslessConversionSource('ogg'), isFalse);
    });

    test('conversion rules', () {
      // Lossless targets need lossless sources.
      expect(
        canConvertAudioFormat(sourceFormat: 'mp3', targetFormat: 'flac'),
        isFalse,
      );
      // Lossy targets accept anything, and same-format lossless re-encoding
      // is allowed for depth/rate reduction.
      expect(
        canConvertAudioFormat(sourceFormat: 'flac', targetFormat: 'mp3'),
        isTrue,
      );
      expect(
        canConvertAudioFormat(sourceFormat: 'flac', targetFormat: 'FLAC'),
        isTrue,
      );
      // Same-format lossy conversion is refused.
      expect(
        canConvertAudioFormat(sourceFormat: 'mp3', targetFormat: 'mp3'),
        isFalse,
      );
    });
  });

  group('convertibleAudioSourceFormat', () {
    test('reads the stored format first', () {
      expect(convertibleAudioSourceFormat(storedFormat: 'flac'), 'FLAC');
      expect(convertibleAudioSourceFormat(storedFormat: 'eac3'), 'EAC3');
    });

    test('falls back to the file name or path extension', () {
      expect(
        convertibleAudioSourceFormat(fileName: 'song.opus', filePath: 'x'),
        'Opus',
      );
      expect(convertibleAudioSourceFormat(filePath: 'dir/song.wav'), 'WAV');
      expect(convertibleAudioSourceFormat(fileName: 'song'), isNull);
      expect(convertibleAudioSourceFormat(), isNull);
    });
  });

  group('conversion output naming', () {
    test('maps target formats to extensions and MIME types', () {
      expect(convertTargetExtAndMime('opus').ext, '.opus');
      expect(convertTargetExtAndMime('opus').mime, 'audio/opus');
      expect(convertTargetExtAndMime('alac').ext, '.m4a');
      expect(convertTargetExtAndMime('aac').mime, 'audio/mp4');
      expect(convertTargetExtAndMime('flac').mime, 'audio/flac');
      expect(convertTargetExtAndMime('WAV').mime, 'audio/wav');
      expect(convertTargetExtAndMime('aif').ext, '.aiff');
      expect(convertTargetExtAndMime('mp3').ext, '.mp3');
    });

    test('renames the source file with the target extension', () {
      expect(convertedOutputFileName(originalFileName: 'song.flac', targetFormat: 'WAV'), 'song.wav');
      expect(convertedOutputFileName(originalFileName: 'song', targetFormat: 'flac'), 'song.flac');
    });

    test('derived library ids are stable', () {
      final first = convertedLibraryItemId('item-1', '/music/a.flac');
      final second = convertedLibraryItemId('item-1', '/music/a.flac');
      expect(first, second);
      expect(first, startsWith('item-1:converted:'));
      expect(
        convertedLibraryItemId('item-1', '/music/b.flac'),
        isNot(first),
      );
    });
  });

  group('convertedAudioBitrateKbps', () {
    test('parses the first number of a lossy bitrate', () {
      expect(convertedAudioBitrateKbps(targetFormat: 'mp3', bitrate: '320 kbps'), 320);
      expect(convertedAudioBitrateKbps(targetFormat: 'aac', bitrate: '256kbps'), 256);
    });

    test('lossless targets have no bitrate', () {
      expect(convertedAudioBitrateKbps(targetFormat: 'flac', bitrate: '320'), isNull);
      expect(convertedAudioBitrateKbps(targetFormat: 'mp3', bitrate: 'quality'), isNull);
    });
  });

  group('LosslessConversionProcessing', () {
    test('normalizes dither and resampler names', () {
      const processing = LosslessConversionProcessing(dither: ' TRIANGULAR ', resampler: 'Soxr');
      expect(processing.normalizedDither, 'triangular');
      expect(processing.normalizedResampler, 'soxr');
      expect(processing.hasDither, isTrue);
      expect(const LosslessConversionProcessing().hasDither, isFalse);
      expect(
        const LosslessConversionProcessing(dither: 'square').normalizedDither,
        'none',
      );
    });

    test('soxr adds precision and cutoff options', () {
      final soxr = losslessResamplerFilterOptions(
        const LosslessConversionProcessing(resampler: 'soxr'),
      );
      final swr = losslessResamplerFilterOptions(
        const LosslessConversionProcessing(resampler: 'swr'),
      );
      expect(swr, ['resampler=swr']);
      expect(soxr, contains('resampler=soxr'));
      expect(soxr, contains('precision=28'));
      expect(soxr, contains('cutoff=0.95'));
    });
  });

  group('lossless labels', () {
    test('bit depth and sample rate labels', () {
      expect(losslessBitDepthLabel(16, originalLabel: 'Original'), '16-bit');
      expect(losslessBitDepthLabel(null, originalLabel: 'Original'), 'Original');
      expect(
        losslessSampleRateLabel(96000, originalLabel: 'Original'),
        '96 kHz',
      );
      expect(
        losslessSampleRateLabel(44100, originalLabel: 'Original'),
        '44.1 kHz',
      );
    });

    test('combined quality label', () {
      expect(
        losslessQualityLabel(
          const LosslessConversionQuality(maxBitDepth: 24, maxSampleRate: 48000),
          originalLabel: 'Original',
          originalQualityLabel: 'Original quality',
        ),
        '24-bit / 48 kHz',
      );
      expect(
        losslessQualityLabel(
          const LosslessConversionQuality(),
          originalLabel: 'Original',
          originalQualityLabel: 'Original quality',
        ),
        'Original quality',
      );
    });

    test('convertedAudioQualityLabel', () {
      const labels = LosslessConversionLabels(
        original: 'Original',
        originalQuality: 'Original quality',
        lossless: '(lossless)',
      );
      expect(
        convertedAudioQualityLabel(
          targetFormat: 'flac',
          bitrate: '',
          labels: labels,
          actualBitDepth: 24,
          actualSampleRate: 96000,
        ),
        'FLAC 24-bit/96 kHz',
      );
      expect(
        convertedAudioQualityLabel(
          targetFormat: 'flac',
          bitrate: '',
          labels: labels,
          losslessQuality: const LosslessConversionQuality(maxSampleRate: 48000),
        ),
        'FLAC 48 kHz',
      );
      expect(
        convertedAudioQualityLabel(targetFormat: 'flac', bitrate: '', labels: labels),
        'FLAC (lossless)',
      );
      expect(
        convertedAudioQualityLabel(targetFormat: 'mp3', bitrate: '320 kbps', labels: labels),
        'MP3 320 kbps',
      );
    });
  });
}
