import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultee_dashboard_stats.freezed.dart';
part 'consultee_dashboard_stats.g.dart';

@freezed
class ConsulteeDashboardStats with _$ConsulteeDashboardStats {
  const factory ConsulteeDashboardStats({
    @Default(0) int totalSessions,
    @Default(0) int completedSessions,
    @Default(0) int upcomingSessions,
    @Default(0) int cancelledSessions,
    @Default(0.0) double totalSpent,
    @Default(0) int activeSubscriptions,
    @Default(0) int pendingPayments,
  }) = _ConsulteeDashboardStats;

  factory ConsulteeDashboardStats.fromJson(Map<String, dynamic> json) =>
      _$ConsulteeDashboardStatsFromJson(json);
}
