import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for app feedback operations using Prisma ORM
///
/// Handles creation and retrieval of user feedback.
/// Uses JsonQueryBuilder for type-safe queries.
class FeedbackRepository extends BaseRepository {
  /// Create a feedback repository with the given executor
  FeedbackRepository(super._executor);

  final _uuid = const Uuid();

  /// Submit app feedback
  ///
  /// Creates a new feedback entry from a user.
  /// Returns the created feedback.
  Future<Map<String, dynamic>> createFeedback({
    required String userId,
    required String title,
    required String description,
    String? category,
    int? rating,
  }) async {
    final now = nowIso8601;
    final feedbackId = _uuid.v4();

    final data = <String, dynamic>{
      'id': feedbackId,
      'userId': userId,
      'title': title,
      'description': description,
      'status': 'PENDING',
      'createdAt': now,
      'updatedAt': now,
    };

    // Add optional fields
    if (category != null) data['category'] = category;
    if (rating != null) data['rating'] = rating.clamp(1, 5);

    final createQuery = JsonQueryBuilder()
        .model('Feedback')
        .action(QueryAction.create)
        .data(data)
        .build();

    await executeMutation(createQuery);

    // Return the created feedback
    final resultQuery = JsonQueryBuilder()
        .model('Feedback')
        .action(QueryAction.findUnique)
        .where({'id': feedbackId})
        .build();

    final result = await executeQueryAsSingleMap(resultQuery);

    if (result == null) {
      throw Exception('Failed to create feedback');
    }

    return result;
  }

  /// Get feedback submitted by a user
  Future<List<Map<String, dynamic>>> getFeedbackByUserId(String userId) async {
    final query = JsonQueryBuilder()
        .model('Feedback')
        .action(QueryAction.findMany)
        .where({'userId': userId})
        .orderBy({'createdAt': 'desc'})
        .build();

    return executeQueryAsMaps(query);
  }
}
