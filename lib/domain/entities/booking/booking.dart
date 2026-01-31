import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart' show BookingSource, CancellationReason;
import '../../../core/utils/formatters.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

/// Booking type enumeration
enum BookingType {
  consultation('CONSULTATION'),
  subscription('SUBSCRIPTION'),
  webinar('WEBINAR'),
  classes('CLASS'), // 'class' is a reserved keyword, using 'classes'
  trial('TRIAL');

  final String value;
  const BookingType(this.value);

  factory BookingType.fromString(String value) {
    return BookingType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => BookingType.consultation,
    );
  }
}

/// Request status enumeration
enum RequestStatus {
  pending('PENDING'),
  approved('APPROVED'),
  approvedPendingPayment('APPROVED_PENDING_PAYMENT'),
  scheduled('SCHEDULED'),
  completed('COMPLETED'),
  rejected('REJECTED'),
  cancelled('CANCELLED'),
  expired('EXPIRED');

  final String value;
  const RequestStatus(this.value);

  factory RequestStatus.fromString(String value) {
    return RequestStatus.values.firstWhere(
      (e) => e.value == value,
      orElse: () => RequestStatus.pending,
    );
  }
}

/// Represents a booking (consultation, subscription, webinar, or class)
@freezed
class Booking with _$Booking {
  const factory Booking({
    required String id,
    required BookingType bookingType,
    required RequestStatus status,
    String? message,
    DateTime? createdAt,
    DateTime? updatedAt,
    // Appointment ID for joining meetings
    String? appointmentId,
    // Plan info
    String? planId,
    String? planTitle,
    double? planPrice,
    @Default('INR') String planCurrency,
    double? planDuration,
    // Consultant info
    String? consultantProfileId,
    String? consultantUserId,
    String? consultantName,
    String? consultantImage,
    // Consultee info (for consultant view)
    String? consulteeProfileId,
    String? consulteeUserId,
    String? consulteeName,
    String? consulteeImage,
    // Slots (for consultations and webinars)
    @Default([]) List<BookingSlot> slots,
    // Subscription/Class-specific scheduling period
    DateTime? schedulingPeriodStartsAt,
    DateTime? schedulingPeriodEndsAt,
    String? schedulingTimezone,
    int? totalSessions,
    double? sessionDurationInHours,
    // Duration in months (for subscriptions and classes)
    int? durationInMonths,
    // Webinar/Class-specific
    int? maxParticipants,
    // Cancellation fields
    CancellationReason? cancellationReason,
    String? cancellationNotes,
    DateTime? cancelledAt,
    String? cancelledBy,
    // Booking source
    BookingSource? bookingSource,
    // Feedback fields
    String? feedbackFromConsultee,
    String? feedbackFromConsultant,
    double? rating,
    // Participant info (for webinars/classes)
    @Default([]) List<BookingParticipant> participants,
    @Default(0) int participantCount,
    // Extended plan details (for webinar/class detail views)
    String? planDescription,
    String? planLanguage,
    String? planLevel,
    String? planPrerequisites,
    String? planMaterialProvided,
    @Default([]) List<String> planLearningOutcomes,
    @Default(false) bool planCertificateProvided,
    @Default(false) bool planRecordingEnabled,
    int? meetingsPerWeek,
    double? totalHours,
  }) = _Booking;

  const Booking._();

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

  /// Display name for the "other party" in list views.
  /// Uses consultant fields first (consultee view), falls back to consultee
  /// fields (consultant view).
  String? get displayName => consultantName ?? consulteeName;

  /// Display image for the "other party" in list views.
  String? get displayImage => consultantImage ?? consulteeImage;

  /// Whether this is a group program (webinar or class)
  bool get isGroupProgram =>
      bookingType == BookingType.webinar || bookingType == BookingType.classes;

  /// Formatted price (e.g., "₹2,000")
  String get formattedPrice {
    if (planPrice == null) return 'Contact';
    final symbol = planCurrency == 'INR' ? '₹' : '\$';
    return '$symbol${planPrice!.toStringAsFixed(0)}';
  }

  /// Status display text
  String get statusText {
    switch (status) {
      case RequestStatus.pending:
        return 'Pending';
      case RequestStatus.approved:
        return 'Approved';
      case RequestStatus.approvedPendingPayment:
        return 'Awaiting Payment';
      case RequestStatus.scheduled:
        return 'Scheduled';
      case RequestStatus.rejected:
        return 'Rejected';
      case RequestStatus.cancelled:
        return 'Cancelled';
      case RequestStatus.expired:
        return 'Expired';
      case RequestStatus.completed:
        return 'Completed';
    }
  }

  /// Whether the booking can be cancelled (based on status only)
  bool get canCancel {
    return status == RequestStatus.pending ||
        status == RequestStatus.approved ||
        status == RequestStatus.approvedPendingPayment ||
        status == RequestStatus.scheduled;
  }

  /// First scheduled slot time
  DateTime? get scheduledTime {
    if (slots.isEmpty) return null;
    return slots.first.startsAt;
  }

  /// Whether the booking is in a reschedulable status
  bool get _isReschedulableStatus {
    return status == RequestStatus.pending ||
        status == RequestStatus.approved ||
        status == RequestStatus.approvedPendingPayment ||
        status == RequestStatus.scheduled;
  }

  /// Whether the booking is more than 24 hours away
  bool get _isMoreThan24HoursAway {
    if (slots.isEmpty) return true; // No slots yet means no time restriction
    final now = DateTime.now();
    final hoursUntilSlot = slots.first.startsAt.difference(now).inHours;
    return hoursUntilSlot >= 24;
  }

