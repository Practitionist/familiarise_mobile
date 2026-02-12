import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/collaborator_repository_impl.dart';
import '../../../domain/entities/collaborator/collaborator_entities.dart';

part 'collaborations_provider.g.dart';

/// Fetches all collaborations for the current consultant
@riverpod
Future<CollaborationsResponse> collaborations(Ref ref) async {
  final repo = ref.watch(collaboratorRepositoryProvider);
  return repo.getCollaborations();
}

/// Notifier for responding to collaboration invitations
@riverpod
class RespondToCollaboration extends _$RespondToCollaboration {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<bool> respond({
    required String id,
    required String response,
    required String planType,
  }) async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(collaboratorRepositoryProvider);
      await repo.respondToCollaboration(
        id: id,
        response: response,
        planType: planType,
      );
      state = const AsyncData(null);
      // Refresh collaborations list
      ref.invalidate(collaborationsProvider);
      return true;
    } catch (e, st) {
      state = AsyncError(e, st);
      return false;
    }
  }
}
