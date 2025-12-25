import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

/// Booking type enumeration
enum BookingType {
  consultation('CONSULTATION'),
  subscription('SUBSCRIPTION'),
  webinar('WEBINAR'),
  classes('CLASS'); // 'class' is a reserved keyword, using 'classes'

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
  rejected('REJECTED'),
  cancelled('CANCELLED'),
  expired('EXPIRED'),
  completed('COMPLETED');

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
  }) = _Booking;

  const Booking._();

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

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

  /// Whether the booking can be cancelled
  bool get canCancel {
    return status == RequestStatus.pending ||
        status == RequestStatus.approved ||
        status == RequestStatus.approvedPendingPayment;
  }

  /// First scheduled slot time
  DateTime? get scheduledTime {
    if (slots.isEmpty) return null;
    return slots.first.startsAt;
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
  String get formattedDate {
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
    final weekday = weekdays[startsAt.weekday - 1];
    final month = months[startsAt.month - 1];
    return '$weekday, $month ${startsAt.day}';
  }

  /// Formatted time range
  String get formattedTimeRange {
    final startHour = startsAt.hour % 12 == 0 ? 12 : startsAt.hour % 12;
    final startMin = startsAt.minute.toString().padLeft(2, '0');
    final startPeriod = startsAt.hour < 12 ? 'AM' : 'PM';

    final endHour = endsAt.hour % 12 == 0 ? 12 : endsAt.hour % 12;
    final endMin = endsAt.minute.toString().padLeft(2, '0');
    final endPeriod = endsAt.hour < 12 ? 'AM' : 'PM';

    return '$startHour:$startMin $startPeriod - $endHour:$endMin $endPeriod';
  }
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
