import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

import 'base_repository.dart';

/// Repository for consultee profile database operations
class ConsulteeProfileRepository extends BaseRepository {
  /// Create a consultee profile repository with the given executor
  ConsulteeProfileRepository(QueryExecutor executor) : super(executor);

  static const _uuid = Uuid();

  /// Find consultee profile by user ID
  Future<Map<String, dynamic>?> findByUserId(String userId) async {
    final query = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId})
        .build();

    return executeQueryAsSingleMap(query);
  }

  /// Find consultee profile by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    final query = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.findUnique)
        .where({'id': id})
        .build();

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
        })
        .build();

    final result = await executeQueryAsSingleMap(query, txn: txn);
    if (result == null) {
      throw Exception('Failed to create consultee profile in database');
    }
    return result;
  }

  /// Upsert a consultee profile (create or update)
  ///
  /// Used during onboarding to set all profile fields.
  /// If profile exists, updates it; otherwise creates new one.
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
    // Check if profile exists
    final existing = await findByUserId(userId);

    final data = <String, dynamic>{
      'updatedAt': nowIso8601,
    };

    // Add optional fields
    if (occupation != null) data['occupation'] = occupation;
    if (aboutMe != null) data['aboutMe'] = aboutMe;
    if (careerStage != null) data['careerStage'] = careerStage;
    if (currentCompany != null) data['currentCompany'] = currentCompany;
    if (industry != null) data['industry'] = industry;
    if (skillsToDevelop != null) data['skillsToDevelop'] = skillsToDevelop;
    if (budgetPreference != null) data['budgetPreference'] = budgetPreference;
    if (preferredCommunicationMethod != null) {
      data['preferredCommunicationMethod'] = preferredCommunicationMethod;
    }
    if (preferredLanguage != null) {
      data['preferredLanguage'] = preferredLanguage;
    }
    if (linkedinUrl != null) data['linkedinUrl'] = linkedinUrl;

    if (existing != null) {
      // Update existing profile
      final query = JsonQueryBuilder()
          .model('ConsulteeProfile')
          .action(QueryAction.update)
          .where({'userId': userId})
          .data(data)
          .build();

      final result = await executeQueryAsSingleMap(query, txn: txn);
      if (result == null) {
        throw Exception('Failed to update consultee profile');
      }
      return result;
    } else {
      // Create new profile
      final id = _uuid.v4();
      data['id'] = id;
      data['userId'] = userId;
      data['createdAt'] = nowIso8601;

      final query = JsonQueryBuilder()
          .model('ConsulteeProfile')
          .action(QueryAction.create)
          .data(data)
          .build();

      final result = await executeQueryAsSingleMap(query, txn: txn);
      if (result == null) {
        throw Exception('Failed to create consultee profile');
      }
      return result;
    }
  }

  /// Delete a consultee profile by user ID
  Future<void> deleteByUserId(String userId) async {
    final query = JsonQueryBuilder()
        .model('ConsulteeProfile')
        .action(QueryAction.deleteMany)
        .where({'userId': userId})
        .build();

    await executeMutation(query);
  }
}
