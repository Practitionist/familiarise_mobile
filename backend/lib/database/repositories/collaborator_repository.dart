import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for collaborator operations
/// (WebinarCollaborator + ClassCollaborator)
class CollaboratorRepository extends BaseRepository {
  /// Create a collaborator repository with the given executor
  CollaboratorRepository(super._executor);

  /// Get all collaborations for a consultant (both webinar and class)
  Future<Map<String, dynamic>> getMyCollaborations(
    String consultantProfileId,
  ) async {
    // Webinar collaborations with nested includes
    final webinarQuery = JsonQueryBuilder()
        .model('WebinarCollaborator')
        .action(QueryAction.findMany)
        .where({
          'consultantProfileId': consultantProfileId,
          'status': FilterOperators.in_(['PENDING', 'ACCEPTED']),
        })
        .include({
          'webinarPlan': {
            'include': {
              'consultantProfile': {
                'include': {'user': true},
              },
            },
          },
          'invitedBy': {
            'include': {'user': true},
          },
        })
        .orderBy({'createdAt': 'desc'})
        .build();

    final webinarResults = await executeQueryAsMaps(webinarQuery);
    final webinarCollaborations =
        webinarResults.map(_flattenWebinarCollaboration).toList();

    // Class collaborations with nested includes
    final classQuery = JsonQueryBuilder()
        .model('ClassCollaborator')
        .action(QueryAction.findMany)
        .where({
          'consultantProfileId': consultantProfileId,
          'status': FilterOperators.in_(['PENDING', 'ACCEPTED']),
        })
        .include({
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
        })
        .orderBy({'createdAt': 'desc'})
        .build();

    final classResults = await executeQueryAsMaps(classQuery);
    final classCollaborations =
        classResults.map(_flattenClassCollaboration).toList();

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
    final model =
        planType == 'webinar' ? 'WebinarCollaborator' : 'ClassCollaborator';
    final now = DateTime.now().toUtc().toIso8601String();

    // First check the record exists and is PENDING for this consultant
    final findQuery = JsonQueryBuilder()
        .model(model)
        .action(QueryAction.findFirst)
        .where({
          'id': id,
          'consultantProfileId': consultantProfileId,
          'status': 'PENDING',
        })
        .build();

    final existing = await executeQueryAsSingleMap(findQuery);
    if (existing == null) return null;

    // Update the record
    final updateQuery = JsonQueryBuilder()
        .model(model)
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
    // Count webinar collaborations by status
    final webinarPendingQuery = JsonQueryBuilder()
        .model('WebinarCollaborator')
        .action(QueryAction.count)
        .where({
          'consultantProfileId': consultantProfileId,
          'status': 'PENDING',
        })
        .build();

    final webinarAcceptedQuery = JsonQueryBuilder()
        .model('WebinarCollaborator')
        .action(QueryAction.count)
        .where({
          'consultantProfileId': consultantProfileId,
          'status': 'ACCEPTED',
        })
        .build();

    // Count class collaborations by status
    final classPendingQuery = JsonQueryBuilder()
        .model('ClassCollaborator')
        .action(QueryAction.count)
        .where({
          'consultantProfileId': consultantProfileId,
          'status': 'PENDING',
        })
        .build();

    final classAcceptedQuery = JsonQueryBuilder()
        .model('ClassCollaborator')
        .action(QueryAction.count)
        .where({
          'consultantProfileId': consultantProfileId,
          'status': 'ACCEPTED',
        })
        .build();

    final results = await Future.wait([
      executeCount(webinarPendingQuery),
      executeCount(webinarAcceptedQuery),
      executeCount(classPendingQuery),
      executeCount(classAcceptedQuery),
    ]);

    return {
      'pendingCount': results[0] + results[2],
      'acceptedCount': results[1] + results[3],
    };
  }

  /// Flatten a nested WebinarCollaborator include result to the flat shape
  /// expected by the frontend (planTitle, planPrice, hostName, etc.)
  Map<String, dynamic> _flattenWebinarCollaboration(Map<String, dynamic> wc) {
    final plan = wc['webinarPlan'] as Map<String, dynamic>? ?? {};
    final hostProfile =
        plan['consultantProfile'] as Map<String, dynamic>? ?? {};
    final hostUser = hostProfile['user'] as Map<String, dynamic>? ?? {};
    final invitedByProfile = wc['invitedBy'] as Map<String, dynamic>? ?? {};
    final inviterUser =
        invitedByProfile['user'] as Map<String, dynamic>? ?? {};

    return {
      'id': wc['id'],
      'role': wc['role'],
      'status': wc['status'],
      'revenueSharePercentage': wc['revenueSharePercentage'],
      'createdAt': wc['createdAt'],
      'planId': plan['id'],
      'planTitle': plan['title'],
      'planPrice': plan['price'],
      'durationInHours': plan['durationInHours'],
      'maxParticipants': plan['maxParticipants'],
      'hostName': hostUser['name'],
      'hostImage': hostUser['image'],
      'inviterName': inviterUser['name'],
    };
  }

  /// Flatten a nested ClassCollaborator include result to the flat shape
  /// expected by the frontend (planTitle, planPrice, hostName, etc.)
  Map<String, dynamic> _flattenClassCollaboration(Map<String, dynamic> cc) {
    final plan = cc['classPlan'] as Map<String, dynamic>? ?? {};
    final hostProfile =
        plan['consultantProfile'] as Map<String, dynamic>? ?? {};
    final hostUser = hostProfile['user'] as Map<String, dynamic>? ?? {};
    final invitedByProfile = cc['invitedBy'] as Map<String, dynamic>? ?? {};
    final inviterUser =
        invitedByProfile['user'] as Map<String, dynamic>? ?? {};

    return {
      'id': cc['id'],
      'role': cc['role'],
      'status': cc['status'],
      'revenueSharePercentage': cc['revenueSharePercentage'],
      'createdAt': cc['createdAt'],
      'planId': plan['id'],
      'planTitle': plan['title'],
      'planPrice': plan['price'],
      'sessionDurationInHours': plan['sessionDurationInHours'],
      'maxParticipants': plan['maxParticipants'],
      'hostName': hostUser['name'],
      'hostImage': hostUser['image'],
      'inviterName': inviterUser['name'],
    };
  }
}
