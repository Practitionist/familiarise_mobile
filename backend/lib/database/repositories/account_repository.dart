import 'package:prisma_flutter_connector/runtime_server.dart';

import 'base_repository.dart';

/// Repository for account-related database operations
///
/// Handles OAuth and credentials account linking.
class AccountRepository extends BaseRepository {
  /// Create an account repository with the given executor
  AccountRepository(QueryExecutor executor) : super(executor);

  /// Find account by userId and provider
  Future<Map<String, dynamic>?> findByUserAndProvider(
    String userId,
    String provider,
  ) async {
    final query = JsonQueryBuilder()
        .model('accounts')
        .action(QueryAction.findFirst)
        .where({
      'userId': userId,
      'provider': provider,
    }).build();

    return executeQueryAsSingleMap(query);
  }

  /// Create an OAuth account link
  ///
  /// Links a user to an OAuth provider (e.g., Google, GitHub).
  Future<Map<String, dynamic>> createOAuth({
    required String id,
    required String userId,
    required String provider,
    required String providerAccountId,
    String? accessToken,
    String? idToken,
    TransactionExecutor? txn,
  }) async {
    final query =
        JsonQueryBuilder().model('accounts').action(QueryAction.create).data({
      'id': id,
      'userId': userId,
      'type': 'oauth',
      'provider': provider,
      'providerAccountId': providerAccountId,
      'access_token': accessToken,
      'id_token': idToken,
    }).build();

    final result = await executeQueryAsSingleMap(query, txn: txn);
    if (result == null) {
      throw Exception('Failed to create OAuth account in database');
    }
    return result;
  }

  /// Create a credentials account for email/password users
  ///
  /// Note: The password is stored in the users table, not accounts table.
  /// This method creates the account record for provider tracking.
  Future<Map<String, dynamic>> createCredentials({
    required String id,
    required String userId,
    TransactionExecutor? txn,
  }) async {
    final query =
        JsonQueryBuilder().model('accounts').action(QueryAction.create).data({
      'id': id,
      'userId': userId,
      'type': 'credentials',
      'provider': 'credentials',
      'providerAccountId': userId,
    }).build();

    final result = await executeQueryAsSingleMap(query, txn: txn);
    if (result == null) {
      throw Exception('Failed to create credentials account in database');
    }
    return result;
  }
}
