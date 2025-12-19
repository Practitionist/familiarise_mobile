import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for consultee profile database operations
class ConsulteeProfileRepository extends BaseRepository {
  /// Create a consultee profile repository with the given executor
  ConsulteeProfileRepository(super.executor);

  static const _uuid = Uuid();

  /// Find consultee profile by user ID
  Future<Map<String, dynamic>?> findByUserId(String userId) async {
    final query = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Find consultee profile by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    final query = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.findUnique)
        .where({'id': id}).build();

    return executeQueryAsSingleMap(query);
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
  Future<Map<String, dynamic>> upsert({
    required String userId,
    String? occupation,
    String? aboutMe,
    String? careerStage,
    String? currentCompany,
    String? industry,
    List<String>? skillsToDevelop,
    String? budgetPreference,
    String? preferredCommunicationMethod,
    String? preferredLanguage,
    String? linkedinUrl,
    TransactionExecutor? txn,
  }) async {
    // First check if profile exists to get its ID
    final existing = await findByUserId(userId);
    final profileId = existing?['id'] as String? ?? _uuid.v4();

    // Build optional fields map (shared between create and update)
    final optionalData = <String, dynamic>{
      if (occupation != null) 'occupation': occupation,
      if (aboutMe != null) 'aboutMe': aboutMe,
      if (careerStage != null) 'careerStage': careerStage,
      if (currentCompany != null) 'currentCompany': currentCompany,
      if (industry != null) 'industry': industry,
      if (skillsToDevelop != null) 'skillsToDevelop': skillsToDevelop,
      if (budgetPreference != null) 'budgetPreference': budgetPreference,
      if (preferredCommunicationMethod != null)
        'preferredCommunicationMethod': preferredCommunicationMethod,
      if (preferredLanguage != null) 'preferredLanguage': preferredLanguage,
      if (linkedinUrl != null) 'linkedinUrl': linkedinUrl,
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
    final query = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.deleteMany)
        .where({'userId': userId}).build();

    await executeMutation(query);
  }
}
