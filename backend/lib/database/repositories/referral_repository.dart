import 'dart:math';

import 'base_repository.dart';

/// Repository for referral operations (ReferralCode, Referral, ReferralCredit)
class ReferralRepository extends BaseRepository {
  ReferralRepository(super.executor);

  static const int _defaultRefereeReward = 20000; // paise (200 INR)
  static const int _defaultReferrerReward = 50000; // paise (500 INR)
  static const int _creditExpiryMonths = 6;

  /// Apply a referral code during/after signup
  Future<Map<String, dynamic>> applyReferralCode({
    required String userId,
    required String code,
  }) async {
    // Find the referral code (check both code and customCode)
    final codeResults = await executeRaw(
      '''
      SELECT rc.id, rc."userId", rc."isActive", rc."maxReferrals",
             rc."totalReferrals", rc."defaultRefereeReward"
      FROM "ReferralCode" rc
      WHERE (rc.code = \$1 OR rc."customCode" = \$1) AND rc."isActive" = true
      ''',
      [code.toUpperCase()],
    );

    if (codeResults.isEmpty) {
      throw Exception('Invalid or inactive referral code');
    }

    final referralCode = codeResults.first;
    final referrerId = referralCode['userId'] as String;

    // Cannot refer yourself
    if (referrerId == userId) {
      throw Exception('Cannot use your own referral code');
    }

    // Check max referrals cap
    final maxReferrals = referralCode['maxReferrals'] as int?;
    final totalReferrals =
        (referralCode['totalReferrals'] as num?)?.toInt() ?? 0;
    if (maxReferrals != null && totalReferrals >= maxReferrals) {
      throw Exception('This referral code has reached its maximum uses');
    }

    // Check if user was already referred
    final existingReferral = await executeRaw(
      '''
      SELECT id FROM "Referral"
      WHERE "referredUserId" = \$1
      ''',
      [userId],
    );

    if (existingReferral.isNotEmpty) {
      throw Exception('You have already used a referral code');
    }

    // Execute in transaction: create referral + increment counter + create credit
    return executeInTransaction((txn) async {
      final referralCodeId = referralCode['id'] as String;
      final refereeReward =
          (referralCode['defaultRefereeReward'] as num?)?.toInt() ??
              _defaultRefereeReward;

      // Create Referral record
      await txn.executeMutationRaw(
        r'''
        INSERT INTO "Referral" (id, "referralCodeId", "referredUserId",
                                status, "createdAt", "updatedAt")
        VALUES (gen_random_uuid(), $1, $2, 'SIGNED_UP', NOW(), NOW())
        ''',
        [referralCodeId, userId],
      );

      // Increment totalReferrals on ReferralCode
      await txn.executeMutationRaw(
        r'''
        UPDATE "ReferralCode"
        SET "totalReferrals" = "totalReferrals" + 1, "updatedAt" = NOW()
        WHERE id = $1
        ''',
        [referralCodeId],
      );

      // Create ReferralCredit for the referee (signup bonus)
      final expiresAt = DateTime.now()
          .toUtc()
          .add(Duration(days: _creditExpiryMonths * 30));
      await txn.executeMutationRaw(
        r'''
        INSERT INTO "ReferralCredit" (id, "userId", amount, "remainingAmount",
                                      source, description, "expiresAt",
                                      "createdAt", "updatedAt")
        VALUES (gen_random_uuid(), $1, $2, $2, 'REFEREE_BONUS',
                'Signup referral bonus', $3, NOW(), NOW())
        ''',
        [userId, refereeReward, expiresAt.toIso8601String()],
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
    final results = await executeRaw(
      '''
      SELECT id, code, "customCode", "totalReferrals", "successfulReferrals",
             "totalEarned", "maxReferrals", "isActive",
             "createdAt", "updatedAt"
      FROM "ReferralCode"
      WHERE "userId" = \$1
      ''',
      [userId],
    );

    return results.isNotEmpty ? results.first : null;
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

    final results = await executeRaw(
      '''
      INSERT INTO "ReferralCode" (id, "userId", code, "defaultReferrerReward",
                                   "defaultRefereeReward", "isActive",
                                   "totalReferrals", "successfulReferrals",
                                   "totalEarned", "createdAt", "updatedAt")
      VALUES (gen_random_uuid(), \$1, \$2, \$3, \$4, true, 0, 0, 0, NOW(), NOW())
      RETURNING id, code, "customCode", "totalReferrals", "successfulReferrals",
                "totalEarned", "maxReferrals", "isActive"
      ''',
      [userId, code, _defaultReferrerReward, _defaultRefereeReward],
    );

    return results.first;
  }

  /// Get available (unexpired, unspent) credit balance for a user
  Future<Map<String, dynamic>> getAvailableCredits(String userId) async {
    final results = await executeRaw(
      '''
      SELECT COALESCE(SUM("remainingAmount"), 0) as "totalAvailable"
      FROM "ReferralCredit"
      WHERE "userId" = \$1 AND "remainingAmount" > 0 AND "expiresAt" > NOW()
      ''',
      [userId],
    );

    final totalAvailable =
        (results.first['totalAvailable'] as num?)?.toInt() ?? 0;

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
      final clean = userName
          .toUpperCase()
          .replaceAll(RegExp('[^A-Z]'), '');

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
