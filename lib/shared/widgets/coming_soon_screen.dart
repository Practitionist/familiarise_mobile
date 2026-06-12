import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Placeholder screen for feature-flagged functionality.
///
/// Shown when a route is gated by [FeatureFlags]. Copy stays neutral about
/// purchasing elsewhere (App Review anti-steering) — it announces the
/// feature, it does not point at the website.
class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({
    super.key,
    required this.feature,
    this.description,
  });

  /// Human-readable feature name (e.g. 'Payments').
  final String feature;

  /// Optional supporting copy under the title.
  final String? description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(feature)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.rocket_launch_outlined,
                size: 72,
                color: theme.colorScheme.primary.withValues(alpha: 0.6),
              ),
              const SizedBox(height: 24),
              Text(
                '$feature is coming soon',
                style: theme.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                description ??
                    "We're building this right now — it will arrive in an "
                        'upcoming update.',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              FilledButton(
                onPressed: () {
                  if (context.canPop()) {
                    context.pop();
                  } else {
                    context.go('/dashboard');
                  }
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
