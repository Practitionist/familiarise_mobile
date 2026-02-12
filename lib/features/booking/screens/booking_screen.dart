import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/booking/booking_entities.dart';
import '../../../domain/entities/explore/consultation_plan.dart';
import '../../../domain/entities/explore/subscription_plan.dart';
import '../../../shared/widgets/timezone_indicator.dart';
import '../../checkout/screens/checkout_screen.dart';
import '../../explore/providers/consultant_detail_provider.dart';
import '../providers/availability_provider.dart';
import '../providers/booking_flow_provider.dart';
import '../widgets/booking_consultant_info_card.dart';
import '../widgets/booking_date_picker_card.dart';
import '../widgets/booking_date_selector.dart';
import '../widgets/booking_plan_info_card.dart';
import '../widgets/booking_time_slot_grid.dart';

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
    final consultantAsync =
        ref.watch(consultantDetailsProvider(widget.consultantId));

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
                ? BookingConsultantInfoCard(consultant: consultant)
                : const SizedBox.shrink(),
            loading: () => const SizedBox.shrink(),
            error: (_, __) => const SizedBox.shrink(),
          ),
          const SizedBox(height: 12),
          // Plan info card
          _buildPlanInfoCard(),
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
          BookingDateSelector(
            selectedDate: _selectedDate,
            onDateSelected: (date) => setState(() => _selectedDate = date),
          ),
          const SizedBox(height: 24),

          // Time slots
          Text(
            'Available Time Slots',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          availabilityAsync.when(
            data: (days) => BookingTimeSlotGrid(
              selectedDate: _selectedDate,
              days: days,
              selectedSlot: _selectedSlot,
              onSlotSelected: (slot) =>
                  setState(() => _selectedSlot = slot),
            ),
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
    final consultantAsync =
        ref.watch(consultantDetailsProvider(widget.consultantId));

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
                ? BookingConsultantInfoCard(consultant: consultant)
                : const SizedBox.shrink(),
            loading: () => const SizedBox.shrink(),
            error: (_, __) => const SizedBox.shrink(),
          ),
          const SizedBox(height: 12),
          // Plan info card
          _buildPlanInfoCard(),
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
          BookingDatePickerCard(
            date: _periodStartDate,
            placeholder: 'Select start date',
            onDateSelected: (date) =>
                setState(() => _periodStartDate = date),
          ),
          const SizedBox(height: 16),

          // End date (calculated, read-only)
          Text(
            'Scheduling Period End',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          BookingCalculatedEndDateDisplay(
            endDate: calculatedEndDate,
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

  /// Builds the plan info card by resolving the plan from consultant data.
  ///
  /// This stays in the screen because it needs [ref.watch] to access
  /// the consultant details provider.
  Widget _buildPlanInfoCard() {
    final consultantAsync =
        ref.watch(consultantDetailsProvider(widget.consultantId));

    return consultantAsync.when(
      data: (consultant) {
        if (consultant == null) return const SizedBox.shrink();

        final isConsultation = widget.planType == 'consultation';
        String? title;
        String? description;
        String? duration;
        String? price;

        if (isConsultation) {
          final plan =
              consultant.consultationPlans.cast<ConsultationPlan?>().firstWhere(
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
          final plan =
              consultant.subscriptionPlans.cast<SubscriptionPlan?>().firstWhere(
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

        return BookingPlanInfoCard(
          title: title,
          price: price,
          duration: duration,
          description: description,
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
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
    final consultantData =
        ref.read(consultantDetailsProvider(widget.consultantId));
    final consultant = consultantData.valueOrNull;
    if (consultant == null) return;

    final plan =
        consultant.consultationPlans.cast<ConsultationPlan?>().firstWhere(
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
    final consultantData =
        ref.read(consultantDetailsProvider(widget.consultantId));
    final consultant = consultantData.valueOrNull;
    if (consultant == null) return;

    final plan =
        consultant.subscriptionPlans.cast<SubscriptionPlan?>().firstWhere(
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
}
