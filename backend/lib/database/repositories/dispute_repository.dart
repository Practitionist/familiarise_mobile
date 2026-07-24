import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/utils/enum_utils.dart';
import 'package:backend/generated/index.dart';
import 'package:backend/utils/sentry_logger.dart';

/// Repository for dispute operations (MVP - read-only visibility)
///
/// Disputes are created by web backend from webhooks.
/// Mobile backend provides read-only access for user visibility.
class DisputeRepository extends BaseRepository {
  DisputeRepository(super._executor, this._prisma);
  final PrismaClient _prisma;

  /// Get dispute by gateway-specific dispute ID
  Future<Map<String, dynamic>?> getDisputeByDisputeId(String disputeId) async {
    final result = await _prisma.dispute.findFirst(
      where: DisputeWhereInput(disputeId: StringFilter(equals: disputeId)),
    );
    return result?.toJson();
  }

  /// Get all disputes for a payment
  Future<List<Map<String, dynamic>>> getDisputesByPaymentId(
    String paymentId,
  ) async {
    final results = await _prisma.dispute.findMany(
      where: DisputeWhereInput(paymentId: StringFilter(equals: paymentId)),
      orderBy: {'createdAt': 'desc'},
    );
    return results.map((r) => r.toJson()).toList();
  }

  /// Get dispute by internal ID
  Future<Map<String, dynamic>?> getDisputeById(String id) async {
    final result = await _prisma.dispute.findFirst(
      where: DisputeWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
  }

  /// Get all disputes for a user (via their payments)
  /// Useful for "My Disputes" screen
  Future<List<Map<String, dynamic>>> getDisputesByUserId(String userId) async {
    return _prisma.dispute.findManyProjected(
      where: DisputeWhereInput(
        payment: PaymentRelationFilter(
          is_: PaymentWhereInput(userId: StringFilter(equals: userId)),
        ),
      ),
      include: const DisputeInclude(
        payment: PaymentInclude(
          select: [
            PaymentScalarField.id,
            PaymentScalarField.amount,
            PaymentScalarField.currency,
          ],
        ),
      ),
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

    try {
      // id/timestamps autofilled; wire strings mapped to generated enums.
      final created = await _prisma.dispute.create(
        data: CreateDisputeInput(
          disputeId: disputeId,
          paymentId: paymentId,
          amountPaise: BigInt.from(amount),
          currency: enumFromWire(Currency.values, currency, field: 'currency'),
          reason: reason,
          status: enumFromWire(DisputeStatus.values, status, field: 'status'),
          paymentGateway: enumFromWire(PaymentGateway.values, paymentGateway,
              field: 'paymentGateway'),
          dueBy: dueBy,
          isChargeRefundable: isChargeRefundable,
          evidence: evidence,
        ),
      );

      return {
        'id': created.id,
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
    // updateMany keeps the old silent-if-missing semantics (typed update
    // throws when no row matches); updatedAt auto-refreshes.
    await _prisma.dispute.updateMany(
      where: DisputeWhereInput(disputeId: StringFilter(equals: disputeId)),
      data: UpdateDisputeInput(
        status: DisputeStatus.values.firstWhere((e) => e.toJson() == status),
      ),
    );
  }
}
