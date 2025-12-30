import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_request_model.freezed.dart';
part 'checkout_request_model.g.dart';

/// Request model for creating a checkout session
@freezed
class CheckoutRequestModel with _$CheckoutRequestModel {
  const factory CheckoutRequestModel({
    /// Appointment type (CONSULTATION, SUBSCRIPTION, WEBINAR, CLASS)
    required String appointmentType,

    /// Plan ID
    required String planId,

    /// Payment gateway (razorpay, stripe)
    required String paymentGateway,

    /// Event ID (for WEBINAR/CLASS)
    String? eventId,

    /// Slot start time in UTC (ISO 8601)
    String? slotStartTimeInUTC,

    /// Slot end time in UTC (ISO 8601)
    String? slotEndTimeInUTC,

    /// Weekly availability slot ID
    String? slotOfAvailabilityWeeklyId,

    /// Custom availability slot ID
    String? slotOfAvailabilityCustomId,

    /// Scheduling period start (for SUBSCRIPTION)
    String? schedulingPeriodStartsAt,

    /// Scheduling period end (for SUBSCRIPTION)
    String? schedulingPeriodEndsAt,

    /// Discount code
    String? discountCode,

    /// Notes/message
    String? notes,
  }) = _CheckoutRequestModel;

  factory CheckoutRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutRequestModelFromJson(json);
}

/// Request model for verifying payment
@freezed
class PaymentVerifyRequestModel with _$PaymentVerifyRequestModel {
  const factory PaymentVerifyRequestModel({
    /// Payment ID from checkout session
    required String paymentId,

    /// Razorpay payment ID (if using Razorpay)
    String? razorpayPaymentId,

    /// Razorpay signature (if using Razorpay)
    String? razorpaySignature,
  }) = _PaymentVerifyRequestModel;

  factory PaymentVerifyRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentVerifyRequestModelFromJson(json);
}

/// Request model for validating discount code
@freezed
class DiscountValidateRequestModel with _$DiscountValidateRequestModel {
  const factory DiscountValidateRequestModel({
    /// Discount code to validate
    required String code,

    /// Booking ID for context
    required String bookingId,

    /// Original amount for percentage calculations
    double? amount,
  }) = _DiscountValidateRequestModel;

  factory DiscountValidateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountValidateRequestModelFromJson(json);
}
