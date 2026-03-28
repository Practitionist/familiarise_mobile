import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for payout account operations.
class PayoutAccountRepository extends BaseRepository {
  PayoutAccountRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Create a new payout account.
  Future<Map<String, dynamic>> create({
    required String consultantProfileId,
    required String provider,
    required String accountType,
    String? accountHolderName,
    String? bankName,
    String? accountNumberLast4,
    String? ifscCode,
    String? upiId,
    bool isDefault = false,
  }) async {
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('PayoutAccount')
        .action(QueryAction.create)
        .data({
      'consultantProfileId': consultantProfileId,
      'provider': provider,
      'accountType': accountType,
      'accountHolderName': accountHolderName,
      'bankName': bankName,
      'accountNumberLast4': accountNumberLast4,
      'ifscCode': ifscCode,
      'upiId': upiId,
      'isVerified': false,
      'isDefault': isDefault,
      'createdAt': now,
      'updatedAt': now,
    }).build();

    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to create payout account');
    return result;
  }

  /// Get all payout accounts for a consultant.
  Future<List<Map<String, dynamic>>> findByConsultant(
    String consultantProfileId,
  ) async {
    final query = JsonQueryBuilder()
        .model('PayoutAccount')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId}).build();
    return executeQueryAsMaps(query);
  }

  /// Get a payout account by ID.
  Future<PayoutAccount?> findById(String id) async {
    return _prisma.payoutAccount.findUnique(
      where: PayoutAccountWhereUniqueInput(id: id),
    );
  }

  /// Get a payout account by ID as a JSON-friendly map.
  Future<Map<String, dynamic>?> findByIdMap(String id) async {
    final query = JsonQueryBuilder()
        .model('PayoutAccount')
        .action(QueryAction.findUnique)
        .where({'id': id}).build();
    return executeQueryAsSingleMap(query);
  }

  /// Update a payout account.
  Future<PayoutAccount> update({
    required String id,
    String? accountHolderName,
    String? bankName,
    String? accountNumberLast4,
    String? ifscCode,
    String? upiId,
  }) async {
    return _prisma.payoutAccount.update(
      where: PayoutAccountWhereUniqueInput(id: id),
      data: UpdatePayoutAccountInput(
        accountHolderName: accountHolderName,
        bankName: bankName,
        accountNumberLast4: accountNumberLast4,
        ifscCode: ifscCode,
        upiId: upiId,
      ),
    );
  }

  /// Set an account as default (unset all others first).
  Future<void> setDefault({
    required String id,
    required String consultantProfileId,
  }) async {
    await executeInTransaction((txn) async {
      // Unset all defaults for this consultant
      final unsetQuery = JsonQueryBuilder()
          .model('PayoutAccount')
          .action(QueryAction.updateMany)
          .where({'consultantProfileId': consultantProfileId}).data(
              {'isDefault': false, 'updatedAt': nowIso8601}).build();
      await txn.executeMutation(unsetQuery);

      // Set the new default
      final setQuery = JsonQueryBuilder()
          .model('PayoutAccount')
          .action(QueryAction.update)
          .where({'id': id}).data(
              {'isDefault': true, 'updatedAt': nowIso8601}).build();
      await txn.executeMutation(setQuery);
    });
  }

  /// Delete a payout account.
  Future<void> delete(String id) async {
    await _prisma.payoutAccount.delete(
      where: PayoutAccountWhereUniqueInput(id: id),
    );
  }
}
