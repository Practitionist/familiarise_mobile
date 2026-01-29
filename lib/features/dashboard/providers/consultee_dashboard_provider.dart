import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/booking_repository_impl.dart';
import '../../../data/repositories/dashboard_repository_impl.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../../domain/entities/dashboard/dashboard_entities.dart';

part 'consultee_dashboard_provider.g.dart';

/// Dashboard data for consultee
class ConsulteeDashboardData {
  const ConsulteeDashboardData({
    required this.stats,
    required this.upcomingSessions,
  });

  final ConsulteeDashboardStats stats;
  final List<Booking> upcomingSessions;
}

/// Provider that fetches all consultee dashboard data in parallel
@riverpod
Future<ConsulteeDashboardData> consulteeDashboard(Ref ref) async {
  final dashboardRepo = ref.watch(dashboardRepositoryProvider);
  final bookingRepo = ref.watch(bookingRepositoryProvider);

  // Fetch stats and upcoming sessions in parallel
  final statsFuture = dashboardRepo.getConsulteeStats();
  final bookingsFuture = bookingRepo.getMyBookings(
    status: 'SCHEDULED',
    pageSize: 5,
  );

  final stats = await statsFuture;
  final bookingsResponse = await bookingsFuture;

  return ConsulteeDashboardData(
    stats: stats,
    upcomingSessions: bookingsResponse.bookings,
  );
}
