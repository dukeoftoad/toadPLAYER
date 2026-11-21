// The self-update card on the About page: check the latest GitHub release,
// download the APK through the system download manager, and hand it to the
// package installer. Ported from toadFILES' About update flow.
import 'package:flutter/material.dart';

import 'package:toadplayer/l10n/l10n.dart';
import 'package:toadplayer/services/app_update_service.dart';

/// The update section: one outlined card matching About's own look, holding
/// the whole state machine — check, available, downloading, installer
/// handoff, permission round-trip — driven by [AppUpdateController].
class AppUpdateCard extends StatelessWidget {
  const AppUpdateCard({super.key, this.controller});

  final AppUpdateController? controller;

  @override
  Widget build(BuildContext context) {
    final update = controller ?? AppUpdateController.instance;
    return ListenableBuilder(
      listenable: update,
      builder: (context, _) => _AppUpdateCardView(update: update),
    );
  }
}

class _AppUpdateCardView extends StatelessWidget {
  const _AppUpdateCardView({required this.update});

  final AppUpdateController update;

  @override
  Widget build(BuildContext context) {
    final state = update.state;
    final l10n = context.l10n;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              l10n.updateSectionTitle,
              style: textTheme.titleSmall?.copyWith(
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            switch (state.status) {
              AppUpdateStatus.idle ||
              AppUpdateStatus.upToDate => _IdleView(update: update),
              AppUpdateStatus.checking => _CheckingView(l10n: l10n),
              AppUpdateStatus.available => _AvailableView(update: update),
              AppUpdateStatus.downloading => _DownloadingView(
                update: update,
              ),
              AppUpdateStatus.installing => Text(l10n.updateInstalling),
              AppUpdateStatus.needsPermission => _NeedsPermissionView(
                update: update,
                l10n: l10n,
              ),
              AppUpdateStatus.error => _ErrorView(update: update),
            },
          ],
        ),
      ),
    );
  }
}

/// The resting view: the check button, or "up to date" after a check.
class _IdleView extends StatelessWidget {
  const _IdleView({required this.update});

  final AppUpdateController update;

  @override
  Widget build(BuildContext context) {
    final state = update.state;
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (state.status == AppUpdateStatus.upToDate)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 18,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Expanded(child: Text(l10n.updateUpToDate)),
              ],
            ),
          ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: TextButton.icon(
            onPressed: update.checkForUpdates,
            icon: const Icon(Icons.refresh, size: 18),
            label: Text(l10n.updateCheckButton),
          ),
        ),
      ],
    );
  }
}

class _CheckingView extends StatelessWidget {
  const _CheckingView({required this.l10n});

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      const SizedBox.square(
        dimension: 16,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
      const SizedBox(width: 12),
      Expanded(child: Text(l10n.updateChecking)),
    ],
  );
}

/// A newer release: notes excerpt, size, download button, GitHub link.
class _AvailableView extends StatelessWidget {
  const _AvailableView({required this.update});

  final AppUpdateController update;

  @override
  Widget build(BuildContext context) {
    final state = update.state;
    final l10n = context.l10n;
    final release = state.release;
    if (release == null) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.updateAvailableTitle(release.tagName),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 2),
        Text(
          l10n.updateAvailableDescription,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        if (state.message != null) ...[
          const SizedBox(height: 8),
          Text(
            state.message!,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
        if (release.apkSizeBytes > 0) ...[
          const SizedBox(height: 8),
          Text(
            '${(release.apkSizeBytes / 1024 / 1024).toStringAsFixed(1)} MB',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
        const SizedBox(height: 10),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            FilledButton.icon(
              onPressed: release.apkUrl == null
                  ? null
                  : update.downloadAndInstall,
              icon: const Icon(Icons.download, size: 18),
              label: Text(l10n.updateDownloadAndInstall),
            ),
            TextButton(
              onPressed: update.openReleasePage,
              child: Text(l10n.updateViewOnGithub),
            ),
          ],
        ),
      ],
    );
  }
}

class _DownloadingView extends StatelessWidget {
  const _DownloadingView({required this.update});

  final AppUpdateController update;

  @override
  Widget build(BuildContext context) {
    final progress = update.state.progress;
    final total = progress?.totalBytes ?? -1;
    final bytes = progress?.bytesSoFar ?? 0;
    final fraction = total > 0 ? (bytes / total).clamp(0.0, 1.0) : null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const SizedBox.square(
              dimension: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                total > 0
                    ? '${(bytes / 1024 / 1024).toStringAsFixed(1)} / '
                          '${(total / 1024 / 1024).toStringAsFixed(1)} MB'
                    : '${(bytes / 1024 / 1024).toStringAsFixed(1)} MB',
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        LinearProgressIndicator(value: fraction, minHeight: 4),
      ],
    );
  }
}

/// The "Install unknown apps" round-trip: the APK is already downloaded.
class _NeedsPermissionView extends StatelessWidget {
  const _NeedsPermissionView({required this.update, required this.l10n});

  final AppUpdateController update;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final state = update.state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Icon(
              Icons.security_outlined,
              size: 18,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 8),
            Expanded(child: Text(l10n.updateNeedsPermission)),
          ],
        ),
        if (state.message != null) ...[
          const SizedBox(height: 6),
          Text(
            state.message!,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
        const SizedBox(height: 10),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: FilledButton(
            onPressed: update.retryInstall,
            child: Text(l10n.updateInstallNow),
          ),
        ),
      ],
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.update});

  final AppUpdateController update;

  @override
  Widget build(BuildContext context) {
    final state = update.state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Icon(
              Icons.cloud_off_outlined,
              size: 18,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                state.message ?? context.l10n.updateDownloadStalled,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: TextButton.icon(
            onPressed: update.checkForUpdates,
            icon: const Icon(Icons.refresh, size: 18),
            label: Text(context.l10n.updateCheckButton),
          ),
        ),
      ],
    );
  }
}
