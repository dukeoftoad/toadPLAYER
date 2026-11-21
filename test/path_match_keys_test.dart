import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:toadplayer/utils/path_match_keys.dart';

const String _externalStorageDocumentUri =
    'content://com.android.externalstorage.documents/tree/primary%3AMusic'
    '/document/primary%3AMusic%2Fa.flac';

void main() {
  group('empty and marker inputs', () {
    test('null and empty paths produce no keys', () {
      expect(buildPathMatchKeys(null), isEmpty);
      expect(buildPathMatchKeys(''), isEmpty);
      expect(buildPathMatchKeys('   '), isEmpty);
      expect(buildPathMatchKeys('EXISTS:'), isEmpty);
    });

    test('the EXISTS: marker is stripped', () {
      final keys = buildPathMatchKeys('EXISTS:/music/a.flac');
      expect(keys, contains('/music/a.flac'));
    });
  });

  group('case and separator folding', () {
    test('plain paths match case-insensitively', () {
      final upper = buildPathMatchKeys('/Music/A.flac');
      final lower = buildPathMatchKeys('/music/a.flac');
      final shared = upper.intersection(lower);
      expect(shared, isNotEmpty);
    });

    test('backslash and slash spellings match', () {
      final keys = buildPathMatchKeys(r'C:\Music\a.flac');
      expect(keys, contains('C:/Music/a.flac'));
    });

    test('file URIs match plain paths', () {
      final keys = buildPathMatchKeys('/music/a.flac');
      expect(keys, contains('file:///music/a.flac'));
    });
  });

  group('SAF document URIs', () {
    test('share a stable document identity key', () {
      final keys = buildPathMatchKeys(_externalStorageDocumentUri);
      final authority = base64Url.encode(
        utf8.encode('com.android.externalstorage.documents'),
      );
      expect(
        keys,
        contains('saf-document:$authority:primary%3AMusic%2Fa.flac'),
      );
    });

    test('expand primary storage aliases', () {
      final keys = buildPathMatchKeys(_externalStorageDocumentUri);
      expect(keys, contains('/storage/emulated/0/Music/a.flac'));
      expect(keys, contains('/sdcard/Music/a.flac'));
      expect(keys, contains('/mnt/sdcard/Music/a.flac'));
      expect(keys, contains('/storage/self/primary/Music/a.flac'));
    });
  });

  group('Windows verbatim paths', () {
    test('carry the windows-file identity and the plain spelling', () {
      final keys = buildPathMatchKeys(r'\\?\C:\Music\a.flac');
      expect(keys, contains('windows-file:C:/Music/a.flac'));
      expect(keys, contains(r'C:\Music\a.flac'));
      expect(keys, contains('C:/Music/a.flac'));
    });

    test('UNC verbatim paths resolve to their plain UNC form', () {
      final keys = buildPathMatchKeys(r'\\?\UNC\server\share\a.flac');
      expect(keys, contains(r'\\server\share\a.flac'));
      expect(keys, contains('//server/share/a.flac'));
    });
  });

  group('track keys vs physical keys', () {
    test('track keys are extension-stripped', () {
      final keys = buildPathMatchKeys('/music/a.flac');
      expect(keys, contains('/music/a'));
    });

    test('a converted file is the same track but a different physical file', () {
      final flac = buildPathMatchKeys('/music/a.flac');
      final opus = buildPathMatchKeys('/music/a.opus');
      expect(flac.intersection(opus), contains('/music/a'));
      expect(
        buildPhysicalPathMatchKeys('/music/a.flac').intersection(
          buildPhysicalPathMatchKeys('/music/a.opus'),
        ),
        isNot(contains('/music/a')),
      );
    });

    test('physical keys keep the audio extension', () {
      final keys = buildPhysicalPathMatchKeys('/music/a.flac');
      expect(keys, contains('/music/a.flac'));
      expect(keys, isNot(contains('/music/a')));
    });
  });

  group('physicalFilePathsMatch', () {
    test('matches verbatim and plain Windows spellings', () {
      expect(
        physicalFilePathsMatch(r'\\?\C:\Music\a.flac', r'C:\Music\a.flac'),
        isTrue,
      );
    });

    test('matches a SAF document with its sdcard alias', () {
      expect(
        physicalFilePathsMatch(_externalStorageDocumentUri, '/sdcard/Music/a.flac'),
        isTrue,
      );
    });

    test('rejects different files and empty inputs', () {
      expect(physicalFilePathsMatch('/music/a.flac', '/music/b.flac'), isFalse);
      expect(physicalFilePathsMatch(null, '/music/a.flac'), isFalse);
      expect(physicalFilePathsMatch('', ''), isFalse);
    });

    test('isPhysicalFileRetained checks every retained path', () {
      expect(
        isPhysicalFileRetained(r'\\?\C:\Music\a.flac', [
          '/music/b.flac',
          r'C:\Music\a.flac',
        ]),
        isTrue,
      );
      expect(
        isPhysicalFileRetained(r'\\?\C:\Music\a.flac', ['/music/b.flac']),
        isFalse,
      );
    });
  });
}
