import 'package:flutter/material.dart';

import '../../../core/config/feature_flags.dart';
import '../../../domain/entities/booking/booking_entities.dart';

/// Action buttons for a booking (join, chat, pay, reschedule, cancel, review, report).
///
/// All user actions are delegated to callback parameters so the parent screen
/// retains control over navigation, refs, and mounted checks.
class BookingActionButtons extends StatelessWidget {
  final Booking booking;
  final bool isConsultantView;
  final bool isActionLoading;
  final VoidCallback onJoinMeeting;
  final VoidCallback onTalkToExpert;
  final VoidCallback onPayNow;
  final VoidCallback onReschedule;
  final VoidCallback onCancel;
  final VoidCallback onWriteReview;
  final VoidCallback onReportIssue;

  const BookingActionButtons({
    super.key,
    required this.booking,
    required this.isConsultantView,
    required this.isActionLoading,
    required this.onJoinMeeting,
    required this.onTalkToExpert,
    required this.onPayNow,
    required this.onReschedule,
    required this.onCancel,
    required this.onWriteReview,
    required this.onReportIssue,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final actions = <Widget>[];

    // Join Meeting button (for SCHEDULED within time window)
    if (booking.canJoinMeeting) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: isActionLoading ? null : onJoinMeeting,
            icon: const Icon(Icons.videocam),
            label: const Text('Join Meeting'),
            style: FilledButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Chat button
    final chatUserId = isConsultantView
        ? booking.consulteeUserId
        : booking.consultantUserId;
    if (chatUserId != null &&
        booking.status != RequestStatus.cancelled &&
        booking.status != RequestStatus.rejected &&
        booking.status != RequestStatus.expired) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: isActionLoading ? null : onTalkToExpert,
            icon: const Icon(Icons.chat_bubble_outline),
            label: Text(
                isConsultantView ? 'Message Client' : 'Talk to Expert'),
            style: FilledButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Pay Now button (for APPROVED_PENDING_PAYMENT, consultee only).
    // Hidden while payments are deferred — the status section explains
    // that payment completes on the website.
    if (FeatureFlags.payments &&
        !isConsultantView &&
        booking.status == RequestStatus.approvedPendingPayment) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            onPressed: isActionLoading ? null : onPayNow,
            icon: const Icon(Icons.payment),
            label: const Text('Pay Now'),
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFFC2185B),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Reschedule button (consultee only)
    if (!isConsultantView && booking.canReschedule) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: isActionLoading ? null : onReschedule,
            icon: const Icon(Icons.calendar_month),
            label: const Text('Reschedule'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Cancel button
    if (booking.canCancelNow) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: isActionLoading ? null : onCancel,
            icon: const Icon(Icons.cancel_outlined),
            label: const Text('Cancel Booking'),
            style: OutlinedButton.styleFrom(
              foregroundColor: theme.colorScheme.error,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Write Review button (for completed bookings, consultee only)
    if (!isConsultantView &&
        booking.status == RequestStatus.completed &&
        booking.consultantProfileId != null) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: isActionLoading ? null : onWriteReview,
            icon: const Icon(Icons.rate_review_outlined),
            label: const Text('Write a Review'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      );
    }

    // Report Issue button - always visible for active/completed bookings
    if (booking.status != RequestStatus.cancelled &&
        booking.status != RequestStatus.rejected &&
        booking.status != RequestStatus.expired) {
      actions.add(
        SizedBox(
          width: double.infinity,
          child: TextButton.icon(
            onPressed: onReportIssue,
            icon: Icon(
              Icons.report_problem_outlined,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            label: Text(
              'Report an Issue',
              style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
            ),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ),
      );
    }

    // Show info message if actions are disabled due to 24h restriction
    if (!booking.canReschedule &&
        booking.status != RequestStatus.cancelled &&
        booking.status != RequestStatus.completed &&
        booking.status != RequestStatus.rejected &&
        booking.status != RequestStatus.expired &&
        booking.slots.isNotEmpty) {
      actions.add(
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
                size: 16,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Reschedule and cancel are disabled within 24 hours of your appointment',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (actions.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: actions
          .map((w) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: w,
              ))
          .toList(),
    );
  }
}
