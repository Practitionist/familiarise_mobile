import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';
import '../../../core/utils/formatters.dart';

part 'subscription_plan.freezed.dart';
part 'subscription_plan.g.dart';

/// A subscription plan offered by a consultant
@freezed
class SubscriptionPlan with _$SubscriptionPlan {
  const factory SubscriptionPlan({
    required String id,
    required String title,
    String? description,
    int? durationInMonths,
    required double price,
    @Default('INR') String priceCurrency,
    int? callsPerWeek,
    double? sessionDurationInHours,
    int? totalSessions,
    double? totalHours,
    PlanEmailSupport? emailSupport,
    String? language,
    String? level,
    String? prerequisites,
    String? materialProvided,
    @Default([]) List<String> learningOutcomes,
    @Default(false) bool freeTrialEnabled,
    @Default(30) int freeTrialDurationMinutes,
    DateTime? createdAt,
  }) = _SubscriptionPlan;

  const SubscriptionPlan._();

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanFromJson(json);

  /// Formatted price (e.g., "₹10,000/month")
  String get formattedPrice {
    final duration = durationInMonths != null && durationInMonths! > 1
        ? '/${durationInMonths!} months'
        : '/month';
    return '${Formatters.currency(Formatters.fromMinorUnits(price), priceCurrency)}$duration';
  }

  /// Formatted duration (e.g., "3 months")
  String get formattedDuration {
    if (durationInMonths == null) return 'Ongoing';
    return durationInMonths == 1 ? '1 month' : '$durationInMonths months';
  }

  /// Formatted sessions info
  String get sessionsInfo {
    final parts = <String>[];
    if (callsPerWeek != null) {
      parts.add('$callsPerWeek call${callsPerWeek! > 1 ? 's' : ''}/week');
    }
    if (totalSessions != null) {
      parts.add('$totalSessions sessions total');
    }
    return parts.isEmpty ? 'Flexible schedule' : parts.join(' • ');
  }
}
