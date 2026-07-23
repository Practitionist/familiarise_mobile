import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/database/repositories/user_repository.dart';
import 'package:backend/generated/index.dart';

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
    final session = await _prisma.session.findFirst(
      where: SessionWhereInput(id: StringFilter(equals: sessionId)),
    );
    if (session == null) return null;

    return _hydrateWithUser(session.toJson());
  }

  /// Find session by token with user data
  Future<Map<String, dynamic>?> findByToken(String token) async {
    final session = await _prisma.session.findFirst(
      where: SessionWhereInput(token: StringFilter(equals: token)),
    );
    if (session == null) return null;

    return _hydrateWithUser(session.toJson());
  }

  /// List all active sessions for a user
  Future<List<Map<String, dynamic>>> findByUserId(String userId) async {
    final sessions = await _prisma.session.findMany(
      where: SessionWhereInput(userId: StringFilter(equals: userId)),
    );
    return sessions.map((s) => s.toJson()).toList();
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
    // id/createdAt/updatedAt are autofilled by the schema defaults; callers
    // should use the returned row's id (CreateSessionInput has no id param).
    final result = await _prisma.session.create(
      data: CreateSessionInput(
        token: token,
        userId: userId,
        expiresAt: expiresAt,
        ipAddress: ipAddress,
        userAgent: userAgent,
      ),
    );
    return result.toJson();
  }

  /// Delete a session by ID
  Future<void> delete(String sessionId) async {
    // deleteMany keeps the old silent-if-missing semantics (typed delete
    // throws when the row is already gone).
    await _prisma.session.deleteMany(
      where: SessionWhereInput(id: StringFilter(equals: sessionId)),
    );
  }

  /// Delete all sessions for a user
  Future<void> deleteByUserId(String userId) async {
    await _prisma.session.deleteMany(
      where: SessionWhereInput(userId: StringFilter(equals: userId)),
    );
  }

  /// Delete all sessions for a user except a specific session
  Future<void> deleteOtherSessions({
    required String userId,
    required String keepSessionId,
  }) async {
    await _prisma.session.deleteMany(
      where: SessionWhereInput(
        userId: StringFilter(equals: userId),
        id: StringFilter(not: keepSessionId),
      ),
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
