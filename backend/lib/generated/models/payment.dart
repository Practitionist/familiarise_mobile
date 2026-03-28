import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'payment_gateway.dart';
import 'payment_status.dart';
import 'user.dart';
import 'appointment.dart';
import 'discount_code.dart';
import 'refund.dart';
import 'dispute.dart';
import 'consultant_earnings.dart';
import 'referral_credit_usage.dart';
import 'invoice.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    required String id,
    required int amount,
    required int originalAmount,
    @Default(0)
    int taxAmount,
    required String currency,
    String? description,
    String? receiptUrl,
    required String paymentMethod,
    required String paymentIntent,
    required PaymentGateway paymentGateway,
    required PaymentStatus paymentStatus,
    DateTime? expiresAt,
    @Default(false)
    bool isMockPayment,
    String? buyerCountry,
    @Default(false)
    bool isInternational,
    String? displayCurrencyAtCheckout,
    double? exchangeRateAtCheckout,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Appointment? appointment,
    String? appointmentId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    DiscountCode? discountCode,
    String? discountCodeId,
    required List<Refund> refunds,
    required List<Dispute> disputes,
    required List<ConsultantEarnings> earnings,
    required List<ReferralCreditUsage> creditUsages,
    Invoice? invoice,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

/// Input for creating a new Payment
@freezed
class CreatePaymentInput with _$CreatePaymentInput {
  const factory CreatePaymentInput({
    required int amount,
    required int originalAmount,
    @Default(0)
    int? taxAmount,
    required String currency,
    String? description,
    String? receiptUrl,
    required String paymentMethod,
    required String paymentIntent,
    required PaymentGateway paymentGateway,
    required PaymentStatus paymentStatus,
    DateTime? expiresAt,
    @Default(false)
    bool? isMockPayment,
    String? buyerCountry,
    @Default(false)
    bool? isInternational,
    String? displayCurrencyAtCheckout,
    double? exchangeRateAtCheckout,
    required String userId,
    String? appointmentId,
    String? discountCodeId,
  }) = _CreatePaymentInput;

  factory CreatePaymentInput.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentInputFromJson(json);
}

/// Input for updating an existing Payment
@freezed
class UpdatePaymentInput with _$UpdatePaymentInput {
  const factory UpdatePaymentInput({
    int? amount,
    int? originalAmount,
    int? taxAmount,
    String? currency,
    String? description,
    String? receiptUrl,
    String? paymentMethod,
    String? paymentIntent,
    PaymentGateway? paymentGateway,
    PaymentStatus? paymentStatus,
    DateTime? expiresAt,
    bool? isMockPayment,
    String? buyerCountry,
    bool? isInternational,
    String? displayCurrencyAtCheckout,
    double? exchangeRateAtCheckout,
    String? userId,
    String? appointmentId,
    String? discountCodeId,
  }) = _UpdatePaymentInput;

  factory UpdatePaymentInput.fromJson(Map<String, dynamic> json) =>
      _$UpdatePaymentInputFromJson(json);
}

/// Unique where input for Payment
/// At least one field must be provided
@freezed
class PaymentWhereUniqueInput with _$PaymentWhereUniqueInput {
  const factory PaymentWhereUniqueInput({
    String? id,
    String? paymentIntent,
  }) = _PaymentWhereUniqueInput;

  factory PaymentWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$PaymentWhereUniqueInputFromJson(json);
}

/// Where input for filtering Payment records
@freezed
class PaymentWhereInput with _$PaymentWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory PaymentWhereInput({
    StringFilter? id,
    IntFilter? amount,
    IntFilter? originalAmount,
    IntFilter? taxAmount,
    StringFilter? currency,
    StringFilter? description,
    StringFilter? receiptUrl,
    StringFilter? paymentMethod,
    StringFilter? paymentIntent,
    PaymentGatewayFilter? paymentGateway,
    PaymentStatusFilter? paymentStatus,
    DateTimeFilter? expiresAt,
    BooleanFilter? isMockPayment,
    StringFilter? buyerCountry,
    BooleanFilter? isInternational,
    StringFilter? displayCurrencyAtCheckout,
    FloatFilter? exchangeRateAtCheckout,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    /// Filter by appointment relation
    AppointmentRelationFilter? appointment,
    StringFilter? appointmentId,
    /// Filter by discountCode relation
    DiscountCodeRelationFilter? discountCode,
    StringFilter? discountCodeId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<PaymentWhereInput>? AND,
    List<PaymentWhereInput>? OR,
    PaymentWhereInput? NOT,
  }) = _PaymentWhereInput;

  factory PaymentWhereInput.fromJson(Map<String, dynamic> json) =>
      _$PaymentWhereInputFromJson(json);
}

/// Filter for Payment list relations (one-to-many, many-to-many)
@freezed
class PaymentListRelationFilter with _$PaymentListRelationFilter {
  const factory PaymentListRelationFilter({
    /// At least one related record matches
    PaymentWhereInput? some,
    /// All related records match
    PaymentWhereInput? every,
    /// No related records match
    PaymentWhereInput? none,
  }) = _PaymentListRelationFilter;

  factory PaymentListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PaymentListRelationFilterFromJson(json);
}

/// Filter for Payment single relations (one-to-one, many-to-one)
@freezed
class PaymentRelationFilter with _$PaymentRelationFilter {
  const factory PaymentRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') PaymentWhereInput? is_,
    /// Related record does not match
    PaymentWhereInput? isNot,
  }) = _PaymentRelationFilter;

  factory PaymentRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PaymentRelationFilterFromJson(json);
}

/// Order by input for sorting Payment records
@freezed
class PaymentOrderByInput with _$PaymentOrderByInput {
  const factory PaymentOrderByInput({
    SortOrder? id,
    SortOrder? amount,
    SortOrder? originalAmount,
    SortOrder? taxAmount,
    SortOrder? currency,
    SortOrder? description,
    SortOrder? receiptUrl,
    SortOrder? paymentMethod,
    SortOrder? paymentIntent,
    SortOrder? expiresAt,
    SortOrder? isMockPayment,
    SortOrder? buyerCountry,
    SortOrder? isInternational,
    SortOrder? displayCurrencyAtCheckout,
    SortOrder? exchangeRateAtCheckout,
    SortOrder? userId,
    SortOrder? appointmentId,
    SortOrder? discountCodeId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _PaymentOrderByInput;

  factory PaymentOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$PaymentOrderByInputFromJson(json);
}

