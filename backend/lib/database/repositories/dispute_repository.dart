import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for dispute operations (MVP - read-only visibility)
///
/// Disputes are created by web backend from webhooks.
/// Mobile backend provides read-only access for user visibility.
class DisputeRepository extends BaseRepository {
  DisputeRepository(super._executor, this._prisma);
  final PrismaClient _prisma;

  final _uuid = const Uuid();

  /// Get dispute by gateway-specific dispute ID
  Future<Map<String, dynamic>?> getDisputeByDisputeId(String disputeId) async {
    return _prisma.dispute.findFirstRaw(
      where: {'disputeId': disputeId},
    );
  }

  /// Get all disputes for a payment
  Future<List<Map<String, dynamic>>> getDisputesByPaymentId(
    String paymentId,
  ) async {
    return _prisma.dispute.findManyRaw(
      where: {'paymentId': paymentId},
      orderBy: {'createdAt': 'desc'},
    );
  }

  /// Get dispute by internal ID
  Future<Map<String, dynamic>?> getDisputeById(String id) async {
    return _prisma.dispute.findFirstRaw(
      where: {'id': id},
    );
  }

  /// Get all disputes for a user (via their payments)
  /// Useful for "My Disputes" screen
  Future<List<Map<String, dynamic>>> getDisputesByUserId(String userId) async {
    return _prisma.dispute.findManyRaw(
      where: {
        'payment': {
          'userId': userId,
        },
      },
      include: {
        'payment': {
          'select': {
            'id': true,
            'amount': true,
            'currency': true,
          },
        },
      },
      orderBy: {'createdAt': 'desc'},
    );
  }

  // =========================================
  // WRITE METHODS (for webhook handling)
  // Note: These exist for completeness but
  // primary processing happens on web backend
  // =========================================

  /// Create a new dispute record from webhook event
  /// Returns the created dispute record or existing if duplicate
  Future<Map<String, dynamic>?> createDispute({
    required String disputeId,
    required String paymentId,
    required int amount,
    required String currency,
    required String reason,
    required String status,
    required String paymentGateway,
    DateTime? dueBy,
    bool isChargeRefundable = true,
    Map<String, dynamic>? evidence,
  }) async {
    // Check if dispute already exists (idempotency)
    final existing = await getDisputeByDisputeId(disputeId);
    if (existing != null) {
      return existing;
    }

    final id = _uuid.v4();
    final now = nowIso8601;

    final createQuery =
        JsonQueryBuilder().model('Dispute').action(QueryAction.create).data({
      'id': id,
      'disputeId': disputeId,
      'paymentId': paymentId,
      'amount': amount,
      'currency': currency,
      'reason': reason,
      'status': status,
      'paymentGateway': paymentGateway,
      if (dueBy != null) 'dueBy': dueBy.toIso8601String(),
      'isChargeRefundable': isChargeRefundable,
      if (evidence != null)
        'evidence': evidence, // Json type - pass object directly
      'createdAt': now,
      'updatedAt': now,
    }).build();

    try {
      await executeMutation(createQuery);

      return {
        'id': id,
        'disputeId': disputeId,
        'paymentId': paymentId,
        'amount': amount,
        'currency': currency,
        'reason': reason,
        'status': status,
        'paymentGateway': paymentGateway,
        'dueBy': dueBy?.toIso8601String(),
        'isChargeRefundable': isChargeRefundable,
      };
    } catch (e) {
      // Log to help diagnose if this is NOT a unique constraint violation
      SentryLogger.warning(
        'Error creating dispute (possibly duplicate): $disputeId - $e',
        context: 'DisputeRepository',
      );
      return getDisputeByDisputeId(disputeId);
    }
  }

  /// Update dispute status
  Future<void> updateDisputeStatus({
    required String disputeId,
    required String status,
  }) async {
    final updateQuery = JsonQueryBuilder()
        .model('Dispute')
        .action(QueryAction.update)
        .where({'disputeId': disputeId}).data({
      'status': status,
      'updatedAt': nowIso8601,
    }).build();

    await executeMutation(updateQuery);
  }
}
