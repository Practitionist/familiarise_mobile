import 'package:postgres/postgres.dart' as pg;
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Database client using Prisma Flutter Connector
///
/// Uses the runtime_server.dart import which provides:
/// - PostgresAdapter for database connection
/// - QueryExecutor for query execution
/// - JsonQueryBuilder for type-safe query building
class DatabaseClient {
  DatabaseClient._(this._executor);

  static DatabaseClient? _instance;
  final QueryExecutor _executor;

  /// Initialize the database client with a connection URL
  static Future<DatabaseClient> initialize(String connectionUrl) async {
    if (_instance != null) return _instance!;

    final uri = Uri.parse(connectionUrl);

    // Parse credentials from URL
    final userInfo = uri.userInfo.split(':');
    final username = userInfo[0];
    final password = userInfo.length > 1 ? userInfo[1] : '';

    final connection = await pg.Connection.open(
      pg.Endpoint(
        host: uri.host,
        port: uri.port,
        database:
            uri.pathSegments.isNotEmpty ? uri.pathSegments.first : 'postgres',
        username: username,
        password: password,
      ),
      settings: const pg.ConnectionSettings(sslMode: pg.SslMode.require),
    );

    final adapter = PostgresAdapter(connection);
    final executor = QueryExecutor(adapter: adapter);

    _instance = DatabaseClient._(executor);
    return _instance!;
  }

  /// Get the query executor for direct access
  QueryExecutor get executor => _executor;

  // ==================== User Operations ====================

  /// Find user by email
  Future<Map<String, dynamic>?> findUserByEmail(String email) async {
    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.findFirst)
        .where({'email': email})
        .build();

