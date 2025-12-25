import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/booking/booking_entities.dart';
import '../providers/availability_provider.dart';
import '../providers/booking_flow_provider.dart';

/// Main booking screen for consultations
///
/// Shows calendar, available time slots, and booking confirmation.
class BookingScreen extends ConsumerStatefulWidget {
  final String consultantId;
  final String planId;
  final String planType; // 'consultation' or 'subscription'

  const BookingScreen({
    super.key,
    required this.consultantId,
    required this.planId,
    required this.planType,
  });

  @override
  ConsumerState<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends ConsumerState<BookingScreen> {
  DateTime _selectedDate = DateTime.now();
  AvailabilitySlot? _selectedSlot;
  final _messageController = TextEditingController();

  // For subscription bookings
  DateTime? _periodStartDate;
  // Note: End date is calculated based on plan duration
  int _planDurationMonths = 1; // Default, will be updated from plan data

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isConsultation = widget.planType == 'consultation';

    // Listen to booking flow state
    ref.listen<BookingFlowState>(
      bookingFlowProvider,
      (_, state) {
        state.when(
          initial: () {},
          loading: () {},
          success: (booking) {
            context.pushReplacementNamed(
              'bookingSuccess',
              extra: booking,
            );
          },
          error: (message) {
            // Navigate to failure screen with error details and retry info
            context.pushReplacementNamed(
              'bookingFailure',
              extra: {
                'errorMessage': message,
                'consultantId': widget.consultantId,
                'planId': widget.planId,
                'planType': widget.planType,
              },
            );
          },
        );
      },
    );

    final bookingState = ref.watch(bookingFlowProvider);
    final isLoading = bookingState is AsyncLoading;

    return Scaffold(
      appBar: AppBar(
        title: Text(isConsultation ? 'Book Consultation' : 'Book Subscription'),
      ),
      body: isConsultation
          ? _buildConsultationBooking(theme, isLoading)
          : _buildSubscriptionBooking(theme, isLoading),
    );
  }

