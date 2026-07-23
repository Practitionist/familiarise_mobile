import '../entities/organization/organization_entities.dart';

/// Repository interface for the read-only enterprise org context
abstract class OrganizationRepository {
  /// The user's active org memberships with org summaries
  Future<List<OrgMembership>> getMyMemberships();

  /// The user's active program assignments (entitlements)
  Future<List<ProgramAssignmentInfo>> getMyProgramAssignments();
}
