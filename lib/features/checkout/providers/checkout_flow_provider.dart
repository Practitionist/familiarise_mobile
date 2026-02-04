import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/checkout_repository_impl.dart';
import '../../../domain/entities/booking/booking.dart';
import '../../../domain/entities/checkout/checkout_entities.dart';
import '../../auth/providers/auth_provider.dart';
import 'razorpay_service_provider.dart';
import 'stripe_service_provider.dart';

part 'checkout_flow_provider.freezed.dart';
part 'checkout_flow_provider.g.dart';

/// Sanitizes error messages for user display while logging full details
String _sanitizeCheckoutError(Object error, StackTrace stack, String context,
    {Map<String, dynamic>? extras}) {
  final errorString = error.toString();

  // Log full details to Sentry
  AppSentryLogger.captureException(
    error,
    stackTrace: stack,
    context: context,
    extras: {
      'rawError': errorString,
      'errorType': error.runtimeType.toString(),
      ...?extras,
    },
  );

  // Return user-friendly message based on error patterns
  if (errorString.contains('network') ||
      errorString.contains('connection') ||
      errorString.contains('SocketException')) {
    return 'Network error. Please check your connection and try again.';
  }
  if (errorString.contains('timeout') || errorString.contains('Timeout')) {
    return 'Request timed out. Please try again.';
  }
  if (errorString.contains('unauthorized') || errorString.contains('401')) {
    return 'Session expired. Please sign in again.';
  }
  if (errorString.contains('Assertion failed') ||
      errorString.contains('assert')) {
    return 'A configuration error occurred. Please try again or contact support.';
  }

  // Default message
  return 'Something went wrong. Please try again.';
}

/// Checkout flow state
@freezed
class CheckoutFlowState with _$CheckoutFlowState {
  /// Initial state - no checkout in progress
  const factory CheckoutFlowState.initial() = _Initial;

  /// Loading state - creating checkout session
  const factory CheckoutFlowState.loading({String? message}) = _Loading;

  /// Checkout session created - ready to process payment
  const factory CheckoutFlowState.sessionCreated(CheckoutSession session) =
      _SessionCreated;

  /// Processing payment through gateway
  const factory CheckoutFlowState.processing() = _Processing;

  /// Verifying payment after gateway callback
  const factory CheckoutFlowState.verifying() = _Verifying;

  /// Payment successful
  const factory CheckoutFlowState.success(PaymentVerification verification) =
      _Success;

  /// Payment failed
  const factory CheckoutFlowState.failure({
    required String message,
    @Default(true) bool canRetry,
  }) = _Failure;

  /// Payment cancelled by user
  const factory CheckoutFlowState.cancelled() = _Cancelled;
}

/// Checkout flow provider - manages the entire checkout process
@riverpod
class CheckoutFlow extends _$CheckoutFlow {
  CheckoutSession? _currentSession;
  Booking? _currentBooking;

  @override
  CheckoutFlowState build() => const CheckoutFlowState.initial();

  /// Get the current checkout session
  CheckoutSession? get currentSession => _currentSession;

  /// Get the current booking being paid for
  Booking? get currentBooking => _currentBooking;

  /// Initialize checkout for an existing booking (request-then-pay flow)
  Future<void> initializeCheckout({
    required Booking booking,
    required PaymentGatewayType gateway,
    String? discountCode,
  }) async {
    _currentBooking = booking;
    state = const CheckoutFlowState.loading(message: 'Creating checkout...');

    try {
      final repository = ref.read(checkoutRepositoryProvider);

      final result = await repository.createCheckout(
        bookingId: booking.id,
        bookingType: booking.bookingType.value,
        gateway: gateway,
        discountCode: discountCode,
      );

      result.fold(
        (failure) {
          AppSentryLogger.captureMessage(
            'Checkout creation failed',
            extras: {
              'bookingId': booking.id,
              'gateway': gateway.value,
              'error': failure.displayMessage,
            },
          );
          state = CheckoutFlowState.failure(message: failure.displayMessage);
        },
        (session) {
          _currentSession = session;
          state = CheckoutFlowState.sessionCreated(session);
        },
      );
    } catch (e, stack) {
      final userMessage = _sanitizeCheckoutError(
        e,
        stack,
        'CheckoutFlow.initializeCheckout',
        extras: {
          'bookingId': booking.id,
          'gateway': gateway.value,
        },
      );
      state = CheckoutFlowState.failure(message: userMessage);
    }
  }