  /// Whether the booking can be rescheduled (status + 24h check)
  bool get canReschedule {
    if (!_isReschedulableStatus) return false;
    return _isMoreThan24HoursAway;
  }

  /// Whether the booking can be cancelled now (status + 24h check)
  bool get canCancelNow {
    if (!canCancel) return false;
    return _isMoreThan24HoursAway;
  }

  /// Whether the booking has been paid for
  bool get isPaid {
    return status == RequestStatus.scheduled ||
        status == RequestStatus.approved;
  }

  /// Whether the user can join the meeting
  /// Can join 10 minutes before start until end time
  bool get canJoinMeeting {
    if (status != RequestStatus.scheduled) return false;
    if (slots.isEmpty) return false;

    final slot = slots.first;
    // Only non-tentative slots can be joined
    if (slot.isTentative) return false;

    final now = DateTime.now();
    final canJoinFrom = slot.startsAt.subtract(const Duration(minutes: 10));
    final canJoinUntil = slot.endsAt;
    return now.isAfter(canJoinFrom) && now.isBefore(canJoinUntil);
  }

  /// Status description text for detail view
  String get statusDescription {
    switch (status) {
      case RequestStatus.pending:
        return 'Waiting for consultant approval';
      case RequestStatus.approved:
        return 'Approved by consultant';
      case RequestStatus.approvedPendingPayment:
        return 'Payment required to confirm your booking';
      case RequestStatus.scheduled:
        return 'Confirmed and scheduled';
      case RequestStatus.rejected:
        return 'Request was rejected by the consultant';
      case RequestStatus.cancelled:
        return 'This booking has been cancelled';
      case RequestStatus.expired:
        return 'This request has expired';
      case RequestStatus.completed:
        return 'Session completed';
    }
  }
}

/// Represents a slot within a booking
@freezed
class BookingSlot with _$BookingSlot {
  const factory BookingSlot({
    required String id,
    required DateTime startsAt,
    required DateTime endsAt,
    @Default(false) bool isTentative,
  }) = _BookingSlot;

  const BookingSlot._();

  factory BookingSlot.fromJson(Map<String, dynamic> json) =>
      _$BookingSlotFromJson(json);

  /// Formatted date (e.g., "Mon, Jan 15")
  /// Date is converted from UTC to local timezone for display
  String get formattedDate {
    final localStart = startsAt.toLocal();
    const weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    final weekday = weekdays[localStart.weekday - 1];
    final month = months[localStart.month - 1];
    return '$weekday, $month ${localStart.day}';
  }

  /// Formatted time range
  /// Times are converted from UTC to local timezone for display
  String get formattedTimeRange => Formatters.timeRange(startsAt, endsAt);
}

/// Request to create a consultation booking
@freezed
class ConsultationBookingRequest with _$ConsultationBookingRequest {
  const factory ConsultationBookingRequest({
    required String consultantProfileId,
    required String planId,
    required List<DateTime> slotStartTimes,
    String? message,
  }) = _ConsultationBookingRequest;

  factory ConsultationBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$ConsultationBookingRequestFromJson(json);

  const ConsultationBookingRequest._();

  Map<String, dynamic> toRequestJson() => {
        'type': 'CONSULTATION',
        'consultantProfileId': consultantProfileId,
        'planId': planId,
        'slotStartTimes':
            slotStartTimes.map((dt) => dt.toUtc().toIso8601String()).toList(),
        if (message != null) 'message': message,
      };
}

/// Request to create a subscription booking
///
/// Note: schedulingPeriodEnd is auto-calculated by the backend based on
/// the plan's durationInMonths, so we only send the start date.
@freezed
class SubscriptionBookingRequest with _$SubscriptionBookingRequest {
  const factory SubscriptionBookingRequest({
    required String consultantProfileId,
    required String planId,
    required DateTime schedulingPeriodStart,
    String? timezone,
    String? message,
  }) = _SubscriptionBookingRequest;

  factory SubscriptionBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionBookingRequestFromJson(json);

  const SubscriptionBookingRequest._();

  Map<String, dynamic> toRequestJson() => {
        'type': 'SUBSCRIPTION',
        'consultantProfileId': consultantProfileId,
        'planId': planId,
        'schedulingPeriodStart':
            schedulingPeriodStart.toUtc().toIso8601String(),
        if (timezone != null) 'timezone': timezone,
        if (message != null) 'message': message,
      };
}

/// Paginated list of bookings
@freezed
class BookingsResponse with _$BookingsResponse {
  const factory BookingsResponse({
    required List<Booking> bookings,
    required BookingsPagination pagination,
  }) = _BookingsResponse;

  factory BookingsResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingsResponseFromJson(json);
}

/// Pagination info for bookings
@freezed
class BookingsPagination with _$BookingsPagination {
  const factory BookingsPagination({
    required int page,
    required int pageSize,
    required int totalCount,
    required int totalPages,
  }) = _BookingsPagination;

  factory BookingsPagination.fromJson(Map<String, dynamic> json) =>
      _$BookingsPaginationFromJson(json);
}

/// Participant info for group programs (webinars/classes)
@freezed
class BookingParticipant with _$BookingParticipant {
  const factory BookingParticipant({
    required String id,
    String? name,
    String? image,
  }) = _BookingParticipant;

  factory BookingParticipant.fromJson(Map<String, dynamic> json) =>
      _$BookingParticipantFromJson(json);
}
