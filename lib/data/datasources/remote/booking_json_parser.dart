import '../../../core/constants/enums.dart'
    show BookingSource, CancellationReason;
import '../../../domain/entities/booking/booking_entities.dart';

/// Parse a [Booking] from an API JSON response.
///
/// Shared parser used by both [BookingRemoteSource] and
/// [DashboardRemoteSource] to avoid duplicating parsing logic.
///
/// Handles both consultee and consultant perspectives:
/// - Falls back to `appointmentType` when `bookingType` is absent
/// - Falls back to consultee fields when consultant fields are null
///   (when role=consultant, the "other party" info is in consultee fields)
Booking parseBookingJson(Map<String, dynamic> json) {
  return Booking(
    id: json['id'] as String,
    bookingType: BookingType.fromString(
      json['bookingType'] as String? ??
          json['appointmentType'] as String? ??
          'CONSULTATION',
    ),
    status: RequestStatus.fromString(
      json['status'] as String? ?? 'PENDING',
    ),
    message: json['message'] as String?,
    createdAt: parseDateTime(json['createdAt']),
    updatedAt: parseDateTime(json['updatedAt']),
    appointmentId: json['appointmentId'] as String?,
    planId: json['planId'] as String?,
    planTitle: json['planTitle'] as String?,
    planPrice: (json['planPrice'] as num?)?.toDouble(),
    planCurrency: json['planCurrency'] as String? ?? 'INR',
    planDuration: (json['planDuration'] as num?)?.toDouble(),
    consultantProfileId: json['consultantProfileId'] as String?,
    consultantUserId: json['consultantUserId'] as String?,
    consultantName: json['consultantName'] as String?,
    consultantImage: json['consultantImage'] as String?,
    consulteeProfileId: json['consulteeProfileId'] as String?,
    consulteeUserId: json['consulteeUserId'] as String?,
    consulteeName: json['consulteeName'] as String?,
    consulteeImage: json['consulteeImage'] as String?,
    slots: parseBookingSlots(json['slots']),
    schedulingPeriodStartsAt:
        parseDateTime(json['schedulingPeriodStartsAt']),
    schedulingPeriodEndsAt:
        parseDateTime(json['schedulingPeriodEndsAt']),
    schedulingTimezone: json['schedulingTimezone'] as String?,
    totalSessions: json['totalSessions'] as int?,
    sessionDurationInHours:
        (json['sessionDurationInHours'] as num?)?.toDouble(),
    // Cancellation fields
    cancellationReason: json['cancellationReason'] != null
        ? CancellationReason.values.firstWhere(
            (e) =>
                e.name == json['cancellationReason'] ||
                e.name == _camelCase(
                  json['cancellationReason'] as String,
                ),
            orElse: () => CancellationReason.other,
          )
        : null,
    cancellationNotes: json['cancellationNotes'] as String?,
    cancelledAt: parseDateTime(json['cancelledAt']),
    cancelledBy: json['cancelledBy'] as String?,
    // Booking source
    bookingSource: json['bookingSource'] != null
        ? BookingSource.values.firstWhere(
            (e) =>
                e.name == json['bookingSource'] ||
                e.name == _camelCase(
                  json['bookingSource'] as String,
                ),
            orElse: () => BookingSource.requestSubmitted,
          )
        : null,
    // Feedback fields
    feedbackFromConsultee:
        json['feedbackFromConsultee'] as String?,
    feedbackFromConsultant:
        json['feedbackFromConsultant'] as String?,
    rating: (json['rating'] as num?)?.toDouble(),
    // Participant info (for group programs)
    participants: parseBookingParticipants(json['participants']),
    participantCount: json['participantCount'] as int? ?? 0,
    // Extended plan details (for webinar/class detail views)
    planDescription: json['planDescription'] as String?,
    planLanguage: json['planLanguage'] as String?,
    planLevel: json['planLevel'] as String?,
    planPrerequisites: json['planPrerequisites'] as String?,
    planMaterialProvided: json['planMaterialProvided'] as String?,
    planLearningOutcomes:
        (json['planLearningOutcomes'] as List<dynamic>?)
                ?.map((e) => e as String)
                .toList() ??
            [],
    planCertificateProvided:
        json['planCertificateProvided'] as bool? ?? false,
    planRecordingEnabled:
        json['planRecordingEnabled'] as bool? ?? false,
    meetingsPerWeek: json['meetingsPerWeek'] as int?,
    totalHours: (json['totalHours'] as num?)?.toDouble(),
  );
}

/// Parse a list of bookings from API JSON response.
List<Booking> parseBookingsListJson(List<dynamic> bookingsJson) {
  return bookingsJson
      .map((b) => parseBookingJson(b as Map<String, dynamic>))
      .toList();
}

/// Parse a datetime from a JSON value (String, DateTime, or null).
DateTime? parseDateTime(dynamic value) {
  if (value == null) return null;
  if (value is DateTime) return value;
  if (value is String) return DateTime.tryParse(value);
  return null;
}

/// Parse booking slots from a JSON list.
List<BookingSlot> parseBookingSlots(dynamic slotsJson) {
  if (slotsJson == null || slotsJson is! List) return [];
  return slotsJson.map((s) {
    final slotJson = s as Map<String, dynamic>;
    return BookingSlot(
      id: slotJson['id'] as String,
      startsAt: parseDateTime(slotJson['startsAt'])!,
      endsAt: parseDateTime(slotJson['endsAt'])!,
      isTentative: slotJson['isTentative'] as bool? ?? false,
    );
  }).toList();
}

/// Parse booking participants from a JSON list.
List<BookingParticipant> parseBookingParticipants(
  dynamic participantsJson,
) {
  if (participantsJson == null || participantsJson is! List) return [];
  return participantsJson.map((p) {
    final pMap = p as Map<String, dynamic>;
    return BookingParticipant(
      id: pMap['id'] as String,
      name: pMap['name'] as String?,
      image: pMap['image'] as String?,
    );
  }).toList();
}

/// Convert SCREAMING_SNAKE_CASE or snake_case to camelCase.
String _camelCase(String input) {
  final parts = input.toLowerCase().split('_');
  return parts.first +
      parts
          .skip(1)
          .map((p) => p[0].toUpperCase() + p.substring(1))
          .join();
}
