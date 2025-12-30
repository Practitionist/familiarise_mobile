import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/checkout/checkout_entities.dart';

part 'payment_verification_model.freezed.dart';
part 'payment_verification_model.g.dart';

/// Response model from GET /api/checkout/verify
@freezed
class PaymentVerificationModel with _$PaymentVerificationModel {
  const factory PaymentVerificationModel({
    /// Whether verification was successful
    required bool success,

    /// Payment status (PENDING, SUCCEEDED, FAILED)
    required String paymentStatus,

    /// Appointment ID if successful
    String? appointmentId,

    /// Booking type
    String? bookingType,

    /// Server message
    String? message,

    /// Consultant name (for display)
    String? consultantName,

    /// Plan title (for display)
    String? planTitle,

    /// Scheduled date/time
    String? scheduledAt,
  }) = _PaymentVerificationModel;

  const PaymentVerificationModel._();

  factory PaymentVerificationModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentVerificationModelFromJson(json);

  /// Convert to domain entity
  PaymentVerification toEntity() => PaymentVerification(
        success: success,
        status: PaymentStatusType.fromString(paymentStatus),
        appointmentId: appointmentId,
        bookingType: bookingType,
        message: message,
        consultantName: consultantName,
        planTitle: planTitle,
        scheduledAt:
            scheduledAt != null ? DateTime.tryParse(scheduledAt!) : null,
      );
}
