import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/onboarding_widgets.dart';

/// Step 3 (Consultant): Availability info screen
/// This is just an informational screen explaining that availability
/// slots should be set up on the web dashboard
class AvailabilityInfoStep extends ConsumerWidget {
  const AvailabilityInfoStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            title: 'Availability Setup',
            subtitle: 'One more step to complete your profile',
          ),
          const SizedBox(height: 24),
          // Main info card
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  colorScheme.primaryContainer.withAlpha(50),
                  colorScheme.secondaryContainer.withAlpha(50),
                ],
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: colorScheme.outline.withAlpha(50),
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withAlpha(30),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.calendar_month_outlined,
                    size: 48,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Set Up Your Availability',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Text(
                  'To manage your consultation slots and availability, please use the Familiarise web dashboard.',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          // Features list
          Text(
            'On the web dashboard you can:',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          _FeatureItem(
            icon: Icons.schedule,
            title: 'Set your working hours',
            description: 'Define when you\'re available for consultations',
          ),
          _FeatureItem(
            icon: Icons.date_range,
            title: 'Manage time slots',
            description: 'Create and organize consultation time slots',
          ),
          _FeatureItem(
            icon: Icons.block,
            title: 'Block dates',
            description: 'Mark specific dates as unavailable',
          ),
          _FeatureItem(
            icon: Icons.sync,
            title: 'Calendar sync',
            description: 'Integrate with Google Calendar or Outlook',
          ),
          const SizedBox(height: 32),
          // Web dashboard link card
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.laptop_mac,
                  color: colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Visit familiarise.io',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Sign in with the same account to access the dashboard',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          // Continue message
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.tertiaryContainer.withAlpha(50),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: colorScheme.tertiary,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'You can continue with onboarding and set up your availability later. Your profile will be visible to potential mentees once you add at least one time slot.',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80), // Space for navigation buttons
        ],
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  const _FeatureItem({
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: colorScheme.primary.withAlpha(30),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              size: 20,
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  description,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
