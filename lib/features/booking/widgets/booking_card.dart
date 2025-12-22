import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Card widget for displaying a booking summary
class BookingCard extends StatelessWidget {
  final Booking booking;
  final VoidCallback? onTap;

  const BookingCard({
    super.key,
    required this.booking,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header: Status and type
              Row(
                children: [
                  _buildStatusChip(theme),
                  const SizedBox(width: 8),
                  Text(
                    booking.bookingType == BookingType.consultation
                        ? 'Consultation'
                        : 'Subscription',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Spacer(),
                  if (booking.planPrice != null)
                    Text(
                      booking.formattedPrice,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),

              // Consultant info
              if (booking.consultantName != null) ...[
                Text(
                  booking.consultantName!,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
              ],

              // Plan title
              if (booking.planTitle != null)
                Text(
                  booking.planTitle!,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),

              // Scheduled time (for consultations)
              if (booking.slots.isNotEmpty) ...[
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      size: 16,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${booking.slots.first.formattedDate} • ${booking.slots.first.formattedTimeRange}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ],

              // Scheduling period (for subscriptions)
              if (booking.schedulingPeriodStartsAt != null) ...[
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.date_range,
                      size: 16,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Period: ${_formatDateRange()}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusChip(ThemeData theme) {
    Color backgroundColor;
    Color foregroundColor;

    switch (booking.status) {
      case RequestStatus.pending:
        backgroundColor = Colors.orange.shade100;
        foregroundColor = Colors.orange.shade800;
      case RequestStatus.approved:
      case RequestStatus.scheduled:
        backgroundColor = Colors.green.shade100;
        foregroundColor = Colors.green.shade800;
      case RequestStatus.approvedPendingPayment:
        backgroundColor = Colors.blue.shade100;
        foregroundColor = Colors.blue.shade800;
      case RequestStatus.cancelled:
      case RequestStatus.rejected:
      case RequestStatus.expired:
        backgroundColor = Colors.red.shade100;
        foregroundColor = Colors.red.shade800;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        booking.statusText,
        style: theme.textTheme.labelSmall?.copyWith(
          color: foregroundColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  String _formatDateRange() {
    final start = booking.schedulingPeriodStartsAt;
    final end = booking.schedulingPeriodEndsAt;
    if (start == null || end == null) return 'TBD';

    const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return '${months[start.month - 1]} ${start.day} - '
        '${months[end.month - 1]} ${end.day}';
  }
}