  /// Initialize direct checkout (direct checkout flow - no pre-created booking)
  Future<void> initializeDirectCheckout({
    required String consultantProfileId,
    required String planId,
    required String planType,
    required PaymentGatewayType gateway,
    DateTime? slotStartTime,
    DateTime? slotEndTime,
    String? slotOfAvailabilityId,
    DateTime? schedulingPeriodStart,
    DateTime? schedulingPeriodEnd,
    String? discountCode,
    String? notes,
  }) async {
    state = const CheckoutFlowState.loading(message: 'Creating checkout...');

    try {
      final repository = ref.read(checkoutRepositoryProvider);

      final result = await repository.createDirectCheckout(
        consultantProfileId: consultantProfileId,
        planId: planId,
        planType: planType,
        gateway: gateway,
        slotStartTime: slotStartTime,
        slotEndTime: slotEndTime,
        slotOfAvailabilityId: slotOfAvailabilityId,
        schedulingPeriodStart: schedulingPeriodStart,
        schedulingPeriodEnd: schedulingPeriodEnd,
        discountCode: discountCode,
        notes: notes,
      );

      result.fold(
        (failure) {
          AppSentryLogger.captureMessage(
            'Direct checkout creation failed',
            extras: {
              'planId': planId,
              'gateway': gateway.value,
              'error': failure.displayMessage,
            },
          );
          state = CheckoutFlowState.failure(message: failure.displayMessage);
        },
        (session) {
          _currentSession = session;
          state = CheckoutFlowState.sessionCreated(session);
        },
      );
    } catch (e, stack) {
      final userMessage = _sanitizeCheckoutError(
        e,
        stack,
        'CheckoutFlow.initializeDirectCheckout',
        extras: {
          'planId': planId,
          'gateway': gateway.value,
        },
      );
      state = CheckoutFlowState.failure(message: userMessage);
    }
  }

  /// Process payment using the appropriate gateway
  Future<void> processPayment() async {
    if (_currentSession == null) {
      state = const CheckoutFlowState.failure(
        message: 'No checkout session available',
        canRetry: false,
      );
      return;
    }

    state = const CheckoutFlowState.processing();

    try {
      final session = _currentSession!;

      if (session.isRazorpay) {
        await _processRazorpayPayment(session);
      } else {
        await _processStripePayment(session);
      }
    } catch (e, stack) {
      final userMessage = _sanitizeCheckoutError(
        e,
        stack,
        'CheckoutFlow.processPayment',
        extras: {
          'gateway': _currentSession?.gateway.value,
          'paymentId': _currentSession?.paymentId,
        },
      );
      state = CheckoutFlowState.failure(message: userMessage);
    }
  }

  /// Process Razorpay payment
  Future<void> _processRazorpayPayment(CheckoutSession session) async {
    final user = ref.read(currentUserProvider);

    if (user == null || user.email == null) {
      state = const CheckoutFlowState.failure(
        message: 'User information not available',
        canRetry: false,
      );
      return;
    }

    final razorpayService = ref.read(razorpayServiceProvider.notifier);
    final result = await razorpayService.openCheckout(
      session: session,
      userEmail: user.email!,
      userName: user.name,
      userPhone: user.phone,
    );

    debugPrint('Razorpay result: $result');

    switch (result) {
      case RazorpaySuccess(:final paymentId, :final signature):
        await _verifyPayment(
          razorpayPaymentId: paymentId,
          razorpaySignature: signature,
        );
      case RazorpayFailure(:final message):
        state = CheckoutFlowState.failure(message: message);
      case RazorpayCancelled():
        state = const CheckoutFlowState.cancelled();
    }
  }

  /// Process Stripe payment
  Future<void> _processStripePayment(CheckoutSession session) async {
    final stripeService = ref.read(stripeServiceProvider.notifier);
    final result = await stripeService.processPayment(session);

    debugPrint('Stripe result: $result');

    switch (result) {
      case StripeSuccess():
        await _verifyPayment();
      case StripeFailure(:final message):
        state = CheckoutFlowState.failure(message: message);
      case StripeCancelled():
        state = const CheckoutFlowState.cancelled();
      case StripeRedirected(:final url):
        // For hosted checkout, user will return via deep link
        // Keep state as processing - verification will happen on return
        debugPrint('User redirected to Stripe hosted checkout: $url');
        state = const CheckoutFlowState.loading(
          message: 'Complete payment in browser...',
        );
    }
  }

