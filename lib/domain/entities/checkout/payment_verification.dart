import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_types.dart';

part 'payment_verification.freezed.dart';

/// Result of payment verification
@freezed
class PaymentVerification with _$PaymentVerification {
  const factory PaymentVerification({
    /// Whether the verification was successful
    required bool success,

    /// Payment status
    required PaymentStatusType status,

    /// Appointment ID if payment was successful
    String? appointmentId,

    /// Booking type (CONSULTATION, SUBSCRIPTION, etc.)
    String? bookingType,

    /// Optional message from server
    String? message,

    /// Consultant name (for display)
    String? consultantName,

    /// Plan title (for display)
    String? planTitle,

    /// Scheduled date/time (for display)
    DateTime? scheduledAt,

    /// Transaction/Payment ID for reference
    String? transactionId,
  }) = _PaymentVerification;

  const PaymentVerification._();

  /// Whether the payment was successful
  bool get isSuccessful => success && status == PaymentStatusType.succeeded;

  /// Whether the payment failed
  bool get isFailed => !success || status == PaymentStatusType.failed;

  /// Whether the payment is still pending
  bool get isPending => status == PaymentStatusType.pending;

  /// Display message for the result
  String get displayMessage {
    if (isSuccessful) {
      return message ?? 'Payment successful! Your booking has been confirmed.';
    } else if (isFailed) {
      return message ?? 'Payment failed. Please try again.';
    } else {
      return message ?? 'Payment is being processed...';
    }
  }
}
