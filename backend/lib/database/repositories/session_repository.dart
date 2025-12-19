import 'package:prisma_flutter_connector/runtime_server.dart';

import 'base_repository.dart';
import 'user_repository.dart';

/// Repository for session-related database operations
class SessionRepository extends BaseRepository {
  /// Create a session repository with the given executor and user repository
  SessionRepository(QueryExecutor executor, this._userRepository)
      : super(executor);

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
  Future<Map<String, dynamic>?> findByToken(String sessionToken) async {
    final query = JsonQueryBuilder()
        .model('sessions')
        .action(QueryAction.findFirst)
        .where({'sessionToken': sessionToken}).build();

    final session = await executeQueryAsSingleMap(query);
    if (session == null) return null;

    return _hydrateWithUser(session);
  }

  /// Create a new session
  Future<Map<String, dynamic>> create({
    required String id,
    required String sessionToken,
    required String userId,
    required DateTime expires,
  }) async {
    final query =
        JsonQueryBuilder().model('sessions').action(QueryAction.create).data({
      'id': id,
      'sessionToken': sessionToken,
      'userId': userId,
      'expires': expires.toIso8601String(),
    }).build();

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

  /// Hydrate a session record with user data
  Future<Map<String, dynamic>?> _hydrateWithUser(
    Map<String, dynamic> session,
  ) async {
    // Check if expired
    final expires = session['expires'];
    if (expires != null) {
      final expiresAt =
          expires is DateTime ? expires : DateTime.parse(expires.toString());
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
    };
  }
}
