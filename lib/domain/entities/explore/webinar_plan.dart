import 'package:freezed_annotation/freezed_annotation.dart';

part 'webinar_plan.freezed.dart';
part 'webinar_plan.g.dart';

/// Status of a webinar session
enum WebinarSessionStatus {
  @JsonValue('SCHEDULED')
  scheduled,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELLED')
  cancelled,
}

/// A single session of a webinar
@freezed
class WebinarSession with _$WebinarSession {
  const factory WebinarSession({
    required String id,
    required DateTime startsAt,
    DateTime? endsAt,
    @Default(WebinarSessionStatus.scheduled) WebinarSessionStatus status,
    int? currentParticipants,
    int? maxParticipants,
    String? meetingLink,
    String? webinarId,
  }) = _WebinarSession;

  const WebinarSession._();

  factory WebinarSession.fromJson(Map<String, dynamic> json) =>
      _$WebinarSessionFromJson(json);

  /// Check if session is upcoming
  bool get isUpcoming =>
      status == WebinarSessionStatus.scheduled &&
      startsAt.isAfter(DateTime.now());

  /// Check if session is full
  bool get isFull {
    if (maxParticipants == null || currentParticipants == null) return false;
    return currentParticipants! >= maxParticipants!;
  }

  /// Spots remaining
  int get spotsRemaining {
    if (maxParticipants == null || currentParticipants == null) {
      return 0;
    }
    return (maxParticipants! - currentParticipants!).clamp(0, maxParticipants!);
  }
}

/// Brief consultant info for plan cards
@freezed
class ConsultantBrief with _$ConsultantBrief {
  const factory ConsultantBrief({
    required String id,
    required String name,
    String? image,
    String? headline,
  }) = _ConsultantBrief;

  factory ConsultantBrief.fromJson(Map<String, dynamic> json) =>
      _$ConsultantBriefFromJson(json);
}

/// A webinar plan offered by a consultant
@freezed
class WebinarPlan with _$WebinarPlan {
  const factory WebinarPlan({
    required String id,
    required String title,
    String? description,
    required double price,
    @Default('INR') String priceCurrency,
    required double durationInHours,
    required int maxParticipants,
    String? language,
    String? level,
    @Default([]) List<String> learningOutcomes,
    @Default(false) bool certificateProvided,
    String? thumbnailUrl,
    ConsultantBrief? consultant,
    @Default([]) List<WebinarSession> upcomingSessions,
    DateTime? createdAt,
  }) = _WebinarPlan;

  const WebinarPlan._();

  factory WebinarPlan.fromJson(Map<String, dynamic> json) =>
      _$WebinarPlanFromJson(json);

  /// Formatted price (e.g., "₹2,000")
  String get formattedPrice {
    final symbol = priceCurrency == 'INR' ? '₹' : '\$';
    return '$symbol${price.toStringAsFixed(0)}';
  }

  /// Formatted duration (e.g., "1.5 hours")
  String get formattedDuration {
    if (durationInHours == 1) return '1 hour';
    if (durationInHours == durationInHours.toInt()) {
      return '${durationInHours.toInt()} hours';
    }
    return '$durationInHours hours';
  }

  /// Get the next available session
  WebinarSession? get nextSession {
    final upcoming = upcomingSessions
        .where((s) => s.isUpcoming && !s.isFull)
        .toList()
      ..sort((a, b) => a.startsAt.compareTo(b.startsAt));
    return upcoming.isNotEmpty ? upcoming.first : null;
  }

  /// Check if any upcoming sessions are available
  bool get hasAvailableSessions => nextSession != null;
}
