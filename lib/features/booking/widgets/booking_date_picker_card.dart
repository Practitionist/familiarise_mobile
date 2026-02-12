import 'package:flutter/material.dart';

import 'booking_utils.dart';

/// A tappable card that opens a date picker dialog.
///
/// Used in subscription booking to select the scheduling period start date.
class BookingDatePickerCard extends StatelessWidget {
  final DateTime? date;
  final String placeholder;
  final ValueChanged<DateTime> onDateSelected;

  const BookingDatePickerCard({
    super.key,
    required this.date,
    required this.placeholder,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: date ?? DateTime.now().add(const Duration(days: 1)),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365)),
        );
        if (picked != null) {
          onDateSelected(picked);
        }
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.outline),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(
              Icons.calendar_today,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                date != null ? formatBookingDate(date!) : placeholder,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: date != null
                      ? theme.colorScheme.onSurface
                      : theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}

/// A read-only display showing the calculated subscription end date.
///
/// The end date is automatically computed from the start date plus the
/// plan duration in months. Shows a lock icon and "Auto" label to indicate
/// it cannot be manually changed.
class BookingCalculatedEndDateDisplay extends StatelessWidget {
  final DateTime? endDate;

  const BookingCalculatedEndDateDisplay({
    super.key,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: Row(
        children: [
          Icon(
            Icons.event,
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              endDate != null
                  ? formatBookingDate(endDate!)
                  : 'Select start date first',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: endDate != null
                    ? theme.colorScheme.onSurface
                    : theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Icon(
            Icons.lock_outline,
            size: 16,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 4),
          Text(
            'Auto',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
