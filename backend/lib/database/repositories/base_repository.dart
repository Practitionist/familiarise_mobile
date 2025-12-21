import 'package:prisma_flutter_connector/runtime_server.dart';

/// Base class for all database repositories
///
/// Provides access to the query executor and common transaction support.
abstract class BaseRepository {
  /// Create a repository with the given executor
  BaseRepository(this._executor);

  final QueryExecutor _executor;

  /// Get the query executor for direct access
  QueryExecutor get executor => _executor;

  /// Execute raw SQL query and return results as maps.
  ///
  /// This is an escape hatch for complex queries not supported by the
  /// query builder. Use parameterized queries to prevent SQL injection.
  ///
  /// Example:
  /// ```dart
  /// final results = await executeRaw(
  ///   'SELECT * FROM users WHERE created_at > NOW() - INTERVAL \$1 DAY',
  ///   [7],
  /// );
  /// ```
  Future<List<Map<String, dynamic>>> executeRaw(
    String sql,
    List<dynamic> parameters,
  ) async {
    return _executor.executeRaw(sql, parameters);
  }

  /// Execute raw SQL mutation (INSERT/UPDATE/DELETE) and return affected rows.
  ///
  /// Example:
  /// ```dart
  /// final affected = await executeMutationRaw(
  ///   'DELETE FROM sessions WHERE expires_at < NOW()',
  ///   [],
  /// );
  /// ```
  Future<int> executeMutationRaw(
    String sql,
    List<dynamic> parameters,
  ) async {
    return _executor.executeMutationRaw(sql, parameters);
  }

  /// Execute a callback within a database transaction
  Future<T> executeInTransaction<T>(
    Future<T> Function(TransactionExecutor) callback,
  ) async {
    return _executor.executeInTransaction(callback);
  }

  /// Helper to execute a query that returns a list of maps
  Future<List<Map<String, dynamic>>> executeQueryAsMaps(
    JsonQuery query, {
    TransactionExecutor? txn,
  }) async {
    if (txn != null) {
      return txn.executeQueryAsMaps(query);
    }
    return _executor.executeQueryAsMaps(query);
  }

  /// Helper to execute a query that returns a single map
  Future<Map<String, dynamic>?> executeQueryAsSingleMap(
    JsonQuery query, {
    TransactionExecutor? txn,
  }) async {
    if (txn != null) {
      return txn.executeQueryAsSingleMap(query);
    }
    return _executor.executeQueryAsSingleMap(query);
  }

  /// Helper to execute a mutation query
  Future<void> executeMutation(
    JsonQuery query, {
    TransactionExecutor? txn,
  }) async {
    if (txn != null) {
      await txn.executeMutation(query);
    } else {
      await _executor.executeMutation(query);
    }
  }

  /// Helper to execute a count query
  Future<int> executeCount(
    JsonQuery query, {
    TransactionExecutor? txn,
  }) async {
    if (txn != null) {
      return txn.executeCount(query);
    }
    return _executor.executeCount(query);
  }

  /// Get current UTC timestamp as ISO8601 string
  String get nowIso8601 => DateTime.now().toUtc().toIso8601String();
}
