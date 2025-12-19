import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

import 'base_repository.dart';

/// Repository for consultant profile database operations
class ConsultantProfileRepository extends BaseRepository {
  /// Create a consultant profile repository with the given executor
  ConsultantProfileRepository(QueryExecutor executor) : super(executor);

  static const _uuid = Uuid();

  /// Find consultant profile by user ID
  Future<Map<String, dynamic>?> findByUserId(String userId) async {
    final query = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findFirst)
        .where({'userId': userId}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Find consultant profile by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    final query = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findUnique)
        .where({'id': id}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Upsert a consultant profile (create or update)
  ///
  /// Used during onboarding to set all profile fields.
  /// If profile exists, updates it; otherwise creates new one.
  ///
  /// Note: subDomainIds are handled separately via relation table.
  Future<Map<String, dynamic>> upsert({
    required String userId,
    required String domainId,
    double? experience,
    String? description,
    String? headline,
    List<String>? languages,
    List<String>? toolsAndTechnologies,
    String? mentoringStyle,
    List<String>? sessionTypes,
    String? scheduleType,
    String? websiteUrl,
    String? twitterUrl,
    String? githubUrl,
    String? videoIntroUrl,
    TransactionExecutor? txn,
  }) async {
    // Check if profile exists
    final existing = await findByUserId(userId);

    final data = <String, dynamic>{
      'domainId': domainId,
      'updatedAt': nowIso8601,
    };

    // Add optional fields
    if (experience != null) data['experience'] = experience;
    if (description != null) data['description'] = description;
    if (headline != null) data['headline'] = headline;
    if (languages != null) data['languages'] = languages;
    if (toolsAndTechnologies != null) {
      data['toolsAndTechnologies'] = toolsAndTechnologies;
    }
    if (mentoringStyle != null) data['mentoringStyle'] = mentoringStyle;
    if (sessionTypes != null) data['sessionTypes'] = sessionTypes;
    if (scheduleType != null) {
      data['scheduleType'] = scheduleType;
    } else {
      data['scheduleType'] = 'WEEKLY'; // Default
    }
    if (websiteUrl != null) data['websiteUrl'] = websiteUrl;
    if (twitterUrl != null) data['twitterUrl'] = twitterUrl;
    if (githubUrl != null) data['githubUrl'] = githubUrl;
    if (videoIntroUrl != null) data['videoIntroUrl'] = videoIntroUrl;

    if (existing != null) {
      // Update existing profile
      final query = JsonQueryBuilder()
          .model('ConsultantProfile')
          .action(QueryAction.update)
          .where({'userId': userId})
          .data(data)
          .build();

      final result = await executeQueryAsSingleMap(query, txn: txn);
      if (result == null) {
        throw Exception('Failed to update consultant profile');
      }
      return result;
    } else {
      // Create new profile
      final id = _uuid.v4();
      data['id'] = id;
      data['userId'] = userId;
      data['createdAt'] = nowIso8601;
      data['isVerified'] = false;

      final query = JsonQueryBuilder()
          .model('ConsultantProfile')
          .action(QueryAction.create)
          .data(data)
          .build();

      final result = await executeQueryAsSingleMap(query, txn: txn);
      if (result == null) {
        throw Exception('Failed to create consultant profile');
      }
      return result;
    }
  }

  /// Update consultant-subdomain relations
  ///
  /// This handles the many-to-many relationship between consultants
  /// and subdomains via the _ConsultantProfileToSubDomain join table.
  Future<void> updateSubDomains({
    required String profileId,
    required List<String> subDomainIds,
    TransactionExecutor? txn,
  }) async {
    // First, delete existing relations
    final deleteQuery = JsonQueryBuilder()
        .model('_ConsultantProfileToSubDomain')
        .action(QueryAction.deleteMany)
        .where({'A': profileId}).build();

    await executeMutation(deleteQuery, txn: txn);

    // Then, create new relations
    for (final subDomainId in subDomainIds) {
      final insertQuery = JsonQueryBuilder()
          .model('_ConsultantProfileToSubDomain')
          .action(QueryAction.create)
          .data({
        'A': profileId,
        'B': subDomainId,
      }).build();

      await executeQueryAsSingleMap(insertQuery, txn: txn);
    }
  }

  /// Delete a consultant profile by user ID
  Future<void> deleteByUserId(String userId) async {
    final query = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.deleteMany)
        .where({'userId': userId}).build();

    await executeMutation(query);
  }
}
