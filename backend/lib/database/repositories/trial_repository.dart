import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for trial session operations.
///
/// Uses JsonQueryBuilder for queries with filters (connector can't
/// serialize StringFilter objects — teetangh/prisma-flutter-connector#25).
/// Uses PrismaClient for findUnique/update (which work correctly).
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

  /// List trials for a consultant.
  Future<List<Map<String, dynamic>>> findByConsultant(
    String consultantProfileId, {
    String? status,
  }) async {
    final where = <String, dynamic>{
      'consultantProfileId': consultantProfileId,
    };
    if (status != null) where['status'] = status;

    final query = JsonQueryBuilder()
        .model('TrialSession')
        .action(QueryAction.findMany)
        .where(where)
        .build();
    return executeQueryAsMaps(query);
  }

  /// List trials for a consultee.
  Future<List<Map<String, dynamic>>> findByConsultee(
    String consulteeProfileId,
  ) async {
    final query = JsonQueryBuilder()
        .model('TrialSession')
        .action(QueryAction.findMany)
        .where({'consulteeProfileId': consulteeProfileId})
        .build();
    return executeQueryAsMaps(query);
  }

  /// Check if a trial already exists for this consultant-consultee pair.
  Future<bool> existsForPair({
    required String consulteeProfileId,
    required String consultantProfileId,
  }) async {
    final query = JsonQueryBuilder()
        .model('TrialSession')
        .action(QueryAction.count)
        .where({
      'consulteeProfileId': consulteeProfileId,
      'consultantProfileId': consultantProfileId,
    }).build();
    final count = await executeCount(query);
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
