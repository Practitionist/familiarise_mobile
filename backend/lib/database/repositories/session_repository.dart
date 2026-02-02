import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/database/repositories/user_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for session-related database operations
///
/// Uses BetterAuth-compatible column names:
///   sessionToken → token
///   expires → expiresAt
class SessionRepository extends BaseRepository {
  /// Create a session repository with the given executor and user repository
  SessionRepository(super._executor, this._userRepository);

  final UserRepository _userRepository;

  /// Find session by ID with user data
  ///
  /// Note: This uses two queries (session + user) instead of a join.
  /// The Prisma Flutter Connector currently doesn't support the include
  /// option for relations.
  Future<Map<String, dynamic>?> findById(String sessionId) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.findUnique)
        .where({'id': sessionId}).build();

    final session = await executeQueryAsSingleMap(query);
    if (session == null) return null;

    return _hydrateWithUser(session);
  }

  /// Find session by token with user data
  Future<Map<String, dynamic>?> findByToken(String token) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.findFirst)
        .where({'token': token}).build();

    final session = await executeQueryAsSingleMap(query);
    if (session == null) return null;

    return _hydrateWithUser(session);
  }

  /// List all active sessions for a user
  Future<List<Map<String, dynamic>>> findByUserId(String userId) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.findMany)
        .where({'userId': userId}).build();

    return executeQueryAsMaps(query);
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
    // Use raw SQL since Prisma JSON builder doesn't support NOT + AND easily
    await executeMutationRaw(
      r'DELETE FROM "sessions" WHERE "userId" = $1 AND "id" != $2',
      [userId, keepSessionId],
    );
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
