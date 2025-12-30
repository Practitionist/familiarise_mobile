import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/explore/consultant_details.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../../domain/entities/explore/consultation_plan.dart';
import '../../../domain/entities/explore/subscription_plan.dart';
import '../../../shared/widgets/timezone_indicator.dart';
import '../../checkout/screens/checkout_screen.dart';
import '../../explore/providers/consultant_detail_provider.dart';
import '../providers/availability_provider.dart';
import '../providers/booking_flow_provider.dart';

/// Main booking screen for consultations
///
/// Shows calendar, available time slots, and booking confirmation.
class BookingScreen extends ConsumerStatefulWidget {
  final String consultantId;
  final String planId;
  final String planType; // 'consultation' or 'subscription'
  final bool forceRefresh; // Force availability refresh (after booking failure)

  const BookingScreen({
    super.key,
    required this.consultantId,
    required this.planId,
    required this.planType,
    this.forceRefresh = false,
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
  void initState() {
    super.initState();
    // Force refresh availability data when coming back from failure/success
    if (widget.forceRefresh) {
      // Use addPostFrameCallback to invalidate after the widget is built
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _invalidateAvailability();
      });
    }
  }

  /// Invalidate all availability providers for this consultant to force refetch
  void _invalidateAvailability() {
    // Invalidate the availability provider to fetch fresh data
    // This ensures slots that became unavailable are shown correctly
    final startDate = _selectedDate;
    final endDate = _selectedDate.add(const Duration(days: 14));
    ref.invalidate(
      consultantAvailabilityProvider(
        AvailabilityParams(
          consultantProfileId: widget.consultantId,
          startDate: startDate,
          endDate: endDate,
          planId: widget.planId,
          planType: widget.planType,
        ),
      ),
    );
  }

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
          error: (message, conflictingSlots) {
            // Navigate to failure screen with error details and retry info
            context.pushReplacementNamed(
              'bookingFailure',
              extra: {
                'errorMessage': message,
                'consultantId': widget.consultantId,
                'planId': widget.planId,
                'planType': widget.planType,
                'conflictingSlots': conflictingSlots,
              },
            );
          },
        );
      },
    );

    final bookingState = ref.watch(bookingFlowProvider);
    final isLoading = bookingState.maybeWhen(
      loading: () => true,
      orElse: () => false,
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: Text(isConsultation ? 'Book Consultation' : 'Book Subscription'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: TimezoneIndicator(),
          ),
        ],
      ),
      body: isConsultation
          ? _buildConsultationBooking(theme, isLoading)
          : _buildSubscriptionBooking(theme, isLoading),
    );
  }

  Widget _buildConsultationBooking(ThemeData theme, bool isLoading) {
    // Get consultant details
    final consultantAsync = ref.watch(consultantDetailsProvider(widget.consultantId));

    // Get availability for the selected date range
    final startDate = _selectedDate;
    final endDate = _selectedDate.add(const Duration(days: 14));

    final availabilityAsync = ref.watch(
      consultantAvailabilityProvider(
        AvailabilityParams(
          consultantProfileId: widget.consultantId,
          startDate: startDate,
          endDate: endDate,
          planId: widget.planId,
          planType: widget.planType,
        ),
      ),
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Consultant info card
          consultantAsync.when(
            data: (consultant) => consultant != null
                ? _buildConsultantInfoCard(theme, consultant)
                : const SizedBox.shrink(),
            loading: () => const SizedBox.shrink(),
            error: (_, __) => const SizedBox.shrink(),
          ),
          const SizedBox(height: 12),
          // Plan info card
          _buildPlanInfoCard(theme),
          const SizedBox(height: 16),

          // Date selection with calendar picker
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select Date',
                style: theme.textTheme.titleMedium,
              ),
              IconButton(
                icon: const Icon(Icons.calendar_month),
                tooltip: 'Pick a date',
                onPressed: () => _showDatePickerDialog(context),
              ),
            ],
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
    // Get consultant details
    final consultantAsync = ref.watch(consultantDetailsProvider(widget.consultantId));

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
          // Consultant info card
          consultantAsync.when(
            data: (consultant) => consultant != null
                ? _buildConsultantInfoCard(theme, consultant)
                : const SizedBox.shrink(),
            loading: () => const SizedBox.shrink(),
            error: (_, __) => const SizedBox.shrink(),
          ),
          const SizedBox(height: 12),
          // Plan info card
          _buildPlanInfoCard(theme),
          const SizedBox(height: 16),

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

    final allSlots = dayAvailability.slots;

    if (allSlots.isEmpty) {
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

    // Check if any slots are available
    final hasAvailableSlots = allSlots.any((s) => s.isAvailable);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: allSlots.map((slot) {
            final isSelected = _selectedSlot?.id == slot.id;
            final isAvailable = slot.isAvailable;
            final isPast = slot.isPast;
            final isBooked = slot.isBooked;

            // Color scheme:
            // - Past: grey
            // - Booked: dark grey
            // - Available: light green
            // - Selected: almost black
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
              onTap: isAvailable
                  ? () => setState(() => _selectedSlot = slot)
                  : null,
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
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
        if (!hasAvailableSlots) ...[
          const SizedBox(height: 16),
          Container(
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
          ),
        ],
      ],
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

  Widget _buildPlanInfoCard(ThemeData theme) {
    final consultantAsync = ref.watch(consultantDetailsProvider(widget.consultantId));

    return consultantAsync.when(
      data: (consultant) {
        if (consultant == null) return const SizedBox.shrink();

        final isConsultation = widget.planType == 'consultation';
        String? title;
        String? description;
        String? duration;
        String? price;

        if (isConsultation) {
          final plan = consultant.consultationPlans.cast<ConsultationPlan?>().firstWhere(
            (p) => p?.id == widget.planId,
            orElse: () => null,
          );
          if (plan != null) {
            title = plan.title;
            description = plan.description;
            duration = plan.formattedDuration;
            price = plan.formattedPrice;
          }
        } else {
          final plan = consultant.subscriptionPlans.cast<SubscriptionPlan?>().firstWhere(
            (p) => p?.id == widget.planId,
            orElse: () => null,
          );
          if (plan != null) {
            title = plan.title;
            description = plan.description;
            duration = plan.formattedDuration;
            price = plan.formattedPrice;
          }
        }

        if (title == null) return const SizedBox.shrink();

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: theme.colorScheme.primary.withValues(alpha: 0.2),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      price ?? '',
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              if (duration != null) ...[
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      size: 14,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      duration,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ],
              if (description != null && description.isNotEmpty) ...[
                const SizedBox(height: 8),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 100),
                  child: SingleChildScrollView(
                    child: Text(
                      description,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }

  Widget _buildConsultantInfoCard(ThemeData theme, ConsultantDetails consultant) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.outlineVariant,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Consultant info row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: consultant.imageUrl != null
                    ? CachedNetworkImage(
                        imageUrl: consultant.imageUrl!,
                        width: 72,
                        height: 72,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(
                          width: 72,
                          height: 72,
                          color: theme.colorScheme.primaryContainer,
                          child: Icon(
                            Icons.person,
                            size: 36,
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          width: 72,
                          height: 72,
                          color: theme.colorScheme.primaryContainer,
                          child: Icon(
                            Icons.person,
                            size: 36,
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                      )
                    : Container(
                        width: 72,
                        height: 72,
                        color: theme.colorScheme.primaryContainer,
                        child: Icon(
                          Icons.person,
                          size: 36,
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
              ),
              const SizedBox(width: 16),
              // Name and headline
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            consultant.displayName,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (consultant.isVerified == true) ...[
                          const SizedBox(width: 4),
                          Icon(
                            Icons.verified,
                            size: 18,
                            color: theme.colorScheme.primary,
                          ),
                        ],
                      ],
                    ),
                    if (consultant.headline != null && consultant.headline!.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        consultant.headline!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Rating and domain row
          Row(
            children: [
              // Rating
              if (consultant.rating != null) ...[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade50,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.amber.shade200),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star_rounded,
                        size: 16,
                        color: Colors.amber.shade700,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        consultant.formattedRating,
                        style: theme.textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.amber.shade900,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
              ],
              // Experience
              if (consultant.experience != null) ...[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    consultant.formattedExperience,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onSecondaryContainer,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
              ],
              // Domain badge
              if (consultant.domain != null) ...[
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.tertiaryContainer.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      consultant.domain!.name,
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.onTertiaryContainer,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
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

  Future<void> _showDatePickerDialog(BuildContext context) async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)),
      helpText: 'Select a date',
    );
    if (picked != null && mounted) {
      setState(() {
        _selectedDate = picked;
        _selectedSlot = null; // Clear selected slot when date changes
      });
    }
  }

  void _handleConsultationBooking() {
    if (_selectedSlot == null) return;

    // Get consultant and plan details for direct checkout
    final consultantData = ref.read(consultantDetailsProvider(widget.consultantId));
    final consultant = consultantData.valueOrNull;
    if (consultant == null) return;

    final plan = consultant.consultationPlans.cast<ConsultationPlan?>().firstWhere(
      (p) => p?.id == widget.planId,
      orElse: () => null,
    );
    if (plan == null) return;

    // Navigate to direct checkout
    final params = DirectCheckoutParams(
      consultantProfileId: widget.consultantId,
      planId: widget.planId,
      planType: 'consultation',
      amount: plan.price,
      currency: plan.priceCurrency,
      consultantName: consultant.user?.name ?? consultant.user?.email,
      consultantImage: consultant.user?.image,
      planTitle: plan.title,
      slotStartTime: _selectedSlot!.startsAt,
      slotEndTime: _selectedSlot!.endsAt,
      slotOfAvailabilityId: _selectedSlot!.id,
      notes: _messageController.text.isEmpty ? null : _messageController.text,
    );
    context.pushNamed('checkoutDirect', extra: params);
  }

  void _handleSubscriptionBooking() {
    if (_periodStartDate == null) return;

    // Get consultant and plan details for direct checkout
    final consultantData = ref.read(consultantDetailsProvider(widget.consultantId));
    final consultant = consultantData.valueOrNull;
    if (consultant == null) return;

    final plan = consultant.subscriptionPlans.cast<SubscriptionPlan?>().firstWhere(
      (p) => p?.id == widget.planId,
      orElse: () => null,
    );
    if (plan == null) return;

    // Calculate end date based on plan duration
    final durationMonths = plan.durationInMonths ?? 1;
    final periodEndDate = DateTime(
      _periodStartDate!.year,
      _periodStartDate!.month + durationMonths,
      _periodStartDate!.day,
    );

    // Navigate to direct checkout
    final params = DirectCheckoutParams(
      consultantProfileId: widget.consultantId,
      planId: widget.planId,
      planType: 'subscription',
      amount: plan.price,
      currency: plan.priceCurrency,
      consultantName: consultant.user?.name ?? consultant.user?.email,
      consultantImage: consultant.user?.image,
      planTitle: plan.title,
      schedulingPeriodStart: _periodStartDate,
      schedulingPeriodEnd: periodEndDate,
      notes: _messageController.text.isEmpty ? null : _messageController.text,
    );
    context.pushNamed('checkoutDirect', extra: params);
  }

  /// Compares two dates to check if they represent the same day
  /// Both dates are converted to local timezone for accurate comparison
  bool _isSameDay(DateTime a, DateTime b) {
    final localA = a.toLocal();
    final localB = b.toLocal();
    return localA.year == localB.year &&
        localA.month == localB.month &&
        localA.day == localB.day;
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
