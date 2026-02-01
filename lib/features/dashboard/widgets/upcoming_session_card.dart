import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/booking/booking.dart';

/// Card showing an upcoming session with join meeting support
class UpcomingSessionCard extends StatelessWidget {
  const UpcomingSessionCard({
    required this.booking,
    this.showConsulteeInfo = false,
    super.key,
  });

  final Booking booking;

  /// If true, shows consultee info (for consultant view)
  /// If false, shows consultant info (for consultee view)
  final bool showConsulteeInfo;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final slot = booking.slots.isNotEmpty ? booking.slots.first : null;
    final isGroupProgram = booking.bookingType == BookingType.webinar ||
        booking.bookingType == BookingType.classes;
    final name = isGroupProgram
        ? booking.bookingType.value
        : (booking.consultantName ?? 'Session');

    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerHighest,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          if (booking.appointmentId != null) {
            final typeValue = booking.bookingType.value;
            context.push('/booking-details/${booking.id}'
                '?type=$typeValue');
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Date indicator
              if (slot != null) ...[
                Container(
                  width: 52,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Text(
                        DateFormat('dd').format(slot.startsAt.toLocal()),
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                      Text(
                        DateFormat('MMM').format(slot.startsAt.toLocal()),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
              ],
              // Session info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      booking.planTitle ?? 'Session',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      name,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    if (slot != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        '${DateFormat('h:mm a').format(slot.startsAt.toLocal())}'
                        ' - ${DateFormat('h:mm a').format(slot.endsAt.toLocal())}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              // Join button
              if (booking.canJoinMeeting && booking.appointmentId != null)
                FilledButton.tonal(
                  onPressed: () {
                    context.push('/meeting/${booking.appointmentId}');
                  },
                  child: const Text('Join'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
