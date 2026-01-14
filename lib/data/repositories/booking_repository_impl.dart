import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/booking/booking_entities.dart';
import '../../domain/entities/chat/chat_entities.dart';
import '../../domain/repositories/booking_repository.dart';
import '../datasources/remote/booking_remote_source.dart';

part 'booking_repository_impl.g.dart';

/// Provider for BookingRepository
@riverpod
BookingRepository bookingRepository(Ref ref) {
  return BookingRepositoryImpl(
    remoteSource: ref.watch(bookingRemoteSourceProvider),
  );
}

/// Implementation of BookingRepository
class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteSource _remoteSource;

  BookingRepositoryImpl({required BookingRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<List<DayAvailability>> getConsultantAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
    String? planId,
    String? planType,
  }) {
    return _remoteSource.getConsultantAvailability(
      consultantProfileId: consultantProfileId,
      startDate: startDate,
      endDate: endDate,
      planId: planId,
      planType: planType,
    );
  }

  @override
  Future<BookingsResponse> getMyBookings({
    String? status,
    int page = 0,
    int pageSize = 20,
  }) {
    return _remoteSource.getMyBookings(
      status: status,
      page: page,
      pageSize: pageSize,
    );
  }

  @override
  Future<Booking> getBookingById({
    required String id,
    required BookingType type,
  }) {
    return _remoteSource.getBookingById(id: id, type: type);
  }

  @override
  Future<Booking> createConsultationBooking(
    ConsultationBookingRequest request,
  ) {
    return _remoteSource.createConsultationBooking(request);
  }

  @override
  Future<Booking> createSubscriptionBooking(
    SubscriptionBookingRequest request,
  ) {
    return _remoteSource.createSubscriptionBooking(request);
  }

  @override
  Future<void> cancelBooking({
    required String id,
    required BookingType type,
    String? reason,
  }) {
    return _remoteSource.cancelBooking(id: id, type: type, reason: reason);
  }

  @override
  Future<Booking> rescheduleBooking({
    required String id,
    required BookingType type,
    String? slotId,
  }) {
    return _remoteSource.rescheduleBooking(id: id, type: type, slotId: slotId);
  }

  @override
  Future<List<AppointmentConsultant>> getAllMyConsultants() async {
    // Fetch all bookings (large page size to get all consultants)
    // We fetch without status filter to include all appointment types
    final response = await _remoteSource.getMyBookings(pageSize: 100);

    // Extract unique consultants by consultantUserId
    final consultantsMap = <String, AppointmentConsultant>{};

    for (final booking in response.bookings) {
      // Skip bookings without consultant info
      if (booking.consultantUserId == null) continue;

      final userId = booking.consultantUserId!;

      if (!consultantsMap.containsKey(userId)) {
        // First booking for this consultant - create entry with this booking type
        consultantsMap[userId] = AppointmentConsultant.fromBooking(booking)
            .copyWith(
          allBookingTypes:
              booking.bookingType != null ? [booking.bookingType!] : [],
        );
      } else {
        // Existing consultant - merge booking types
        final existing = consultantsMap[userId]!;
        final types = {...existing.allBookingTypes};
        if (booking.bookingType != null) {
          types.add(booking.bookingType!);
        }

        // Update with most recent booking data, keeping all types
        if (booking.createdAt != null &&
            (existing.lastAppointmentDate == null ||
                booking.createdAt!.isAfter(existing.lastAppointmentDate!))) {
          // This booking is more recent - use its data
          consultantsMap[userId] = AppointmentConsultant.fromBooking(booking)
              .copyWith(allBookingTypes: types.toList());
        } else {
          // Just update the types list on existing entry
          consultantsMap[userId] =
              existing.copyWith(allBookingTypes: types.toList());
        }
      }
    }

    // Sort by most recent appointment date (descending)
    final consultants = consultantsMap.values.toList()
      ..sort((a, b) {
        if (a.lastAppointmentDate == null && b.lastAppointmentDate == null) {
          return 0;
        }
        if (a.lastAppointmentDate == null) return 1;
        if (b.lastAppointmentDate == null) return -1;
        return b.lastAppointmentDate!.compareTo(a.lastAppointmentDate!);
      });

    return consultants;
  }
}
