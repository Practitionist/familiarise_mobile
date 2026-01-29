import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultant_dashboard_stats.freezed.dart';
part 'consultant_dashboard_stats.g.dart';

@freezed
class ConsultantDashboardStats with _$ConsultantDashboardStats {
  const factory ConsultantDashboardStats({
    @Default(0) int totalClients,
    @Default(0) int totalSessionsConducted,
    @Default(0) int upcomingSessions,
    @Default(0) int pendingRequests,
    @Default(0.0) double averageRating,
    @Default(0) int totalReviews,
    @Default(0.0) double totalEarnings,
    @Default(0.0) double pendingEarnings,
  }) = _ConsultantDashboardStats;

  factory ConsultantDashboardStats.fromJson(Map<String, dynamic> json) =>
      _$ConsultantDashboardStatsFromJson(json);
}
