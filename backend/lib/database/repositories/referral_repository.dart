import 'dart:math';

import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

/// Repository for referral operations (ReferralCode, Referral, ReferralCredit)
class ReferralRepository extends BaseRepository {
  /// Create a referral repository with the given executor
  ReferralRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  static const int _defaultRefereeReward = 20000; // paise (200 INR)
  static const int _defaultReferrerReward = 50000; // paise (500 INR)
  static const int _creditExpiryMonths = 6;

  /// Apply a referral code during/after signup
  Future<Map<String, dynamic>> applyReferralCode({
    required String userId,
    required String code,
  }) async {
    // Find the referral code (check both code and customCode)
    final referralCode = await _prisma.referralCode.findFirst(
      where: ReferralCodeWhereInput(
        isActive: const BooleanFilter(equals: true),
        OR: [
          ReferralCodeWhereInput(
            code: StringFilter(equals: code.toUpperCase()),
          ),
          ReferralCodeWhereInput(
            customCode: StringFilter(equals: code.toUpperCase()),
          ),
        ],
      ),
    );

    if (referralCode == null) {
      throw Exception('Invalid or inactive referral code');
    }

    final referrerId = referralCode.userId;

    // Cannot refer yourself
    if (referrerId == userId) {
      throw Exception('Cannot use your own referral code');
    }

    // Check max referrals cap
    final maxReferrals = referralCode.maxReferrals;
    final totalReferrals = referralCode.totalReferrals;
    if (totalReferrals >= maxReferrals) {
      throw Exception('This referral code has reached its maximum uses');
    }

    // Check if user was already referred (referredUserId is @unique)
    final existingReferral = await _prisma.referral.findFirst(
      where: ReferralWhereInput(referredUserId: StringFilter(equals: userId)),
    );

    if (existingReferral != null) {
      throw Exception('You have already used a referral code');
    }

    // Transaction: create referral + increment counter + credit
    return _prisma.$transaction((tx) async {
      final referralCodeId = referralCode.id;
      final refereeReward =
          referralCode.refereeReward?.toInt() ?? _defaultRefereeReward;

      // Create Referral record (status/signedUpAt/timestamps autofilled).
      await tx.referral.create(
        data: CreateReferralInput(
          referralCodeId: referralCodeId,
          referredUserId: userId,
        ),
      );

      // Increment totalReferrals on ReferralCode
      await tx.referralCode.update(
        where: ReferralCodeWhereUniqueInput(id: referralCodeId),
        data: UpdateReferralCodeInput(
          totalReferrals: totalReferrals + 1,
        ),
      );

      // Create ReferralCredit for the referee (signup bonus)
      final expiresAt = DateTime.now().toUtc().add(
            const Duration(days: _creditExpiryMonths * 30),
          );

      await tx.referralCredit.create(
        data: CreateReferralCreditInput(
          userId: userId,
          amount: BigInt.from(refereeReward),
          remainingAmount: BigInt.from(refereeReward),
          source: CreditSource.refereeBonus,
          expiresAt: expiresAt,
        ),
      );

      return {
        'success': true,
        'creditAmount': refereeReward,
        'message': 'Referral code applied successfully',
      };
    });
  }

  /// Get user's referral code
  Future<Map<String, dynamic>?> getReferralCode(String userId) async {
    final result = await _prisma.referralCode.findFirst(
      where: ReferralCodeWhereInput(userId: StringFilter(equals: userId)),
    );
    return result?.toJson();
  }

  /// Create a referral code for a user
  Future<Map<String, dynamic>> createReferralCode({
    required String userId,
    String? userName,
  }) async {
    // Check if code already exists
    final existing = await getReferralCode(userId);
    if (existing != null) {
      return existing;
    }

    final code = _generateCode(userName);

    final result = await _prisma.referralCode.create(
      data: CreateReferralCodeInput(
        userId: userId,
        code: code,
        referrerReward: BigInt.from(_defaultReferrerReward),
        refereeReward: BigInt.from(_defaultRefereeReward),
        totalEarned: BigInt.zero,
      ),
    );
    return result.toJson();
  }

  /// Get available (unexpired, unspent) credit balance for a user
  Future<Map<String, dynamic>> getAvailableCredits(String userId) async {
    final now = DateTime.now().toUtc();

    final credits = await _prisma.referralCredit.findMany(
      where: ReferralCreditWhereInput(
        userId: StringFilter(equals: userId),
        remainingAmount: BigIntFilter(gt: BigInt.zero),
        expiresAt: DateTimeFilter(gt: now),
      ),
    );

    final totalAvailable = credits.fold<int>(
      0,
      (sum, credit) => sum + credit.remainingAmount.toInt(),
    );

    return {
      'totalAvailable': totalAvailable,
      'currency': 'INR',
    };
  }

  /// Generate a referral code from username
  String _generateCode(String? userName) {
    final random = Random();

    if (userName != null && userName.isNotEmpty) {
      // Clean name: uppercase alpha only, 3-6 chars
      final clean = userName.toUpperCase().replaceAll(RegExp('[^A-Z]'), '');

      if (clean.length >= 3) {
        final base = clean.substring(0, clean.length.clamp(0, 6));
        // Add 2-3 random digits
        final digits = List.generate(
          2 + random.nextInt(2),
          (_) => random.nextInt(10),
        ).join();
        return '$base$digits';
      }
    }

    // Fallback: random 8-char alphanumeric
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    return List.generate(8, (_) => chars[random.nextInt(chars.length)]).join();
  }
}
