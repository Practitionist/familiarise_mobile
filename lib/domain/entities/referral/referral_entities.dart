import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_entities.freezed.dart';
part 'referral_entities.g.dart';

/// Referral code info for the current user
@freezed
class ReferralCodeInfo with _$ReferralCodeInfo {
  const factory ReferralCodeInfo({
    required String id,
    required String code,
    String? customCode,
    @Default(0) int totalReferrals,
    @Default(0) int successfulReferrals,
    @Default(0) int totalEarned,
    int? maxReferrals,
    @Default(true) bool isActive,
  }) = _ReferralCodeInfo;

  factory ReferralCodeInfo.fromJson(Map<String, dynamic> json) =>
      _$ReferralCodeInfoFromJson(json);
}

/// Available referral credits
@freezed
class ReferralCreditsAvailable with _$ReferralCreditsAvailable {
  const factory ReferralCreditsAvailable({
    @Default(0) int totalAvailable,
    @Default('INR') String currency,
  }) = _ReferralCreditsAvailable;

  factory ReferralCreditsAvailable.fromJson(Map<String, dynamic> json) =>
      _$ReferralCreditsAvailableFromJson(json);
}
