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
  AccountRepository(super._executor);

  /// Find account by userId and providerId
  Future<Map<String, dynamic>?> findByUserAndProvider(
    String userId,
    String providerId,
  ) async {
    final query = JsonQueryBuilder()
        .model('accounts')
        .action(QueryAction.findFirst)
        .where({
      'userId': userId,
      'providerId': providerId,
    }).build();

    return executeQueryAsSingleMap(query);
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
    final query = JsonQueryBuilder()
        .model('accounts')
        .action(QueryAction.update)
        .where({'id': accountId})
        .data({
      'password': hashedPassword,
      'updatedAt': nowIso8601,
    }).build();

    return executeQueryAsSingleMap(query);
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
    final query =
        JsonQueryBuilder().model('accounts').action(QueryAction.create).data({
      'id': id,
      'userId': userId,
      'providerId': providerId,
      'accountId': accountId,
      'accessToken': accessToken,
      'idToken': idToken,
      'createdAt': nowIso8601,
      'updatedAt': nowIso8601,
    }).build();

    final result = await executeQueryAsSingleMap(query, txn: txn);
    if (result == null) {
      throw Exception('Failed to create OAuth account in database');
    }
    return result;
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
    final query =
        JsonQueryBuilder().model('accounts').action(QueryAction.create).data({
      'id': id,
      'userId': userId,
      'providerId': 'credential',
      'accountId': userId,
      'password': hashedPassword,
      'createdAt': nowIso8601,
      'updatedAt': nowIso8601,
    }).build();

    final result = await executeQueryAsSingleMap(query, txn: txn);
    if (result == null) {
      throw Exception('Failed to create credentials account in database');
    }
    return result;
  }
}
