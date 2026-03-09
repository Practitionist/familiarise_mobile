# Phase 6: Checkout & Payments

## Overview

This phase implements the complete payment flow supporting both Razorpay (for India) and Stripe (international). Users can complete payments after their booking is approved, view order summaries, apply discount codes, and receive payment confirmations.

**Prerequisites:** Phases 1-5 completed
**Target Completion:** Complete payment integration

---

## Key Features

1. **Checkout Screen** - Order summary, price breakdown
2. **Payment Gateways** - Razorpay and Stripe integration
3. **Discount Codes** - Apply promotional codes
4. **Payment Success** - Confirmation and next steps

---

## 1. Additional Dependencies

Add to `pubspec.yaml`:

```yaml
dependencies:
  # Payments
  razorpay_flutter: ^1.3.6
  flutter_stripe: ^10.1.1
```

---

## 2. Domain Layer

### 2.1 Payment Entity

Create `lib/domain/entities/payment.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/constants/enums.dart';

part 'payment.freezed.dart';

@freezed
class PaymentIntent with _$PaymentIntent {
  const factory PaymentIntent({
    required String id,
    required String orderId,
    required int amount,
    required String currency,
    required PaymentGateway gateway,
    String? clientSecret, // For Stripe
    String? razorpayOrderId, // For Razorpay
    String? checkoutUrl,
    DateTime? expiresAt,
  }) = _PaymentIntent;
}

@freezed
class PaymentResult with _$PaymentResult {
  const factory PaymentResult.success({
    required String paymentId,
    required String orderId,
    String? signature,
  }) = PaymentResultSuccess;

  const factory PaymentResult.failure({
    required int code,
    required String message,
  }) = PaymentResultFailure;

  const factory PaymentResult.cancelled() = PaymentResultCancelled;
}

@freezed
class OrderSummary with _$OrderSummary {
  const OrderSummary._();

  const factory OrderSummary({
    required String bookingId,
    required String planTitle,
    required int baseAmount,
    required String currency,
    @Default(0) int platformFee,
    @Default(0) int taxAmount,
    @Default(0) int discountAmount,
    String? discountCode,
    @Default(0.18) double taxRate,
  }) = _OrderSummary;

  int get subtotal => baseAmount + platformFee;
  int get totalAmount => subtotal + taxAmount - discountAmount;

  int calculateTax() => (subtotal * taxRate).round();
}

@freezed
class DiscountCode with _$DiscountCode {
  const factory DiscountCode({
    required String code,
    required String type, // 'percentage' or 'fixed'
    required int value,
    int? maxDiscount,
    DateTime? expiresAt,
    @Default(true) bool isValid,
  }) = _DiscountCode;
}
```

### 2.2 Payment Repository Interface

Create `lib/domain/repositories/payment_repository.dart`:

```dart
import '../entities/payment.dart';
import '../../core/errors/result.dart';

abstract class PaymentRepository {
  /// Create a payment intent for a booking
  AsyncResult<PaymentIntent> createPaymentIntent({
    required String bookingId,
    required PaymentGateway gateway,
    String? discountCode,
  });

  /// Verify payment completion
  AsyncResult<void> verifyPayment({
    required String paymentId,
    required String orderId,
    String? signature, // For Razorpay
  });

  /// Validate a discount code
  AsyncResult<DiscountCode> validateDiscountCode(String code);

  /// Get order summary
  AsyncResult<OrderSummary> getOrderSummary(String bookingId);
}
```

---

## 3. Data Layer

### 3.1 Payment Remote Source

Create `lib/data/datasources/remote/payment_remote_source.dart`:

