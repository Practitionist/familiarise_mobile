import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_types.dart';

part 'checkout_session.freezed.dart';

/// Represents a checkout session for payment processing
@freezed
class CheckoutSession with _$CheckoutSession {
  const factory CheckoutSession({
    /// Unique payment ID from the backend
    required String paymentId,

    /// Payment gateway to use
    required PaymentGatewayType gateway,

    /// Original amount before discount
    required double amount,

    /// Currency code (e.g., 'INR', 'USD')
    required String currency,

    /// Razorpay-specific: Order ID for payment
    String? razorpayOrderId,

    /// Stripe-specific: Client secret for Payment Sheet
    String? stripeClientSecret,

    /// Stripe-specific: Hosted checkout URL (fallback)
    String? stripeCheckoutUrl,

    /// Discount amount applied
    double? discountAmount,

    /// Applied discount code
    String? appliedDiscountCode,

    /// Booking ID this payment is for
    String? bookingId,

    /// Booking type (CONSULTATION, SUBSCRIPTION, etc.)
    String? bookingType,
  }) = _CheckoutSession;

  const CheckoutSession._();

  /// Final amount after discount
  double get finalAmount => amount - (discountAmount ?? 0);

  /// Amount in smallest currency unit (paise for INR, cents for USD)
  int get amountInSmallestUnit {
    return (finalAmount * 100).round();
  }

  /// Currency symbol
  String get currencySymbol {
    switch (currency.toUpperCase()) {
      case 'INR':
        return '\u20B9'; // ₹
      case 'USD':
        return '\$';
      case 'EUR':
        return '\u20AC'; // €
      case 'GBP':
        return '\u00A3'; // £
      default:
        return currency;
    }
  }

  /// Formatted final amount display
  String get formattedAmount {
    return '$currencySymbol${finalAmount.toStringAsFixed(2)}';
  }

  /// Formatted original amount
  String get formattedOriginalAmount {
    return '$currencySymbol${amount.toStringAsFixed(2)}';
  }

  /// Formatted discount amount
  String get formattedDiscountAmount {
    if (discountAmount == null || discountAmount! <= 0) return '';
    return '-$currencySymbol${discountAmount!.toStringAsFixed(2)}';
  }

  /// Has discount applied
  bool get hasDiscount => discountAmount != null && discountAmount! > 0;

  /// Can use Stripe Payment Sheet (has client secret)
  bool get canUseStripePaymentSheet => stripeClientSecret != null;

  /// Can use Stripe Hosted Checkout (has URL)
  bool get canUseStripeHostedCheckout => stripeCheckoutUrl != null;

  /// Is Razorpay gateway
  bool get isRazorpay => gateway == PaymentGatewayType.razorpay;

  /// Is Stripe gateway
  bool get isStripe => gateway == PaymentGatewayType.stripe;
}
