import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'referral_status.dart';
import 'referral_code.dart';
import 'user.dart';

part 'referral.freezed.dart';
part 'referral.g.dart';

@freezed
class Referral with _$Referral {
  const factory Referral({
    required String id,
    required String referralCodeId,
    required String referredUserId,
    @Default(ReferralStatus.signedUp)
    ReferralStatus status,
    int? referrerRewardAmount,
    int? refereeRewardAmount,
    DateTime? referrerRewardPaidAt,
    DateTime? refereeRewardPaidAt,
    required DateTime signedUpAt,
    DateTime? qualifiedAt,
    String? qualifyingAction,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ReferralCode? referralCode,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? referredUser,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Referral;

  factory Referral.fromJson(Map<String, dynamic> json) =>
      _$ReferralFromJson(json);
}

/// Input for creating a new Referral
@freezed
class CreateReferralInput with _$CreateReferralInput {
  const factory CreateReferralInput({
    required String referralCodeId,
    required String referredUserId,
    @Default(ReferralStatus.signedUp)
    ReferralStatus status,
    int? referrerRewardAmount,
    int? refereeRewardAmount,
    DateTime? referrerRewardPaidAt,
    DateTime? refereeRewardPaidAt,
    DateTime? qualifiedAt,
    String? qualifyingAction,
  }) = _CreateReferralInput;

  factory CreateReferralInput.fromJson(Map<String, dynamic> json) =>
      _$CreateReferralInputFromJson(json);
}

/// Input for updating an existing Referral
@freezed
class UpdateReferralInput with _$UpdateReferralInput {
  const factory UpdateReferralInput({
    String? referralCodeId,
    String? referredUserId,
    ReferralStatus? status,
    int? referrerRewardAmount,
    int? refereeRewardAmount,
    DateTime? referrerRewardPaidAt,
    DateTime? refereeRewardPaidAt,
    DateTime? qualifiedAt,
    String? qualifyingAction,
  }) = _UpdateReferralInput;

  factory UpdateReferralInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateReferralInputFromJson(json);
}

/// Unique where input for Referral
/// At least one field must be provided
@freezed
class ReferralWhereUniqueInput with _$ReferralWhereUniqueInput {
  const factory ReferralWhereUniqueInput({
    String? id,
    String? referredUserId,
  }) = _ReferralWhereUniqueInput;

  factory ReferralWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralWhereUniqueInputFromJson(json);
}

/// Where input for filtering Referral records
@freezed
class ReferralWhereInput with _$ReferralWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ReferralWhereInput({
    StringFilter? id,
    StringFilter? referralCodeId,
    StringFilter? referredUserId,
    ReferralStatusFilter? status,
    IntFilter? referrerRewardAmount,
    IntFilter? refereeRewardAmount,
    DateTimeFilter? referrerRewardPaidAt,
    DateTimeFilter? refereeRewardPaidAt,
    DateTimeFilter? signedUpAt,
    DateTimeFilter? qualifiedAt,
    StringFilter? qualifyingAction,
    /// Filter by referralCode relation
    ReferralCodeRelationFilter? referralCode,
    /// Filter by referredUser relation
    UserRelationFilter? referredUser,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ReferralWhereInput>? AND,
    List<ReferralWhereInput>? OR,
    ReferralWhereInput? NOT,
  }) = _ReferralWhereInput;

  factory ReferralWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralWhereInputFromJson(json);
}

/// Filter for Referral list relations (one-to-many, many-to-many)
@freezed
class ReferralListRelationFilter with _$ReferralListRelationFilter {
  const factory ReferralListRelationFilter({
    /// At least one related record matches
    ReferralWhereInput? some,
    /// All related records match
    ReferralWhereInput? every,
    /// No related records match
    ReferralWhereInput? none,
  }) = _ReferralListRelationFilter;

  factory ReferralListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ReferralListRelationFilterFromJson(json);
}

/// Filter for Referral single relations (one-to-one, many-to-one)
@freezed
class ReferralRelationFilter with _$ReferralRelationFilter {
  const factory ReferralRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ReferralWhereInput? is_,
    /// Related record does not match
    ReferralWhereInput? isNot,
  }) = _ReferralRelationFilter;

  factory ReferralRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ReferralRelationFilterFromJson(json);
}

/// Order by input for sorting Referral records
@freezed
class ReferralOrderByInput with _$ReferralOrderByInput {
  const factory ReferralOrderByInput({
    SortOrder? id,
    SortOrder? referralCodeId,
    SortOrder? referredUserId,
    SortOrder? referrerRewardAmount,
    SortOrder? refereeRewardAmount,
    SortOrder? referrerRewardPaidAt,
    SortOrder? refereeRewardPaidAt,
    SortOrder? signedUpAt,
    SortOrder? qualifiedAt,
    SortOrder? qualifyingAction,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ReferralOrderByInput;

  factory ReferralOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ReferralOrderByInputFromJson(json);
}