```dart
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/enums.dart';
import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_client.dart';
import '../../../domain/entities/payment.dart';

part 'payment_remote_source.g.dart';

@riverpod
PaymentRemoteSource paymentRemoteSource(PaymentRemoteSourceRef ref) {
  return PaymentRemoteSourceImpl(ref.watch(dioProvider));
}

abstract class PaymentRemoteSource {
  Future<PaymentIntent> createPaymentIntent({
    required String bookingId,
    required PaymentGateway gateway,
    String? discountCode,
  });

  Future<void> verifyPayment({
    required String paymentId,
    required String orderId,
    String? signature,
  });

  Future<DiscountCode> validateDiscountCode(String code);
  Future<OrderSummary> getOrderSummary(String bookingId);
}

class PaymentRemoteSourceImpl implements PaymentRemoteSource {
  final Dio _dio;

  PaymentRemoteSourceImpl(this._dio);

  @override
  Future<PaymentIntent> createPaymentIntent({
    required String bookingId,
    required PaymentGateway gateway,
    String? discountCode,
  }) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.checkout,
        data: {
          'bookingId': bookingId,
          'gateway': gateway.value,
          if (discountCode != null) 'discountCode': discountCode,
        },
      );

      final data = response.data as Map<String, dynamic>;
      return PaymentIntent(
        id: data['paymentIntentId'] as String,
        orderId: data['orderId'] as String,
        amount: data['amount'] as int,
        currency: data['currency'] as String,
        gateway: gateway,
        clientSecret: data['clientSecret'] as String?,
        razorpayOrderId: data['razorpayOrderId'] as String?,
        checkoutUrl: data['checkoutUrl'] as String?,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<void> verifyPayment({
    required String paymentId,
    required String orderId,
    String? signature,
  }) async {
    try {
      await _dio.post(
        ApiEndpoints.verifyPayment,
        data: {
          'paymentId': paymentId,
          'orderId': orderId,
          if (signature != null) 'signature': signature,
        },
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<DiscountCode> validateDiscountCode(String code) async {
    try {
      final response = await _dio.post(
        '${ApiEndpoints.checkout}/validate-code',
        data: {'code': code},
      );

      final data = response.data as Map<String, dynamic>;
      return DiscountCode(
        code: data['code'] as String,
        type: data['type'] as String,
        value: data['value'] as int,
        maxDiscount: data['maxDiscount'] as int?,
        isValid: data['isValid'] as bool? ?? true,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }

  @override
  Future<OrderSummary> getOrderSummary(String bookingId) async {
    try {
      final response = await _dio.get(
        '${ApiEndpoints.checkout}/summary/$bookingId',
      );

      final data = response.data as Map<String, dynamic>;
      return OrderSummary(
        bookingId: bookingId,
        planTitle: data['planTitle'] as String,
        baseAmount: data['baseAmount'] as int,
        currency: data['currency'] as String,
        platformFee: data['platformFee'] as int? ?? 0,
        taxAmount: data['taxAmount'] as int? ?? 0,
        discountAmount: data['discountAmount'] as int? ?? 0,
        discountCode: data['discountCode'] as String?,
      );
    } on DioException catch (e) {
      throw e.toAppException();
    }
  }
}
```

---

## 4. Presentation Layer

### 4.1 Payment Provider

Create `lib/features/checkout/providers/payment_provider.dart`:

