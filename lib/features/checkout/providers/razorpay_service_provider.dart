import 'dart:async';

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/config/env_config.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../domain/entities/checkout/checkout_entities.dart';

part 'razorpay_service_provider.g.dart';

/// Result of Razorpay payment attempt
sealed class RazorpayResult {
  const RazorpayResult();
}

/// Successful Razorpay payment
class RazorpaySuccess extends RazorpayResult {
  final String paymentId;
  final String orderId;
  final String signature;

  const RazorpaySuccess({
    required this.paymentId,
    required this.orderId,
    required this.signature,
  });

  @override
  String toString() =>
      'RazorpaySuccess(paymentId: $paymentId, orderId: $orderId)';
}

/// Failed Razorpay payment
class RazorpayFailure extends RazorpayResult {
  final int code;
  final String message;

  const RazorpayFailure({
    required this.code,
    required this.message,
  });

  @override
  String toString() => 'RazorpayFailure(code: $code, message: $message)';
}

/// Cancelled Razorpay payment
class RazorpayCancelled extends RazorpayResult {
  const RazorpayCancelled();

  @override
  String toString() => 'RazorpayCancelled()';
}

/// Razorpay payment service provider
@riverpod
class RazorpayService extends _$RazorpayService {
  Razorpay? _razorpay;
  Completer<RazorpayResult>? _paymentCompleter;

  @override
  void build() {
    _initializeRazorpay();

    ref.onDispose(() {
      _razorpay?.clear();
      _razorpay = null;
    });
  }

  void _initializeRazorpay() {
    _razorpay = Razorpay();
    _razorpay!.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handleSuccess);
    _razorpay!.on(Razorpay.EVENT_PAYMENT_ERROR, _handleError);
    _razorpay!.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  /// Open Razorpay checkout for payment
  ///
  /// [session] - Checkout session with order details
  /// [userEmail] - User's email for prefill
  /// [userName] - User's name for prefill (optional)
  /// [userPhone] - User's phone for prefill (optional)
  Future<RazorpayResult> openCheckout({
    required CheckoutSession session,
    required String userEmail,
    String? userName,
    String? userPhone,
  }) async {
    if (session.razorpayOrderId == null) {
      return const RazorpayFailure(
        code: -1,
        message: 'Razorpay order ID is required',
      );
    }

    if (_razorpay == null) {
      _initializeRazorpay();
    }

    _paymentCompleter = Completer<RazorpayResult>();

    final options = <String, dynamic>{
      'key': EnvConfig.razorpayKeyId,
      'amount': session.amountInSmallestUnit,
      'currency': session.currency,
      'order_id': session.razorpayOrderId,
      'name': 'Familiarise',
      'description': 'Consultation Booking',
      'prefill': <String, dynamic>{
        'email': userEmail,
        if (userName != null && userName.isNotEmpty) 'name': userName,
        if (userPhone != null && userPhone.isNotEmpty) 'contact': userPhone,
      },
      'theme': <String, dynamic>{
        'color': '#6366F1', // Primary indigo color
      },
      'modal': <String, dynamic>{
        'confirm_close': true,
        'animation': true,
      },
      'retry': <String, dynamic>{
        'enabled': true,
        'max_count': 3,
      },
    };

    try {
      debugPrint('Opening Razorpay checkout with options: $options');
      _razorpay!.open(options);
      return await _paymentCompleter!.future;
    } catch (e, stackTrace) {
      SentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'RazorpayService.openCheckout',
        extras: {
          'orderId': session.razorpayOrderId,
          'amount': session.amountInSmallestUnit,
          'currency': session.currency,
        },
      );
      return RazorpayFailure(
        code: -1,
        message: 'Failed to open Razorpay: $e',
      );
    }
  }

  void _handleSuccess(PaymentSuccessResponse response) {
    debugPrint('Razorpay payment success: ${response.paymentId}');

    final result = RazorpaySuccess(
      paymentId: response.paymentId ?? '',
      orderId: response.orderId ?? '',
      signature: response.signature ?? '',
    );

    _paymentCompleter?.complete(result);
    _paymentCompleter = null;
  }

  void _handleError(PaymentFailureResponse response) {
    debugPrint(
        'Razorpay payment error: ${response.code} - ${response.message}');

    final code = response.code ?? 0;
    final message = response.message ?? 'Payment failed';

    // Check if this is a cancellation
    // Razorpay error code 2 = Payment cancelled
    if (code == 2 || message.toLowerCase().contains('cancel')) {
      _paymentCompleter?.complete(const RazorpayCancelled());
    } else {
      SentryLogger.captureMessage(
        'Razorpay payment failed',
        extras: {
          'code': code,
          'message': message,
        },
      );

      _paymentCompleter?.complete(RazorpayFailure(
        code: code,
        message: message,
      ));
    }

    _paymentCompleter = null;
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // External wallet selected (UPI apps, etc.)
    // This is not a terminal state - payment will continue
    // The success/error callback will be called eventually
    debugPrint('External wallet selected: ${response.walletName}');
  }
}
