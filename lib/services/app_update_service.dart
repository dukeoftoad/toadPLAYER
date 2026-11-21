import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:toadplayer/constants/app_info.dart';
import 'package:toadplayer/services/app_update_checker.dart';
import 'package:toadplayer/utils/version_compare.dart';

/// The self-update flow's state, one shape for every screen that watches it
/// (the About card and the home banner).
enum AppUpdateStatus {
  /// Nothing has happened yet.
  idle,

  /// A check is in flight (manual or the silent startup probe).
  checking,

  /// The newest GitHub release is not newer than the installed version.
  upToDate,

  /// A newer release with an APK is available.
  available,

  /// The APK is downloading; [AppUpdateState.progress] tracks the bytes.
  downloading,

  /// The APK finished downloading and the installer was handed the file.
  installing,

  /// The "Install unknown apps" toggle is off; the user was taken to the
  /// setting. The APK is kept — the same button finishes the job after the
  /// round-trip.
  needsPermission,

  /// The check or the download failed; [AppUpdateState.message] says why in
  /// words the user can act on.
  error,
}

class AppUpdateState {
  const AppUpdateState({
    this.status = AppUpdateStatus.idle,
    this.release,
    this.progress,
    this.message,
    this.downloadId,
  });

  final AppUpdateStatus status;
  final GitHubRelease? release;

  /// Download byte counters; null total means indeterminate progress.
  final ({int bytesSoFar, int totalBytes})? progress;
  final String? message;
  final int? downloadId;

  AppUpdateState copyWith({
    AppUpdateStatus? status,
    GitHubRelease? release,
    ({int bytesSoFar, int totalBytes})? progress,
    String? message,
    int? downloadId,
  }) => AppUpdateState(
    status: status ?? this.status,
    release: release ?? this.release,
    progress: progress ?? this.progress,
    message: message,
    downloadId: downloadId ?? this.downloadId,
  );
}

/// Drives the self-update flow: the manual About-page check and download,
/// and the silent once-per-process startup probe that seeds the home banner.
///
/// The network check is Dart ([GithubReleaseChecker]); the download and the
/// installer handoff are the native DownloadManager steps behind the
/// `com.toadplayer.app/update` channel (UpdatePlugin.kt). The controller is
/// a process-wide singleton so the startup probe's finding is still there
/// when the user opens About — no second request.
class AppUpdateController extends ChangeNotifier {
  AppUpdateController({AppUpdateChecker? checker})
      : _checker = checker ?? GithubReleaseChecker();

  final AppUpdateChecker _checker;
  static const _channel = MethodChannel('com.toadplayer.app/update');
  static const _pollInterval = Duration(milliseconds: 500);
  static const _downloadTimeout = Duration(minutes: 10);

  AppUpdateState _state = const AppUpdateState();
  AppUpdateState get state => _state;

  /// Whether the user dismissed the banner for this process. The release
  /// itself stays in [state] so About still seeds from the probe.
  bool _bannerDismissed = false;
  bool get bannerDismissed => _bannerDismissed;

  /// True once the silent probe ran in this process (it never repeats).
  bool _started = false;

  bool _disposed = false;

  void _emit(AppUpdateState next) {
    if (_disposed) return;
    _state = next;
    notifyListeners();
  }

  /// The silent once-per-process probe on app open. Failures are swallowed
  /// by design — airplane mode, no network, GitHub being down stay quiet;
  /// only the manual check shows errors. Never downloads anything.
  void checkSilentlyOnce() {
    if (_started) return;
    _started = true;
    Future<void>(() async {
      final release = await _fetch();
      if (release == null) return;
      if (release.apkUrl != null &&
          VersionCompare.isNewer(AppInfo.version, release.tagName)) {
        _emit(
          _state.status == AppUpdateStatus.downloading ||
                  _state.status == AppUpdateStatus.installing
              ? _state
              : _state.copyWith(status: AppUpdateStatus.available, release: release),
        );
      }
    });
  }

  /// The manual check from the About page. Surfaces every failure as a
  /// ready-to-show message.
  Future<void> checkForUpdates() async {
    _emit(_state.copyWith(status: AppUpdateStatus.checking, message: null));
    try {
      final release = await _checker.fetchLatestRelease();
      if (release.apkUrl != null &&
          VersionCompare.isNewer(AppInfo.version, release.tagName)) {
        _emit(
          _state.copyWith(
            status: AppUpdateStatus.available,
            release: release,
            message: null,
          ),
        );
      } else {
        _emit(
          _state.copyWith(
            status: AppUpdateStatus.upToDate,
            release: release,
            message: null,
          ),
        );
      }
    } on UpdateCheckException catch (error) {
      _emit(
        _state.copyWith(status: AppUpdateStatus.error, message: error.message),
      );
    } catch (error) {
      _emit(
        _state.copyWith(
          status: AppUpdateStatus.error,
          message: 'The update check failed — check the connection and try '
              'again.',
        ),
      );
    }
  }

