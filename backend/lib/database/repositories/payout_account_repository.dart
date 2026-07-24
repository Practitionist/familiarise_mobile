import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/utils/enum_utils.dart';
import 'package:backend/generated/index.dart';

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
    // provider/accountType are enums in the schema; map the wire string to the
    // enum via its @JsonValue (handles multi-word values like LEMON_SQUEEZY).
    final result = await _prisma.payoutAccount.create(
      data: CreatePayoutAccountInput(
        consultantProfileId: consultantProfileId,
        provider:
            enumFromWire(PaymentGateway.values, provider, field: 'provider'),
        accountType: enumFromWire(PayoutAccountType.values, accountType,
            field: 'accountType'),
        accountHolderName: accountHolderName,
        bankName: bankName,
        accountNumberLast4: accountNumberLast4,
        ifscCode: ifscCode,
        upiId: upiId,
        isVerified: false,
        isDefault: isDefault,
      ),
    );
    return result.toJson();
  }

  /// Get all payout accounts for a consultant.
  Future<List<Map<String, dynamic>>> findByConsultant(
    String consultantProfileId,
  ) async {
    final results = await _prisma.payoutAccount.findMany(
      where: PayoutAccountWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );
    return results.map((r) => r.toJson()).toList();
  }

  /// Get a payout account by ID.
  Future<PayoutAccount?> findById(String id) async {
    return _prisma.payoutAccount.findUnique(
      where: PayoutAccountWhereUniqueInput(id: id),
    );
  }

  /// Get a payout account by ID as a JSON-friendly map.
  Future<Map<String, dynamic>?> findByIdMap(String id) async {
    final result = await _prisma.payoutAccount.findUnique(
      where: PayoutAccountWhereUniqueInput(id: id),
    );
    return result?.toJson();
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
    await _prisma.$transaction((tx) async {
      // Unset all defaults for this consultant, then set the new default.
      // (updatedAt is auto-refreshed by the typed update.)
      await tx.payoutAccount.updateMany(
        where: PayoutAccountWhereInput(
          consultantProfileId: StringFilter(equals: consultantProfileId),
        ),
        data: UpdatePayoutAccountInput(isDefault: false),
      );
      await tx.payoutAccount.update(
        where: PayoutAccountWhereUniqueInput(id: id),
        data: UpdatePayoutAccountInput(isDefault: true),
      );
    });
  }

  /// Delete a payout account.
  Future<void> delete(String id) async {
    await _prisma.payoutAccount.delete(
      where: PayoutAccountWhereUniqueInput(id: id),
    );
  }
}
