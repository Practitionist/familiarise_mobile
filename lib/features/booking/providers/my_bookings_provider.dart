import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/enums.dart';
import '../../../data/repositories/booking_repository_impl.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../auth/providers/auth_provider.dart';

part 'my_bookings_provider.g.dart';

/// Provider for user's bookings list (fetches all bookings at once)
@riverpod
class MyBookings extends _$MyBookings {
  @override
  Future<List<Booking>> build() async {
    return _fetchBookings();
  }

  /// Fetch all bookings
  Future<List<Booking>> _fetchBookings() async {
    final repository = ref.read(bookingRepositoryProvider);
    final user = ref.read(currentUserProvider);
    final role = user?.role == UserRole.consultant ? 'consultant' : null;
    final response = await repository.getMyBookings(
      role: role,
    );

    return response.bookings;
  }

  /// Refresh the bookings list
  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}

/// Provider for a single booking detail
@riverpod
Future<Booking> bookingDetail(
  Ref ref, {
  required String id,
  required BookingType type,
}) async {
  final repository = ref.watch(bookingRepositoryProvider);
  return repository.getBookingById(id: id, type: type);
}
