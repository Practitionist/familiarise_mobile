import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/booking/booking_entities.dart';
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
  }) {
    return _remoteSource.getConsultantAvailability(
      consultantProfileId: consultantProfileId,
      startDate: startDate,
      endDate: endDate,
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
}
