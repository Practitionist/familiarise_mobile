import '../entities/booking/booking_entities.dart';

/// Repository interface for booking operations
abstract class BookingRepository {
  /// Get consultant availability for a date range
  Future<List<DayAvailability>> getConsultantAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
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
}