    return _executor.executeQueryAsSingleMap(query);
  }

  /// Find user by ID
  Future<Map<String, dynamic>?> findUserById(String id) async {
    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.findUnique)
        .where({'id': id})
        .build();

    return _executor.executeQueryAsSingleMap(query);
  }

  /// Create a new user
  ///
  /// Optionally accepts a [TransactionExecutor] to run within a transaction.
  Future<Map<String, dynamic>> createUser({
    required String id,
    required String email,
    String? name,
    String? image,
    String? hashedPassword,
    String role = 'CONSULTEE',
    TransactionExecutor? executor,
  }) async {
    final now = DateTime.now().toUtc();

    final data = <String, dynamic>{
      'id': id,
      'email': email,
      'name': name,
      'image': image,
      'role': role,
      'onboardingCompleted': false,
      'createdAt': now.toIso8601String(),
      'updatedAt': now.toIso8601String(),
    };

    // Add password if provided (for credentials auth)
    if (hashedPassword != null) {
      data['password'] = hashedPassword;
    }

    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.create)
        .data(data)
        .build();

    final Map<String, dynamic>? result;
    if (executor != null) {
      result = await executor.executeQueryAsSingleMap(query);
    } else {
      result = await _executor.executeQueryAsSingleMap(query);
    }
    return result ?? {'id': id, 'email': email};
  }

  /// Delete a user by ID (for cleanup on failed registration)
  Future<void> deleteUser(String id) async {
    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.delete)
        .where({'id': id})
        .build();

    await _executor.executeMutation(query);
  }

  // ==================== Account Operations ====================

  /// Find account by userId and provider
  Future<Map<String, dynamic>?> findAccountByUserAndProvider(
    String userId,
    String provider,
  ) async {
    final query = JsonQueryBuilder()
        .model('accounts')
        .action(QueryAction.findFirst)
        .where({
          'userId': userId,
          'provider': provider,
        })
        .build();

    return _executor.executeQueryAsSingleMap(query);
  }

  /// Update user data
  Future<Map<String, dynamic>?> updateUser({
    required String id,
    String? name,
    String? image,
  }) async {
    final now = DateTime.now().toUtc();
    final data = <String, dynamic>{
      'updatedAt': now.toIso8601String(),
    };
    if (name != null) data['name'] = name;
    if (image != null) data['image'] = image;

    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.update)
        .where({'id': id})
        .data(data)
        .build();

    return _executor.executeQueryAsSingleMap(query);
  }

  /// Create an OAuth account link
  ///
  /// Optionally accepts a [TransactionExecutor] to run within a transaction.
  Future<Map<String, dynamic>> createOAuthAccount({
    required String id,
    required String userId,
    required String provider,
    required String providerAccountId,
    String? accessToken,
    String? idToken,
    TransactionExecutor? executor,
  }) async {
    final query = JsonQueryBuilder()
        .model('accounts')
        .action(QueryAction.create)
        .data({
          'id': id,
          'userId': userId,
          'type': 'oauth',
          'provider': provider,
          'providerAccountId': providerAccountId,
          'access_token': accessToken,
          'id_token': idToken,
        })
        .build();

    final Map<String, dynamic>? result;
    if (executor != null) {
      result = await executor.executeQueryAsSingleMap(query);
    } else {
      result = await _executor.executeQueryAsSingleMap(query);
    }
    return result ?? {'id': id, 'userId': userId};
  }

  /// Create a credentials account for email/password users
  ///
  /// Note: The password is stored in the users table, not accounts table.
  /// This method creates the account record for provider tracking.
  /// Optionally accepts a [TransactionExecutor] to run within a transaction.
  Future<Map<String, dynamic>> createCredentialsAccount({
    required String id,
    required String userId,
    TransactionExecutor? executor,
  }) async {
    final query = JsonQueryBuilder()
        .model('accounts')
        .action(QueryAction.create)
        .data({
          'id': id,
          'userId': userId,
          'type': 'credentials',
          'provider': 'credentials',
          'providerAccountId': userId,
        })
        .build();

    final Map<String, dynamic>? result;
    if (executor != null) {
      result = await executor.executeQueryAsSingleMap(query);
    } else {
      result = await _executor.executeQueryAsSingleMap(query);
    }
    return result ?? {'id': id, 'userId': userId};
  }

  // ==================== Session Operations ====================

  /// Hydrate a session record with user data
  ///
  /// Shared helper used by both findSessionById and findSessionByToken
  /// to avoid redundant session queries.
  Future<Map<String, dynamic>?> _hydrateSessionWithUser(
    Map<String, dynamic> session,
  ) async {
    // Check if expired
    final expires = session['expires'];
    if (expires != null) {
      final expiresAt = expires is DateTime
          ? expires
          : DateTime.parse(expires.toString());
      if (expiresAt.isBefore(DateTime.now().toUtc())) {
        return null;
      }
    }

    // Get user data
    final userId = session['userId'] as String?;
    if (userId == null) return null;

    final user = await findUserById(userId);
    if (user == null) return null;

    // Combine session and user data
    return {
      ...session,
      'user_id': user['id'],
      'user_name': user['name'],
      'user_email': user['email'],
      'user_image': user['image'],
      'user_role': user['role'],
    };
  }

  /// Find session by ID with user data
  ///
  /// Note: This uses two queries (session + user) instead of a join.
  /// The Prisma Flutter Connector currently doesn't support the include
  /// option for relations.
  Future<Map<String, dynamic>?> findSessionById(String sessionId) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.findUnique)
        .where({'id': sessionId})
        .build();

    final session = await _executor.executeQueryAsSingleMap(query);
    if (session == null) return null;

    return _hydrateSessionWithUser(session);
  }

  /// Find session by token with user data
  ///
  /// Optimized: Queries session once, then hydrates with user data.
  Future<Map<String, dynamic>?> findSessionByToken(String sessionToken) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.findFirst)
        .where({'sessionToken': sessionToken})
        .build();

    final session = await _executor.executeQueryAsSingleMap(query);
    if (session == null) return null;

    return _hydrateSessionWithUser(session);
  }

  /// Create a new session
  Future<Map<String, dynamic>> createSession({
    required String id,
    required String sessionToken,
    required String userId,
    required DateTime expires,
  }) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.create)
        .data({
          'id': id,
          'sessionToken': sessionToken,
          'userId': userId,
          'expires': expires.toIso8601String(),
        })
        .build();

    final result = await _executor.executeQueryAsSingleMap(query);
    return result ?? {
      'id': id,
      'sessionToken': sessionToken,
      'userId': userId,
      'expires': expires.toIso8601String(),
    };
  }

  /// Delete a session by ID
  Future<void> deleteSession(String sessionId) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.delete)
        .where({'id': sessionId})
        .build();

    await _executor.executeMutation(query);
  }

  /// Delete sessions by user ID
  Future<void> deleteUserSessions(String userId) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.deleteMany)
        .where({'userId': userId})
        .build();

    await _executor.executeMutation(query);
  }

  // ==================== ConsulteeProfile Operations ====================

  /// Create a consultee profile atomically
  ///
  /// This method creates the profile and updates the user in a single
  /// transaction to ensure data consistency.
  ///
  /// If [executor] is provided, the operations run within that transaction.
  /// Otherwise, a new transaction is created for atomicity.
  Future<Map<String, dynamic>> createConsulteeProfile({
    required String id,
    required String userId,
    TransactionExecutor? executor,
  }) async {
    final now = DateTime.now().toUtc();

    Future<Map<String, dynamic>> createProfile(TransactionExecutor txn) async {
      // Create the profile
      final query = JsonQueryBuilder()
          .model('ConsulteeProfile')
          .action(QueryAction.create)
          .data({
            'id': id,
            'userId': userId,
            'createdAt': now.toIso8601String(),
            'updatedAt': now.toIso8601String(),
          })
          .build();

      final result = await txn.executeQueryAsSingleMap(query);

      // Update user with consultee profile ID
      final updateUserQuery = JsonQueryBuilder()
          .model('users')
          .action(QueryAction.update)
          .where({'id': userId})
          .data({
            'consulteeProfileId': id,
            'updatedAt': now.toIso8601String(),
          })
          .build();

      await txn.executeMutation(updateUserQuery);

      return result ?? {'id': id, 'userId': userId};
    }

    // If executor provided, use it; otherwise create own transaction
    if (executor != null) {
      return createProfile(executor);
    }
    return _executor.executeInTransaction(createProfile);
  }

  /// Execute within a transaction
  Future<T> executeInTransaction<T>(
    Future<T> Function(TransactionExecutor) callback,
  ) async {
    return _executor.executeInTransaction(callback);
  }

  /// Close the database connection
  Future<void> close() async {
    await _executor.dispose();
    _instance = null;
  }
}
