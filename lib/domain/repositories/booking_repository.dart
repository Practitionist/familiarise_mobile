import '../entities/booking/booking_entities.dart';
import '../entities/chat/chat_entities.dart';

/// Repository interface for booking operations
abstract class BookingRepository {
  /// Get consultant availability for a date range
  ///
  /// [planId] and [planType] are used to determine slot duration.
  Future<List<DayAvailability>> getConsultantAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
    String? planId,
    String? planType,
  });

  /// Get all of the user's bookings with optional status/role filter
  ///
  /// [role] can be 'consultant' to fetch bookings where the user is the
  /// consultant (i.e. their clients' bookings).
  Future<BookingsResponse> getMyBookings({
    String? status,
    String? role,
  });

  /// Get booking details by ID
  Future<Booking> getBookingById({
    required String id,
    required BookingType type,
  });

  /// Create a consultation booking
  Future<Booking> createConsultationBooking(
    ConsultationBookingRequest request,
  );

  /// Create a subscription booking
  Future<Booking> createSubscriptionBooking(
    SubscriptionBookingRequest request,
  );

  /// Cancel a booking
  Future<void> cancelBooking({
    required String id,
    required BookingType type,
    String? reason,
  });

  /// Respond to a pending booking request (consultant approve/reject)
  Future<void> respondToBookingRequest({
    required String id,
    required BookingType type,
    required bool approve,
  });

  /// Reschedule a booking
  /// For subscriptions, optionally pass [slotId] for individual session reschedule
  Future<Booking> rescheduleBooking({
    required String id,
    required BookingType type,
    String? slotId,
  });

  /// Get all unique consultants the user has bookings with
  ///
  /// Returns a deduplicated list of consultants from all booking types
  /// (consultations, subscriptions, webinars, classes), sorted by most recent.
  Future<List<AppointmentConsultant>> getAllMyConsultants();

  /// Get all unique clients (consultees) for the current consultant
  ///
  /// Fetches bookings with role=consultant and extracts unique consultees,
  /// sorted by most recent booking.
  Future<List<AppointmentConsultant>> getAllMyClients();
}