```dart
import 'package:flutter_stripe/flutter_stripe.dart' as stripe;
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/config/env_config.dart';
import '../../../core/constants/enums.dart';
import '../../../data/repositories/payment_repository_impl.dart';
import '../../../domain/entities/payment.dart';

part 'payment_provider.g.dart';

@riverpod
class Checkout extends _$Checkout {
  late Razorpay _razorpay;

  @override
  CheckoutState build() {
    _razorpay = Razorpay();

    ref.onDispose(() {
      _razorpay.clear();
    });

    return const CheckoutState();
  }

  Future<void> loadOrderSummary(String bookingId) async {
    state = state.copyWith(isLoading: true, error: null);

    final repository = ref.read(paymentRepositoryProvider);
    final result = await repository.getOrderSummary(bookingId);

    state = result.fold(
      (failure) => state.copyWith(
        isLoading: false,
        error: failure.userMessage,
      ),
      (summary) => state.copyWith(
        isLoading: false,
        orderSummary: summary,
      ),
    );
  }

  Future<void> applyDiscountCode(String code) async {
    state = state.copyWith(isApplyingDiscount: true, discountError: null);

    final repository = ref.read(paymentRepositoryProvider);
    final result = await repository.validateDiscountCode(code);

    state = result.fold(
      (failure) => state.copyWith(
        isApplyingDiscount: false,
        discountError: failure.userMessage,
      ),
      (discount) {
        if (!discount.isValid) {
          return state.copyWith(
            isApplyingDiscount: false,
            discountError: 'Invalid or expired discount code',
          );
        }

        final summary = state.orderSummary;
        if (summary == null) return state;

        int discountAmount;
        if (discount.type == 'percentage') {
          discountAmount = (summary.baseAmount * discount.value / 100).round();
          if (discount.maxDiscount != null) {
            discountAmount = discountAmount.clamp(0, discount.maxDiscount!);
          }
        } else {
          discountAmount = discount.value;
        }

        return state.copyWith(
          isApplyingDiscount: false,
          appliedDiscount: discount,
          orderSummary: summary.copyWith(
            discountAmount: discountAmount,
            discountCode: code,
          ),
        );
      },
    );
  }

  void removeDiscount() {
    final summary = state.orderSummary;
    if (summary == null) return;

    state = state.copyWith(
      appliedDiscount: null,
      orderSummary: summary.copyWith(
        discountAmount: 0,
        discountCode: null,
      ),
    );
  }

  void selectGateway(PaymentGateway gateway) {
    state = state.copyWith(selectedGateway: gateway);
  }

  Future<PaymentResult> processPayment() async {
    final summary = state.orderSummary;
    final gateway = state.selectedGateway;

    if (summary == null) {
      return const PaymentResult.failure(
        code: 0,
        message: 'No order to process',
      );
    }

    state = state.copyWith(isProcessing: true, error: null);

    final repository = ref.read(paymentRepositoryProvider);

    // Create payment intent
    final intentResult = await repository.createPaymentIntent(
      bookingId: summary.bookingId,
      gateway: gateway,
      discountCode: summary.discountCode,
    );

    return intentResult.fold(
      (failure) {
        state = state.copyWith(
          isProcessing: false,
          error: failure.userMessage,
        );
        return PaymentResult.failure(code: 0, message: failure.userMessage);
      },
      (intent) async {
        // Process with appropriate gateway
        PaymentResult result;

        if (gateway == PaymentGateway.razorpay) {
          result = await _processRazorpay(intent, summary);
        } else {
          result = await _processStripe(intent);
        }

        state = state.copyWith(isProcessing: false);
        return result;
      },
    );
  }

  Future<PaymentResult> _processRazorpay(
    PaymentIntent intent,
    OrderSummary summary,
  ) async {
    try {
      final options = {
        'key': EnvConfig.razorpayKeyId,
        'amount': intent.amount,
        'currency': intent.currency,
        'order_id': intent.razorpayOrderId,
        'name': 'Familiarise',
        'description': summary.planTitle,
      };

      _razorpay.open(options);

      // Wait for result via callbacks
      return await _waitForRazorpayResult();
    } catch (e) {
      return PaymentResult.failure(code: 0, message: e.toString());
    }
  }

  Future<PaymentResult> _waitForRazorpayResult() async {
    final completer = Completer<PaymentResult>();

    void handleSuccess(PaymentSuccessResponse response) {
      completer.complete(PaymentResult.success(
        paymentId: response.paymentId!,
        orderId: response.orderId!,
        signature: response.signature,
      ));
    }

    void handleError(PaymentFailureResponse response) {
      completer.complete(PaymentResult.failure(
        code: response.code ?? 0,
        message: response.message ?? 'Payment failed',
      ));
    }

    void handleExternalWallet(ExternalWalletResponse response) {
      // Handle external wallet if needed
    }

    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handleSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handleError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);

    return completer.future;
  }

  Future<PaymentResult> _processStripe(PaymentIntent intent) async {
    try {
      if (intent.clientSecret == null) {
        return const PaymentResult.failure(
          code: 0,
          message: 'Missing client secret',
        );
      }

      await stripe.Stripe.instance.initPaymentSheet(
        paymentSheetParameters: stripe.SetupPaymentSheetParameters(
          paymentIntentClientSecret: intent.clientSecret,
          merchantDisplayName: 'Familiarise',
          style: ThemeMode.system,
        ),
      );

      await stripe.Stripe.instance.presentPaymentSheet();

      return PaymentResult.success(
        paymentId: intent.id,
        orderId: intent.orderId,
      );
    } on stripe.StripeException catch (e) {
      if (e.error.code == stripe.FailureCode.Canceled) {
        return const PaymentResult.cancelled();
      }
      return PaymentResult.failure(
        code: e.error.code.index,
        message: e.error.localizedMessage ?? 'Payment failed',
      );
    }
  }

  Future<void> verifyPayment(PaymentResult result) async {
    if (result is! PaymentResultSuccess) return;

    final repository = ref.read(paymentRepositoryProvider);
    await repository.verifyPayment(
      paymentId: result.paymentId,
      orderId: result.orderId,
      signature: result.signature,
    );
  }
}

class CheckoutState {
  final bool isLoading;
  final bool isProcessing;
  final bool isApplyingDiscount;
  final String? error;
  final String? discountError;
  final OrderSummary? orderSummary;
  final DiscountCode? appliedDiscount;
  final PaymentGateway selectedGateway;

  const CheckoutState({
    this.isLoading = false,
    this.isProcessing = false,
    this.isApplyingDiscount = false,
    this.error,
    this.discountError,
    this.orderSummary,
    this.appliedDiscount,
    this.selectedGateway = PaymentGateway.razorpay,
  });

  CheckoutState copyWith({
    bool? isLoading,
    bool? isProcessing,
    bool? isApplyingDiscount,
    String? error,
    String? discountError,
    OrderSummary? orderSummary,
    DiscountCode? appliedDiscount,
    PaymentGateway? selectedGateway,
  }) {
    return CheckoutState(
      isLoading: isLoading ?? this.isLoading,
      isProcessing: isProcessing ?? this.isProcessing,
      isApplyingDiscount: isApplyingDiscount ?? this.isApplyingDiscount,
      error: error ?? this.error,
      discountError: discountError ?? this.discountError,
      orderSummary: orderSummary ?? this.orderSummary,
      appliedDiscount: appliedDiscount ?? this.appliedDiscount,
      selectedGateway: selectedGateway ?? this.selectedGateway,
    );
  }
}
```

