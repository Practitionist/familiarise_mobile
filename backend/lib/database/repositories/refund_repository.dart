import 'dart:convert';

import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for refund operations
///
/// Handles creating, querying, and updating refund records from webhook events.
class RefundRepository extends BaseRepository {
  RefundRepository(super._executor, this._prisma);
  final PrismaClient _prisma;

  final _uuid = const Uuid();

  /// Create a new refund record from webhook event
  ///
  /// Returns the created refund record or null if already exists (idempotent).
  Future<Map<String, dynamic>?> createRefund({
    required String refundId,
    required String paymentId,
    required int amount,
    required String currency,
    required String status,
    required String paymentGateway,
    String? reason,
    Map<String, dynamic>? metadata,
  }) async {
    // Check if refund already exists (idempotency)
    final existing = await getRefundByRefundId(refundId);
    if (existing != null) {
      return existing; // Already processed
    }

    final id = _uuid.v4();
    final now = nowIso8601;

    final createQuery =
        JsonQueryBuilder().model('Refund').action(QueryAction.create).data({
      'id': id,
      'refundId': refundId,
      'paymentId': paymentId,
      'amount': amount,
      'currency': currency,
      'status': status,
      'paymentGateway': paymentGateway,
      if (reason != null) 'reason': reason,
      if (metadata != null) 'metadata': jsonEncode(metadata),
      'createdAt': now,
      'updatedAt': now,
    }).build();

    try {
      await executeMutation(createQuery);

      return {
        'id': id,
        'refundId': refundId,
        'paymentId': paymentId,
        'amount': amount,
        'currency': currency,
        'status': status,
        'paymentGateway': paymentGateway,
        'reason': reason,
      };
    } catch (e) {
      // Log to help diagnose if this is NOT a unique constraint violation
      SentryLogger.warning(
        'Error creating refund (possibly duplicate): $refundId - $e',
        context: 'RefundRepository',
      );
      return getRefundByRefundId(refundId);
    }
  }

  /// Get refund by gateway-specific refund ID
  Future<Map<String, dynamic>?> getRefundByRefundId(String refundId) async {
    final query = JsonQueryBuilder()
        .model('Refund')
        .action(QueryAction.findUnique)
        .where({'refundId': refundId}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Get all refunds for a payment
  Future<List<Map<String, dynamic>>> getRefundsByPaymentId(
    String paymentId,
  ) async {
    final query = JsonQueryBuilder()
        .model('Refund')
        .action(QueryAction.findMany)
        .where({'paymentId': paymentId}).orderBy({'createdAt': 'desc'}).build();

    return executeQueryAsMaps(query);
  }

  /// Update refund status
  Future<void> updateRefundStatus({
    required String refundId,
    required String status,
  }) async {
    final updateQuery = JsonQueryBuilder()
        .model('Refund')
        .action(QueryAction.update)
        .where({'refundId': refundId}).data({
      'status': status,
      'updatedAt': nowIso8601,
    }).build();

    await executeMutation(updateQuery);
  }

  /// Get refund by internal ID
  Future<Map<String, dynamic>?> getRefundById(String id) async {
    final query = JsonQueryBuilder()
        .model('Refund')
        .action(QueryAction.findUnique)
        .where({'id': id}).build();

    return executeQueryAsSingleMap(query);
  }
}
