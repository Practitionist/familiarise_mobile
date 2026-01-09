import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/utils/exceptions.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

/// Repository for consultant review operations using Prisma ORM
///
/// Handles creation and retrieval of consultant reviews.
/// Uses JsonQueryBuilder for type-safe queries.
class ReviewRepository extends BaseRepository {
  /// Create a review repository with the given executor
  ReviewRepository(super._executor);

  final _uuid = const Uuid();

  /// Create a review for a consultant
  ///
  /// Creates a new review linking the consultee to a consultant.
  /// Validates that consultee hasn't already reviewed this consultant.
  Future<Map<String, dynamic>> createReview({
    required String consulteeProfileId,
    required String consultantProfileId,
    required int rating,
    String? reviewDescription,
  }) async {
    // Check for existing review
    final existingQuery = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.findFirst)
        .where({
      'consulteeProfileId': consulteeProfileId,
      'consultantProfileId': consultantProfileId,
    }).build();

    final existing = await executeQueryAsSingleMap(existingQuery);

    if (existing != null) {
      throw const AlreadyExistsException(
        resource: 'Review',
        message: 'You have already reviewed this consultant',
      );
    }

    final now = nowIso8601;
    final reviewId = _uuid.v4();

    // Validate rating
    final validRating = rating.clamp(1, 5);

    final createQuery = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.create)
        .data({
      'id': reviewId,
      'consulteeProfileId': consulteeProfileId,
      'consultantProfileId': consultantProfileId,
      'rating': validRating,
      'reviewDescription': reviewDescription,
      'createdAt': now,
      'updatedAt': now,
    }).build();

    await executeMutation(createQuery);

    // Update consultant's average rating
    await _updateConsultantRating(consultantProfileId);

    // Return the created review
    final resultQuery = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.findUnique)
        .where({'id': reviewId}).build();

    final result = await executeQueryAsSingleMap(resultQuery);

    if (result == null) {
      throw Exception('Failed to create review');
    }

    return result;
  }

  /// Check if a user has already reviewed a specific consultant
  Future<bool> hasUserReviewedConsultant({
    required String consulteeProfileId,
    required String consultantProfileId,
  }) async {
    final query = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.count)
        .where({
      'consulteeProfileId': consulteeProfileId,
      'consultantProfileId': consultantProfileId,
    }).build();

    final count = await executeCount(query);
    return count > 0;
  }

  /// Get reviews for a consultant with pagination
  Future<Map<String, dynamic>> getReviewsForConsultant({
    required String consultantProfileId,
    int page = 0,
    int pageSize = 20,
  }) async {
    final effectivePageSize = pageSize.clamp(1, 50);
    final offset = page * effectivePageSize;

    // Count total reviews
    final countQuery = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.count)
        .where({'consultantProfileId': consultantProfileId}).build();

    final totalCount = await executeCount(countQuery);

    // Fetch reviews with consultee info
    final query = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId})
        .include({
          'consulteeProfile': {
            'include': {'user': true},
          },
        })
        .orderBy({'createdAt': 'desc'})
        .skip(offset)
        .take(effectivePageSize)
        .build();

    final reviews = await executeQueryAsMaps(query);

    return {
      'reviews': reviews,
      'pagination': {
        'page': page,
        'pageSize': effectivePageSize,
        'totalCount': totalCount,
        'totalPages': (totalCount / effectivePageSize).ceil(),
      },
    };
  }

  /// Update a consultant's average rating
  ///
  /// Calculates the average from all reviews and updates the profile.
  Future<void> _updateConsultantRating(String consultantProfileId) async {
    // Get all ratings for this consultant
    final query = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.findMany)
        .where({'consultantProfileId': consultantProfileId}).select(
            {'rating': true}).build();

    final reviews = await executeQueryAsMaps(query);

    if (reviews.isEmpty) return;

    // Calculate average
    final totalRating = reviews.fold<int>(
      0,
      (sum, review) => sum + (review['rating'] as int? ?? 0),
    );
    final averageRating = totalRating / reviews.length;

    // Update consultant profile
    final updateQuery = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.update)
        .where({'id': consultantProfileId}).data({
      'rating': averageRating,
      'updatedAt': nowIso8601,
    }).build();

    await executeMutation(updateQuery);
  }

  /// Get a user's review for a specific consultant (if exists)
  Future<Map<String, dynamic>?> getUserReviewForConsultant({
    required String consulteeProfileId,
    required String consultantProfileId,
  }) async {
    final query = JsonQueryBuilder()
        .model('ConsultantReview')
        .action(QueryAction.findFirst)
        .where({
      'consulteeProfileId': consulteeProfileId,
      'consultantProfileId': consultantProfileId,
    }).build();

    return executeQueryAsSingleMap(query);
  }
}