### 4.2 Checkout Screen

Create `lib/features/checkout/screens/checkout_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_theme.dart';
import '../../../app/theme/app_typography.dart';
import '../../../core/constants/enums.dart';
import '../../../core/extensions/context_extensions.dart';
import '../../../core/utils/currency_utils.dart';
import '../../../domain/entities/payment.dart';
import '../providers/payment_provider.dart';

class CheckoutScreen extends ConsumerStatefulWidget {
  final String bookingId;

  const CheckoutScreen({
    super.key,
    required this.bookingId,
  });

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  final _discountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(checkoutProvider.notifier).loadOrderSummary(widget.bookingId);
    });
  }

  @override
  void dispose() {
    _discountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final checkoutState = ref.watch(checkoutProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: checkoutState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : checkoutState.orderSummary == null
              ? Center(
                  child: Text(
                    checkoutState.error ?? 'Failed to load order',
                    style: AppTypography.body,
                  ),
                )
              : _buildContent(context, checkoutState),
    );
  }

  Widget _buildContent(BuildContext context, CheckoutState state) {
    final summary = state.orderSummary!;

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppTheme.space4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Order summary
                Text('Order Summary', style: AppTypography.h4),
                const SizedBox(height: AppTheme.space3),
                _buildOrderCard(summary),

                const SizedBox(height: AppTheme.space4),

                // Price breakdown
                Text('Price Details', style: AppTypography.h4),
                const SizedBox(height: AppTheme.space3),
                _buildPriceBreakdown(summary),

                const SizedBox(height: AppTheme.space4),

                // Discount code
                Text('Discount Code', style: AppTypography.h4),
                const SizedBox(height: AppTheme.space3),
                _buildDiscountSection(state),

                const SizedBox(height: AppTheme.space4),

                // Payment method
                Text('Payment Method', style: AppTypography.h4),
                const SizedBox(height: AppTheme.space3),
                _buildPaymentMethods(state),
              ],
            ),
          ),
        ),

        // Pay button
        Container(
          padding: EdgeInsets.only(
            left: AppTheme.space4,
            right: AppTheme.space4,
            bottom: context.bottomPadding + AppTheme.space4,
            top: AppTheme.space4,
          ),
          decoration: BoxDecoration(
            color: AppColors.background,
            border: Border(top: BorderSide(color: AppColors.border)),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: AppTypography.h4),
                  Text(
                    CurrencyUtils.format(
                      summary.totalAmount,
                      currency: summary.currency,
                    ),
                    style: AppTypography.h3,
                  ),
                ],
              ),
              const SizedBox(height: AppTheme.space3),
              ElevatedButton(
                onPressed: state.isProcessing
                    ? null
                    : () async {
                        final result = await ref
                            .read(checkoutProvider.notifier)
                            .processPayment();

                        if (!mounted) return;

                        result.when(
                          success: (paymentId, orderId, _) {
                            ref
                                .read(checkoutProvider.notifier)
                                .verifyPayment(result);
                            context.goNamed('paymentSuccess',
                                extra: {'bookingId': widget.bookingId});
                          },
                          failure: (code, message) {
                            context.showErrorSnackBar(message);
                          },
                          cancelled: () {
                            context.showSnackBar('Payment cancelled');
                          },
                        );
                      },
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(double.infinity, AppTheme.buttonHeight),
                ),
                child: state.isProcessing
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: AppColors.primaryForeground,
                        ),
                      )
                    : Text(
                        'Pay ${CurrencyUtils.format(summary.totalAmount, currency: summary.currency)}'),
              ),
              const SizedBox(height: AppTheme.space2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.lock, size: 14, color: AppColors.mutedForeground),
                  const SizedBox(width: 4),
                  Text(
                    'Secure payment',
                    style: AppTypography.caption,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOrderCard(OrderSummary summary) {
    return Container(
      padding: const EdgeInsets.all(AppTheme.space4),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            summary.planTitle,
            style: AppTypography.body.copyWith(
              fontWeight: AppTypography.fontSemibold,
            ),
          ),
          const SizedBox(height: AppTheme.space2),
          Text(
            'Booking #${summary.bookingId.substring(0, 8)}',
            style: AppTypography.caption,
          ),
        ],
      ),
    );
  }

  Widget _buildPriceBreakdown(OrderSummary summary) {
    return Container(
      padding: const EdgeInsets.all(AppTheme.space4),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      ),
      child: Column(
        children: [
          _buildPriceRow(
            'Session Fee',
            CurrencyUtils.format(summary.baseAmount, currency: summary.currency),
          ),
          if (summary.platformFee > 0)
            _buildPriceRow(
              'Platform Fee',
              CurrencyUtils.format(summary.platformFee, currency: summary.currency),
            ),
          if (summary.taxAmount > 0)
            _buildPriceRow(
              'GST (${(summary.taxRate * 100).toInt()}%)',
              CurrencyUtils.format(summary.taxAmount, currency: summary.currency),
            ),
          if (summary.discountAmount > 0)
            _buildPriceRow(
              'Discount',
              '-${CurrencyUtils.format(summary.discountAmount, currency: summary.currency)}',
              isDiscount: true,
            ),
          const Divider(height: AppTheme.space4),
          _buildPriceRow(
            'Total',
            CurrencyUtils.format(summary.totalAmount, currency: summary.currency),
            isBold: true,
          ),
        ],
      ),
    );
  }

  Widget _buildPriceRow(String label, String value,
      {bool isBold = false, bool isDiscount = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppTheme.space1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: isBold
                ? AppTypography.body.copyWith(
                    fontWeight: AppTypography.fontSemibold,
                  )
                : AppTypography.body,
          ),
          Text(
            value,
            style: (isBold
                    ? AppTypography.body.copyWith(
                        fontWeight: AppTypography.fontSemibold,
                      )
                    : AppTypography.body)
                .copyWith(
              color: isDiscount ? AppColors.success : null,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDiscountSection(CheckoutState state) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _discountController,
                decoration: InputDecoration(
                  hintText: 'Enter code',
                  errorText: state.discountError,
                ),
              ),
            ),
            const SizedBox(width: AppTheme.space2),
            ElevatedButton(
              onPressed: state.isApplyingDiscount
                  ? null
                  : () {
                      if (_discountController.text.isNotEmpty) {
                        ref
                            .read(checkoutProvider.notifier)
                            .applyDiscountCode(_discountController.text);
                      }
                    },
              child: state.isApplyingDiscount
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Apply'),
            ),
          ],
        ),
        if (state.appliedDiscount != null) ...[
          const SizedBox(height: AppTheme.space2),
          Container(
            padding: const EdgeInsets.all(AppTheme.space3),
            decoration: BoxDecoration(
              color: AppColors.success.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppTheme.radiusMd),
            ),
            child: Row(
              children: [
                const Icon(Icons.check_circle, color: AppColors.success, size: 20),
                const SizedBox(width: AppTheme.space2),
                Expanded(
                  child: Text(
                    'Code "${state.appliedDiscount!.code}" applied',
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.success,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, size: 18),
                  onPressed: () {
                    ref.read(checkoutProvider.notifier).removeDiscount();
                    _discountController.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildPaymentMethods(CheckoutState state) {
    return Column(
      children: [
        _buildPaymentOption(
          gateway: PaymentGateway.razorpay,
          title: 'Razorpay',
          subtitle: 'UPI, Cards, Net Banking, Wallets',
          isSelected: state.selectedGateway == PaymentGateway.razorpay,
        ),
        const SizedBox(height: AppTheme.space2),
        _buildPaymentOption(
          gateway: PaymentGateway.stripe,
          title: 'Stripe',
          subtitle: 'International Cards',
          isSelected: state.selectedGateway == PaymentGateway.stripe,
        ),
      ],
    );
  }

  Widget _buildPaymentOption({
    required PaymentGateway gateway,
    required String title,
    required String subtitle,
    required bool isSelected,
  }) {
    return InkWell(
      onTap: () {
        ref.read(checkoutProvider.notifier).selectGateway(gateway);
      },
      borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      child: Container(
        padding: const EdgeInsets.all(AppTheme.space4),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.border,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(AppTheme.radiusLg),
        ),
        child: Row(
          children: [
            Radio<PaymentGateway>(
              value: gateway,
              groupValue: ref.watch(checkoutProvider).selectedGateway,
              onChanged: (value) {
                if (value != null) {
                  ref.read(checkoutProvider.notifier).selectGateway(value);
                }
              },
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.body.copyWith(
                      fontWeight: AppTypography.fontMedium,
                    ),
                  ),
                  Text(subtitle, style: AppTypography.caption),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## 5. Stripe Initialization

Update `lib/main.dart`:

```dart
import 'package:flutter_stripe/flutter_stripe.dart';
import 'core/config/env_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Stripe
  Stripe.publishableKey = EnvConfig.stripePublishableKey;
  await Stripe.instance.applySettings();

  // ... rest of initialization
}
```

---

## 6. Acceptance Criteria

- [ ] Order summary displays correctly
- [ ] Price breakdown shows all fees
- [ ] Discount codes can be applied/removed
- [ ] Razorpay payment flow works
- [ ] Stripe payment flow works
- [ ] Payment verification completes
- [ ] Success screen shows after payment
- [ ] Error handling for failed payments
- [ ] Cancel handling for abandoned payments

---

## 7. Next Phase

Proceed to **Phase 7: Video Meetings** to implement:
- Stream Video SDK integration
- Meeting room UI
- Audio/video controls
