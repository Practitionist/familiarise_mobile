import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user.dart';
import 'referral.dart';

part 'referral_code.freezed.dart';
part 'referral_code.g.dart';

@freezed
class ReferralCode with _$ReferralCode {
  const factory ReferralCode({
    required String id,
    required String userId,
    required String code,
    String? customCode,
    int? referrerReward,
    int? refereeReward,
    @Default(0)
    int totalReferrals,
    @Default(0)
    int successfulReferrals,
    @Default(0)
    int totalEarned,
    @Default(50)
    int maxReferrals,
    @Default(true)
    bool isActive,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required List<Referral> referrals,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ReferralCode;

  factory ReferralCode.fromJson(Map<String, dynamic> json) =>
      _$ReferralCodeFromJson(json);
}

/// Input for creating a new ReferralCode
@freezed
class CreateReferralCodeInput with _$CreateReferralCodeInput {
  const factory CreateReferralCodeInput({
    required String userId,
    required String code,
    String? customCode,
    int? referrerReward,
    int? refereeReward,
    @Default(0)
    int? totalReferrals,
    @Default(0)
    int? successfulReferrals,
    @Default(0)
    int? totalEarned,
    @Default(50)
    int? maxReferrals,
    @Default(true)
    bool? isActive,
  }) = _CreateReferralCodeInput;

  factory CreateReferralCodeInput.fromJson(Map<String, dynamic> json) =>
      _$CreateReferralCodeInputFromJson(json);
}

/// Input for updating an existing ReferralCode
@freezed
class UpdateReferralCodeInput with _$UpdateReferralCodeInput {
  const factory UpdateReferralCodeInput({
    String? userId,
    String? code,
    String? customCode,
    int? referrerReward,
    int? refereeReward,
    int? totalReferrals,
    int? successfulReferrals,
    int? totalEarned,
    int? maxReferrals,
    bool? isActive,
  }) = _UpdateReferralCodeInput;

  factory UpdateReferralCodeInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateReferralCodeInputFromJson(json);
}

/// Unique where input for ReferralCode
/// At least one field must be provided
@freezed
class ReferralCodeWhereUniqueInput with _$ReferralCodeWhereUniqueInput {
  const factory ReferralCodeWhereUniqueInput({
    String? id,
    String? userId,
    String? code,
    String? customCode,
  }) = _ReferralCodeWhereUniqueInput;

  factory ReferralCodeWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralCodeWhereUniqueInputFromJson(json);
}

/// Where input for filtering ReferralCode records
@freezed
class ReferralCodeWhereInput with _$ReferralCodeWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ReferralCodeWhereInput({
    StringFilter? id,
    StringFilter? userId,
    StringFilter? code,
    StringFilter? customCode,
    IntFilter? referrerReward,
    IntFilter? refereeReward,
    IntFilter? totalReferrals,
    IntFilter? successfulReferrals,
    IntFilter? totalEarned,
    IntFilter? maxReferrals,
    BooleanFilter? isActive,
    /// Filter by user relation
    UserRelationFilter? user,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ReferralCodeWhereInput>? AND,
    List<ReferralCodeWhereInput>? OR,
    ReferralCodeWhereInput? NOT,
  }) = _ReferralCodeWhereInput;

  factory ReferralCodeWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralCodeWhereInputFromJson(json);
}

/// Filter for ReferralCode list relations (one-to-many, many-to-many)
@freezed
class ReferralCodeListRelationFilter with _$ReferralCodeListRelationFilter {
  const factory ReferralCodeListRelationFilter({
    /// At least one related record matches
    ReferralCodeWhereInput? some,
    /// All related records match
    ReferralCodeWhereInput? every,
    /// No related records match
    ReferralCodeWhereInput? none,
  }) = _ReferralCodeListRelationFilter;

  factory ReferralCodeListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ReferralCodeListRelationFilterFromJson(json);
}

/// Filter for ReferralCode single relations (one-to-one, many-to-one)
@freezed
class ReferralCodeRelationFilter with _$ReferralCodeRelationFilter {
  const factory ReferralCodeRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ReferralCodeWhereInput? is_,
    /// Related record does not match
    ReferralCodeWhereInput? isNot,
  }) = _ReferralCodeRelationFilter;

  factory ReferralCodeRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ReferralCodeRelationFilterFromJson(json);
}

/// Order by input for sorting ReferralCode records
@freezed
class ReferralCodeOrderByInput with _$ReferralCodeOrderByInput {
  const factory ReferralCodeOrderByInput({
    SortOrder? id,
    SortOrder? userId,
    SortOrder? code,
    SortOrder? customCode,
    SortOrder? referrerReward,
    SortOrder? refereeReward,
    SortOrder? totalReferrals,
    SortOrder? successfulReferrals,
    SortOrder? totalEarned,
    SortOrder? maxReferrals,
    SortOrder? isActive,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ReferralCodeOrderByInput;

  factory ReferralCodeOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralCodeOrderByInputFromJson(json);
}