  Widget _buildConsultationBooking(ThemeData theme, bool isLoading) {
    // Get availability for the selected date range
    final startDate = _selectedDate;
    final endDate = _selectedDate.add(const Duration(days: 14));

    final availabilityAsync = ref.watch(
      consultantAvailabilityProvider(
        AvailabilityParams(
          consultantProfileId: widget.consultantId,
          startDate: startDate,
          endDate: endDate,
        ),
      ),
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date selection
          Text(
            'Select Date',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          _buildDateSelector(theme),
          const SizedBox(height: 24),

          // Time slots
          Text(
            'Available Time Slots',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          availabilityAsync.when(
            data: (days) => _buildTimeSlots(theme, days),
            loading: () => const Center(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: CircularProgressIndicator(),
              ),
            ),
            error: (error, _) => _buildError(theme, error.toString()),
          ),
          const SizedBox(height: 24),

          // Message input
          _buildMessageInput(theme),
          const SizedBox(height: 24),

          // Book button
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: _selectedSlot != null && !isLoading
                  ? _handleConsultationBooking
                  : null,
              child: isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Book Consultation'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubscriptionBooking(ThemeData theme, bool isLoading) {
    // Calculate end date based on start date and plan duration
    final calculatedEndDate = _periodStartDate != null
        ? DateTime(
            _periodStartDate!.year,
            _periodStartDate!.month + _planDurationMonths,
            _periodStartDate!.day,
          )
        : null;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Info card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Subscription Booking',
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Select your preferred start date. The subscription period '
                    'will be $_planDurationMonths month${_planDurationMonths > 1 ? 's' : ''} from the start date.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Start date
          Text(
            'Scheduling Period Start',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          _buildDatePickerCard(
            theme,
            _periodStartDate,
            'Select start date',
            (date) => setState(() => _periodStartDate = date),
          ),
          const SizedBox(height: 16),

          // End date (calculated, read-only)
          Text(
            'Scheduling Period End',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          _buildCalculatedEndDateDisplay(
            theme,
            calculatedEndDate,
            _planDurationMonths,
          ),
          const SizedBox(height: 24),

          // Message input
          _buildMessageInput(theme),
          const SizedBox(height: 24),

          // Book button
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: _periodStartDate != null && !isLoading
                  ? _handleSubscriptionBooking
                  : null,
              child: isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Request Subscription'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalculatedEndDateDisplay(
    ThemeData theme,
    DateTime? endDate,
    int months,
  ) {
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
                  ? _formatDate(endDate)
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

  Widget _buildDateSelector(ThemeData theme) {
    // Simple horizontal date list for the next 14 days
    final dates = List.generate(
      14,
      (i) => DateTime.now().add(Duration(days: i)),
    );

    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        itemBuilder: (context, index) {
          final date = dates[index];
          final isSelected = _isSameDay(date, _selectedDate);
          final weekday = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
              [date.weekday - 1];

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
              onTap: () => setState(() => _selectedDate = date),
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 56,
                decoration: BoxDecoration(
                  color: isSelected
                      ? theme.colorScheme.primaryContainer
                      : theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(12),
                  border: isSelected
                      ? Border.all(color: theme.colorScheme.primary, width: 2)
                      : null,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      weekday,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: isSelected
                            ? theme.colorScheme.onPrimaryContainer
                            : theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${date.day}',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: isSelected
                            ? theme.colorScheme.onPrimaryContainer
                            : theme.colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTimeSlots(ThemeData theme, List<DayAvailability> days) {
    // Find slots for the selected date
    final dayAvailability = days.firstWhere(
      (d) => _isSameDay(d.date, _selectedDate),
      orElse: () => DayAvailability(date: _selectedDate, slots: []),
    );

    final availableSlots = dayAvailability.availableSlots;

    if (availableSlots.isEmpty) {
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
              'No available slots for this date',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: availableSlots.map((slot) {
        final isSelected = _selectedSlot?.id == slot.id;

        return ChoiceChip(
          label: Text(slot.formattedTimeRange),
          selected: isSelected,
          onSelected: (_) => setState(() => _selectedSlot = slot),
        );
      }).toList(),
    );
  }

  Widget _buildDatePickerCard(
    ThemeData theme,
    DateTime? date,
    String placeholder,
    void Function(DateTime) onSelected,
  ) {
    return InkWell(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: date ?? DateTime.now().add(const Duration(days: 1)),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365)),
        );
        if (picked != null) {
          onSelected(picked);
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
                date != null ? _formatDate(date) : placeholder,
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

  Widget _buildMessageInput(ThemeData theme) {
    return TextField(
      controller: _messageController,
      maxLines: 3,
      decoration: InputDecoration(
        labelText: 'Message (optional)',
        hintText: 'Add a note for the consultant...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _buildError(ThemeData theme, String message) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: theme.colorScheme.onErrorContainer,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: TextStyle(color: theme.colorScheme.onErrorContainer),
            ),
          ),
        ],
      ),
    );
  }

  void _handleConsultationBooking() {
    if (_selectedSlot == null) return;

    ref.read(bookingFlowProvider.notifier).createConsultationBooking(
          consultantProfileId: widget.consultantId,
          planId: widget.planId,
          slotStartTimes: [_selectedSlot!.startsAt],
          message: _messageController.text.isEmpty
              ? null
              : _messageController.text,
        );
  }

  void _handleSubscriptionBooking() {
    if (_periodStartDate == null) return;

    ref.read(bookingFlowProvider.notifier).createSubscriptionBooking(
          consultantProfileId: widget.consultantId,
          planId: widget.planId,
          schedulingPeriodStart: _periodStartDate!,
          message: _messageController.text.isEmpty
              ? null
              : _messageController.text,
        );
  }

  bool _isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  String _formatDate(DateTime date) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return '${months[date.month - 1]} ${date.day}, ${date.year}';
  }
}
