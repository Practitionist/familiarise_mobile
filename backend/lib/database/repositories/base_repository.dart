import 'package:prisma_flutter_connector/runtime_server.dart';

/// Extension on TransactionExecutor to add raw SQL capabilities.
///
/// The base TransactionExecutor only supports JsonQuery operations,
/// but we need raw SQL for complex queries within transactions.
extension TransactionExecutorRaw on TransactionExecutor {
  /// Execute raw SQL query within a transaction and return results as maps.
  Future<List<Map<String, dynamic>>> executeRaw(
    String sql,
    List<dynamic> parameters,
  ) async {
    final argTypes = parameters.map(_inferArgType).toList();
    final sqlQuery = SqlQuery(sql: sql, args: parameters, argTypes: argTypes);
    final result = await transaction.queryRaw(sqlQuery);
    return _resultSetToMaps(result);
  }

  /// Execute raw SQL mutation within a transaction (INSERT/UPDATE/DELETE).
  Future<int> executeMutationRaw(
    String sql,
    List<dynamic> parameters,
  ) async {
    final argTypes = parameters.map(_inferArgType).toList();
    final sqlQuery = SqlQuery(sql: sql, args: parameters, argTypes: argTypes);
    return transaction.executeRaw(sqlQuery);
  }

  ArgType _inferArgType(dynamic value) {
    if (value == null) return ArgType.unknown;
    if (value is int) return ArgType.int64;
    if (value is double) return ArgType.double;
    if (value is bool) return ArgType.boolean;
    if (value is String) return ArgType.string;
    if (value is DateTime) return ArgType.dateTime;
    if (value is List<int>) return ArgType.bytes;
    if (value is Map) return ArgType.json;
    return ArgType.unknown;
  }

  List<Map<String, dynamic>> _resultSetToMaps(SqlResultSet result) {
    if (result.rows.isEmpty) return [];
    final maps = <Map<String, dynamic>>[];
    for (final row in result.rows) {
      final map = <String, dynamic>{};
      for (var i = 0; i < result.columnNames.length; i++) {
        final columnName = result.columnNames[i];
        final value = i < row.length ? row[i] : null;
        map[columnName] = value;
      }
      maps.add(map);
    }
    return maps;
  }
}

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
