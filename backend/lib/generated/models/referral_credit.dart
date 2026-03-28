import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'credit_source.dart';
import 'user.dart';
import 'referral_credit_usage.dart';

part 'referral_credit.freezed.dart';
part 'referral_credit.g.dart';

@freezed
class ReferralCredit with _$ReferralCredit {
  const factory ReferralCredit({
    required String id,
    required String userId,
    required int amount,
    @Default("INR")
    String currency,
    required CreditSource source,
    String? referralId,
    @Default(0)
    int usedAmount,
    required int remainingAmount,
    DateTime? expiresAt,
    DateTime? usedAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required List<ReferralCreditUsage> usages,
    required DateTime createdAt,
  }) = _ReferralCredit;

  factory ReferralCredit.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditFromJson(json);
}

/// Input for creating a new ReferralCredit
@freezed
class CreateReferralCreditInput with _$CreateReferralCreditInput {
  const factory CreateReferralCreditInput({
    required String userId,
    required int amount,
    @Default("INR")
    String? currency,
    required CreditSource source,
    String? referralId,
    @Default(0)
    int? usedAmount,
    required int remainingAmount,
    DateTime? expiresAt,
    DateTime? usedAt,
  }) = _CreateReferralCreditInput;

  factory CreateReferralCreditInput.fromJson(Map<String, dynamic> json) =>
      _$CreateReferralCreditInputFromJson(json);
}

/// Input for updating an existing ReferralCredit
@freezed
class UpdateReferralCreditInput with _$UpdateReferralCreditInput {
  const factory UpdateReferralCreditInput({
    String? userId,
    int? amount,
    String? currency,
    CreditSource? source,
    String? referralId,
    int? usedAmount,
    int? remainingAmount,
    DateTime? expiresAt,
    DateTime? usedAt,
  }) = _UpdateReferralCreditInput;

  factory UpdateReferralCreditInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateReferralCreditInputFromJson(json);
}

/// Unique where input for ReferralCredit
/// At least one field must be provided
@freezed
class ReferralCreditWhereUniqueInput with _$ReferralCreditWhereUniqueInput {
  const factory ReferralCreditWhereUniqueInput({
    String? id,
  }) = _ReferralCreditWhereUniqueInput;

  factory ReferralCreditWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditWhereUniqueInputFromJson(json);
}

/// Where input for filtering ReferralCredit records
@freezed
class ReferralCreditWhereInput with _$ReferralCreditWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ReferralCreditWhereInput({
    StringFilter? id,
    StringFilter? userId,
    IntFilter? amount,
    StringFilter? currency,
    CreditSourceFilter? source,
    StringFilter? referralId,
    IntFilter? usedAmount,
    IntFilter? remainingAmount,
    DateTimeFilter? expiresAt,
    DateTimeFilter? usedAt,
    /// Filter by user relation
    UserRelationFilter? user,
    DateTimeFilter? createdAt,
    List<ReferralCreditWhereInput>? AND,
    List<ReferralCreditWhereInput>? OR,
    ReferralCreditWhereInput? NOT,
  }) = _ReferralCreditWhereInput;

  factory ReferralCreditWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditWhereInputFromJson(json);
}

/// Filter for ReferralCredit list relations (one-to-many, many-to-many)
@freezed
class ReferralCreditListRelationFilter with _$ReferralCreditListRelationFilter {
  const factory ReferralCreditListRelationFilter({
    /// At least one related record matches
    ReferralCreditWhereInput? some,
    /// All related records match
    ReferralCreditWhereInput? every,
    /// No related records match
    ReferralCreditWhereInput? none,
  }) = _ReferralCreditListRelationFilter;

  factory ReferralCreditListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditListRelationFilterFromJson(json);
}

/// Filter for ReferralCredit single relations (one-to-one, many-to-one)
@freezed
class ReferralCreditRelationFilter with _$ReferralCreditRelationFilter {
  const factory ReferralCreditRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ReferralCreditWhereInput? is_,
    /// Related record does not match
    ReferralCreditWhereInput? isNot,
  }) = _ReferralCreditRelationFilter;

  factory ReferralCreditRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditRelationFilterFromJson(json);
}

/// Order by input for sorting ReferralCredit records
@freezed
class ReferralCreditOrderByInput with _$ReferralCreditOrderByInput {
  const factory ReferralCreditOrderByInput({
    SortOrder? id,
    SortOrder? userId,
    SortOrder? amount,
    SortOrder? currency,
    SortOrder? referralId,
    SortOrder? usedAmount,
    SortOrder? remainingAmount,
    SortOrder? expiresAt,
    SortOrder? usedAt,
    SortOrder? createdAt,
  }) = _ReferralCreditOrderByInput;

  factory ReferralCreditOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditOrderByInputFromJson(json);
}

