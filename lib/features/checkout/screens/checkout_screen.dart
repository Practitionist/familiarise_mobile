import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/formatters.dart';
import '../../../domain/entities/booking/booking.dart';
import '../../../domain/entities/checkout/checkout_entities.dart';
import '../providers/checkout_flow_provider.dart';
import '../widgets/checkout_widgets.dart';

/// Main checkout screen for processing payments
///
/// Supports two flows:
/// 1. Request-then-pay: Pass an existing [booking] object
/// 2. Direct checkout: Pass [directCheckoutParams] for new bookings
class CheckoutScreen extends ConsumerStatefulWidget {
  final Booking? booking;
  final DirectCheckoutParams? directCheckoutParams;

  const CheckoutScreen({
    super.key,
    this.booking,
    this.directCheckoutParams,
  }) : assert(
          booking != null || directCheckoutParams != null,
          'Either booking or directCheckoutParams must be provided',
        );

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  PaymentGatewayType _selectedGateway = PaymentGatewayType.stripe;
  String? _discountCode;
  bool _checkoutInitialized = false;

  String get _currency => widget.booking?.planCurrency ??
      widget.directCheckoutParams?.currency ??
      'INR';

  double get _originalPrice => widget.booking?.planPrice ??
      widget.directCheckoutParams?.amount ??
      0;

  String get _bookingId => widget.booking?.id ?? '';

  String get _planId => widget.directCheckoutParams?.planId ?? '';

  /// Get identifier for discount validation (bookingId or planId for direct checkout)
  String get _discountValidationId =>
      _bookingId.isNotEmpty ? _bookingId : _planId;

