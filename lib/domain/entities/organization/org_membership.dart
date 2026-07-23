import 'package:freezed_annotation/freezed_annotation.dart';

part 'org_membership.freezed.dart';
part 'org_membership.g.dart';

/// Summary of an organization the user belongs to
@freezed
class OrgSummary with _$OrgSummary {
  const factory OrgSummary({
    required String id,
    required String name,
    String? slug,
    @Default(false) bool canSponsor,
    @Default(false) bool canHost,
  }) = _OrgSummary;

  factory OrgSummary.fromJson(Map<String, dynamic> json) =>
      _$OrgSummaryFromJson(json);
}

/// The user's membership in an organization
@freezed
class OrgMembership with _$OrgMembership {
  const factory OrgMembership({
    required String id,
    required String role,
    required String status,
    String? departmentLabel,
    required OrgSummary organization,
  }) = _OrgMembership;

  factory OrgMembership.fromJson(Map<String, dynamic> json) =>
      _$OrgMembershipFromJson(json);
}

/// Program summary attached to an assignment
@freezed
class ProgramSummary with _$ProgramSummary {
  const factory ProgramSummary({
    required String id,
    required String name,
    required String type,
    @Default(<String>[]) List<String> coveredPlanTypes,
  }) = _ProgramSummary;

  factory ProgramSummary.fromJson(Map<String, dynamic> json) =>
      _$ProgramSummaryFromJson(json);
}

/// Remaining entitlement for a program assignment.
///
/// LICENSED_SEAT meters by engagement count (null covered = unlimited);
/// CREDIT_POOL meters by paise spent against a per-cycle credit budget.
@freezed
class ProgramEntitlement with _$ProgramEntitlement {
  const factory ProgramEntitlement({
    required String type,
    int? engagementsUsed,
    int? coveredEngagementsPerCycle,
    int? engagementsRemaining,
    int? creditBudgetPaise,
    int? consumedPaise,
    int? creditRemainingPaise,
  }) = _ProgramEntitlement;

  factory ProgramEntitlement.fromJson(Map<String, dynamic> json) =>
      _$ProgramEntitlementFromJson(json);
}

/// An active program assignment (entitlement) for the user
@freezed
class ProgramAssignmentInfo with _$ProgramAssignmentInfo {
  const factory ProgramAssignmentInfo({
    required String id,
    DateTime? periodStart,
    DateTime? periodEnd,
    required OrgSummary organization,
    required ProgramSummary program,
    required ProgramEntitlement entitlement,
  }) = _ProgramAssignmentInfo;

  factory ProgramAssignmentInfo.fromJson(Map<String, dynamic> json) =>
      _$ProgramAssignmentInfoFromJson(json);
}
