import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'payment_gateway.dart';
import 'payout_status.dart';
import 'payout_method.dart';
import 'consultant_profile.dart';
import 'consultant_earnings.dart';
import 't_d_s_record.dart';

part 'payout.freezed.dart';
part 'payout.g.dart';

@freezed
class Payout with _$Payout {
  const factory Payout({
    required String id,
    required String consultantProfileId,
    required PaymentGateway provider,
    String? providerPayoutId,
    required int amount,
    @Default("INR")
    String currency,
    @Default(PayoutStatus.pending)
    PayoutStatus status,
    required PayoutMethod method,
    String? batchId,
    @Default(0)
    int tdsDeducted,
    int? netAmount,
    double? tdsRateApplied,
    String? tdsFinancialYear,
    String? failureReason,
    @Default(0)
    int retryCount,
    DateTime? processedAt,
    DateTime? approvedAt,
    String? approvedBy,
    String? idempotencyKey,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required List<ConsultantEarnings> earnings,
    required List<TDSRecord> tdsRecords,
  }) = _Payout;

  factory Payout.fromJson(Map<String, dynamic> json) =>
      _$PayoutFromJson(json);
}

/// Input for creating a new Payout
@freezed
class CreatePayoutInput with _$CreatePayoutInput {
  const factory CreatePayoutInput({
    required String consultantProfileId,
    required PaymentGateway provider,
    String? providerPayoutId,
    required int amount,
    @Default("INR")
    String? currency,
    @Default(PayoutStatus.pending)
    PayoutStatus status,
    required PayoutMethod method,
    String? batchId,
    @Default(0)
    int? tdsDeducted,
    int? netAmount,
    double? tdsRateApplied,
    String? tdsFinancialYear,
    String? failureReason,
    @Default(0)
    int? retryCount,
    DateTime? processedAt,
    DateTime? approvedAt,
    String? approvedBy,
    String? idempotencyKey,
  }) = _CreatePayoutInput;

  factory CreatePayoutInput.fromJson(Map<String, dynamic> json) =>
      _$CreatePayoutInputFromJson(json);
}

/// Input for updating an existing Payout
@freezed
class UpdatePayoutInput with _$UpdatePayoutInput {
  const factory UpdatePayoutInput({
    String? consultantProfileId,
    PaymentGateway? provider,
    String? providerPayoutId,
    int? amount,
    String? currency,
    PayoutStatus? status,
    PayoutMethod? method,
    String? batchId,
    int? tdsDeducted,
    int? netAmount,
    double? tdsRateApplied,
    String? tdsFinancialYear,
    String? failureReason,
    int? retryCount,
    DateTime? processedAt,
    DateTime? approvedAt,
    String? approvedBy,
    String? idempotencyKey,
  }) = _UpdatePayoutInput;

  factory UpdatePayoutInput.fromJson(Map<String, dynamic> json) =>
      _$UpdatePayoutInputFromJson(json);
}

/// Unique where input for Payout
/// At least one field must be provided
@freezed
class PayoutWhereUniqueInput with _$PayoutWhereUniqueInput {
  const factory PayoutWhereUniqueInput({
    String? id,
    String? providerPayoutId,
    String? idempotencyKey,
  }) = _PayoutWhereUniqueInput;

  factory PayoutWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$PayoutWhereUniqueInputFromJson(json);
}

/// Where input for filtering Payout records
@freezed
class PayoutWhereInput with _$PayoutWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory PayoutWhereInput({
    StringFilter? id,
    StringFilter? consultantProfileId,
    PaymentGatewayFilter? provider,
    StringFilter? providerPayoutId,
    IntFilter? amount,
    StringFilter? currency,
    PayoutStatusFilter? status,
    PayoutMethodFilter? method,
    StringFilter? batchId,
    IntFilter? tdsDeducted,
    IntFilter? netAmount,
    FloatFilter? tdsRateApplied,
    StringFilter? tdsFinancialYear,
    StringFilter? failureReason,
    IntFilter? retryCount,
    DateTimeFilter? processedAt,
    DateTimeFilter? approvedAt,
    StringFilter? approvedBy,
    StringFilter? idempotencyKey,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    List<PayoutWhereInput>? AND,
    List<PayoutWhereInput>? OR,
    PayoutWhereInput? NOT,
  }) = _PayoutWhereInput;

  factory PayoutWhereInput.fromJson(Map<String, dynamic> json) =>
      _$PayoutWhereInputFromJson(json);
}

/// Filter for Payout list relations (one-to-many, many-to-many)
@freezed
class PayoutListRelationFilter with _$PayoutListRelationFilter {
  const factory PayoutListRelationFilter({
    /// At least one related record matches
    PayoutWhereInput? some,
    /// All related records match
    PayoutWhereInput? every,
    /// No related records match
    PayoutWhereInput? none,
  }) = _PayoutListRelationFilter;

  factory PayoutListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PayoutListRelationFilterFromJson(json);
}

/// Filter for Payout single relations (one-to-one, many-to-one)
@freezed
class PayoutRelationFilter with _$PayoutRelationFilter {
  const factory PayoutRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') PayoutWhereInput? is_,
    /// Related record does not match
    PayoutWhereInput? isNot,
  }) = _PayoutRelationFilter;

  factory PayoutRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PayoutRelationFilterFromJson(json);
}

/// Order by input for sorting Payout records
@freezed
class PayoutOrderByInput with _$PayoutOrderByInput {
  const factory PayoutOrderByInput({
    SortOrder? id,
    SortOrder? consultantProfileId,
    SortOrder? providerPayoutId,
    SortOrder? amount,
    SortOrder? currency,
    SortOrder? batchId,
    SortOrder? tdsDeducted,
    SortOrder? netAmount,
    SortOrder? tdsRateApplied,
    SortOrder? tdsFinancialYear,
    SortOrder? failureReason,
    SortOrder? retryCount,
    SortOrder? processedAt,
    SortOrder? approvedAt,
    SortOrder? approvedBy,
    SortOrder? idempotencyKey,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _PayoutOrderByInput;

  factory PayoutOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$PayoutOrderByInputFromJson(json);
}

