import 'package:flutter/foundation.dart';

class AppInfo {
  static const String version = '0.3.1';

  /// The GitHub Actions run number the installed build came from ("#16"),
  /// injected by CI via --dart-define. Empty in local builds — the version
  /// code itself is the run number, stamped by Gradle from GITHUB_RUN_NUMBER.
  static const String buildNumber = String.fromEnvironment(
    'TOADPLAYER_BUILD_NUMBER',
  );

  /// The release whose What's New tour people see once after updating. Change
  /// it together with the tour's pages when a release earns a new one.
  static const String whatsNewRelease = '0.2.0';

  static const String gitCommit = String.fromEnvironment('GIT_COMMIT');
  static String get shortGitCommit =>
      gitCommit.length > 8 ? gitCommit.substring(0, 8) : gitCommit;

  /// The version shown to people; debug builds stay internal.
  static String get displayVersion => versionLabel();

  @visibleForTesting
  static String versionLabel({bool debug = kDebugMode}) =>
      debug ? 'Internal' : version;

  static const String appName = 'Toadplayer';
  static const String license = 'LGPL-3.0-only';
  static const String copyright = '© 2026 Toadplayer';

  static const String mobileAuthor = 'dukeoftoad';

  static const String githubRepo = 'dukeoftoad/toadPLAYER';
  static const String githubUrl = 'https://github.com/$githubRepo';

  /// Desktop packages are published here; the source stays in [githubRepo].
  static const String desktopGithubRepo = 'dukeoftoad/toadPLAYER';
  static const String remoteConfigApiUrl = '';
}
