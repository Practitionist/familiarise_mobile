import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/organization/organization_entities.dart';
import '../../domain/repositories/organization_repository.dart';
import '../datasources/remote/organization_remote_source.dart';

part 'organization_repository_impl.g.dart';

/// Provider for OrganizationRepository
@riverpod
OrganizationRepository organizationRepository(Ref ref) {
  return OrganizationRepositoryImpl(
    remoteSource: ref.watch(organizationRemoteSourceProvider),
  );
}

/// Implementation of OrganizationRepository
class OrganizationRepositoryImpl implements OrganizationRepository {
  final OrganizationRemoteSource _remoteSource;

  OrganizationRepositoryImpl({required OrganizationRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<List<OrgMembership>> getMyMemberships() {
    return _remoteSource.getMyMemberships();
  }

  @override
  Future<List<ProgramAssignmentInfo>> getMyProgramAssignments() {
    return _remoteSource.getMyProgramAssignments();
  }
}
