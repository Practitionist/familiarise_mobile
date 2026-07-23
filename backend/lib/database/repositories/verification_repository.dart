import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for verification token database operations
///
/// Maps to the BetterAuth "verifications" table (@@map("verifications")).
/// Used for password reset tokens and email verification tokens.
class VerificationRepository extends BaseRepository {
  /// Create a verification repository with the given executor
  VerificationRepository(super._executor, this._prisma);
  final PrismaClient _prisma;

  /// Find a verification by identifier and value
  Future<Map<String, dynamic>?> findByIdentifierAndValue({
    required String identifier,
    required String value,
  }) async {
    final result = await _prisma.verification.findFirst(
      where: VerificationWhereInput(
        identifier: StringFilter(equals: identifier),
        value: StringFilter(equals: value),
      ),
    );
    return result?.toJson();
  }

  /// Find a verification by value and identifier prefix
  ///
  /// Uses `startsWith` filter to match identifiers like
  /// "password-reset:email@example.com" or "email-verify:email@example.com".
  Future<Map<String, dynamic>?> findByValueAndIdentifierPrefix({
    required String value,
    required String identifierPrefix,
  }) async {
    final result = await _prisma.verification.findFirst(
      where: VerificationWhereInput(
        value: StringFilter(equals: value),
        identifier: StringFilter(startsWith: identifierPrefix),
      ),
    );
    return result?.toJson();
  }

  /// Find a verification by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    final result = await _prisma.verification.findFirst(
      where: VerificationWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
  }

  /// Create a new verification token
  Future<Map<String, dynamic>> create({
    required String id,
    required String identifier,
    required String value,
    required DateTime expiresAt,
    TransactionExecutor? txn,
  }) async {
    // id/createdAt/updatedAt are autofilled by the schema defaults; callers
    // should use the returned row's id (CreateVerificationInput has no id
    // param).
    final delegate =
        txn == null ? _prisma.verification : VerificationDelegate(txn);
    final result = await delegate.create(
      data: CreateVerificationInput(
        identifier: identifier,
        value: value,
        expiresAt: expiresAt,
      ),
    );
    return result.toJson();
  }

  /// Delete a verification by ID
  Future<void> delete(String id) async {
    await _prisma.verification.deleteMany(
      where: VerificationWhereInput(id: StringFilter(equals: id)),
    );
  }

  /// Delete all verifications for an identifier
  Future<void> deleteByIdentifier(String identifier) async {
    await _prisma.verification.deleteMany(
      where: VerificationWhereInput(
        identifier: StringFilter(equals: identifier),
      ),
    );
  }

  /// Delete expired verifications (cleanup)
  Future<int> deleteExpired() async {
    return _prisma.verification.deleteMany(
      where: VerificationWhereInput(
        expiresAt: DateTimeFilter(lt: DateTime.now().toUtc()),
      ),
    );
  }
}
