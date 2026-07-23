import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

/// Repository for trial session operations.
///
/// Uses PrismaClient typed delegates (raw reads pending a later tranche).
class TrialRepository extends BaseRepository {
  TrialRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Request a new trial session.
  Future<Map<String, dynamic>> create({
    required String consulteeProfileId,
    required String consultantProfileId,
    required String subscriptionPlanId,
    String? notes,
  }) async {
    // id/requestedAt/timestamps autofilled; status defaults to PENDING on
    // the typed create input.
    final result = await _prisma.trialSession.create(
      data: CreateTrialSessionInput(
        consulteeProfileId: consulteeProfileId,
        consultantProfileId: consultantProfileId,
        subscriptionPlanId: subscriptionPlanId,
        notes: notes,
      ),
    );
    return result.toJson();
  }

  /// Find a trial by ID.
  Future<TrialSession?> findById(String id) async {
    return _prisma.trialSession.findUnique(
      where: TrialSessionWhereUniqueInput(id: id),
    );
  }

  /// Include block for enriching trial queries with relation data.
  static const _trialIncludes = TrialSessionInclude(
    consulteeProfile: ConsulteeProfileInclude(user: UserInclude()),
    consultantProfile: ConsultantProfileInclude(user: UserInclude()),
    subscriptionPlan: SubscriptionPlanInclude(),
  );

  /// List trials for a consultant.
  Future<List<Map<String, dynamic>>> findByConsultant(
    String consultantProfileId, {
    String? status,
  }) async {
    final results = await _prisma.trialSession.findMany(
      where: TrialSessionWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
        status: status == null
            ? null
            : TrialSessionStatusFilter(
                equals: TrialSessionStatus.values
                    .firstWhere((e) => e.toJson() == status),
              ),
      ),
      include: _trialIncludes,
      orderBy: {'createdAt': 'desc'},
    );
    return results.map((r) => r.toJson()).toList();
  }

  /// List trials for a consultee.
  Future<List<Map<String, dynamic>>> findByConsultee(
    String consulteeProfileId,
  ) async {
    final results = await _prisma.trialSession.findMany(
      where: TrialSessionWhereInput(
        consulteeProfileId: StringFilter(equals: consulteeProfileId),
      ),
      include: _trialIncludes,
      orderBy: {'createdAt': 'desc'},
    );
    return results.map((r) => r.toJson()).toList();
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
    final result = await _prisma.trialSession.update(
      where: TrialSessionWhereUniqueInput(id: id),
      data: UpdateTrialSessionInput(
        status: TrialSessionStatus.values
            .firstWhere((e) => e.toJson() == status),
      ),
    );
    return result.toJson();
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
