import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'refund_status.dart';
import 'payment_gateway.dart';
import 'payment.dart';

part 'refund.freezed.dart';
part 'refund.g.dart';

@freezed
class Refund with _$Refund {
  const factory Refund({
    required String id,
    required int amount,
    required String currency,
    String? reason,
    required RefundStatus status,
    required String refundId,
    required PaymentGateway paymentGateway,
    Map<String, dynamic>? metadata,
    double? exchangeRateAtRefund,
    String? displayCurrency,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Payment? payment,
    required String paymentId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Refund;

  factory Refund.fromJson(Map<String, dynamic> json) =>
      _$RefundFromJson(json);
}

/// Input for creating a new Refund
@freezed
class CreateRefundInput with _$CreateRefundInput {
  const factory CreateRefundInput({
    required int amount,
    required String currency,
    String? reason,
    required RefundStatus status,
    required String refundId,
    required PaymentGateway paymentGateway,
    Map<String, dynamic>? metadata,
    double? exchangeRateAtRefund,
    String? displayCurrency,
    required String paymentId,
  }) = _CreateRefundInput;

  factory CreateRefundInput.fromJson(Map<String, dynamic> json) =>
      _$CreateRefundInputFromJson(json);
}

/// Input for updating an existing Refund
@freezed
class UpdateRefundInput with _$UpdateRefundInput {
  const factory UpdateRefundInput({
    int? amount,
    String? currency,
    String? reason,
    RefundStatus? status,
    String? refundId,
    PaymentGateway? paymentGateway,
    Map<String, dynamic>? metadata,
    double? exchangeRateAtRefund,
    String? displayCurrency,
    String? paymentId,
  }) = _UpdateRefundInput;

  factory UpdateRefundInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateRefundInputFromJson(json);
}

/// Unique where input for Refund
/// At least one field must be provided
@freezed
class RefundWhereUniqueInput with _$RefundWhereUniqueInput {
  const factory RefundWhereUniqueInput({
    String? id,
    String? refundId,
  }) = _RefundWhereUniqueInput;

  factory RefundWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$RefundWhereUniqueInputFromJson(json);
}

/// Where input for filtering Refund records
@freezed
class RefundWhereInput with _$RefundWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory RefundWhereInput({
    StringFilter? id,
    IntFilter? amount,
    StringFilter? currency,
    StringFilter? reason,
    RefundStatusFilter? status,
    StringFilter? refundId,
    PaymentGatewayFilter? paymentGateway,
    FloatFilter? exchangeRateAtRefund,
    StringFilter? displayCurrency,
    /// Filter by payment relation
    PaymentRelationFilter? payment,
    StringFilter? paymentId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<RefundWhereInput>? AND,
    List<RefundWhereInput>? OR,
    RefundWhereInput? NOT,
  }) = _RefundWhereInput;

  factory RefundWhereInput.fromJson(Map<String, dynamic> json) =>
      _$RefundWhereInputFromJson(json);
}

/// Filter for Refund list relations (one-to-many, many-to-many)
@freezed
class RefundListRelationFilter with _$RefundListRelationFilter {
  const factory RefundListRelationFilter({
    /// At least one related record matches
    RefundWhereInput? some,
    /// All related records match
    RefundWhereInput? every,
    /// No related records match
    RefundWhereInput? none,
  }) = _RefundListRelationFilter;

  factory RefundListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$RefundListRelationFilterFromJson(json);
}

/// Filter for Refund single relations (one-to-one, many-to-one)
@freezed
class RefundRelationFilter with _$RefundRelationFilter {
  const factory RefundRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') RefundWhereInput? is_,
    /// Related record does not match
    RefundWhereInput? isNot,
  }) = _RefundRelationFilter;

  factory RefundRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$RefundRelationFilterFromJson(json);
}

/// Order by input for sorting Refund records
@freezed
class RefundOrderByInput with _$RefundOrderByInput {
  const factory RefundOrderByInput({
    SortOrder? id,
    SortOrder? amount,
    SortOrder? currency,
    SortOrder? reason,
    SortOrder? refundId,
    SortOrder? exchangeRateAtRefund,
    SortOrder? displayCurrency,
    SortOrder? paymentId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _RefundOrderByInput;

  factory RefundOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$RefundOrderByInputFromJson(json);
}

