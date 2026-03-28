import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'dispute_status.dart';
import 'payment_gateway.dart';
import 'payment.dart';

part 'dispute.freezed.dart';
part 'dispute.g.dart';

@freezed
class Dispute with _$Dispute {
  const factory Dispute({
    required String id,
    required int amount,
    required String currency,
    required String reason,
    required DisputeStatus status,
    required String disputeId,
    required PaymentGateway paymentGateway,
    Map<String, dynamic>? evidence,
    DateTime? dueBy,
    @Default(true)
    bool isChargeRefundable,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Payment? payment,
    required String paymentId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Dispute;

  factory Dispute.fromJson(Map<String, dynamic> json) =>
      _$DisputeFromJson(json);
}

/// Input for creating a new Dispute
@freezed
class CreateDisputeInput with _$CreateDisputeInput {
  const factory CreateDisputeInput({
    required int amount,
    required String currency,
    required String reason,
    required DisputeStatus status,
    required String disputeId,
    required PaymentGateway paymentGateway,
    Map<String, dynamic>? evidence,
    DateTime? dueBy,
    @Default(true)
    bool? isChargeRefundable,
    required String paymentId,
  }) = _CreateDisputeInput;

  factory CreateDisputeInput.fromJson(Map<String, dynamic> json) =>
      _$CreateDisputeInputFromJson(json);
}

/// Input for updating an existing Dispute
@freezed
class UpdateDisputeInput with _$UpdateDisputeInput {
  const factory UpdateDisputeInput({
    int? amount,
    String? currency,
    String? reason,
    DisputeStatus? status,
    String? disputeId,
    PaymentGateway? paymentGateway,
    Map<String, dynamic>? evidence,
    DateTime? dueBy,
    bool? isChargeRefundable,
    String? paymentId,
  }) = _UpdateDisputeInput;

  factory UpdateDisputeInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateDisputeInputFromJson(json);
}

/// Unique where input for Dispute
/// At least one field must be provided
@freezed
class DisputeWhereUniqueInput with _$DisputeWhereUniqueInput {
  const factory DisputeWhereUniqueInput({
    String? id,
    String? disputeId,
  }) = _DisputeWhereUniqueInput;

  factory DisputeWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$DisputeWhereUniqueInputFromJson(json);
}

/// Where input for filtering Dispute records
@freezed
class DisputeWhereInput with _$DisputeWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory DisputeWhereInput({
    StringFilter? id,
    IntFilter? amount,
    StringFilter? currency,
    StringFilter? reason,
    DisputeStatusFilter? status,
    StringFilter? disputeId,
    PaymentGatewayFilter? paymentGateway,
    DateTimeFilter? dueBy,
    BooleanFilter? isChargeRefundable,
    /// Filter by payment relation
    PaymentRelationFilter? payment,
    StringFilter? paymentId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<DisputeWhereInput>? AND,
    List<DisputeWhereInput>? OR,
    DisputeWhereInput? NOT,
  }) = _DisputeWhereInput;

  factory DisputeWhereInput.fromJson(Map<String, dynamic> json) =>
      _$DisputeWhereInputFromJson(json);
}

/// Filter for Dispute list relations (one-to-many, many-to-many)
@freezed
class DisputeListRelationFilter with _$DisputeListRelationFilter {
  const factory DisputeListRelationFilter({
    /// At least one related record matches
    DisputeWhereInput? some,
    /// All related records match
    DisputeWhereInput? every,
    /// No related records match
    DisputeWhereInput? none,
  }) = _DisputeListRelationFilter;

  factory DisputeListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$DisputeListRelationFilterFromJson(json);
}

/// Filter for Dispute single relations (one-to-one, many-to-one)
@freezed
class DisputeRelationFilter with _$DisputeRelationFilter {
  const factory DisputeRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') DisputeWhereInput? is_,
    /// Related record does not match
    DisputeWhereInput? isNot,
  }) = _DisputeRelationFilter;

  factory DisputeRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$DisputeRelationFilterFromJson(json);
}

/// Order by input for sorting Dispute records
@freezed
class DisputeOrderByInput with _$DisputeOrderByInput {
  const factory DisputeOrderByInput({
    SortOrder? id,
    SortOrder? amount,
    SortOrder? currency,
    SortOrder? reason,
    SortOrder? disputeId,
    SortOrder? dueBy,
    SortOrder? isChargeRefundable,
    SortOrder? paymentId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _DisputeOrderByInput;

  factory DisputeOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$DisputeOrderByInputFromJson(json);
}

