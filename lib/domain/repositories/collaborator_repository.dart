import '../entities/collaborator/collaborator_entities.dart';

/// Repository interface for collaborator operations
abstract class CollaboratorRepository {
  /// Get all collaborations for the authenticated consultant
  Future<CollaborationsResponse> getCollaborations();

  /// Respond to a collaboration invitation (accept/decline)
  Future<void> respondToCollaboration({
    required String id,
    required String response,
    required String planType,
  });
}
