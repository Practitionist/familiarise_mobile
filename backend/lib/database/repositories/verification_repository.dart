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
    return _prisma.verification.findFirstRaw(
      where: {
        'identifier': identifier,
        'value': value,
      },
    );
  }

  /// Find a verification by value and identifier prefix
  ///
  /// Uses `startsWith` filter to match identifiers like
  /// "password-reset:email@example.com" or "email-verify:email@example.com".
  Future<Map<String, dynamic>?> findByValueAndIdentifierPrefix({
    required String value,
    required String identifierPrefix,
  }) async {
    return _prisma.verification.findFirstRaw(
      where: {
        'value': value,
        'identifier': FilterOperators.startsWith(identifierPrefix),
      },
    );
  }

  /// Find a verification by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    return _prisma.verification.findFirstRaw(where: {'id': id});
  }

  /// Create a new verification token
  Future<Map<String, dynamic>> create({
    required String id,
    required String identifier,
    required String value,
    required DateTime expiresAt,
    TransactionExecutor? txn,
  }) async {
    final query = JsonQueryBuilder()
        .model('verifications')
        .action(QueryAction.create)
        .data({
      'id': id,
      'identifier': identifier,
      'value': value,
      'expiresAt': expiresAt.toIso8601String(),
      'createdAt': nowIso8601,
      'updatedAt': nowIso8601,
    }).build();

    final result = await executeQueryAsSingleMap(query, txn: txn);
    if (result == null) {
      throw Exception('Failed to create verification in database');
    }
    return result;
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
