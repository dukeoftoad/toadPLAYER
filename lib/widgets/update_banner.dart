// The quiet, dismissible "update available" card the silent startup check
// can raise on the library home. Nothing downloads until the user acts;
// "Update" opens the About page with the flow already seeded.
import 'package:flutter/material.dart';

import 'package:toadplayer/l10n/l10n.dart';
import 'package:toadplayer/screens/settings/about_page.dart';
import 'package:toadplayer/services/app_update_service.dart';

class UpdateBanner extends StatelessWidget {
  const UpdateBanner({super.key, this.controller});

  final AppUpdateController? controller;

  @override
  Widget build(BuildContext context) {
    final update = controller ?? AppUpdateController.instance;
    return ListenableBuilder(
      listenable: update,
      builder: (context, _) {
        final release = update.bannerRelease;
        if (release == null) return const SizedBox.shrink();
        final l10n = context.l10n;
        return Card(
          elevation: 0,
          margin: const EdgeInsets.fromLTRB(16, 8, 16, 4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 16,
                    top: 10,
                    bottom: 10,
                    end: 4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.updateBannerTitle(release.tagName),
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        l10n.updateBannerBody,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () => _openAbout(context),
                child: Text(l10n.updateBannerAction),
              ),
              IconButton(
                tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
                onPressed: update.dismissBanner,
                icon: const Icon(Icons.close, size: 18),
              ),
            ],
          ),
        );
      },
    );
  }

  void _openAbout(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => const AboutPage()),
    );
  }
}
