import 'package:flutter_test/flutter_test.dart';
import 'package:toadplayer/services/app_update_checker.dart';
import 'package:toadplayer/utils/version_compare.dart';

/// The self-update flow's pure logic: tag comparison and release parsing,
/// both exercised without any network (the shapes mirror toadFILES'
/// VersionCompare / parseRelease suites, where the flow was proven).
void main() {
  group('VersionCompare.isNewer', () {
    test('a newer patch is newer', () {
      expect(VersionCompare.isNewer('1.5.0', 'v1.5.1'), isTrue);
    });

    test('the same version is not newer, with or without the v', () {
      expect(VersionCompare.isNewer('1.5.0', 'v1.5.0'), isFalse);
      expect(VersionCompare.isNewer('v1.5.0', '1.5.0'), isFalse);
    });

    test('an older release is not newer', () {
      expect(VersionCompare.isNewer('1.5.0', '1.4.9'), isFalse);
    });

    test('components compare numerically, not lexicographically', () {
      expect(VersionCompare.isNewer('1.9.0', '1.10.0'), isTrue);
      expect(VersionCompare.isNewer('1.10.0', '1.9.0'), isFalse);
    });

    test('short tags are padded ("1.5" == "1.5.0")', () {
      expect(VersionCompare.isNewer('1.5', '1.5.0'), isFalse);
      expect(VersionCompare.isNewer('1.5', '1.5.1'), isTrue);
    });

    test('a pre-release is older than its stable release', () {
      expect(VersionCompare.isNewer('1.5.0', '1.5.0-beta'), isFalse);
      expect(VersionCompare.isNewer('1.5.0-beta', '1.5.0'), isTrue);
    });

    test('a malformed tag never pushes an update', () {
      expect(VersionCompare.isNewer('1.5.0', ''), isFalse);
      expect(VersionCompare.isNewer('1.5.0', 'v'), isFalse);
      expect(VersionCompare.isNewer('1.5.0', 'blob'), isFalse);
    });
  });

  group('GithubReleaseChecker.parseRelease', () {
    test('reads a real-shaped release payload', () {
      const body = '''
{
  "tag_name": "v1.5.0",
  "html_url": "https://github.com/dukeoftoad/toadPLAYER/releases/tag/v1.5.0",
  "body": "The mobile-only release.\\r\\n- Toadmark theme\\r\\n- Android and iOS only",
  "assets": [
    {
      "name": "toadplayer-1.5.0-arm64-v8a.apk",
      "browser_download_url": "https://github.com/dukeoftoad/toadPLAYER/releases/download/v1.5.0/toadplayer-1.5.0-arm64-v8a.apk",
      "size": 12345678
    }
  ]
}
''';
      final release = GithubReleaseChecker.parseRelease(body);
      expect(release.tagName, 'v1.5.0');
      expect(
        release.htmlUrl,
        'https://github.com/dukeoftoad/toadPLAYER/releases/tag/v1.5.0',
      );
      // CR-LF normalized to plain newlines.
      expect(release.notes, contains('release.\n- Toadmark'));
      expect(release.apkName, 'toadplayer-1.5.0-arm64-v8a.apk');
      expect(release.apkUrl, isNotNull);
      expect(release.apkSizeBytes, 12345678);
    });

    test('skips non-APK assets', () {
      const body = '''
{
  "tag_name": "v1.5.0",
  "assets": [
    {"name": "Source code (zip)", "browser_download_url": "https://x/zip", "size": 1},
    {"name": "toadplayer-1.5.0-arm64-v8a.apk", "browser_download_url": "https://x/apk", "size": 42}
  ]
}
''';
      final release = GithubReleaseChecker.parseRelease(body);
      expect(release.apkName, 'toadplayer-1.5.0-arm64-v8a.apk');
    });

    test('prefers the release APK over an alpha-named one', () {
      const body = '''
{
  "tag_name": "v1.5.0",
  "assets": [
    {"name": "toadplayer-alpha-r99-abc123-arm64-v8a.apk", "browser_download_url": "https://x/alpha", "size": 10},
    {"name": "toadplayer-1.5.0-arm64-v8a.apk", "browser_download_url": "https://x/real", "size": 20}
  ]
}
''';
      final release = GithubReleaseChecker.parseRelease(body);
      expect(release.apkUrl, 'https://x/real');
    });

    test('falls back to the alpha APK when it is all there is', () {
      const body = '''
{
  "tag_name": "v1.5.0",
  "assets": [
    {"name": "toadplayer-alpha-r99-abc123-arm64-v8a.apk", "browser_download_url": "https://x/alpha", "size": 10}
  ]
}
''';
      final release = GithubReleaseChecker.parseRelease(body);
      expect(release.apkUrl, 'https://x/alpha');
    });

    test('a release with no APK keeps a null url', () {
      const body = '{"tag_name": "v1.5.0", "assets": []}';
      final release = GithubReleaseChecker.parseRelease(body);
      expect(release.tagName, 'v1.5.0');
      expect(release.apkUrl, isNull);
    });

    test('a payload without a tag fails with a friendly message', () {
      expect(
        () => GithubReleaseChecker.parseRelease('{"assets": []}'),
        throwsA(isA<UpdateCheckException>()),
      );
    });

    test('garbage fails with a friendly message, not a FormatException', () {
      expect(
        () => GithubReleaseChecker.parseRelease('{not json'),
        throwsA(isA<UpdateCheckException>()),
      );
    });
  });

  group('GithubReleaseChecker.exceptionFor', () {
    test('403 maps to the rate limit', () {
      expect(
        GithubReleaseChecker.exceptionFor(403),
        isA<UpdateCheckRateLimitException>(),
      );
    });

    test('5xx maps to the retryable shape', () {
      expect(
        GithubReleaseChecker.exceptionFor(502),
        isA<UpdateCheckRetryableException>(),
      );
    });

    test('other 4xx maps to the plain friendly error', () {
      expect(
        GithubReleaseChecker.exceptionFor(404),
        isA<UpdateCheckException>(),
      );
      expect(
        GithubReleaseChecker.exceptionFor(404),
        isNot(isA<UpdateCheckRateLimitException>()),
      );
    });
  });
}
