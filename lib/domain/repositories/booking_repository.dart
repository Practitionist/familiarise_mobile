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

  /// Get user's bookings with pagination and optional status filter
  Future<BookingsResponse> getMyBookings({
    String? status,
    int page = 0,
    int pageSize = 20,
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
}
