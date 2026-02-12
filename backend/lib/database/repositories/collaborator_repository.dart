import 'base_repository.dart';

/// Repository for collaborator operations (WebinarCollaborator + ClassCollaborator)
class CollaboratorRepository extends BaseRepository {
  CollaboratorRepository(super.executor);

  /// Get all collaborations for a consultant (both webinar and class)
  Future<Map<String, dynamic>> getMyCollaborations(
    String consultantProfileId,
  ) async {
    final webinarCollaborations = await executeRaw(
      '''
      SELECT wc.id, wc.role, wc.status, wc."revenueSharePercentage", wc."createdAt",
             wp.id as "planId", wp.title as "planTitle", wp.price as "planPrice",
             wp."durationInHours", wp."maxParticipants",
             u.name as "hostName", u.image as "hostImage",
             iu.name as "inviterName"
      FROM "WebinarCollaborator" wc
      JOIN "WebinarPlan" wp ON wc."webinarPlanId" = wp.id
      JOIN "ConsultantProfile" cp ON wp."consultantProfileId" = cp.id
      JOIN "users" u ON cp."userId" = u.id
      JOIN "ConsultantProfile" icp ON wc."invitedById" = icp.id
      JOIN "users" iu ON icp."userId" = iu.id
      WHERE wc."consultantProfileId" = \$1 AND wc.status IN ('PENDING', 'ACCEPTED')
      ORDER BY wc."createdAt" DESC
      ''',
      [consultantProfileId],
    );

    final classCollaborations = await executeRaw(
      '''
      SELECT cc.id, cc.role, cc.status, cc."revenueSharePercentage", cc."createdAt",
             clp.id as "planId", clp.title as "planTitle", clp.price as "planPrice",
             clp."sessionDurationInHours", clp."maxParticipants",
             u.name as "hostName", u.image as "hostImage",
             iu.name as "inviterName"
      FROM "ClassCollaborator" cc
      JOIN "ClassPlan" clp ON cc."classPlanId" = clp.id
      JOIN "ConsultantProfile" cp ON clp."consultantProfileId" = cp.id
      JOIN "users" u ON cp."userId" = u.id
      JOIN "ConsultantProfile" icp ON cc."invitedById" = icp.id
      JOIN "users" iu ON icp."userId" = iu.id
      WHERE cc."consultantProfileId" = \$1 AND cc.status IN ('PENDING', 'ACCEPTED')
      ORDER BY cc."createdAt" DESC
      ''',
      [consultantProfileId],
    );

    final counts = await getCollaborationCounts(consultantProfileId);

    return {
      'webinarCollaborations': webinarCollaborations,
      'classCollaborations': classCollaborations,
      'counts': counts,
    };
  }

  /// Respond to a collaboration invitation (accept/decline)
  Future<Map<String, dynamic>?> respondToCollaboration({
    required String id,
    required String consultantProfileId,
    required String response,
    required String planType,
  }) async {
    final table = planType == 'webinar'
        ? 'WebinarCollaborator'
        : 'ClassCollaborator';

    final results = await executeRaw(
      '''
      UPDATE "$table"
      SET status = \$1, "respondedAt" = NOW()
      WHERE id = \$2 AND "consultantProfileId" = \$3 AND status = 'PENDING'
      RETURNING id, status, "respondedAt"
      ''',
      [response, id, consultantProfileId],
    );

    return results.isNotEmpty ? results.first : null;
  }

  /// Get collaboration counts for dashboard summary
  Future<Map<String, int>> getCollaborationCounts(
    String consultantProfileId,
  ) async {
    final results = await executeRaw(
      '''
      SELECT
        COALESCE(SUM(CASE WHEN status = 'PENDING' THEN 1 ELSE 0 END), 0) as "pendingCount",
        COALESCE(SUM(CASE WHEN status = 'ACCEPTED' THEN 1 ELSE 0 END), 0) as "acceptedCount"
      FROM (
        SELECT status FROM "WebinarCollaborator"
        WHERE "consultantProfileId" = \$1 AND status IN ('PENDING', 'ACCEPTED')
        UNION ALL
        SELECT status FROM "ClassCollaborator"
        WHERE "consultantProfileId" = \$1 AND status IN ('PENDING', 'ACCEPTED')
      ) combined
      ''',
      [consultantProfileId],
    );

    if (results.isEmpty) {
      return {'pendingCount': 0, 'acceptedCount': 0};
    }

    final row = results.first;
    return {
      'pendingCount': (row['pendingCount'] as num?)?.toInt() ?? 0,
      'acceptedCount': (row['acceptedCount'] as num?)?.toInt() ?? 0,
    };
  }
}
