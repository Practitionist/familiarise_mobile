import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for consultant profile database operations
class ConsultantProfileRepository extends BaseRepository {
  /// Create a consultant profile repository with the given executor
  ConsultantProfileRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Find consultant profile by user ID
  Future<Map<String, dynamic>?> findByUserId(String userId) async {
    final result = await _prisma.consultantProfile.findFirst(
      where: ConsultantProfileWhereInput(userId: StringFilter(equals: userId)),
    );
    return result?.toJson();
  }

  /// Find consultant profile by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    final result = await _prisma.consultantProfile.findFirst(
      where: ConsultantProfileWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
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
    // Map wire strings to generated enums for the typed inputs.
    final scheduleTypeEnum = ScheduleType.values
        .firstWhere((e) => e.toJson() == (scheduleType ?? 'WEEKLY'));
    final sessionTypeEnums = sessionTypes
        ?.map(
          (s) => SessionType.values.firstWhere((e) => e.toJson() == s),
        )
        .toList();

    // Use the connector's native upsert (ON CONFLICT DO UPDATE) keyed on the
    // unique userId column; id/timestamps are autofilled on create and
    // updatedAt auto-refreshes on update.
    final delegate = txn == null
        ? _prisma.consultantProfile
        : ConsultantProfileDelegate(txn);
    final result = await delegate.upsert(
      where: ConsultantProfileWhereUniqueInput(userId: userId),
      create: CreateConsultantProfileInput(
        userId: userId,
        domainId: domainId,
        scheduleType: scheduleTypeEnum,
        experience: experience,
        description: description,
        headline: headline,
        languages: languages,
        toolsAndTechnologies: toolsAndTechnologies,
        mentoringStyle: mentoringStyle,
        sessionTypes: sessionTypeEnums,
        websiteUrl: websiteUrl,
        twitterUrl: twitterUrl,
        githubUrl: githubUrl,
        videoIntroUrl: videoIntroUrl,
      ),
      update: UpdateConsultantProfileInput(
        domainId: domainId,
        scheduleType: scheduleTypeEnum,
        experience: experience,
        description: description,
        headline: headline,
        languages: languages,
        toolsAndTechnologies: toolsAndTechnologies,
        mentoringStyle: mentoringStyle,
        sessionTypes: sessionTypeEnums,
        websiteUrl: websiteUrl,
        twitterUrl: twitterUrl,
        githubUrl: githubUrl,
        videoIntroUrl: videoIntroUrl,
      ),
    );
    return result.toJson();
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
    // EXEMPT(jqb-gate): implicit M2M join table (_ConsultantProfileToSubDomain)
    // has no typed delegate, and the relation write input lacks a `set` op to
    // express clear-then-insert. Needs 0.9.0 nested-set support.
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
      }).build();

      await executeMutation(insertQuery, txn: txn);
    }
  }

  /// Delete a consultant profile by user ID
  Future<void> deleteByUserId(String userId) async {
    await _prisma.consultantProfile.deleteMany(
      where: ConsultantProfileWhereInput(
        userId: StringFilter(equals: userId),
      ),
    );
  }
}
