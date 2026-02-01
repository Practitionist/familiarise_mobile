import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/booking/booking_entities.dart';
import '../../domain/entities/dashboard/dashboard_entities.dart';
import '../../domain/entities/explore/review.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/remote/dashboard_remote_source.dart';

part 'dashboard_repository_impl.g.dart';

/// Provider for DashboardRepository
@riverpod
DashboardRepository dashboardRepository(Ref ref) {
  return DashboardRepositoryImpl(
    remoteSource: ref.watch(dashboardRemoteSourceProvider),
  );
}

/// Implementation of DashboardRepository
class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteSource _remoteSource;

  DashboardRepositoryImpl({required DashboardRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<ConsulteeDashboardStats> getConsulteeStats() {
    return _remoteSource.getConsulteeStats();
  }

  @override
  Future<ConsultantDashboardStats> getConsultantStats() {
    return _remoteSource.getConsultantStats();
  }

  @override
  Future<List<Booking>> getConsultantUpcomingSessions() {
    return _remoteSource.getConsultantUpcomingSessions();
  }

  @override
  Future<List<Booking>> getConsultantPendingRequests() {
    return _remoteSource.getConsultantPendingRequests();
  }

  @override
  Future<List<Review>> getConsultantRecentReviews() {
    return _remoteSource.getConsultantRecentReviews();
  }

  @override
  Future<EarningsSummary> getConsultantEarnings() {
    return _remoteSource.getConsultantEarnings();
  }
}
