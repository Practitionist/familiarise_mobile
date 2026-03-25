import 'dart:math';

import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for referral operations (ReferralCode, Referral, ReferralCredit)
class ReferralRepository extends BaseRepository {
  /// Create a referral repository with the given executor
  ReferralRepository(super._executor);

  static const int _defaultRefereeReward = 20000; // paise (200 INR)
  static const int _defaultReferrerReward = 50000; // paise (500 INR)
  static const int _creditExpiryMonths = 6;

  /// Apply a referral code during/after signup
  Future<Map<String, dynamic>> applyReferralCode({
    required String userId,
    required String code,
  }) async {
    // Find the referral code (check both code and customCode)
    final codeQuery = JsonQueryBuilder()
        .model('ReferralCode')
        .action(QueryAction.findFirst)
        .where({
          'isActive': true,
          'OR': [
            {'code': code.toUpperCase()},
            {'customCode': code.toUpperCase()},
          ],
        })
        .build();

    final referralCode = await executeQueryAsSingleMap(codeQuery);

    if (referralCode == null) {
      throw Exception('Invalid or inactive referral code');
    }

    final referrerId = referralCode['userId'] as String;

    // Cannot refer yourself
    if (referrerId == userId) {
      throw Exception('Cannot use your own referral code');
    }

    // Check max referrals cap
    final maxReferrals = (referralCode['maxReferrals'] as num?)?.toInt();
    final totalReferrals =
        (referralCode['totalReferrals'] as num?)?.toInt() ?? 0;
    if (maxReferrals != null && totalReferrals >= maxReferrals) {
      throw Exception('This referral code has reached its maximum uses');
    }

    // Check if user was already referred (referredUserId is @unique)
    final existingQuery = JsonQueryBuilder()
        .model('Referral')
        .action(QueryAction.findFirst)
        .where({'referredUserId': userId})
        .build();

    final existingReferral = await executeQueryAsSingleMap(existingQuery);

    if (existingReferral != null) {
      throw Exception('You have already used a referral code');
    }

    // Transaction: create referral + increment counter + credit
    return executeInTransaction((txn) async {
      final referralCodeId = referralCode['id'] as String;
      final refereeReward =
          (referralCode['refereeReward'] as num?)?.toInt() ??
              _defaultRefereeReward;

      // Create Referral record
      final createReferralQuery = JsonQueryBuilder()
          .model('Referral')
          .action(QueryAction.create)
          .data({
            'id': const Uuid().v4(),
            'referralCodeId': referralCodeId,
            'referredUserId': userId,
            'status': 'SIGNED_UP',
            'signedUpAt': nowIso8601,
            'createdAt': nowIso8601,
            'updatedAt': nowIso8601,
          })
          .build();

      await txn.executeMutation(createReferralQuery);

      // Increment totalReferrals on ReferralCode
      final updateCodeQuery = JsonQueryBuilder()
          .model('ReferralCode')
          .action(QueryAction.update)
          .where({'id': referralCodeId})
          .data({
            'totalReferrals': totalReferrals + 1,
          })
          .build();

      await txn.executeMutation(updateCodeQuery);

      // Create ReferralCredit for the referee (signup bonus)
      final expiresAt = DateTime.now().toUtc().add(
            const Duration(days: _creditExpiryMonths * 30),
          );

      final createCreditQuery = JsonQueryBuilder()
          .model('ReferralCredit')
          .action(QueryAction.create)
          .data({
            'id': const Uuid().v4(),
            'userId': userId,
            'amount': refereeReward,
            'remainingAmount': refereeReward,
            'source': 'REFEREE_BONUS',
            'expiresAt': expiresAt.toIso8601String(),
            'createdAt': nowIso8601,
            'updatedAt': nowIso8601,
          })
          .build();

      await txn.executeMutation(createCreditQuery);

      return {
        'success': true,
        'creditAmount': refereeReward,
        'message': 'Referral code applied successfully',
      };
    });
  }

  /// Get user's referral code
  Future<Map<String, dynamic>?> getReferralCode(String userId) async {
    final query = JsonQueryBuilder()
        .model('ReferralCode')
        .action(QueryAction.findFirst)
        .where({'userId': userId})
        .build();

    return executeQueryAsSingleMap(query);
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

    final query = JsonQueryBuilder()
        .model('ReferralCode')
        .action(QueryAction.create)
        .data({
          'id': const Uuid().v4(),
          'userId': userId,
          'code': code,
          'referrerReward': _defaultReferrerReward,
          'refereeReward': _defaultRefereeReward,
          'isActive': true,
          'totalReferrals': 0,
          'successfulReferrals': 0,
          'totalEarned': 0,
          'createdAt': nowIso8601,
          'updatedAt': nowIso8601,
        })
        .build();

    final result = await executeQueryAsSingleMap(query);
    return result!;
  }

  /// Get available (unexpired, unspent) credit balance for a user
  Future<Map<String, dynamic>> getAvailableCredits(String userId) async {
    final now = DateTime.now().toUtc().toIso8601String();

    final query = JsonQueryBuilder()
        .model('ReferralCredit')
        .action(QueryAction.findMany)
        .where({
          'userId': userId,
          'remainingAmount': FilterOperators.gt(0),
          'expiresAt': FilterOperators.gt(now),
        })
        .build();

    final credits = await executeQueryAsMaps(query);

    final totalAvailable = credits.fold<int>(0, (sum, credit) {
      final remaining =
          (credit['remainingAmount'] as num?)?.toInt() ?? 0;
      return sum + remaining;
    });

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
