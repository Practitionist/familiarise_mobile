import '../entities/referral/referral_entities.dart';

/// Repository interface for referral operations
abstract class ReferralRepository {
  /// Apply a referral code
  Future<void> applyReferralCode(String code);

  /// Get the user's referral code
  Future<ReferralCodeInfo?> getReferralCode();

  /// Create a referral code for the user
  Future<ReferralCodeInfo> createReferralCode();

  /// Get available referral credits
  Future<ReferralCreditsAvailable> getAvailableCredits();
}
