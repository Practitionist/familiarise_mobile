import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Displays the booking status as a colored pill with icon and description.
class BookingStatusSection extends StatelessWidget {
  final Booking booking;

  /// Whether the viewer is the consultant (changes description text).
  final bool isConsultantView;

  const BookingStatusSection({
    super.key,
    required this.booking,
    required this.isConsultantView,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final statusColors = _getStatusColors(booking.status);
    final description = isConsultantView
        ? _consultantStatusDescription(booking.status)
        : booking.statusDescription;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: statusColors.$1.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(_getStatusIcon(booking.status),
              color: statusColors.$2, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  booking.statusText,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: statusColors.$2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  description,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: statusColors.$2.withValues(alpha: 0.75),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _consultantStatusDescription(RequestStatus status) {
    switch (status) {
      case RequestStatus.pending:
        return 'Waiting for your approval';
      case RequestStatus.approved:
        return 'You approved this request';
      case RequestStatus.approvedPendingPayment:
        return 'Waiting for client payment';
      case RequestStatus.scheduled:
        return 'Confirmed and scheduled';
      case RequestStatus.rejected:
        return 'You declined this request';
      case RequestStatus.cancelled:
        return 'This booking has been cancelled';
      case RequestStatus.expired:
        return 'This request has expired';
      case RequestStatus.completed:
        return 'Session completed';
    }
  }

  (Color, Color) _getStatusColors(RequestStatus status) {
    switch (status) {
      case RequestStatus.pending:
        return (const Color(0xFFFFF3E0), const Color(0xFFE65100));
      case RequestStatus.approved:
        return (const Color(0xFFE8F5E9), const Color(0xFF2E7D32));
      case RequestStatus.scheduled:
        return (const Color(0xFFE3F2FD), const Color(0xFF1565C0));
      case RequestStatus.approvedPendingPayment:
        return (const Color(0xFFFCE4EC), const Color(0xFFC2185B));
      case RequestStatus.cancelled:
      case RequestStatus.rejected:
        return (const Color(0xFFFFEBEE), const Color(0xFFC62828));
      case RequestStatus.expired:
        return (const Color(0xFFF5F5F5), const Color(0xFF616161));
      case RequestStatus.completed:
        return (const Color(0xFFE8F5E9), const Color(0xFF1B5E20));
    }
  }

  IconData _getStatusIcon(RequestStatus status) {
    switch (status) {
      case RequestStatus.pending:
        return Icons.schedule;
      case RequestStatus.approved:
        return Icons.check_circle_outline;
      case RequestStatus.scheduled:
        return Icons.event_available;
      case RequestStatus.approvedPendingPayment:
        return Icons.payment;
      case RequestStatus.cancelled:
        return Icons.cancel_outlined;
      case RequestStatus.rejected:
        return Icons.block;
      case RequestStatus.expired:
        return Icons.timer_off;
      case RequestStatus.completed:
        return Icons.check_circle;
    }
  }
}
