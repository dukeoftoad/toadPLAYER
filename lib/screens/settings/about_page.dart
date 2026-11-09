// The simple About page: who the app is, which build it is, and the legal
// line. Kept deliberately minimal — no remote calls, no links to tap.
import 'package:flutter/material.dart';
import 'package:toadplayer/constants/app_info.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final commit = AppInfo.shortGitCommit;

    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  'assets/brand/logo/png/toadplayer-icon.png',
                  width: 96,
                  height: 96,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.music_note,
                    size: 72,
                    color: colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(AppInfo.appName, style: textTheme.headlineSmall),
              const SizedBox(height: 4),
              Text(
                'A local-first music player with a toad\u2019s calm.',
                textAlign: TextAlign.center,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: colorScheme.outlineVariant),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  child: Column(
                    children: [
                      _row('Version', AppInfo.displayVersion),
                      if (AppInfo.buildNumber.isNotEmpty || commit.isNotEmpty)
                        _row('Build', [
                          if (AppInfo.buildNumber.isNotEmpty)
                            '#${AppInfo.buildNumber}',
                          if (commit.isNotEmpty) commit,
                        ].join(' · ')),
                      _row('License', AppInfo.license),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                AppInfo.copyright,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _row(String label, String value) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(width: 12),
        Text(value),
      ],
    ),
  );
}
