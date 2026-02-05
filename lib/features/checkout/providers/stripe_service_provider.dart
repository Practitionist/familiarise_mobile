import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/config/env_config.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../domain/entities/checkout/checkout_entities.dart';

part 'stripe_service_provider.g.dart';

/// Sanitizes error messages for user display
/// Logs full details to Sentry while returning user-friendly messages
String _sanitizePaymentError(
    Object error, StackTrace? stackTrace, String context) {
  final errorString = error.toString();

  // Log full details to Sentry
  AppSentryLogger.captureException(
    error,
    stackTrace: stackTrace,
    context: context,
    extras: {
      'rawError': errorString,
      'errorType': error.runtimeType.toString(),
    },
  );

  // Map known error patterns to user-friendly messages
  if (errorString.contains('merchantIdentifier') ||
      errorString.contains('Apple Pay')) {
    return 'Apple Pay is not configured. Please use a different payment method.';
  }
  if (errorString.contains('Google Pay')) {
    return 'Google Pay is not configured. Please use a different payment method.';
  }
  if (errorString.contains('network') ||
      errorString.contains('connection') ||
      errorString.contains('SocketException')) {
    return 'Network error. Please check your connection and try again.';
  }
  if (errorString.contains('timeout') || errorString.contains('Timeout')) {
    return 'Request timed out. Please try again.';
  }
  if (errorString.contains('Assertion failed') ||
      errorString.contains('assert')) {
    return 'Payment configuration error. Please try a different payment method or contact support.';
  }
  if (errorString.contains('cancelled') || errorString.contains('canceled')) {
    return 'Payment was cancelled.';
  }
  if (errorString.contains('declined')) {
    return 'Payment was declined. Please check your card details or try a different payment method.';
  }
  if (errorString.contains('insufficient')) {
    return 'Insufficient funds. Please check your balance or try a different payment method.';
  }
  if (errorString.contains('expired')) {
    return 'Card has expired. Please use a different card.';
  }
  if (errorString.contains('invalid') && errorString.contains('card')) {
    return 'Invalid card details. Please check and try again.';
  }

  // Default user-friendly message for unknown errors
  return 'Payment could not be processed. Please try again or use a different payment method.';
}

/// Result of Stripe payment attempt
sealed class StripeResult {
  const StripeResult();
}

/// Successful Stripe payment
class StripeSuccess extends StripeResult {
  const StripeSuccess();

  @override
  String toString() => 'StripeSuccess()';
}

/// Failed Stripe payment
class StripeFailure extends StripeResult {
  final String code;
  final String message;

  const StripeFailure({
    required this.code,
    required this.message,
  });

  @override
  String toString() => 'StripeFailure(code: $code, message: $message)';
}

/// Cancelled Stripe payment
class StripeCancelled extends StripeResult {
  const StripeCancelled();

  @override
  String toString() => 'StripeCancelled()';
}

/// Redirected to Stripe Hosted Checkout
class StripeRedirected extends StripeResult {
  final String url;

  const StripeRedirected(this.url);

  @override
  String toString() => 'StripeRedirected(url: $url)';
}

/// Stripe payment service provider
@riverpod
class StripeService extends _$StripeService {
  bool _isInitialized = false;

  @override
  void build() {
    _initializeStripe();
  }

  void _initializeStripe() {
    if (_isInitialized) return;

    try {
      Stripe.publishableKey = EnvConfig.stripePublishableKey;
      _isInitialized = true;
      debugPrint(
          'Stripe initialized with key: ${EnvConfig.stripePublishableKey.substring(0, 20)}...');
    } catch (e) {
      debugPrint('Failed to initialize Stripe: $e');
    }
  }

  /// Process payment using Stripe
  ///
  /// Tries Payment Sheet first (if clientSecret available),
  /// falls back to Hosted Checkout (if checkoutUrl available).
  Future<StripeResult> processPayment(CheckoutSession session) async {
    if (!_isInitialized) {
      _initializeStripe();
    }

    // On web, Payment Sheet uses Platform._operatingSystem which crashes.
    // Always use Hosted Checkout on web.
    if (kIsWeb) {
      if (session.canUseStripeHostedCheckout) {
        return await _handleHostedCheckout(session.stripeCheckoutUrl!);
      }
      return const StripeFailure(
        code: 'web_no_checkout_url',
        message:
            'Stripe Payment Sheet is not supported on web. Please try again.',
      );
    }

    // Primary: Use Payment Sheet if client secret is available
    if (session.canUseStripePaymentSheet) {
      return await _handlePaymentSheet(session);
    }

    // Fallback: Use Hosted Checkout if URL is available
    if (session.canUseStripeHostedCheckout) {
      return await _handleHostedCheckout(session.stripeCheckoutUrl!);
    }

    return const StripeFailure(
      code: 'no_session',
      message: 'No Stripe session data available',
    );
  }

