import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/utils/enum_utils.dart';
import 'package:backend/generated/index.dart';

/// Repository for collaborator operations
/// (WebinarCollaborator + ClassCollaborator)
class CollaboratorRepository extends BaseRepository {
  /// Create a collaborator repository with the given executor
  CollaboratorRepository(super._executor, this._prisma);
  final PrismaClient _prisma;

  /// Get all collaborations for a consultant (both webinar and class)
  Future<Map<String, dynamic>> getMyCollaborations(
    String consultantProfileId,
  ) async {
    // Webinar collaborations with nested includes.
    // TODO(mega-sync): the schema consolidated WebinarCollaborator +
    // ClassCollaborator into a single Collaborator model (collaboratorType
    // discriminator, revenueShareBps, invitedById, typed permission booleans).
    // Filtering by collaboratorType keeps this compiling; the flatten shape
    // below still needs updating to the new field names for full correctness.
    final webinarResults = await _prisma.collaborator.findMany(
      where: CollaboratorWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
        collaboratorType:
            const CollaboratorTypeFilter(equals: CollaboratorType.webinar),
        status: const CollaboratorStatusFilter(
          in_: [CollaboratorStatus.pending, CollaboratorStatus.accepted],
        ),
      ),
      include: const CollaboratorInclude(
        webinarPlan: WebinarPlanInclude(
          consultantProfile: ConsultantProfileInclude(user: UserInclude()),
        ),
        invitedBy: ConsultantProfileInclude(user: UserInclude()),
      ),
      orderBy: {'createdAt': 'desc'},
    );
    final webinarCollaborations = webinarResults
        .map((r) => _flattenWebinarCollaboration(r.toJson()))
        .toList();

    // Class collaborations with nested includes (see TODO above).
    final classResults = await _prisma.collaborator.findMany(
      where: CollaboratorWhereInput(
        consultantProfileId: StringFilter(equals: consultantProfileId),
        collaboratorType:
            const CollaboratorTypeFilter(equals: CollaboratorType.classValue),
        status: const CollaboratorStatusFilter(
          in_: [CollaboratorStatus.pending, CollaboratorStatus.accepted],
        ),
      ),
      include: const CollaboratorInclude(
        classPlan: ClassPlanInclude(
          consultantProfile: ConsultantProfileInclude(user: UserInclude()),
        ),
        invitedBy: ConsultantProfileInclude(user: UserInclude()),
      ),
      orderBy: {'createdAt': 'desc'},
    );

    final classCollaborations = classResults
        .map((r) => _flattenClassCollaboration(r.toJson()))
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
    // WebinarCollaborator + ClassCollaborator were consolidated into a single
    // Collaborator model; the id is unique across it, so planType no longer
    // selects a table.
    final now = DateTime.now().toUtc();

    // First check the record exists and is PENDING for this consultant
    final existing = await _prisma.collaborator.findFirst(
      where: CollaboratorWhereInput(
        id: StringFilter(equals: id),
        consultantProfileId: StringFilter(equals: consultantProfileId),
        status:
            const CollaboratorStatusFilter(equals: CollaboratorStatus.pending),
      ),
    );
    if (existing == null) return null;

    // Update the record
    await _prisma.collaborator.update(
      where: CollaboratorWhereUniqueInput(id: id),
      data: UpdateCollaboratorInput(
        status: enumFromWire(CollaboratorStatus.values, response,
            field: 'response'),
        respondedAt: now,
      ),
    );

    return {
      'id': id,
      'status': response,
      'respondedAt': now.toIso8601String(),
    };
  }

  /// Get collaboration counts for dashboard summary
  Future<Map<String, int>> getCollaborationCounts(
    String consultantProfileId,
  ) async {
    // Single Collaborator model now covers both webinar + class; count by
    // status directly (no per-type split needed since the summary sums them).
    final results = await Future.wait([
      _prisma.collaborator.count(
        where: CollaboratorWhereInput(
          consultantProfileId: StringFilter(equals: consultantProfileId),
          status: const CollaboratorStatusFilter(
            equals: CollaboratorStatus.pending,
          ),
        ),
      ),
      _prisma.collaborator.count(
        where: CollaboratorWhereInput(
          consultantProfileId: StringFilter(equals: consultantProfileId),
          status: const CollaboratorStatusFilter(
            equals: CollaboratorStatus.accepted,
          ),
        ),
      ),
    ]);

    return {
      'pendingCount': results[0],
      'acceptedCount': results[1],
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
    final inviterUser = invitedByProfile['user'] as Map<String, dynamic>? ?? {};

    return {
      'id': wc['id'],
      'role': wc['role'],
      'status': wc['status'],
      'revenueSharePercentage': (wc['revenueShareBps'] as int?) == null
          ? null
          : (wc['revenueShareBps'] as int) / 100,
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
    final inviterUser = invitedByProfile['user'] as Map<String, dynamic>? ?? {};

    return {
      'id': cc['id'],
      'role': cc['role'],
      'status': cc['status'],
      'revenueSharePercentage': (cc['revenueShareBps'] as int?) == null
          ? null
          : (cc['revenueShareBps'] as int) / 100,
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