  @override
  void initState() {
    super.initState();
    // Default to Razorpay for INR
    if (_currency.toUpperCase() == 'INR') {
      _selectedGateway = PaymentGatewayType.razorpay;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final checkoutState = ref.watch(checkoutFlowProvider);

    // Listen for state changes to navigate
    ref.listen<CheckoutFlowState>(
      checkoutFlowProvider,
      (_, state) {
        state.when(
          initial: () {},
          loading: (_) {},
          sessionCreated: (_) {},
          processing: () {},
          verifying: () {},
          success: (verification) {
            context.pushReplacementNamed(
              'paymentSuccess',
              extra: verification,
            );
          },
          failure: (message, canRetry) {
            context.pushReplacementNamed(
              'paymentFailure',
              extra: {
                'message': message,
                'canRetry': canRetry,
                'booking': widget.booking,
                'directCheckoutParams': widget.directCheckoutParams,
              },
            );
          },
          cancelled: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Payment cancelled'),
                behavior: SnackBarBehavior.floating,
              ),
            );
            // Reset flow for retry
            ref.read(checkoutFlowProvider.notifier).reset();
          },
        );
      },
    );

    final isLoading = checkoutState.maybeWhen(
      loading: (_) => true,
      processing: () => true,
      verifying: () => true,
      orElse: () => false,
    );

    final loadingMessage = ref.watch(checkoutLoadingMessageProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            ref.read(checkoutFlowProvider.notifier).reset();
            ref.read(discountCodeValidatorProvider.notifier).clear();
            context.pop();
          },
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Booking summary card
                _buildBookingSummary(theme),
                const SizedBox(height: 24),

                // Discount code section
                Text(
                  'Discount Code',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                DiscountCodeInput(
                  bookingId: _discountValidationId, // Use planId as fallback for direct checkout
                  originalAmount: _originalPrice,
                  currency: _currency,
                  onDiscountApplied: (code) {
                    setState(() {
                      _discountCode = code;
                      _checkoutInitialized = false; // Reset session on discount change
                    });
                  },
                  onDiscountRemoved: () {
                    setState(() {
                      _discountCode = null;
                      _checkoutInitialized = false; // Reset session on discount removal
                    });
                  },
                ),
                const SizedBox(height: 24),

                // Payment method selector
                Text(
                  'Payment Method',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                PaymentMethodSelector(
                  selectedGateway: _selectedGateway,
                  currency: _currency,
                  onGatewaySelected: (gateway) {
                    setState(() {
                      _selectedGateway = gateway;
                      _checkoutInitialized = false; // Reset session on gateway change
                    });
                  },
                ),
                const SizedBox(height: 24),

                // Price summary
                PriceSummaryCard(
                  originalPrice: _originalPrice,
                  currency: _currency,
                  discountCode: _discountCode,
                ),
                const SizedBox(height: 100), // Space for bottom button
              ],
            ),
          ),

          // Loading overlay
          if (isLoading)
            Container(
              color: Colors.black.withValues(alpha: 0.3),
              child: Center(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CircularProgressIndicator(),
                        const SizedBox(height: 16),
                        Text(
                          loadingMessage ?? 'Processing...',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(theme, isLoading, checkoutState),
    );
  }

  Widget _buildBookingSummary(ThemeData theme) {
    final booking = widget.booking;
    final directParams = widget.directCheckoutParams;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Consultant avatar
                CircleAvatar(
                  radius: 24,
                  backgroundImage: booking?.consultantImage != null
                      ? NetworkImage(booking!.consultantImage!)
                      : directParams?.consultantImage != null
                          ? NetworkImage(directParams!.consultantImage!)
                          : null,
                  child: booking?.consultantImage == null &&
                          directParams?.consultantImage == null
                      ? const Icon(Icons.person)
                      : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        booking?.consultantName ??
                            directParams?.consultantName ??
                            'Consultant',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          booking?.bookingType.name.toUpperCase() ??
                              directParams?.planType.toUpperCase() ??
                              'BOOKING',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: theme.colorScheme.onSecondaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Divider(color: theme.colorScheme.outline.withValues(alpha: 0.3)),
            const SizedBox(height: 12),

            // Plan details
            _buildDetailRow(
              theme,
              'Plan',
              booking?.planTitle ?? directParams?.planTitle ?? '-',
            ),
            const SizedBox(height: 8),

            // Slot info for consultations
            if (booking?.slots.isNotEmpty == true) ...[
              _buildDetailRow(
                theme,
                'Date',
                booking!.slots.first.formattedDate,
              ),
              const SizedBox(height: 8),
              _buildDetailRow(
                theme,
                'Time',
                booking.slots.first.formattedTimeRange,
              ),
            ] else if (directParams?.slotStartTime != null) ...[
              _buildDetailRow(
                theme,
                'Date & Time',
                Formatters.dateTime(directParams!.slotStartTime!),
              ),
            ],

            // Scheduling period for subscriptions
            if (booking?.schedulingPeriodStartsAt != null) ...[
              const SizedBox(height: 8),
              _buildDetailRow(
                theme,
                'Period',
                '${Formatters.date(booking!.schedulingPeriodStartsAt!)} - ${Formatters.date(booking.schedulingPeriodEndsAt!)}',
              ),
            ] else if (directParams?.schedulingPeriodStart != null) ...[
              const SizedBox(height: 8),
              _buildDetailRow(
                theme,
                'Start Date',
                Formatters.date(directParams!.schedulingPeriodStart!),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(ThemeData theme, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          child: Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomBar(
    ThemeData theme,
    bool isLoading,
    CheckoutFlowState state,
  ) {
    // Determine if we can proceed based on state
    final canProceed = !isLoading;
    final hasSession = state.maybeWhen(
      sessionCreated: (_) => true,
      orElse: () => false,
    );

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: FilledButton(
          onPressed: canProceed ? () => _handlePayment(hasSession) : null,
          style: FilledButton.styleFrom(
            minimumSize: const Size.fromHeight(56),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                hasSession ? 'Complete Payment' : 'Proceed to Payment',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 12),
              CheckoutPriceInfo(
                originalPrice: _originalPrice,
                currency: _currency,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handlePayment(bool hasSession) async {
    final checkoutNotifier = ref.read(checkoutFlowProvider.notifier);

    if (!hasSession && !_checkoutInitialized) {
      // Initialize checkout based on flow type
      if (widget.booking != null) {
        // Request-then-pay flow
        await checkoutNotifier.initializeCheckout(
          booking: widget.booking!,
          gateway: _selectedGateway,
          discountCode: _discountCode,
        );
      } else if (widget.directCheckoutParams != null) {
        // Direct checkout flow
        final params = widget.directCheckoutParams!;
        await checkoutNotifier.initializeDirectCheckout(
          consultantProfileId: params.consultantProfileId,
          planId: params.planId,
          planType: params.planType,
          gateway: _selectedGateway,
          slotStartTime: params.slotStartTime,
          slotEndTime: params.slotEndTime,
          slotOfAvailabilityId: params.slotOfAvailabilityId,
          schedulingPeriodStart: params.schedulingPeriodStart,
          schedulingPeriodEnd: params.schedulingPeriodEnd,
          discountCode: _discountCode,
          notes: params.notes,
        );
      }
      _checkoutInitialized = true;
    }

    // Check if session was created successfully
    final state = ref.read(checkoutFlowProvider);
    if (state.maybeWhen(
      sessionCreated: (_) => true,
      orElse: () => false,
    )) {
      // Process payment
      await checkoutNotifier.processPayment();
    }
  }

}

/// Parameters for direct checkout flow (without pre-created booking)
class DirectCheckoutParams {
  final String consultantProfileId;
  final String planId;
  final String planType;
  final double amount;
  final String currency;
  final String? consultantName;
  final String? consultantImage;
  final String? planTitle;
  final DateTime? slotStartTime;
  final DateTime? slotEndTime;
  final String? slotOfAvailabilityId;
  final DateTime? schedulingPeriodStart;
  final DateTime? schedulingPeriodEnd;
  final String? notes;

  const DirectCheckoutParams({
    required this.consultantProfileId,
    required this.planId,
    required this.planType,
    required this.amount,
    required this.currency,
    this.consultantName,
    this.consultantImage,
    this.planTitle,
    this.slotStartTime,
    this.slotEndTime,
    this.slotOfAvailabilityId,
    this.schedulingPeriodStart,
    this.schedulingPeriodEnd,
    this.notes,
  });
}
