import 'package:freezed_annotation/freezed_annotation.dart';

import '../booking/booking.dart';

part 'appointment_consultant.freezed.dart';
part 'appointment_consultant.g.dart';

/// Represents a consultant the user has an appointment with
///
/// Used in the chat list to show consultants the user can message.
/// Only consultants with appointments (consultation, subscription, webinar, class)
/// are shown to ensure users can only chat with their linked consultants.
@freezed
class AppointmentConsultant with _$AppointmentConsultant {
  const factory AppointmentConsultant({
    /// The consultant's user ID (used for creating chat channels)
    required String consultantUserId,

    /// The consultant's display name
    required String consultantName,

    /// The consultant's profile image URL
    String? consultantImage,

    /// The consultant's profile ID (for navigation to profile)
    String? consultantProfileId,

    /// The type of the most recent appointment
    BookingType? lastAppointmentType,

    /// The date of the most recent appointment
    DateTime? lastAppointmentDate,

    /// The program ID (webinarId or classId) for group channel lookup
    /// Only set for webinar/class appointments
    String? programId,

    /// The program name (webinar/class title) for display
    /// Only set for webinar/class appointments
    String? programName,
  }) = _AppointmentConsultant;

  const AppointmentConsultant._();

  factory AppointmentConsultant.fromJson(Map<String, dynamic> json) =>
      _$AppointmentConsultantFromJson(json);

  /// Create from a Booking entity
  factory AppointmentConsultant.fromBooking(Booking booking) {
    // For webinar/class bookings, the booking.id is the webinarId/classId
    // which we use for group channel lookup
    final isGroupProgram = booking.bookingType == BookingType.webinar ||
        booking.bookingType == BookingType.classes;

    return AppointmentConsultant(
      consultantUserId: booking.consultantUserId!,
      consultantName: booking.consultantName ?? 'Unknown',
      consultantImage: booking.consultantImage,
      consultantProfileId: booking.consultantProfileId,
      lastAppointmentType: booking.bookingType,
      lastAppointmentDate: booking.createdAt,
      programId: isGroupProgram ? booking.id : null,
      programName: isGroupProgram ? booking.planTitle : null,
    );
  }

  /// Get initials for avatar display
  String get initials {
    final parts = consultantName.trim().split(' ');
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return consultantName.isNotEmpty ? consultantName[0].toUpperCase() : '?';
  }

  /// Formatted appointment type for display
  String get appointmentTypeText {
    switch (lastAppointmentType) {
      case BookingType.consultation:
        return 'Consultation';
      case BookingType.subscription:
        return 'Subscription';
      case BookingType.webinar:
        return 'Webinar';
      case BookingType.classes:
        return 'Class';
      case null:
        return 'Appointment';
    }
  }

  /// Whether this is a group program (webinar or class) that uses group channels
  bool get isGroupProgram =>
      lastAppointmentType == BookingType.webinar ||
      lastAppointmentType == BookingType.classes;
}
