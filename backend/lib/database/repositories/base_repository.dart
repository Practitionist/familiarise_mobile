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

  /// Execute a callback within a database transaction
  Future<T> executeInTransaction<T>(
    Future<T> Function(TransactionExecutor) callback,
  ) async {
    return _executor.executeInTransaction(callback);
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

  /// Get current UTC timestamp as ISO8601 string
  String get nowIso8601 => DateTime.now().toUtc().toIso8601String();
}
