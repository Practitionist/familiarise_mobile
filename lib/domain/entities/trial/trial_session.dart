import 'package:freezed_annotation/freezed_annotation.dart';

import 'trial_status.dart';

part 'trial_session.freezed.dart';
part 'trial_session.g.dart';

@freezed
class TrialSession with _$TrialSession {
  const factory TrialSession({
    required String id,
    required TrialStatus status,
    String? notes,
    required String consulteeProfileId,
    required String consultantProfileId,
    required String subscriptionPlanId,
    String? appointmentId,
    String? convertedToSubscriptionId,
    required DateTime requestedAt,
    DateTime? completedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TrialSession;

  factory TrialSession.fromJson(Map<String, dynamic> json) =>
      _$TrialSessionFromJson(json);
}

@freezed
class TrialEligibility with _$TrialEligibility {
  const factory TrialEligibility({
    required bool eligible,
    String? reason,
  }) = _TrialEligibility;

  factory TrialEligibility.fromJson(Map<String, dynamic> json) =>
      _$TrialEligibilityFromJson(json);
}

@freezed
class TrialStats with _$TrialStats {
  const factory TrialStats({
    @Default(0) int total,
    @Default(0) int pending,
    @Default(0) int completed,
    @Default(0) int converted,
    @Default(0) int conversionRate,
  }) = _TrialStats;

  factory TrialStats.fromJson(Map<String, dynamic> json) =>
      _$TrialStatsFromJson(json);
}
