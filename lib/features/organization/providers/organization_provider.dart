import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/organization_repository_impl.dart';
import '../../../domain/entities/organization/organization_entities.dart';

part 'organization_provider.g.dart';

/// The user's active org memberships (empty for non-enterprise users)
@riverpod
Future<List<OrgMembership>> myMemberships(Ref ref) {
  return ref.watch(organizationRepositoryProvider).getMyMemberships();
}

/// The user's active program assignments (entitlements)
@riverpod
Future<List<ProgramAssignmentInfo>> myProgramAssignments(Ref ref) {
  return ref.watch(organizationRepositoryProvider).getMyProgramAssignments();
}
