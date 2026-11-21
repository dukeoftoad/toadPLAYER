import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:toadplayer/constants/app_info.dart';

/// The slice of a GitHub release toadPLAYER needs for the self-update flow.
class GitHubRelease {
  const GitHubRelease({
    required this.tagName,
    required this.htmlUrl,
    this.notes,
    this.apkName,
    this.apkUrl,
    this.apkSizeBytes = 0,
  });

  final String tagName;
  final String htmlUrl;

  /// Release notes body as plain text (markdown kept raw, CR-LF normalized).
  final String? notes;

  /// Null when the release ships no APK. Tag releases always ship one
  /// arm64-v8a APK (`toadplayer-<version>-arm64-v8a.apk`); the guard keeps
  /// the UI honest if a release ever ships without.
  final String? apkName;
  final String? apkUrl;
  final int apkSizeBytes;
}

/// An update-check failure with a ready-to-show, human-readable message.
/// [message] is already phrased for the user — no raw stack or HTTP text.
class UpdateCheckException implements Exception {
  const UpdateCheckException(this.message);
  final String message;

  @override
  String toString() => message;
}

/// GitHub's unauthenticated API rate limit (HTTP 403) was hit. Not retried.
class UpdateCheckRateLimitException extends UpdateCheckException {
  UpdateCheckRateLimitException()
      : super(
          "GitHub's rate limit was hit — wait a few minutes and try again, "
          'or open the release page on github.com.',
        );
}

/// GitHub-side 5xx: transient, so it IS retried, but keeps a ready message.
class UpdateCheckRetryableException extends UpdateCheckException {
  UpdateCheckRetryableException(int code)
      : super('GitHub is having trouble (HTTP $code) — try again in a moment.');
}

/// Fetches toadPLAYER's newest GitHub release.
///
/// PRIVACY STANCE: this is the update feature's only request path. It talks
/// to exactly one endpoint (the repo's releases/latest), sends nothing but a
/// plain GET with the headers GitHub requires, and keeps no cache beyond the
/// in-memory UI state. It runs on the user's "Check for updates" tap and
/// once silently on app open — never periodically. Nothing about the device
/// is sent, stored or logged.
abstract class AppUpdateChecker {
  /// Fetch and parse the latest release. Throws [UpdateCheckException]
  /// shapes on network/HTTP/parse trouble, with user-ready messages.
  Future<GitHubRelease> fetchLatestRelease();
}

class GithubReleaseChecker implements AppUpdateChecker {
  GithubReleaseChecker({
    http.Client? client,
    Uri? apiUrl,
    int maxAttempts = defaultAttempts,
  }) : _client = client ?? http.Client(),
       _apiUrl = apiUrl ??
           Uri.parse(
             'https://api.github.com/repos/${AppInfo.githubRepo}/releases/latest',
           ),
       _maxAttempts = maxAttempts;

  final http.Client _client;
  final Uri _apiUrl;
  final int _maxAttempts;

  @override
  Future<GitHubRelease> fetchLatestRelease() async {
    var attempt = 0;
    while (true) {
      attempt++;
      try {
        return await _fetchOnce();
      } on UpdateCheckRateLimitException {
        rethrow; // GitHub's rate limit: never retried
      } on UpdateCheckRetryableException {
        // GitHub-side 5xx: retried once, then surfaces its ready message.
        if (attempt >= _maxAttempts) rethrow;
      } on UpdateCheckException {
        rethrow; // 4xx and parse failures are permanent
      } catch (_) {
        // Plain network trouble (connect/reset/timeout): retry once.
        if (attempt >= _maxAttempts) rethrow;
      }
    }
  }

  Future<GitHubRelease> _fetchOnce() async {
    final http.Response response;
    try {
      final request = http.Request('GET', _apiUrl)
        ..headers['User-Agent'] = userAgent
        ..headers['Accept'] = 'application/vnd.github+json'
        ..headers['X-GitHub-Api-Version'] = apiVersion;
      response = await http.Response.fromStream(
        _client.send(request).timeout(timeout),
      );
    } on TimeoutException {
      throw const UpdateCheckException(
        'GitHub did not answer in time — check the connection and try again.',
      );
    }
    final code = response.statusCode;
    if (code < 200 || code >= 300) throw exceptionFor(code);
    return parseRelease(response.body);
  }

  /// Parses a GitHub release payload. Tag releases ship one arm64-v8a APK
  /// (`toadplayer-<version>-arm64-v8a.apk`); CI-run builds name theirs with
  /// an `alpha` marker, which nobody should be offered as an update while a
  /// release APK exists — alpha assets are only a fallback when a release
  /// page ships nothing else. Kept a static function so unit tests exercise
  /// real payloads without any network.
  static GitHubRelease parseRelease(String body) {
    final dynamic root;
    try {
      root = jsonDecode(body);
    } on FormatException {
      throw const UpdateCheckException(
        'GitHub sent a release the app could not read — try again later.',
      );
    }
    if (root is! Map<String, dynamic>) {
      throw const UpdateCheckException(
        'GitHub sent a release the app could not read — try again later.',
      );
    }
    final tag = root['tag_name'];
    if (tag is! String || tag.trim().isEmpty) {
      throw const UpdateCheckException(
        'GitHub sent a release without a version tag — try again later.',
      );
    }
    String? apkName;
    String? apkUrl;
    var apkSize = 0;
    String? alphaName;
    String? alphaUrl;
    var alphaSize = 0;
    final assets = root['assets'];
    if (assets is List<dynamic>) {
      for (final asset in assets) {
        if (asset is! Map<String, dynamic>) continue;
        final name = asset['name'];
        if (name is! String || !name.toLowerCase().endsWith('.apk')) continue;
        final url = asset['browser_download_url'];
        final size = asset['size'];
        if (name.toLowerCase().contains('alpha')) {
          alphaName ??= name;
          alphaUrl ??= url is String && url.isNotEmpty ? url : null;
          if (alphaSize == 0 && size is int) alphaSize = size;
          continue;
        }
        apkName ??= name;
        apkUrl ??= url is String && url.isNotEmpty ? url : null;
        if (apkSize == 0 && size is int) apkSize = size;
      }
    }
    apkName ??= alphaName;
    apkUrl ??= alphaUrl;
    apkSize = apkSize == 0 ? alphaSize : apkSize;
    final htmlUrl = root['html_url'];
    final notes = root['body'];
    return GitHubRelease(
      tagName: tag.trim(),
      htmlUrl: htmlUrl is String && htmlUrl.isNotEmpty
          ? htmlUrl
          : 'https://github.com/${AppInfo.githubRepo}/releases',
      notes: notes is String && notes.isNotEmpty
          ? notes.replaceAll('\r\n', '\n')
          : null,
      apkName: apkName,
      apkUrl: apkUrl,
      apkSizeBytes: apkSize,
    );
  }

  /// Maps a non-2xx status to the exception that classifies the failure:
  /// 403 → rate limit, never retried; 5xx → retryable; other 4xx → permanent.
  static UpdateCheckException exceptionFor(int code) {
    if (code == 403) return UpdateCheckRateLimitException();
    if (code >= 500 && code < 600) return UpdateCheckRetryableException(code);
    return UpdateCheckException(
      'GitHub Releases answered HTTP $code — try again later.',
    );
  }

  static const userAgent = 'toadplayer-update-check';
  static const apiVersion = '2022-11-28';
  static const timeout = Duration(seconds: 10);
  static const defaultAttempts = 2;
}