  /// Verify payment after gateway callback
  Future<void> _verifyPayment({
    String? razorpayPaymentId,
    String? razorpaySignature,
  }) async {
    if (_currentSession == null) return;

    state = const CheckoutFlowState.verifying();

    try {
      final repository = ref.read(checkoutRepositoryProvider);

      final result = await repository.verifyPayment(
        paymentId: _currentSession!.paymentId,
        razorpayPaymentId: razorpayPaymentId,
        razorpaySignature: razorpaySignature,
      );

      result.fold(
        (failure) {
          AppSentryLogger.captureMessage(
            'Payment verification failed',
            extras: {
              'paymentId': _currentSession!.paymentId,
              'error': failure.displayMessage,
            },
          );
          state = CheckoutFlowState.failure(message: failure.displayMessage);
        },
        (verification) {
          if (verification.isSuccessful) {
            state = CheckoutFlowState.success(verification);
          } else {
            state = CheckoutFlowState.failure(
              message: verification.message ?? 'Payment verification failed',
            );
          }
        },
      );
    } catch (e, stack) {
      final userMessage = _sanitizeCheckoutError(
        e,
        stack,
        'CheckoutFlow.verifyPayment',
        extras: {
          'paymentId': _currentSession?.paymentId,
        },
      );
      state = CheckoutFlowState.failure(message: userMessage);
    }
  }

  /// Verify payment externally (e.g., after returning from hosted checkout)
  Future<void> verifyPaymentExternal(String paymentId) async {
    state = const CheckoutFlowState.verifying();

    try {
      final repository = ref.read(checkoutRepositoryProvider);

      final result = await repository.verifyPayment(paymentId: paymentId);

      result.fold(
        (failure) {
          state = CheckoutFlowState.failure(message: failure.displayMessage);
        },
        (verification) {
          if (verification.isSuccessful) {
            state = CheckoutFlowState.success(verification);
          } else {
            state = CheckoutFlowState.failure(
              message: verification.message ?? 'Payment not completed',
            );
          }
        },
      );
    } catch (e, stack) {
      final userMessage = _sanitizeCheckoutError(
        e,
        stack,
        'CheckoutFlow.verifyPaymentExternal',
        extras: {'paymentId': paymentId},
      );
      state = CheckoutFlowState.failure(message: userMessage);
    }
  }

  /// Reset checkout flow
  void reset() {
    _currentSession = null;
    _currentBooking = null;
    state = const CheckoutFlowState.initial();
  }
}

/// Provider for validating discount codes
@riverpod
class DiscountCodeValidator extends _$DiscountCodeValidator {
  @override
  AsyncValue<DiscountInfo?> build() => const AsyncData(null);

  /// Validate a discount code
  Future<void> validateCode({
    required String code,
    required String bookingId,
    double? amount,
  }) async {
    if (code.trim().isEmpty) {
      state = const AsyncData(null);
      return;
    }

    state = const AsyncLoading();

    try {
      final repository = ref.read(checkoutRepositoryProvider);

      final result = await repository.validateDiscountCode(
        code: code.trim().toUpperCase(),
        bookingId: bookingId,
        amount: amount,
      );

      result.fold(
        (failure) {
          state = AsyncError(failure.displayMessage, StackTrace.current);
        },
        (discountInfo) {
          state = AsyncData(discountInfo);
        },
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }

  /// Clear current discount
  void clear() {
    state = const AsyncData(null);
  }
}

/// Convenience provider to check if checkout is in progress
@riverpod
bool isCheckoutInProgress(Ref ref) {
  final state = ref.watch(checkoutFlowProvider);
  return state.maybeWhen(
    loading: (_) => true,
    processing: () => true,
    verifying: () => true,
    orElse: () => false,
  );
}

/// Convenience provider to get checkout loading message
@riverpod
String? checkoutLoadingMessage(Ref ref) {
  final state = ref.watch(checkoutFlowProvider);
  return state.maybeWhen(
    loading: (message) => message ?? 'Loading...',
    processing: () => 'Processing payment...',
    verifying: () => 'Verifying payment...',
    orElse: () => null,
  );
}
