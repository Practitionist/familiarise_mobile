import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';
import 'booking_utils.dart';

/// Displays available time slots for a selected date as a wrapped grid.
///
/// Slots are color-coded:
/// - Selected: almost black
/// - Past: grey
/// - Booked: dark grey
/// - Available: light green
///
/// Shows an empty state when no slots exist, and a warning when all slots
/// are unavailable.
class BookingTimeSlotGrid extends StatelessWidget {
  final DateTime selectedDate;
  final List<DayAvailability> days;
  final AvailabilitySlot? selectedSlot;
  final ValueChanged<AvailabilitySlot> onSlotSelected;

  const BookingTimeSlotGrid({
    super.key,
    required this.selectedDate,
    required this.days,
    required this.selectedSlot,
    required this.onSlotSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Find slots for the selected date
    final dayAvailability = days.firstWhere(
      (d) => isSameDay(d.date, selectedDate),
      orElse: () => DayAvailability(date: selectedDate, slots: []),
    );

    final allSlots = dayAvailability.slots;

    if (allSlots.isEmpty) {
      return _buildEmptyState(theme);
    }

    // Check if any slots are available
    final hasAvailableSlots = allSlots.any((s) => s.isAvailable);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: allSlots.map((slot) {
            final isSelected = selectedSlot?.id == slot.id;
            final isAvailable = slot.isAvailable;
            final isPast = slot.isPast;
            final isBooked = slot.isBooked;

            // Color scheme
            Color backgroundColor;
            Color textColor;
            Color borderColor;

            if (isSelected) {
              backgroundColor = const Color(0xFF2D2D2D); // Almost black
              textColor = Colors.white;
              borderColor = Colors.black;
            } else if (isPast) {
              backgroundColor = Colors.grey.shade300;
              textColor = Colors.grey.shade700;
              borderColor = Colors.grey.shade400;
            } else if (isBooked) {
              backgroundColor = Colors.grey.shade600;
              textColor = Colors.white;
              borderColor = Colors.grey.shade700;
            } else {
              // Available
              backgroundColor = Colors.green.shade100;
              textColor = Colors.green.shade900;
              borderColor = Colors.green.shade300;
            }

            return GestureDetector(
              onTap: isAvailable ? () => onSlotSelected(slot) : null,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: borderColor,
                    width: isSelected ? 2 : 1,
                  ),
                ),
                child: Text(
                  slot.formattedTimeRange,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: textColor,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
        if (!hasAvailableSlots) ...[
          const SizedBox(height: 16),
          _buildNoAvailableSlotsWarning(theme),
        ],
      ],
    );
  }

  Widget _buildEmptyState(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(
            Icons.event_busy,
            size: 48,
            color: theme.colorScheme.outline,
          ),
          const SizedBox(height: 8),
          Text(
            'No slots for this date',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoAvailableSlotsWarning(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.errorContainer.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_outline,
            size: 16,
            color: theme.colorScheme.error,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'No available slots for this date. Please select another date.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
