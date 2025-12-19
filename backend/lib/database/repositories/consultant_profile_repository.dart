import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for consultant profile database operations
class ConsultantProfileRepository extends BaseRepository {
  /// Create a consultant profile repository with the given executor
  ConsultantProfileRepository(super._executor);

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
  /// Uses the connector's native upsert support (ON CONFLICT DO UPDATE).
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
    // Check if profile exists to get its ID
    final existing = await findByUserId(userId);
    final profileId = existing?['id'] as String? ?? _uuid.v4();

    // Build update data with optional fields using collection-if
    final updateData = <String, dynamic>{
      'domainId': domainId,
      'updatedAt': nowIso8601,
      if (experience != null) 'experience': experience,
      if (description != null) 'description': description,
      if (headline != null) 'headline': headline,
      if (languages != null) 'languages': languages,
      if (toolsAndTechnologies != null)
        'toolsAndTechnologies': toolsAndTechnologies,
      if (mentoringStyle != null) 'mentoringStyle': mentoringStyle,
      if (sessionTypes != null) 'sessionTypes': sessionTypes,
      'scheduleType': scheduleType ?? 'WEEKLY',
      if (websiteUrl != null) 'websiteUrl': websiteUrl,
      if (twitterUrl != null) 'twitterUrl': twitterUrl,
      if (githubUrl != null) 'githubUrl': githubUrl,
      if (videoIntroUrl != null) 'videoIntroUrl': videoIntroUrl,
    };

    // Build create data (includes all update fields plus required create
    // fields)
    final createData = <String, dynamic>{
      'id': profileId,
      'userId': userId,
      'createdAt': nowIso8601,
      'isVerified': false,
      ...updateData,
    };

    // Use the connector's native upsert (ON CONFLICT DO UPDATE)
    final query = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.upsert)
        .where({'id': profileId}).data({
      'create': createData,
      'update': updateData,
    }).build();

    final result = await executeQueryAsSingleMap(query, txn: txn);
    if (result == null) {
      throw Exception('Failed to upsert consultant profile');
    }
    return result;
  }

  /// Update consultant-subdomain relations
  ///
  /// This handles the many-to-many relationship between consultants and
  /// subdomains via the _ConsultantProfileToSubDomain join table.
  ///
  /// Uses batch insert (createMany) for efficiency - single INSERT with
  /// multiple VALUES instead of N individual INSERT queries.
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

    // Batch insert new relations using createMany
    if (subDomainIds.isNotEmpty) {
      final insertQuery = JsonQueryBuilder()
          .model('_ConsultantProfileToSubDomain')
          .action(QueryAction.createMany)
          .data({
            'data': subDomainIds
                .map(
                  (subDomainId) => {
                    'A': profileId,
                    'B': subDomainId,
                  },
                )
                .toList(),
          })
          .build();

      await executeMutation(insertQuery, txn: txn);
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
