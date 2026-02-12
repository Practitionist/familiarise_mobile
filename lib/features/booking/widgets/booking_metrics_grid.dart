import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Data class holding a single metric for the grid.
class BookingMetric {
  final IconData icon;
  final String label;
  final String value;
  const BookingMetric(this.icon, this.label, this.value);
}

/// Displays a row of key booking metrics (duration, price, sessions, etc.).
class BookingMetricsGrid extends StatelessWidget {
  final Booking booking;

  const BookingMetricsGrid({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final metrics = _buildMetrics();
    if (metrics.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: metrics.map((m) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 4),
              child: Column(
                children: [
                  Icon(m.icon, size: 20, color: colorScheme.primary),
                  const SizedBox(height: 6),
                  Text(
                    m.value,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.3,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    m.label,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  List<BookingMetric> _buildMetrics() {
    final metrics = <BookingMetric>[];
    if (booking.planDuration != null) {
      // planDuration is in hours, convert to minutes for display
      metrics.add(BookingMetric(Icons.schedule_rounded, 'Duration',
          '${(booking.planDuration! * 60).toInt()} min'));
    } else if (booking.sessionDurationInHours != null) {
      metrics.add(BookingMetric(Icons.schedule_rounded, 'Per Session',
          '${(booking.sessionDurationInHours! * 60).toInt()} min'));
    }
    metrics.add(BookingMetric(
        Icons.currency_rupee_rounded, 'Price', booking.formattedPrice));
    if (booking.totalSessions != null) {
      metrics.add(BookingMetric(Icons.calendar_view_week_rounded, 'Sessions',
          '${booking.totalSessions}'));
    }
    if (booking.meetingsPerWeek != null) {
      metrics.add(BookingMetric(
          Icons.repeat_rounded, 'Per Week', '${booking.meetingsPerWeek}'));
    }
    if (booking.durationInMonths != null) {
      metrics.add(BookingMetric(Icons.date_range_rounded, 'Duration',
          '${booking.durationInMonths} mo'));
    }
    if (booking.totalHours != null) {
      metrics.add(BookingMetric(Icons.hourglass_bottom_rounded, 'Total',
          '${booking.totalHours!.toStringAsFixed(0)}h'));
    }
    return metrics;
  }
}
