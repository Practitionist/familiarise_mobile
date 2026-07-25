import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../../domain/entities/dashboard/dashboard_entities.dart';
import '../../../domain/entities/explore/review.dart';
import '../../../shared/providers/core_providers.dart';
import 'booking_json_parser.dart';

part 'dashboard_remote_source.g.dart';

/// Provider for DashboardRemoteSource
@riverpod
DashboardRemoteSource dashboardRemoteSource(Ref ref) {
  return DashboardRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source for dashboard operations
abstract class DashboardRemoteSource {
  Future<ConsulteeDashboardStats> getConsulteeStats();
  Future<ConsultantDashboardStats> getConsultantStats();
  Future<List<Booking>> getConsultantUpcomingSessions();
  Future<List<Booking>> getConsultantPendingRequests();
  Future<List<Review>> getConsultantRecentReviews();
  Future<EarningsSummary> getConsultantEarnings();
}

/// Implementation of DashboardRemoteSource
class DashboardRemoteSourceImpl implements DashboardRemoteSource {
  final Dio _dio;

  DashboardRemoteSourceImpl(this._dio);

  @override
  Future<ConsulteeDashboardStats> getConsulteeStats() async {
    try {
      final response = await _dio.get(ApiEndpoints.dashboardStats);

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return ConsulteeDashboardStats(
          totalSessions: data['totalSessions'] as int? ?? 0,
          completedSessions: data['completedSessions'] as int? ?? 0,
          upcomingSessions: data['upcomingSessions'] as int? ?? 0,
          cancelledSessions: data['cancelledSessions'] as int? ?? 0,
          totalSpent: (data['totalSpent'] as num?)?.toDouble() ?? 0.0,
          activeSubscriptions: data['activeSubscriptions'] as int? ?? 0,
          pendingPayments: data['pendingPayments'] as int? ?? 0,
        );
      }

      throw ServerException(
        message: 'Failed to fetch dashboard stats',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) throw e.error as AppException;
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'DashboardRemoteSource.getConsulteeStats',
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch dashboard stats',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<ConsultantDashboardStats> getConsultantStats() async {
    try {
      final response = await _dio.get(
        ApiEndpoints.consultantDashboardStats,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return ConsultantDashboardStats(
          totalClients: data['totalClients'] as int? ?? 0,
          totalSessionsConducted: data['totalSessionsConducted'] as int? ?? 0,
          upcomingSessions: data['upcomingSessions'] as int? ?? 0,
          pendingRequests: data['pendingRequests'] as int? ?? 0,
          averageRating: (data['averageRating'] as num?)?.toDouble() ?? 0.0,
          totalReviews: data['totalReviews'] as int? ?? 0,
          totalEarnings: (data['totalEarnings'] as num?)?.toDouble() ?? 0.0,
          pendingEarnings: (data['pendingEarnings'] as num?)?.toDouble() ?? 0.0,
        );
      }

      throw ServerException(
        message: 'Failed to fetch consultant dashboard stats',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) throw e.error as AppException;
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'DashboardRemoteSource.getConsultantStats',
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch consultant stats',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<List<Booking>> getConsultantUpcomingSessions() async {
    try {
      final response = await _dio.get(
        ApiEndpoints.appointments,
        queryParameters: {
          'role': 'consultant',
          'status': 'SCHEDULED',
        },
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseBookingsList(data['bookings'] as List<dynamic>? ?? []);
      }

      throw ServerException(
        message: 'Failed to fetch consultant sessions',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) throw e.error as AppException;
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'DashboardRemoteSource.getConsultantUpcomingSessions',
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch consultant sessions',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<List<Booking>> getConsultantPendingRequests() async {
    try {
      final response = await _dio.get(
        ApiEndpoints.consultantPendingRequests,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final requests = data['requests'] as List<dynamic>? ?? [];
        return requests.map((r) {
          final req = r as Map<String, dynamic>;
          final plan = req['consultationPlan'] as Map<String, dynamic>?;
          final consultee = req['requestedBy'] as Map<String, dynamic>?;
          final user = consultee?['user'] as Map<String, dynamic>?;

          return Booking(
            id: req['id'] as String,
            bookingType: BookingType.consultation,
            status: RequestStatus.pending,
            message: req['requestNotes'] as String?,
            createdAt: parseDateTime(req['requestedAt'] ?? req['createdAt']),
            planId: plan?['id'] as String?,
            planTitle: plan?['title'] as String?,
            planPrice: (plan?['price'] as num?)?.toDouble(),
            consultantName: user?['name'] as String?,
            consultantImage: user?['image'] as String?,
          );
        }).toList();
      }

      throw ServerException(
        message: 'Failed to fetch pending requests',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) throw e.error as AppException;
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'DashboardRemoteSource.getConsultantPendingRequests',
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch pending requests',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<List<Review>> getConsultantRecentReviews() async {
    try {
      final response = await _dio.get(
        ApiEndpoints.consultantRecentReviews,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final reviews = data['reviews'] as List<dynamic>? ?? [];
        return reviews.map((r) {
          final review = r as Map<String, dynamic>;
          final consultee = review['consulteeProfile'] as Map<String, dynamic>?;
          final user = consultee?['user'] as Map<String, dynamic>?;

          return Review(
            id: review['id'] as String,
            rating: review['rating'] as int? ?? 0,
            description: review['reviewDescription'] as String? ??
                review['comment'] as String?,
            createdAt: parseDateTime(review['createdAt']),
            reviewer: ReviewerInfo(
              name: user?['name'] as String?,
              image: user?['image'] as String?,
            ),
          );
        }).toList();
      }

      throw ServerException(
        message: 'Failed to fetch recent reviews',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) throw e.error as AppException;
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'DashboardRemoteSource.getConsultantRecentReviews',
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch reviews',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<EarningsSummary> getConsultantEarnings() async {
    try {
      final response = await _dio.get(ApiEndpoints.consultantEarnings);

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return EarningsSummary(
          totalEarnings: (data['totalEarnings'] as num?)?.toDouble() ?? 0.0,
          pendingEarnings: (data['pendingEarnings'] as num?)?.toDouble() ?? 0.0,
          paidEarnings: (data['paidEarnings'] as num?)?.toDouble() ?? 0.0,
          currency: data['currency'] as String? ?? 'INR',
        );
      }

      throw ServerException(
        message: 'Failed to fetch earnings',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) throw e.error as AppException;
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'DashboardRemoteSource.getConsultantEarnings',
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch earnings',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  /// Parse bookings list using the shared parser.
  List<Booking> _parseBookingsList(List<dynamic> bookingsJson) =>
      parseBookingsListJson(bookingsJson);
}
