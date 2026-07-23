import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

/// Read-only repository for the member-facing enterprise org context.
///
/// Mobile shows org membership, programs, and remaining entitlements only —
/// all org ADMIN surfaces (members, contracts, billing, invoices, payouts)
/// live on the web and are out of scope for the mobile MVP.
class OrganizationRepository extends BaseRepository {
  /// Create an organization repository with the given executor
  OrganizationRepository(super._executor, this._prisma);
  final PrismaClient _prisma;

  /// Active org memberships for a user, with the org summary attached.
  Future<List<Map<String, dynamic>>> getMyMemberships(String userId) async {
    final models = await _prisma.membership.findMany(
      where: MembershipWhereInput(
        userId: StringFilter(equals: userId),
        status: const MemberStatusFilter(equals: MemberStatus.active),
      ),
      include: MembershipInclude(organization: OrganizationInclude()),
    );
    final rows = models.map((m) => m.toJson()).toList();

    return rows.where((row) {
      final org = row['organization'] as Map<String, dynamic>?;
      // Hide soft-deleted and non-active orgs from members
      return org != null &&
          org['deletedAt'] == null &&
          org['status'] == 'ACTIVE';
    }).map((row) {
      final org = row['organization'] as Map<String, dynamic>;
      return {
        'id': row['id'],
        'role': row['role'],
        'status': row['status'],
        'departmentLabel': row['departmentLabel'],
        'organization': {
          'id': org['id'],
          'name': org['name'],
          'slug': org['slug'],
          'canSponsor': org['canSponsor'],
          'canHost': org['canHost'],
        },
      };
    }).toList();
  }

  /// Active program assignments (entitlements) for a user across all of
  /// their active org memberships, with remaining engagement/credit math.
  Future<List<Map<String, dynamic>>> getMyProgramAssignments(
    String userId,
  ) async {
    final membershipModels = await _prisma.membership.findMany(
      where: MembershipWhereInput(
        userId: StringFilter(equals: userId),
        status: const MemberStatusFilter(equals: MemberStatus.active),
      ),
      include: MembershipInclude(organization: OrganizationInclude()),
    );
    final memberships = membershipModels.map((m) => m.toJson()).toList();
    if (memberships.isEmpty) return [];

    final membershipById = {
      for (final m in memberships) m['id'] as String: m,
    };

    final assignmentModels = await _prisma.programAssignment.findMany(
      where: ProgramAssignmentWhereInput(
        membershipId: StringFilter(in_: membershipById.keys.toList()),
        status: const AssignmentStatusFilter(equals: AssignmentStatus.active),
      ),
      include: ProgramAssignmentInclude(
        program: ProgramInclude(
          licensedSeatConfig: LicensedSeatConfigInclude(),
          creditPoolConfig: CreditPoolConfigInclude(),
        ),
      ),
      orderBy: {'periodEnd': 'asc'},
    );
    final assignments = assignmentModels.map((a) => a.toJson()).toList();

    final results = <Map<String, dynamic>>[];
    for (final a in assignments) {
      final program = a['program'] as Map<String, dynamic>?;
      if (program == null || program['archivedAt'] != null) continue;
      if (program['status'] != 'ACTIVE') continue;

      final membership = membershipById[a['membershipId']];
      final org = membership?['organization'] as Map<String, dynamic>?;
      // Same visibility rules as getMyMemberships: hide soft-deleted and
      // non-active orgs from member-facing entitlements
      if (org == null ||
          org['deletedAt'] != null ||
          org['status'] != 'ACTIVE') {
        continue;
      }

      results.add({
        'id': a['id'],
        'periodStart': a['periodStart'],
        'periodEnd': a['periodEnd'],
        'organization': {'id': org['id'], 'name': org['name']},
        'program': {
          'id': program['id'],
          'name': program['name'],
          'type': program['type'],
          'coveredPlanTypes': program['coveredPlanTypes'],
        },
        'entitlement': _entitlementFor(a, program),
      });
    }
    return results;
  }

  /// Compute the remaining-entitlement summary for an assignment.
  Map<String, dynamic> _entitlementFor(
    Map<String, dynamic> assignment,
    Map<String, dynamic> program,
  ) {
    final engagementsUsed = _asInt(assignment['engagementsUsed']);

    if (program['type'] == 'LICENSED_SEAT') {
      final config = program['licensedSeatConfig'] as Map<String, dynamic>?;
      final covered = _asInt(config?['coveredEngagementsPerCycle']);
      return {
        'type': 'LICENSED_SEAT',
        'engagementsUsed': engagementsUsed ?? 0,
        // null = unlimited engagements per cycle
        'coveredEngagementsPerCycle': covered,
        'engagementsRemaining': covered == null
            ? null
            : (covered - (engagementsUsed ?? 0)).clamp(0, covered),
      };
    }

    final config = program['creditPoolConfig'] as Map<String, dynamic>?;
    // creditBudgetPerCycle is in credits (1 credit = ₹1 = 100 paise)
    final budgetCredits = _asInt(config?['creditBudgetPerCycle']);
    final budgetPaise = budgetCredits == null ? null : budgetCredits * 100;
    final consumedPaise = _asInt(assignment['consumedPaise']) ?? 0;
    return {
      'type': 'CREDIT_POOL',
      'creditBudgetPaise': budgetPaise,
      'consumedPaise': consumedPaise,
      'creditRemainingPaise': budgetPaise == null
          ? null
          : (budgetPaise - consumedPaise).clamp(0, budgetPaise),
    };
  }

  /// BigInt columns surface as int, BigInt, or String depending on driver
  /// and magnitude.
  static int? _asInt(Object? value) => switch (value) {
        final num n => n.toInt(),
        final BigInt b => b.toInt(),
        final String s => int.tryParse(s),
        _ => null,
      };
}
