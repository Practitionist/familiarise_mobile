import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';

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
    final feedback = await _prisma.feedback.create(
      data: CreateFeedbackInput(
        userId: userId,
        title: title,
        description: description,
        category: category,
        rating: rating?.clamp(1, 5),
      ),
    );
    return feedback.toJson();
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
