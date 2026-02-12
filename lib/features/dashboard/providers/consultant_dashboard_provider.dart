import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/collaborator_repository_impl.dart';
import '../../../data/repositories/dashboard_repository_impl.dart';
import '../../../data/repositories/referral_repository_impl.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../../domain/entities/collaborator/collaborator_entities.dart';
import '../../../domain/entities/dashboard/dashboard_entities.dart';
import '../../../domain/entities/explore/review.dart';
import '../../../domain/entities/referral/referral_entities.dart';

part 'consultant_dashboard_provider.g.dart';

/// Dashboard data for consultant
class ConsultantDashboardData {
  const ConsultantDashboardData({
    required this.stats,
    required this.upcomingSessions,
    required this.pendingRequests,
    required this.recentReviews,
    required this.earnings,
    this.collaborationCounts = const CollaborationCounts(),
    this.referralCode,
    this.referralCredits,
  });

  final ConsultantDashboardStats stats;
  final List<Booking> upcomingSessions;
  final List<Booking> pendingRequests;
  final List<Review> recentReviews;
  final EarningsSummary earnings;
  final CollaborationCounts collaborationCounts;
  final ReferralCodeInfo? referralCode;
  final ReferralCreditsAvailable? referralCredits;
}

/// Provider that fetches all consultant dashboard data in parallel
@riverpod
Future<ConsultantDashboardData> consultantDashboard(Ref ref) async {
  final repo = ref.watch(dashboardRepositoryProvider);
  final collabRepo = ref.watch(collaboratorRepositoryProvider);
  final referralRepo = ref.watch(referralRepositoryProvider);

  // Fetch all data in parallel
  final statsFuture = repo.getConsultantStats();
  final sessionsFuture = repo.getConsultantUpcomingSessions();
  final requestsFuture = repo.getConsultantPendingRequests();
  final reviewsFuture = repo.getConsultantRecentReviews();
  final earningsFuture = repo.getConsultantEarnings();
  final collabFuture = collabRepo.getCollaborations();
  final referralCodeFuture = referralRepo.getReferralCode();
  final referralCreditsFuture = referralRepo.getAvailableCredits();

  final stats = await statsFuture
      .catchError((_) => const ConsultantDashboardStats());
  final sessions =
      await sessionsFuture.catchError((_) => <Booking>[]);
  final requests =
      await requestsFuture.catchError((_) => <Booking>[]);
  final reviews =
      await reviewsFuture.catchError((_) => <Review>[]);
  final earnings = await earningsFuture
      .catchError((_) => const EarningsSummary());
  final collabData = await collabFuture
      .catchError((_) => const CollaborationsResponse());
  final ReferralCodeInfo? referralCode = await referralCodeFuture
      .catchError((_) => null);
  final referralCredits = await referralCreditsFuture
      .catchError((_) => const ReferralCreditsAvailable());

  return ConsultantDashboardData(
    stats: stats,
    upcomingSessions: sessions,
    pendingRequests: requests,
    recentReviews: reviews,
    earnings: earnings,
    collaborationCounts: collabData.counts,
    referralCode: referralCode,
    referralCredits: referralCredits,
  );
}
