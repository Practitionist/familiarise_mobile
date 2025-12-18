import 'package:postgres/postgres.dart' as pg;
import 'package:prisma_flutter_connector/runtime_server.dart';

import '../generated/prisma_client.dart';
import 'repositories/repositories.dart';

// Re-export generated types for convenience
export '../generated/index.dart';

/// Database client using Prisma Flutter Connector
///
/// This is the main entry point for database operations. It initializes the
/// connection and provides access to all repositories.
///
/// Uses the runtime_server.dart import which provides:
/// - PostgresAdapter for database connection
/// - QueryExecutor for query execution
/// - JsonQueryBuilder for type-safe query building
class DatabaseClient {
  DatabaseClient._(this._executor, this._connection, this._adapter) {
    // Initialize type-safe PrismaClient
    _prisma = PrismaClient(adapter: _adapter);

    // Initialize legacy repositories (for backward compatibility)
    _userRepository = UserRepository(_executor);
    _accountRepository = AccountRepository(_executor);
    _sessionRepository = SessionRepository(_executor, _userRepository);
    _consulteeProfileRepository = ConsulteeProfileRepository(_executor);
    _consultantProfileRepository = ConsultantProfileRepository(_executor);
    _domainRepository = DomainRepository(_executor, _connection);
  }

  static DatabaseClient? _instance;
  final QueryExecutor _executor;
  final pg.Connection _connection;
  final PostgresAdapter _adapter;

  // Type-safe PrismaClient (use this for new code)
  late final PrismaClient _prisma;

  // Legacy repositories (for backward compatibility)
  late final UserRepository _userRepository;
  late final AccountRepository _accountRepository;
  late final SessionRepository _sessionRepository;
  late final ConsulteeProfileRepository _consulteeProfileRepository;
  late final ConsultantProfileRepository _consultantProfileRepository;
  late final DomainRepository _domainRepository;

  /// Initialize the database client with a connection URL
  static Future<DatabaseClient> initialize(String connectionUrl) async {
    if (_instance != null) return _instance!;

    final uri = Uri.parse(connectionUrl);

    // Parse credentials from URL
    // Use indexOf to handle passwords that may contain colons
    final userInfo = uri.userInfo;
    final colonIndex = userInfo.indexOf(':');
    final username =
        colonIndex == -1 ? userInfo : userInfo.substring(0, colonIndex);
    final password =
        colonIndex == -1 ? '' : userInfo.substring(colonIndex + 1);

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

    _instance = DatabaseClient._(executor, connection, adapter);
    return _instance!;
  }

  // ==================== Repository Accessors ====================

  /// Get the type-safe PrismaClient for new code
  ///
  /// Use this for type-safe database operations with compile-time checking.
  /// Example:
  /// ```dart
  /// final profile = await db.prisma.consulteeProfile.update(
  ///   where: ConsulteeProfileWhereUniqueInput(id: profileId),
  ///   data: UpdateConsulteeProfileInput(careerStage: CareerStage.earlyCareer),
  /// );
  /// ```
  PrismaClient get prisma => _prisma;

  /// Get the query executor for direct access (advanced usage)
  QueryExecutor get executor => _executor;

  /// User operations repository
  UserRepository get users => _userRepository;

  /// Account operations repository
  AccountRepository get accounts => _accountRepository;

  /// Session operations repository
  SessionRepository get sessions => _sessionRepository;

  /// Consultee profile operations repository
  ConsulteeProfileRepository get consulteeProfiles => _consulteeProfileRepository;

  /// Consultant profile operations repository
  ConsultantProfileRepository get consultantProfiles =>
      _consultantProfileRepository;

  /// Domain operations repository
  DomainRepository get domains => _domainRepository;

  // ==================== Legacy Methods (for backward compatibility) ====================
  // These methods delegate to repositories. They will be deprecated
  // once all services are updated to use repositories directly.

  /// @deprecated Use users.findByEmail instead
  Future<Map<String, dynamic>?> findUserByEmail(String email) =>
      _userRepository.findByEmail(email);

  /// @deprecated Use users.findById instead
  Future<Map<String, dynamic>?> findUserById(String id) =>
      _userRepository.findById(id);

  /// @deprecated Use users.create instead
  Future<Map<String, dynamic>> createUser({
    required String id,
    required String email,
    String? name,
    String? image,
    String? hashedPassword,
    String role = 'CONSULTEE',
    TransactionExecutor? executor,
  }) =>
      _userRepository.create(
        id: id,
        email: email,
        name: name,
        image: image,
        hashedPassword: hashedPassword,
        role: role,
        txn: executor,
      );

  /// @deprecated Use users.delete instead
  Future<void> deleteUser(String id) => _userRepository.delete(id);

  /// @deprecated Use accounts.findByUserAndProvider instead
  Future<Map<String, dynamic>?> findAccountByUserAndProvider(
    String userId,
    String provider,
  ) =>
      _accountRepository.findByUserAndProvider(userId, provider);

  /// @deprecated Use users.update instead
  Future<Map<String, dynamic>?> updateUser({
    required String id,
    String? name,
    String? image,
  }) =>
      _userRepository.update(id: id, name: name, image: image);

  /// @deprecated Use accounts.createOAuth instead
  Future<Map<String, dynamic>> createOAuthAccount({
    required String id,
    required String userId,
    required String provider,
    required String providerAccountId,
    String? accessToken,
    String? idToken,
    TransactionExecutor? executor,
  }) =>
      _accountRepository.createOAuth(
        id: id,
        userId: userId,
        provider: provider,
        providerAccountId: providerAccountId,
        accessToken: accessToken,
        idToken: idToken,
        txn: executor,
      );

  /// @deprecated Use accounts.createCredentials instead
  Future<Map<String, dynamic>> createCredentialsAccount({
    required String id,
    required String userId,
    TransactionExecutor? executor,
  }) =>
      _accountRepository.createCredentials(
        id: id,
        userId: userId,
        txn: executor,
      );

  /// @deprecated Use sessions.findById instead
  Future<Map<String, dynamic>?> findSessionById(String sessionId) =>
      _sessionRepository.findById(sessionId);

  /// @deprecated Use sessions.findByToken instead
  Future<Map<String, dynamic>?> findSessionByToken(String sessionToken) =>
      _sessionRepository.findByToken(sessionToken);

  /// @deprecated Use sessions.create instead
  Future<Map<String, dynamic>> createSession({
    required String id,
    required String sessionToken,
    required String userId,
    required DateTime expires,
  }) =>
      _sessionRepository.create(
        id: id,
        sessionToken: sessionToken,
        userId: userId,
        expires: expires,
      );

  /// @deprecated Use sessions.delete instead
  Future<void> deleteSession(String sessionId) =>
      _sessionRepository.delete(sessionId);

  /// @deprecated Use sessions.deleteByUserId instead
  Future<void> deleteUserSessions(String userId) =>
      _sessionRepository.deleteByUserId(userId);

  /// @deprecated Use consulteeProfiles.create instead
  Future<Map<String, dynamic>> createConsulteeProfile({
    required String id,
    required String userId,
    TransactionExecutor? executor,
  }) =>
      _consulteeProfileRepository.create(
        id: id,
        userId: userId,
        txn: executor,
      );

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
