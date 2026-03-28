import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for consultee profile database operations
class ConsulteeProfileRepository extends BaseRepository {
  /// Create a consultee profile repository with the given executor
  ConsulteeProfileRepository(super._executor, this._prisma);

  final PrismaClient _prisma;
  static const _uuid = Uuid();

  /// Find consultee profile by user ID
  Future<Map<String, dynamic>?> findByUserId(String userId) async {
    return _prisma.consulteeProfile.findFirstRaw(
      where: {'userId': userId},
    );
  }

  /// Find consultee profile by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    return _prisma.consulteeProfile.findFirstRaw(
      where: {'id': id},
    );
  }

  /// Create a new consultee profile
  ///
  /// Creates a minimal profile during signup. Full profile is set during
  /// onboarding via [upsert].
  Future<Map<String, dynamic>> create({
    required String id,
    required String userId,
    TransactionExecutor? txn,
  }) async {
    final query = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.create)
        .data({
      'id': id,
      'userId': userId,
      'createdAt': nowIso8601,
      'updatedAt': nowIso8601,
    }).build();

    final result = await executeQueryAsSingleMap(query, txn: txn);
    if (result == null) {
      throw Exception('Failed to create consultee profile in database');
    }
    return result;
  }

  /// Upsert a consultee profile (create or update)
  ///
  /// Used during onboarding to set all profile fields.
  /// Uses the connector's native upsert support (ON CONFLICT DO UPDATE).
  /// Upsert a consultee profile (create or update)
  ///
  /// Used during onboarding to set all profile fields.
  /// Only writes columns that exist in the database schema:
  /// aboutMe, careerStage, skillsToDevelop, budgetPreference,
  /// preferredLanguage, goals.
  Future<Map<String, dynamic>> upsert({
    required String userId,
    String? aboutMe,
    String? careerStage,
    List<String>? skillsToDevelop,
    String? budgetPreference,
    String? preferredLanguage,
    String? goals,
    // Legacy params accepted but ignored (not in DB schema):
    String? occupation,
    String? currentCompany,
    String? industry,
    String? preferredCommunicationMethod,
    String? linkedinUrl,
    TransactionExecutor? txn,
  }) async {
    // First check if profile exists to get its ID
    final existing = await findByUserId(userId);
    final profileId = existing?['id'] as String? ?? _uuid.v4();

    // Build optional fields — ONLY columns that exist in the DB
    final optionalData = <String, dynamic>{
      if (aboutMe != null) 'aboutMe': aboutMe,
      if (careerStage != null) 'careerStage': careerStage,
      if (skillsToDevelop != null) 'skillsToDevelop': skillsToDevelop,
      if (budgetPreference != null) 'budgetPreference': budgetPreference,
      if (preferredLanguage != null) 'preferredLanguage': preferredLanguage,
      if (goals != null) 'goals': goals,
    };

    // Build create data (all fields including required ones)
    final createData = <String, dynamic>{
      'id': profileId,
      'userId': userId,
      'createdAt': nowIso8601,
      'updatedAt': nowIso8601,
      ...optionalData,
    };

    // Build update data (only fields that should change on conflict)
    final updateData = <String, dynamic>{
      'updatedAt': nowIso8601,
      ...optionalData,
    };

    // Use the connector's native upsert (ON CONFLICT DO UPDATE)
    final query = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.upsert)
        .where({'id': profileId}).data({
      'create': createData,
      'update': updateData,
    }).build();

    final result = await executeQueryAsSingleMap(query, txn: txn);
    if (result == null) {
      throw Exception('Failed to upsert consultee profile');
    }
    return result;
  }

  /// Delete a consultee profile by user ID
  Future<void> deleteByUserId(String userId) async {
    await _prisma.consulteeProfile.deleteMany(
      where: ConsulteeProfileWhereInput(
        userId: StringFilter(equals: userId),
      ),
    );
  }
}
