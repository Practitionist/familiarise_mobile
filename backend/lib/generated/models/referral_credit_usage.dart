import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'referral_credit.dart';
import 'payment.dart';

part 'referral_credit_usage.freezed.dart';
part 'referral_credit_usage.g.dart';

@freezed
class ReferralCreditUsage with _$ReferralCreditUsage {
  const factory ReferralCreditUsage({
    required String id,
    required String creditId,
    required String paymentId,
    required int amount,
    required int originalAmount,
    @Default(0)
    int restoredAmount,
    required DateTime createdAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ReferralCredit? credit,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Payment? payment,
  }) = _ReferralCreditUsage;

  factory ReferralCreditUsage.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditUsageFromJson(json);
}

/// Input for creating a new ReferralCreditUsage
@freezed
class CreateReferralCreditUsageInput with _$CreateReferralCreditUsageInput {
  const factory CreateReferralCreditUsageInput({
    required String creditId,
    required String paymentId,
    required int amount,
    required int originalAmount,
    @Default(0)
    int? restoredAmount,
  }) = _CreateReferralCreditUsageInput;

  factory CreateReferralCreditUsageInput.fromJson(Map<String, dynamic> json) =>
      _$CreateReferralCreditUsageInputFromJson(json);
}

/// Input for updating an existing ReferralCreditUsage
@freezed
class UpdateReferralCreditUsageInput with _$UpdateReferralCreditUsageInput {
  const factory UpdateReferralCreditUsageInput({
    String? creditId,
    String? paymentId,
    int? amount,
    int? originalAmount,
    int? restoredAmount,
  }) = _UpdateReferralCreditUsageInput;

  factory UpdateReferralCreditUsageInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateReferralCreditUsageInputFromJson(json);
}

/// Unique where input for ReferralCreditUsage
/// At least one field must be provided
@freezed
class ReferralCreditUsageWhereUniqueInput with _$ReferralCreditUsageWhereUniqueInput {
  const factory ReferralCreditUsageWhereUniqueInput({
    String? id,
  }) = _ReferralCreditUsageWhereUniqueInput;

  factory ReferralCreditUsageWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditUsageWhereUniqueInputFromJson(json);
}

/// Where input for filtering ReferralCreditUsage records
@freezed
class ReferralCreditUsageWhereInput with _$ReferralCreditUsageWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ReferralCreditUsageWhereInput({
    StringFilter? id,
    StringFilter? creditId,
    StringFilter? paymentId,
    IntFilter? amount,
    IntFilter? originalAmount,
    IntFilter? restoredAmount,
    DateTimeFilter? createdAt,
    /// Filter by credit relation
    ReferralCreditRelationFilter? credit,
    /// Filter by payment relation
    PaymentRelationFilter? payment,
    List<ReferralCreditUsageWhereInput>? AND,
    List<ReferralCreditUsageWhereInput>? OR,
    ReferralCreditUsageWhereInput? NOT,
  }) = _ReferralCreditUsageWhereInput;

  factory ReferralCreditUsageWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditUsageWhereInputFromJson(json);
}

/// Filter for ReferralCreditUsage list relations (one-to-many, many-to-many)
@freezed
class ReferralCreditUsageListRelationFilter with _$ReferralCreditUsageListRelationFilter {
  const factory ReferralCreditUsageListRelationFilter({
    /// At least one related record matches
    ReferralCreditUsageWhereInput? some,
    /// All related records match
    ReferralCreditUsageWhereInput? every,
    /// No related records match
    ReferralCreditUsageWhereInput? none,
  }) = _ReferralCreditUsageListRelationFilter;

  factory ReferralCreditUsageListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditUsageListRelationFilterFromJson(json);
}

/// Filter for ReferralCreditUsage single relations (one-to-one, many-to-one)
@freezed
class ReferralCreditUsageRelationFilter with _$ReferralCreditUsageRelationFilter {
  const factory ReferralCreditUsageRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ReferralCreditUsageWhereInput? is_,
    /// Related record does not match
    ReferralCreditUsageWhereInput? isNot,
  }) = _ReferralCreditUsageRelationFilter;

  factory ReferralCreditUsageRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditUsageRelationFilterFromJson(json);
}

/// Order by input for sorting ReferralCreditUsage records
@freezed
class ReferralCreditUsageOrderByInput with _$ReferralCreditUsageOrderByInput {
  const factory ReferralCreditUsageOrderByInput({
    SortOrder? id,
    SortOrder? creditId,
    SortOrder? paymentId,
    SortOrder? amount,
    SortOrder? originalAmount,
    SortOrder? restoredAmount,
    SortOrder? createdAt,
  }) = _ReferralCreditUsageOrderByInput;

  factory ReferralCreditUsageOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditUsageOrderByInputFromJson(json);
}

