import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for account-related database operations
///
/// Handles OAuth and credentials account linking.
/// Uses BetterAuth-compatible column names:
///   provider → providerId
///   providerAccountId → accountId
///   access_token → accessToken
///   id_token → idToken
class AccountRepository extends BaseRepository {
  /// Create an account repository with the given executor
  AccountRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Find account by userId and providerId
  Future<Map<String, dynamic>?> findByUserAndProvider(
    String userId,
    String providerId,
  ) async {
    final result = await _prisma.account.findFirst(
      where: AccountWhereInput(
        userId: StringFilter(equals: userId),
        providerId: StringFilter(equals: providerId),
      ),
    );
    return result?.toJson();
  }

  /// Find credential account by userId
  ///
  /// Shorthand for finding the account with providerId: "credential".
  Future<Map<String, dynamic>?> findCredentialAccount(String userId) async {
    return findByUserAndProvider(userId, 'credential');
  }

  /// Update an account's password
  ///
  /// Used for change-password and reset-password flows.
  Future<Map<String, dynamic>?> updatePassword({
    required String accountId,
    required String hashedPassword,
  }) async {
    final result = await _prisma.account.update(
      where: AccountWhereUniqueInput(id: accountId),
      data: UpdateAccountInput(password: hashedPassword),
    );
    return result.toJson();
  }

  /// Create an OAuth account link
  ///
  /// Links a user to an OAuth provider (e.g., Google, GitHub).
  Future<Map<String, dynamic>> createOAuth({
    required String id,
    required String userId,
    required String providerId,
    required String accountId,
    String? accessToken,
    String? idToken,
    TransactionExecutor? txn,
  }) async {
    // id/createdAt/updatedAt are autofilled by the schema defaults; callers
    // should use the returned row's id (CreateAccountInput has no id param).
    final delegate = txn == null ? _prisma.account : AccountDelegate(txn);
    final result = await delegate.create(
      data: CreateAccountInput(
        userId: userId,
        providerId: providerId,
        accountId: accountId,
        accessToken: accessToken,
        idToken: idToken,
      ),
    );
    return result.toJson();
  }

  /// Create a credentials account for email/password users
  ///
  /// In BetterAuth schema, the password is stored in the accounts table
  /// with providerId: "credential" and accountId: <userId>.
  Future<Map<String, dynamic>> createCredentials({
    required String id,
    required String userId,
    required String hashedPassword,
    TransactionExecutor? txn,
  }) async {
    // id/createdAt/updatedAt are autofilled by the schema defaults; callers
    // should use the returned row's id (CreateAccountInput has no id param).
    final delegate = txn == null ? _prisma.account : AccountDelegate(txn);
    final result = await delegate.create(
      data: CreateAccountInput(
        userId: userId,
        providerId: 'credential',
        accountId: userId,
        password: hashedPassword,
      ),
    );
    return result.toJson();
  }
}
