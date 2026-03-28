import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/database/repositories/user_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for session-related database operations
///
/// Uses BetterAuth-compatible column names:
///   sessionToken → token
///   expires → expiresAt
class SessionRepository extends BaseRepository {
  /// Create a session repository with the given executor and user repository
  SessionRepository(super._executor, this._userRepository, this._prisma);

  final UserRepository _userRepository;
  final PrismaClient _prisma;

  /// Find session by ID with user data
  ///
  /// Note: This uses two queries (session + user) instead of a join.
  /// The Prisma Flutter Connector currently doesn't support the include
  /// option for relations.
  Future<Map<String, dynamic>?> findById(String sessionId) async {
    final session = await _prisma.session.findFirstRaw(
      where: {'id': sessionId},
    );
    if (session == null) return null;

    return _hydrateWithUser(session);
  }

  /// Find session by token with user data
  Future<Map<String, dynamic>?> findByToken(String token) async {
    final session = await _prisma.session.findFirstRaw(
      where: {'token': token},
    );
    if (session == null) return null;

    return _hydrateWithUser(session);
  }

  /// List all active sessions for a user
  Future<List<Map<String, dynamic>>> findByUserId(String userId) async {
    return _prisma.session.findManyRaw(
      where: {'userId': userId},
    );
  }

  /// Create a new session
  Future<Map<String, dynamic>> create({
    required String id,
    required String token,
    required String userId,
    required DateTime expiresAt,
    String? ipAddress,
    String? userAgent,
  }) async {
    final data = <String, dynamic>{
      'id': id,
      'token': token,
      'userId': userId,
      'expiresAt': expiresAt.toIso8601String(),
      'createdAt': nowIso8601,
      'updatedAt': nowIso8601,
    };
    if (ipAddress != null) data['ipAddress'] = ipAddress;
    if (userAgent != null) data['userAgent'] = userAgent;

    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.create)
        .data(data)
        .build();

    final result = await executeQueryAsSingleMap(query);
    if (result == null) {
      throw Exception('Failed to create session in database');
    }
    return result;
  }

  /// Delete a session by ID
  Future<void> delete(String sessionId) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.delete)
        .where({'id': sessionId}).build();

    await executeMutation(query);
  }

  /// Delete all sessions for a user
  Future<void> deleteByUserId(String userId) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.deleteMany)
        .where({'userId': userId}).build();

    await executeMutation(query);
  }

  /// Delete all sessions for a user except a specific session
  Future<void> deleteOtherSessions({
    required String userId,
    required String keepSessionId,
  }) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.deleteMany)
        .where({
      'userId': userId,
      'id': FilterOperators.not(keepSessionId),
    }).build();

    await executeMutation(query);
  }

  /// Hydrate a session record with user data
  Future<Map<String, dynamic>?> _hydrateWithUser(
    Map<String, dynamic> session,
  ) async {
    // Check if expired
    final expiresAtValue = session['expiresAt'];
    if (expiresAtValue != null) {
      final expiresAt = expiresAtValue is DateTime
          ? expiresAtValue
          : DateTime.parse(expiresAtValue.toString());
      if (expiresAt.isBefore(DateTime.now().toUtc())) {
        return null;
      }
    }

    // Get user data
    final userId = session['userId'] as String?;
    if (userId == null) return null;

    final user = await _userRepository.findById(userId);
    if (user == null) return null;

    // Combine session and user data
    return {
      ...session,
      'user_id': user['id'],
      'user_name': user['name'],
      'user_email': user['email'],
      'user_image': user['image'],
      'user_role': user['role'],
      'user_onboardingCompleted': user['onboardingCompleted'] ?? false,
    };
  }
}
