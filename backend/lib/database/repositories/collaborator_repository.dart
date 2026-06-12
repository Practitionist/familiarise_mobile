import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for collaborator operations.
///
/// Uses the unified `Collaborator` model (webinar/class twins were merged
/// upstream; `collaboratorType` discriminates, `webinarPlanId`/`classPlanId`
/// are XOR, and `revenueShareBps` replaced `revenueSharePercentage`).
///
/// NOTE: collaborations are a deferred (feature-flagged) feature on mobile;
/// this repository covers the read/respond surface only.
class CollaboratorRepository extends BaseRepository {
  /// Create a collaborator repository with the given executor
  CollaboratorRepository(super._executor, this._prisma);
  final PrismaClient _prisma;

  /// Get all collaborations for a consultant (both webinar and class)
  Future<Map<String, dynamic>> getMyCollaborations(
    String consultantProfileId,
  ) async {
    final results = await _prisma.collaborator.findManyRaw(
      where: {
        'consultantProfileId': consultantProfileId,
        'status': FilterOperators.in_(['PENDING', 'ACCEPTED']),
      },
      include: {
        'webinarPlan': {
          'include': {
            'consultantProfile': {
              'include': {'user': true},
            },
          },
        },
        'classPlan': {
          'include': {
            'consultantProfile': {
              'include': {'user': true},
            },
          },
        },
        'invitedBy': {
          'include': {'user': true},
        },
      },
      orderBy: {'createdAt': 'desc'},
    );

    final webinarCollaborations = results
        .where((c) => c['collaboratorType'] == 'WEBINAR')
        .map(_flattenCollaboration)
        .toList();
    final classCollaborations = results
        .where((c) => c['collaboratorType'] == 'CLASS')
        .map(_flattenCollaboration)
        .toList();

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
    final now = DateTime.now().toUtc().toIso8601String();

    // First check the record exists and is PENDING for this consultant
    final findQuery = JsonQueryBuilder()
        .model('Collaborator')
        .action(QueryAction.findFirst)
        .where({
          'id': id,
          'consultantProfileId': consultantProfileId,
          'collaboratorType': planType == 'webinar' ? 'WEBINAR' : 'CLASS',
          'status': 'PENDING',
        })
        .build();

    final existing = await executeQueryAsSingleMap(findQuery);
    if (existing == null) return null;

    // Update the record
    final updateQuery = JsonQueryBuilder()
        .model('Collaborator')
        .action(QueryAction.update)
        .where({'id': id})
        .data({
          'status': response,
          'respondedAt': now,
        })
        .build();

    await executeMutation(updateQuery);

    return {
      'id': id,
      'status': response,
      'respondedAt': now,
    };
  }

  /// Get collaboration counts for dashboard summary
  Future<Map<String, int>> getCollaborationCounts(
    String consultantProfileId,
  ) async {
    final pendingQuery = JsonQueryBuilder()
        .model('Collaborator')
        .action(QueryAction.count)
        .where({
          'consultantProfileId': consultantProfileId,
          'status': 'PENDING',
        })
        .build();

    final acceptedQuery = JsonQueryBuilder()
        .model('Collaborator')
        .action(QueryAction.count)
        .where({
          'consultantProfileId': consultantProfileId,
          'status': 'ACCEPTED',
        })
        .build();

    final results = await Future.wait([
      executeCount(pendingQuery),
      executeCount(acceptedQuery),
    ]);

    return {
      'pendingCount': results[0],
      'acceptedCount': results[1],
    };
  }

  /// Flatten a nested Collaborator include result to the flat shape expected
  /// by the frontend (planTitle, planPrice, hostName, etc.)
  Map<String, dynamic> _flattenCollaboration(Map<String, dynamic> c) {
    final isWebinar = c['collaboratorType'] == 'WEBINAR';
    final plan = (isWebinar ? c['webinarPlan'] : c['classPlan'])
            as Map<String, dynamic>? ??
        {};
    final hostProfile =
        plan['consultantProfile'] as Map<String, dynamic>? ?? {};
    final hostUser = hostProfile['user'] as Map<String, dynamic>? ?? {};
    final invitedByProfile = c['invitedBy'] as Map<String, dynamic>? ?? {};
    final inviterUser =
        invitedByProfile['user'] as Map<String, dynamic>? ?? {};

    return {
      'id': c['id'],
      'role': c['role'],
      'status': c['status'],
      // bps → percentage for the existing frontend contract (3000 → 30.0)
      'revenueSharePercentage': c['revenueShareBps'] is int
          ? (c['revenueShareBps'] as int) / 100
          : null,
      'createdAt': c['createdAt'],
      'planId': plan['id'],
      'planTitle': plan['title'],
      'planPrice': plan['price'],
      if (isWebinar) 'durationInHours': plan['durationInHours'],
      if (!isWebinar) 'sessionDurationInHours': plan['sessionDurationInHours'],
      'maxParticipants': plan['maxParticipants'],
      'hostName': hostUser['name'],
      'hostImage': hostUser['image'],
      'inviterName': inviterUser['name'],
    };
  }
}
