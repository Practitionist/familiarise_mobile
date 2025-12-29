import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Result of reschedule dialog/sheet
sealed class RescheduleResult {
  const RescheduleResult();
}

/// User confirmed reschedule for consultation or entire subscription
class RescheduleEntire extends RescheduleResult {
  const RescheduleEntire();
}

/// User wants to reschedule a specific session (subscription only)
class RescheduleSession extends RescheduleResult {
  const RescheduleSession();
}

/// Shows reschedule options sheet for subscriptions
///
/// Returns [RescheduleEntire] if user wants to reschedule entire subscription
/// Returns [RescheduleSession] if user wants to reschedule individual session
/// Returns null if cancelled
Future<RescheduleResult?> showRescheduleOptionsSheet({
  required BuildContext context,
  required Booking booking,
}) async {
  return showModalBottomSheet<RescheduleResult>(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => _RescheduleOptionsSheet(booking: booking),
  );
}

/// Shows confirmation dialog for rescheduling a consultation
///
/// Returns true if confirmed, false if cancelled
Future<bool> showRescheduleConfirmationDialog({
  required BuildContext context,
  required Booking booking,
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (context) => _RescheduleConfirmationDialog(booking: booking),
  );
  return result ?? false;
}

// ============================================================================
// Reschedule Options Sheet (for subscriptions)
// ============================================================================

class _RescheduleOptionsSheet extends StatelessWidget {
  final Booking booking;

  const _RescheduleOptionsSheet({required this.booking});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Handle bar
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Title
            Text(
              'Reschedule Options',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Choose how you want to reschedule your subscription',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),

            // Option 1: Reschedule entire subscription
            _OptionCard(
              icon: Icons.event_repeat,
              iconColor: theme.colorScheme.primary,
              title: 'Reschedule Entire Subscription',
              description:
                  'Release all scheduled sessions and select new times for the entire subscription period.',
              onTap: () =>
                  Navigator.of(context).pop(const RescheduleEntire()),
            ),
            const SizedBox(height: 12),

            // Option 2: Reschedule one session
            _OptionCard(
              icon: Icons.edit_calendar,
              iconColor: Colors.orange,
              title: 'Reschedule One Session',
              description:
                  'Change the time for a specific session while keeping other sessions unchanged.',
              onTap: () =>
                  Navigator.of(context).pop(const RescheduleSession()),
            ),
            const SizedBox(height: 16),

            // No refund note
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 20,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'No refund for rescheduling. Your payment remains valid.',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Cancel button
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}

class _OptionCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  final VoidCallback onTap;

  const _OptionCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: theme.colorScheme.outlineVariant),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: iconColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: iconColor),
              ),
              const SizedBox(width: 16),
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
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// Reschedule Confirmation Dialog (for consultations)
// ============================================================================

class _RescheduleConfirmationDialog extends StatelessWidget {
  final Booking booking;

  const _RescheduleConfirmationDialog({required this.booking});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AlertDialog(
      title: const Text('Reschedule Consultation?'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your current time slot will be released and you can select a new time.',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),

          // No refund note
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 20,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'No refund for rescheduling',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Show current slot info if available
          if (booking.slots.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              'Current slot:',
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${booking.slots.first.formattedDate} • ${booking.slots.first.formattedTimeRange}',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Reschedule'),
        ),
      ],
    );
  }
}
