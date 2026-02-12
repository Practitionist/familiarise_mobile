import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/collaborator/collaborator_entities.dart';
import '../../domain/repositories/collaborator_repository.dart';
import '../datasources/remote/collaborator_remote_source.dart';

part 'collaborator_repository_impl.g.dart';

/// Provider for CollaboratorRepository
@riverpod
CollaboratorRepository collaboratorRepository(Ref ref) {
  return CollaboratorRepositoryImpl(
    remoteSource: ref.watch(collaboratorRemoteSourceProvider),
  );
}

/// Implementation of CollaboratorRepository
class CollaboratorRepositoryImpl implements CollaboratorRepository {
  final CollaboratorRemoteSource _remoteSource;

  CollaboratorRepositoryImpl({required CollaboratorRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<CollaborationsResponse> getCollaborations() {
    return _remoteSource.getCollaborations();
  }

  @override
  Future<void> respondToCollaboration({
    required String id,
    required String response,
    required String planType,
  }) {
    return _remoteSource.respondToCollaboration(
      id: id,
      response: response,
      planType: planType,
    );
  }
}
