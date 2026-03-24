import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

/// Repository for trial session operations using PrismaClient typed delegates.
class TrialRepository extends BaseRepository {
  TrialRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Request a new trial session.
  Future<TrialSession> create({
    required String consulteeProfileId,
    required String consultantProfileId,
    required String subscriptionPlanId,
    String? notes,
  }) async {
    return _prisma.trialSession.create(
      data: CreateTrialSessionInput(
        consulteeProfileId: consulteeProfileId,
        consultantProfileId: consultantProfileId,
        subscriptionPlanId: subscriptionPlanId,
        notes: notes,
      ),
    );
  }

  /// Find a trial by ID.
  Future<TrialSession?> findById(String id) async {
    return _prisma.trialSession.findUnique(
      where: TrialSessionWhereUniqueInput(id: id),
    );
  }

  /// List trials for a consultant.
  Future<List<TrialSession>> findByConsultant(
    String consultantProfileId, {
    TrialSessionStatus? status,
  }) async {
    return _prisma.trialSession.findMany(
      where: TrialSessionWhereInput(
        consultantProfileId:
            StringFilter(equals: consultantProfileId),
        status: status != null
            ? TrialSessionStatusFilter(equals: status)
            : null,
      ),
      orderBy: const TrialSessionOrderByInput(
        createdAt: SortOrder.desc,
      ),
    );
  }

  /// List trials for a consultee.
  Future<List<TrialSession>> findByConsultee(
    String consulteeProfileId,
  ) async {
    return _prisma.trialSession.findMany(
      where: TrialSessionWhereInput(
        consulteeProfileId: StringFilter(equals: consulteeProfileId),
      ),
      orderBy: const TrialSessionOrderByInput(
        createdAt: SortOrder.desc,
      ),
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
        consultantProfileId:
            StringFilter(equals: consultantProfileId),
      ),
    );
    return count > 0;
  }

  /// Update trial status.
  Future<TrialSession> updateStatus({
    required String id,
    required TrialSessionStatus status,
  }) async {
    return _prisma.trialSession.update(
      where: TrialSessionWhereUniqueInput(id: id),
      data: UpdateTrialSessionInput(status: status),
    );
  }

  /// Get trial stats for a consultant.
  Future<Map<String, int>> getStats(String consultantProfileId) async {
    final all = await findByConsultant(consultantProfileId);
    final pending = all
        .where((t) => t.status == TrialSessionStatus.pending)
        .length;
    final completed = all
        .where((t) => t.status == TrialSessionStatus.completed)
        .length;
    final converted = all
        .where((t) => t.status == TrialSessionStatus.converted)
        .length;
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
