import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/checkout/checkout_entities.dart';

part 'checkout_response_model.freezed.dart';
part 'checkout_response_model.g.dart';

/// Response model from POST /api/checkout
@freezed
class CheckoutResponseModel with _$CheckoutResponseModel {
  const factory CheckoutResponseModel({
    /// Unique payment ID
    required String paymentId,

    /// Payment gateway used
    required String gateway,

    /// Amount to pay
    required double amount,

    /// Currency code
    required String currency,

    /// Razorpay order ID (if using Razorpay)
    String? razorpayOrderId,

    /// Stripe client secret (if using Stripe Payment Sheet)
    String? stripeClientSecret,

    /// Stripe checkout URL (if using Stripe Hosted Checkout)
    String? stripeCheckoutUrl,

    /// Discount amount applied
    double? discountAmount,

    /// Applied discount code
    String? discountCode,

    /// Booking ID
    String? bookingId,

    /// Booking type
    String? bookingType,
  }) = _CheckoutResponseModel;

  const CheckoutResponseModel._();

  factory CheckoutResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResponseModelFromJson(json);

  /// Convert to domain entity
  CheckoutSession toEntity() => CheckoutSession(
        paymentId: paymentId,
        gateway: PaymentGatewayType.fromString(gateway),
        amount: amount,
        currency: currency,
        razorpayOrderId: razorpayOrderId,
        stripeClientSecret: stripeClientSecret,
        stripeCheckoutUrl: stripeCheckoutUrl,
        discountAmount: discountAmount,
        appliedDiscountCode: discountCode,
        bookingId: bookingId,
        bookingType: bookingType,
      );
}
