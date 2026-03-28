import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for trial session operations.
///
/// Uses PrismaClient typed delegates for reads (findManyRaw, findFirstRaw,
/// count). Mutations (create, update) remain on JsonQueryBuilder.
class TrialRepository extends BaseRepository {
  TrialRepository(super._executor, this._prisma);

  final PrismaClient _prisma;
  static const _uuid = Uuid();

  /// Request a new trial session.
  Future<Map<String, dynamic>> create({
    required String consulteeProfileId,
    required String consultantProfileId,
    required String subscriptionPlanId,
    String? notes,
  }) async {
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('TrialSession')
        .action(QueryAction.create)
        .data({
      'id': _uuid.v4(),
      'consulteeProfileId': consulteeProfileId,
      'consultantProfileId': consultantProfileId,
      'subscriptionPlanId': subscriptionPlanId,
      'notes': notes,
      'status': 'PENDING',
      'requestedAt': now,
      'createdAt': now,
      'updatedAt': now,
    }).build();
    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to create trial');
    return result;
  }

  /// Find a trial by ID.
  Future<TrialSession?> findById(String id) async {
    return _prisma.trialSession.findUnique(
      where: TrialSessionWhereUniqueInput(id: id),
    );
  }

  /// Include block for enriching trial queries with relation data.
  static const _trialIncludes = {
    'consulteeProfile': {
      'include': {'user': true},
    },
    'consultantProfile': {
      'include': {'user': true},
    },
    'subscriptionPlan': true,
  };

  /// List trials for a consultant.
  Future<List<Map<String, dynamic>>> findByConsultant(
    String consultantProfileId, {
    String? status,
  }) async {
    final where = <String, dynamic>{
      'consultantProfileId': consultantProfileId,
    };
    if (status != null) where['status'] = status;

    return _prisma.trialSession.findManyRaw(
      where: where,
      include: _trialIncludes,
      orderBy: {'createdAt': 'desc'},
    );
  }

  /// List trials for a consultee.
  Future<List<Map<String, dynamic>>> findByConsultee(
    String consulteeProfileId,
  ) async {
    return _prisma.trialSession.findManyRaw(
      where: {'consulteeProfileId': consulteeProfileId},
      include: _trialIncludes,
      orderBy: {'createdAt': 'desc'},
    );
  }

  /// Check if a trial already exists for this consultant-consultee pair.
  Future<bool> existsForPair({
    required String consulteeProfileId,
    required String consultantProfileId,
  }) async {
    final count = await _prisma.trialSession.count(
      where: TrialSessionWhereInput(
        consulteeProfileId: StringFilter(equals: consulteeProfileId),
        consultantProfileId: StringFilter(equals: consultantProfileId),
      ),
    );
    return count > 0;
  }

  /// Update trial status.
  Future<Map<String, dynamic>?> updateStatus({
    required String id,
    required String status,
  }) async {
    final query = JsonQueryBuilder()
        .model('TrialSession')
        .action(QueryAction.update)
        .where({'id': id})
        .data({
      'status': status,
      'updatedAt': nowIso8601,
    }).build();
    return executeQueryAsSingleMap(query);
  }

  /// Get trial stats for a consultant.
  Future<Map<String, int>> getStats(String consultantProfileId) async {
    final all = await findByConsultant(consultantProfileId);
    final pending =
        all.where((t) => t['status'] == 'PENDING').length;
    final completed =
        all.where((t) => t['status'] == 'COMPLETED').length;
    final converted =
        all.where((t) => t['status'] == 'CONVERTED').length;
    return {
      'total': all.length,
      'pending': pending,
      'completed': completed,
      'converted': converted,
      'conversionRate':
          completed > 0 ? ((converted / completed) * 100).round() : 0,
    };
  }
}
