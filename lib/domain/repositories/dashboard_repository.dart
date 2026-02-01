import '../entities/booking/booking_entities.dart';
import '../entities/dashboard/dashboard_entities.dart';
import '../entities/explore/review.dart';

/// Repository interface for dashboard operations
abstract class DashboardRepository {
  /// Get consultee dashboard stats
  Future<ConsulteeDashboardStats> getConsulteeStats();

  /// Get consultant dashboard stats
  Future<ConsultantDashboardStats> getConsultantStats();

  /// Get consultant's upcoming sessions
  Future<List<Booking>> getConsultantUpcomingSessions();

  /// Get consultant's pending booking requests
  Future<List<Booking>> getConsultantPendingRequests();

  /// Get consultant's recent reviews
  Future<List<Review>> getConsultantRecentReviews();

  /// Get consultant's earnings summary
  Future<EarningsSummary> getConsultantEarnings();
}
