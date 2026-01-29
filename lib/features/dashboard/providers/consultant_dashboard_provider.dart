import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/dashboard_repository_impl.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../../domain/entities/dashboard/dashboard_entities.dart';
import '../../../domain/entities/explore/review.dart';

part 'consultant_dashboard_provider.g.dart';

/// Dashboard data for consultant
class ConsultantDashboardData {
  const ConsultantDashboardData({
    required this.stats,
    required this.upcomingSessions,
    required this.pendingRequests,
    required this.recentReviews,
    required this.earnings,
  });

  final ConsultantDashboardStats stats;
  final List<Booking> upcomingSessions;
  final List<Booking> pendingRequests;
  final List<Review> recentReviews;
  final EarningsSummary earnings;
}

/// Provider that fetches all consultant dashboard data in parallel
@riverpod
Future<ConsultantDashboardData> consultantDashboard(Ref ref) async {
  final repo = ref.watch(dashboardRepositoryProvider);

  // Fetch all data in parallel
  final statsFuture = repo.getConsultantStats();
  final sessionsFuture = repo.getConsultantUpcomingSessions();
  final requestsFuture = repo.getConsultantPendingRequests();
  final reviewsFuture = repo.getConsultantRecentReviews();
  final earningsFuture = repo.getConsultantEarnings();

  final stats = await statsFuture;
  final sessions = await sessionsFuture;
  final requests = await requestsFuture;
  final reviews = await reviewsFuture;
  final earnings = await earningsFuture;

  return ConsultantDashboardData(
    stats: stats,
    upcomingSessions: sessions,
    pendingRequests: requests,
    recentReviews: reviews,
    earnings: earnings,
  );
}
