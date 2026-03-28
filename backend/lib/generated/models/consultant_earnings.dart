import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'earning_role.dart';
import 'earning_status.dart';
import 'consultant_profile.dart';
import 'payment.dart';
import 'payout.dart';

part 'consultant_earnings.freezed.dart';
part 'consultant_earnings.g.dart';

@freezed
class ConsultantEarnings with _$ConsultantEarnings {
  const factory ConsultantEarnings({
    required String id,
    required String consultantProfileId,
    required String paymentId,
    String? payoutId,
    required int grossAmount,
    required int platformFee,
    required int consultantShare,
    @Default(EarningRole.owner)
    EarningRole role,
    @Default(100)
    double sharePercentage,
    @Default(EarningStatus.pending)
    EarningStatus status,
    required DateTime holdUntil,
    DateTime? paidAt,
    @Default("INR")
    String currency,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Payment? payment,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Payout? payout,
  }) = _ConsultantEarnings;

  factory ConsultantEarnings.fromJson(Map<String, dynamic> json) =>
      _$ConsultantEarningsFromJson(json);
}

/// Input for creating a new ConsultantEarnings
@freezed
class CreateConsultantEarningsInput with _$CreateConsultantEarningsInput {
  const factory CreateConsultantEarningsInput({
    required String consultantProfileId,
    required String paymentId,
    String? payoutId,
    required int grossAmount,
    required int platformFee,
    required int consultantShare,
    @Default(EarningRole.owner)
    EarningRole role,
    @Default(100)
    double? sharePercentage,
    @Default(EarningStatus.pending)
    EarningStatus status,
    required DateTime holdUntil,
    DateTime? paidAt,
    @Default("INR")
    String? currency,
  }) = _CreateConsultantEarningsInput;

  factory CreateConsultantEarningsInput.fromJson(Map<String, dynamic> json) =>
      _$CreateConsultantEarningsInputFromJson(json);
}

/// Input for updating an existing ConsultantEarnings
@freezed
class UpdateConsultantEarningsInput with _$UpdateConsultantEarningsInput {
  const factory UpdateConsultantEarningsInput({
    String? consultantProfileId,
    String? paymentId,
    String? payoutId,
    int? grossAmount,
    int? platformFee,
    int? consultantShare,
    EarningRole? role,
    double? sharePercentage,
    EarningStatus? status,
    DateTime? holdUntil,
    DateTime? paidAt,
    String? currency,
  }) = _UpdateConsultantEarningsInput;

  factory UpdateConsultantEarningsInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateConsultantEarningsInputFromJson(json);
}

/// Unique where input for ConsultantEarnings
/// At least one field must be provided
@freezed
class ConsultantEarningsWhereUniqueInput with _$ConsultantEarningsWhereUniqueInput {
  const factory ConsultantEarningsWhereUniqueInput({
    String? id,
  }) = _ConsultantEarningsWhereUniqueInput;

  factory ConsultantEarningsWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantEarningsWhereUniqueInputFromJson(json);
}

/// Where input for filtering ConsultantEarnings records
@freezed
class ConsultantEarningsWhereInput with _$ConsultantEarningsWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ConsultantEarningsWhereInput({
    StringFilter? id,
    StringFilter? consultantProfileId,
    StringFilter? paymentId,
    StringFilter? payoutId,
    IntFilter? grossAmount,
    IntFilter? platformFee,
    IntFilter? consultantShare,
    EarningRoleFilter? role,
    FloatFilter? sharePercentage,
    EarningStatusFilter? status,
    DateTimeFilter? holdUntil,
    DateTimeFilter? paidAt,
    StringFilter? currency,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    /// Filter by payment relation
    PaymentRelationFilter? payment,
    /// Filter by payout relation
    PayoutRelationFilter? payout,
    List<ConsultantEarningsWhereInput>? AND,
    List<ConsultantEarningsWhereInput>? OR,
    ConsultantEarningsWhereInput? NOT,
  }) = _ConsultantEarningsWhereInput;

  factory ConsultantEarningsWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantEarningsWhereInputFromJson(json);
}

/// Filter for ConsultantEarnings list relations (one-to-many, many-to-many)
@freezed
class ConsultantEarningsListRelationFilter with _$ConsultantEarningsListRelationFilter {
  const factory ConsultantEarningsListRelationFilter({
    /// At least one related record matches
    ConsultantEarningsWhereInput? some,
    /// All related records match
    ConsultantEarningsWhereInput? every,
    /// No related records match
    ConsultantEarningsWhereInput? none,
  }) = _ConsultantEarningsListRelationFilter;

  factory ConsultantEarningsListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantEarningsListRelationFilterFromJson(json);
}

/// Filter for ConsultantEarnings single relations (one-to-one, many-to-one)
@freezed
class ConsultantEarningsRelationFilter with _$ConsultantEarningsRelationFilter {
  const factory ConsultantEarningsRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ConsultantEarningsWhereInput? is_,
    /// Related record does not match
    ConsultantEarningsWhereInput? isNot,
  }) = _ConsultantEarningsRelationFilter;

  factory ConsultantEarningsRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantEarningsRelationFilterFromJson(json);
}

/// Order by input for sorting ConsultantEarnings records
@freezed
class ConsultantEarningsOrderByInput with _$ConsultantEarningsOrderByInput {
  const factory ConsultantEarningsOrderByInput({
    SortOrder? id,
    SortOrder? consultantProfileId,
    SortOrder? paymentId,
    SortOrder? payoutId,
    SortOrder? grossAmount,
    SortOrder? platformFee,
    SortOrder? consultantShare,
    SortOrder? sharePercentage,
    SortOrder? holdUntil,
    SortOrder? paidAt,
    SortOrder? currency,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ConsultantEarningsOrderByInput;

  factory ConsultantEarningsOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantEarningsOrderByInputFromJson(json);
}

