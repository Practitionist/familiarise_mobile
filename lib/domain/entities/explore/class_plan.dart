import 'package:freezed_annotation/freezed_annotation.dart';

import 'webinar_plan.dart';

part 'class_plan.freezed.dart';
part 'class_plan.g.dart';

/// Enrollment status for a class
enum ClassEnrollmentStatus {
  @JsonValue('OPEN')
  open,
  @JsonValue('CLOSED')
  closed,
  @JsonValue('FULL')
  full,
  @JsonValue('UPCOMING')
  upcoming,
}

/// A curriculum item in a class
@freezed
class ClassCurriculumItem with _$ClassCurriculumItem {
  const factory ClassCurriculumItem({
    required int weekNumber,
    required String title,
    String? description,
    @Default([]) List<String> topics,
  }) = _ClassCurriculumItem;

  factory ClassCurriculumItem.fromJson(Map<String, dynamic> json) =>
      _$ClassCurriculumItemFromJson(json);
}

/// A class/course plan offered by a consultant
@freezed
class ClassPlan with _$ClassPlan {
  const factory ClassPlan({
    required String id,
    required String title,
    String? description,
    required double price,
    @Default('INR') String priceCurrency,
    required int durationInMonths,
    required int meetingsPerWeek,
    required double sessionDurationInHours,
    required int totalSessions,
    required int maxParticipants,
    int? currentEnrollments,
    String? language,
    String? level,
    @Default([]) List<String> learningOutcomes,
    @Default(false) bool certificateProvided,
    String? thumbnailUrl,
    ConsultantBrief? consultant,
    @Default([]) List<ClassCurriculumItem> curriculum,
    DateTime? enrollmentStartDate,
    DateTime? enrollmentEndDate,
    DateTime? classStartDate,
    @Default(ClassEnrollmentStatus.open) ClassEnrollmentStatus enrollmentStatus,
    DateTime? createdAt,
  }) = _ClassPlan;

  const ClassPlan._();

  factory ClassPlan.fromJson(Map<String, dynamic> json) =>
      _$ClassPlanFromJson(json);

  /// Formatted price (e.g., "₹20,000")
  String get formattedPrice {
    final symbol = priceCurrency == 'INR' ? '₹' : '\$';
    return '$symbol${price.toStringAsFixed(0)}';
  }

  /// Formatted duration (e.g., "3 months")
  String get formattedDuration {
    if (durationInMonths == 1) return '1 month';
    return '$durationInMonths months';
  }

  /// Formatted session info (e.g., "2 sessions/week, 1 hour each")
  String get formattedSchedule {
    final sessionsText = meetingsPerWeek == 1
        ? '1 session/week'
        : '$meetingsPerWeek sessions/week';
    final durationText = sessionDurationInHours == 1
        ? '1 hour each'
        : '${sessionDurationInHours.toStringAsFixed(1)} hours each';
    return '$sessionsText, $durationText';
  }

  /// Spots remaining
  int get spotsRemaining {
    if (currentEnrollments == null) return maxParticipants;
    return (maxParticipants - currentEnrollments!).clamp(0, maxParticipants);
  }

  /// Check if enrollment is available
  bool get canEnroll =>
      enrollmentStatus == ClassEnrollmentStatus.open && spotsRemaining > 0;

  /// Check if class is full
  bool get isFull =>
      enrollmentStatus == ClassEnrollmentStatus.full || spotsRemaining == 0;
}
