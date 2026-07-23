import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:backend/utils/sentry_logger.dart';

/// Repository for refund operations
///
/// Handles creating, querying, and updating refund records from webhook events.
class RefundRepository extends BaseRepository {
  RefundRepository(super._executor, this._prisma);
  final PrismaClient _prisma;

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

    try {
      // id/timestamps autofilled; wire strings mapped to generated enums.
      final created = await _prisma.refund.create(
        data: CreateRefundInput(
          refundId: refundId,
          paymentId: paymentId,
          amountPaise: BigInt.from(amount),
          currency: Currency.values.firstWhere((e) => e.toJson() == currency),
          status: RefundStatus.values.firstWhere((e) => e.toJson() == status),
          paymentGateway: PaymentGateway.values
              .firstWhere((e) => e.toJson() == paymentGateway),
          reason: reason,
          metadata: metadata, // Json column — pass the map directly
        ),
      );

      return {
        'id': created.id,
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
    final result = await _prisma.refund.findFirst(
      where: RefundWhereInput(refundId: StringFilter(equals: refundId)),
    );
    return result?.toJson();
  }

  /// Get all refunds for a payment
  Future<List<Map<String, dynamic>>> getRefundsByPaymentId(
    String paymentId,
  ) async {
    final results = await _prisma.refund.findMany(
      where: RefundWhereInput(paymentId: StringFilter(equals: paymentId)),
      orderBy: {'createdAt': 'desc'},
    );
    return results.map((r) => r.toJson()).toList();
  }

  /// Update refund status
  Future<void> updateRefundStatus({
    required String refundId,
    required String status,
  }) async {
    // updateMany keeps the old silent-if-missing semantics (typed update
    // throws when no row matches); updatedAt auto-refreshes.
    await _prisma.refund.updateMany(
      where: RefundWhereInput(refundId: StringFilter(equals: refundId)),
      data: UpdateRefundInput(
        status: RefundStatus.values.firstWhere((e) => e.toJson() == status),
      ),
    );
  }

  /// Get refund by internal ID
  Future<Map<String, dynamic>?> getRefundById(String id) async {
    final result = await _prisma.refund.findFirst(
      where: RefundWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
  }
}