  /// Get merchant country code from currency
  String _getMerchantCountry(String currency) {
    switch (currency.toUpperCase()) {
      case 'INR':
        return 'IN';
      case 'USD':
        return 'US';
      case 'EUR':
        return 'DE';
      case 'GBP':
        return 'GB';
      case 'AUD':
        return 'AU';
      case 'CAD':
        return 'CA';
      case 'JPY':
        return 'JP';
      case 'SGD':
        return 'SG';
      default:
        return 'US'; // Default to US for unsupported currencies
    }
  }

  /// Process payment using Stripe Payment Sheet (in-app)
  Future<StripeResult> _handlePaymentSheet(CheckoutSession session) async {
    try {
      debugPrint('Initializing Stripe Payment Sheet...');

      final merchantCountry = _getMerchantCountry(session.currency);

      // Initialize Payment Sheet
      // Note: Apple Pay and Google Pay are NOT supported on Flutter Web
      // They require native platform integration (iOS/Android)
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: session.stripeClientSecret!,
          merchantDisplayName: 'Familiarise',
          style: ThemeMode.system,
          appearance: const PaymentSheetAppearance(
            colors: PaymentSheetAppearanceColors(
              primary: Color(0xFF6366F1), // Indigo
            ),
            shapes: PaymentSheetShape(
              borderRadius: 12,
            ),
          ),
          // Only enable Apple Pay on iOS (not web)
          applePay: kIsWeb
              ? null
              : PaymentSheetApplePay(
                  merchantCountryCode: merchantCountry,
                ),
          // Only enable Google Pay on Android (not web)
          googlePay: kIsWeb
              ? null
              : PaymentSheetGooglePay(
                  merchantCountryCode: merchantCountry,
                  testEnv: kDebugMode,
                ),
        ),
      );

      debugPrint('Presenting Stripe Payment Sheet...');

      // Present Payment Sheet
      await Stripe.instance.presentPaymentSheet();

      debugPrint('Stripe payment completed successfully');
      return const StripeSuccess();
    } on StripeException catch (e) {
      debugPrint('Stripe error: ${e.error.code} - ${e.error.localizedMessage}');

      // Check if user cancelled
      if (e.error.code == FailureCode.Canceled) {
        return const StripeCancelled();
      }

      AppSentryLogger.captureException(
        e,
        stackTrace: StackTrace.current,
        context: 'StripeService.handlePaymentSheet',
        extras: {
          'errorCode': e.error.code.name,
          'errorMessage': e.error.localizedMessage,
        },
      );

      return StripeFailure(
        code: e.error.code.name,
        message: e.error.localizedMessage ?? 'Payment failed',
      );
    } catch (e, stackTrace) {
      // Use sanitized error message for user display
      final userMessage = _sanitizePaymentError(
        e,
        stackTrace,
        'StripeService.handlePaymentSheet',
      );

      return StripeFailure(
        code: 'unknown',
        message: userMessage,
      );
    }
  }

  /// Process payment using Stripe Hosted Checkout (browser redirect)
  Future<StripeResult> _handleHostedCheckout(String url) async {
    try {
      final uri = Uri.parse(url);

      if (await canLaunchUrl(uri)) {
        debugPrint('Launching Stripe Hosted Checkout: $url');

        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );

        return StripeRedirected(url);
      }

      return const StripeFailure(
        code: 'cannot_launch',
        message: 'Cannot open payment page. Please try again.',
      );
    } catch (e, stackTrace) {
      // Log with extra context, get sanitized message
      AppSentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'StripeService.handleHostedCheckout',
        extras: {
          'url': url,
          'rawError': e.toString(),
        },
      );

      return const StripeFailure(
        code: 'launch_error',
        message: 'Unable to open payment page. Please try again.',
      );
    }
  }

  /// Confirm payment intent manually (if needed)
  Future<StripeResult> confirmPayment(String paymentIntentClientSecret) async {
    try {
      final paymentIntent = await Stripe.instance.confirmPayment(
        paymentIntentClientSecret: paymentIntentClientSecret,
      );

      if (paymentIntent.status == PaymentIntentsStatus.Succeeded) {
        return const StripeSuccess();
      }

      return StripeFailure(
        code: paymentIntent.status.name,
        message: 'Payment not completed. Status: ${paymentIntent.status.name}',
      );
    } on StripeException catch (e) {
      if (e.error.code == FailureCode.Canceled) {
        return const StripeCancelled();
      }

      return StripeFailure(
        code: e.error.code.name,
        message: e.error.localizedMessage ?? 'Payment confirmation failed',
      );
    } catch (e) {
      return StripeFailure(
        code: 'unknown',
        message: e.toString(),
      );
    }
  }
}
