import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for app feedback operations using typed PrismaClient delegates
///
/// Handles creation and retrieval of user feedback.
/// Uses typed delegates for compile-time safety while returning
/// Map<String, dynamic> for backward compatibility with routes.
class FeedbackRepository extends BaseRepository {
  /// Create a feedback repository with the given executor and PrismaClient
  FeedbackRepository(super._executor, this._prisma);

  final PrismaClient _prisma;

  /// Submit app feedback
  ///
  /// Creates a new feedback entry from a user.
  /// Returns the created feedback as a map.
  Future<Map<String, dynamic>> createFeedback({
    required String userId,
    required String title,
    required String description,
    String? category,
    int? rating,
  }) async {
    // Use JsonQueryBuilder to include explicit id (Prisma Flutter
    // Connector doesn't auto-generate @default(uuid()) IDs).
    const uuid = Uuid();
    final now = nowIso8601;
    final query = JsonQueryBuilder()
        .model('Feedback')
        .action(QueryAction.create)
        .data({
      'id': uuid.v4(),
      'userId': userId,
      'title': title,
      'description': description,
      'category': category,
      'rating': rating != null ? rating.clamp(1, 5) : null,
      'status': 'PENDING',
      'createdAt': now,
      'updatedAt': now,
    }).build();

    final result = await executeQueryAsSingleMap(query);
    if (result == null) throw Exception('Failed to create feedback');
    return result;
  }

  /// Get feedback submitted by a user
  Future<List<Map<String, dynamic>>> getFeedbackByUserId(String userId) async {
    final feedbacks = await _prisma.feedback.findMany(
      where: FeedbackWhereInput(
        userId: StringFilter(equals: userId),
      ),
      orderBy: const FeedbackOrderByInput(createdAt: SortOrder.desc),
    );

    return feedbacks.map((f) => f.toJson()).toList();
  }
}
