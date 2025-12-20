import '../entities/common/paginated_result.dart';
import '../entities/explore/consultant.dart';
import '../entities/explore/consultant_details.dart';
import '../entities/explore/explore_filters.dart';
import '../entities/explore/review.dart';

/// Repository interface for consultant-related operations
abstract class ConsultantRepository {
  /// Get a paginated list of consultants with optional filters
  Future<PaginatedResult<Consultant>> getConsultants({
    ExploreFilters? filters,
    int page = 0,
    int pageSize = 20,
  });

  /// Get detailed consultant profile by ID
  Future<ConsultantDetails?> getConsultantById(String id);

  /// Get paginated reviews for a consultant
  Future<PaginatedResult<Review>> getConsultantReviews({
    required String consultantId,
    int page = 0,
    int pageSize = 10,
  });
}