  /// "Download & install": enqueues the system download, watches it to
  /// completion (the notification shade mirrors the same job), then hands
  /// the APK to the installer — or reports the "Install unknown apps"
  /// round-trip when the toggle is off.
  Future<void> downloadAndInstall() async {
    final release = _state.release;
    final url = release?.apkUrl;
    if (release == null || url == null) return;
    try {
      final id = await _channel.invokeMethod<int>('download', {
        'url': url,
        'fileName': release.apkName ?? 'toadplayer-update.apk',
        'title': 'Toadplayer ${release.tagName}',
        'description': 'Downloading the new release',
      });
      if (id == null) return;
      _emit(
        _state.copyWith(
          status: AppUpdateStatus.downloading,
          downloadId: id,
          progress: (bytesSoFar: 0, totalBytes: release.apkSizeBytes),
        ),
      );
      final done = await _watchDownload(id);
      if (!done) {
        _emit(
          _state.copyWith(
            status: AppUpdateStatus.available,
            message: 'The download did not finish — its notification keeps '
                'any progress; try again when convenient.',
          ),
        );
        return;
      }
      await _install(id);
    } on PlatformException catch (error) {
      _emit(
        _state.copyWith(
          status: AppUpdateStatus.available,
          message: error.message ?? 'The download could not be started.',
        ),
      );
    }
  }

  /// Retries the installer handoff after the user flipped the "Install
  /// unknown apps" toggle. The APK is still on disk from the same job.
  Future<void> retryInstall() async {
    final id = _state.downloadId;
    if (id == null) return;
    await _install(id);
  }

  Future<GitHubRelease?> _fetch() async {
    try {
      return await _checker.fetchLatestRelease();
    } catch (_) {
      return null; // silent probe: any failure is invisible
    }
  }

  /// Polls the system job until it completes or the timeout passes. The
  /// DownloadManager keeps downloading regardless of the watch loop.
  Future<bool> _watchDownload(int id) async {
    final deadline = DateTime.now().add(_downloadTimeout);
    while (DateTime.now().isBefore(deadline)) {
      final snapshot = await _channel
          .invokeMapMethod<String, dynamic>('progress', {'id': id});
      if (snapshot == null) return false;
      final status = snapshot['status'] as String? ?? 'running';
      final bytes = (snapshot['bytesSoFar'] as num?)?.toInt() ?? 0;
      final total = (snapshot['totalBytes'] as num?)?.toInt() ?? -1;
      if (status == 'successful') return true;
      if (status == 'failed' || status == 'vanished') return false;
      if (_state.downloadId == id) {
        _emit(
          _state.copyWith(
            status: AppUpdateStatus.downloading,
            progress: (bytesSoFar: bytes, totalBytes: total),
          ),
        );
      }
      await Future<void>.delayed(_pollInterval);
    }
    return false;
  }

  Future<void> _install(int id) async {
    final outcome = await _channel.invokeMethod<String>('install', {'id': id});
    switch (outcome) {
      case 'started':
        _emit(_state.copyWith(status: AppUpdateStatus.installing));
      case 'needsPermission':
        _emit(_state.copyWith(status: AppUpdateStatus.needsPermission));
      case 'settingsFailed':
        _emit(
          _state.copyWith(
            status: AppUpdateStatus.needsPermission,
            message: 'Could not open the install-permission setting — allow '
                'installs from this app in Android Settings, then tap again.',
          ),
        );
      default:
        _emit(
          _state.copyWith(
            status: AppUpdateStatus.available,
            message: 'The installer could not be opened — the APK is '
                'downloaded; try again.',
          ),
        );
    }
  }

  /// Opens the release page in the browser ("View on GitHub").
  Future<void> openReleasePage() async {
    final url = _state.release?.htmlUrl;
    if (url == null) return;
    await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
  }

  /// Hides the banner for the rest of the process; About keeps the release.
  void dismissBanner() {
    _bannerDismissed = true;
    notifyListeners();
  }

  /// Clears a terminal message back to the pickable state (About's retry).
  void resetToAvailable() {
    if (_state.release?.apkUrl != null) {
      _emit(_state.copyWith(status: AppUpdateStatus.available, message: null));
    } else {
      _emit(const AppUpdateState());
    }
  }

  /// The release the startup probe found, for the home banner; null when
  /// there is nothing to advertise or the user dismissed it.
  GitHubRelease? get bannerRelease {
    if (_bannerDismissed) return null;
    if (_state.status != AppUpdateStatus.available) return null;
    if (!VersionCompare.isNewer(AppInfo.version, _state.release!.tagName)) {
      return null;
    }
    return _state.release;
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  /// Process-wide instance the app shell wires up; tests build their own.
  static final AppUpdateController instance = AppUpdateController();
}
