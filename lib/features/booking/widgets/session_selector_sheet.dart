import 'package:flutter/material.dart';

import '../../../domain/entities/booking/booking_entities.dart';

/// Shows a bottom sheet for selecting a specific session to reschedule
///
/// Returns the selected [BookingSlot] if user selects one, null if cancelled
Future<BookingSlot?> showSessionSelectorSheet({
  required BuildContext context,
  required Booking booking,
}) async {
  // Filter to only show non-tentative, future slots
  final now = DateTime.now();
  final selectableSlots = booking.slots.where((slot) {
    // Only show slots that:
    // 1. Are not already tentative
    // 2. Are more than 24 hours in the future
    final hoursUntil = slot.startsAt.difference(now).inHours;
    return !slot.isTentative && hoursUntil >= 24;
  }).toList();

  if (selectableSlots.isEmpty) {
    // Show message if no selectable slots
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'No sessions available for rescheduling. Sessions must be more than 24 hours away.',
        ),
      ),
    );
    return null;
  }

  return showModalBottomSheet<BookingSlot>(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => _SessionSelectorSheet(
      booking: booking,
      selectableSlots: selectableSlots,
    ),
  );
}

class _SessionSelectorSheet extends StatelessWidget {
  final Booking booking;
  final List<BookingSlot> selectableSlots;

  const _SessionSelectorSheet({
    required this.booking,
    required this.selectableSlots,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.3,
        maxChildSize: 0.85,
        expand: false,
        builder: (context, scrollController) {
          return Column(
            children: [
              // Handle bar
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),

              // Header
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Session to Reschedule',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Choose which session you want to reschedule. Only sessions more than 24 hours away can be rescheduled.',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),

              const Divider(height: 1),

              // Sessions list
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: selectableSlots.length,
                  itemBuilder: (context, index) {
                    final slot = selectableSlots[index];
                    final sessionNumber = booking.slots.indexOf(slot) + 1;

                    return _SessionCard(
                      slot: slot,
                      sessionNumber: sessionNumber,
                      totalSessions: booking.slots.length,
                      onTap: () => Navigator.of(context).pop(slot),
                    );
                  },
                ),
              ),

              // Cancel button
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _SessionCard extends StatelessWidget {
  final BookingSlot slot;
  final int sessionNumber;
  final int totalSessions;
  final VoidCallback onTap;

  const _SessionCard({
    required this.slot,
    required this.sessionNumber,
    required this.totalSessions,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final now = DateTime.now();
    final daysUntil = slot.startsAt.difference(now).inDays;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Session number badge
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    '$sessionNumber',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),

              // Session details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Session $sessionNumber of $totalSessions',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 14,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          slot.formattedDate,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 14,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          slot.formattedTimeRange,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Days until indicator
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    daysUntil == 0
                        ? 'Today'
                        : daysUntil == 1
                            ? 'Tomorrow'
                            : 'In $daysUntil days',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: daysUntil <= 2
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Icon(
                    Icons.chevron_right,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
