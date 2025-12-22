import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/booking_repository_impl.dart';
import '../../../domain/entities/booking/booking_entities.dart';

part 'booking_flow_provider.freezed.dart';
part 'booking_flow_provider.g.dart';

/// State of the booking flow
@freezed
class BookingFlowState with _$BookingFlowState {
  const factory BookingFlowState.initial() = _Initial;
  const factory BookingFlowState.loading() = _Loading;
  const factory BookingFlowState.success(Booking booking) = _Success;
  const factory BookingFlowState.error(String message) = _Error;
}

/// Provider for managing the booking flow
@riverpod
class BookingFlow extends _$BookingFlow {
  @override
  BookingFlowState build() => const BookingFlowState.initial();

  /// Create a consultation booking
  Future<void> createConsultationBooking({
    required String consultantProfileId,
    required String planId,
    required List<DateTime> slotStartTimes,
    String? message,
  }) async {
    state = const BookingFlowState.loading();

    try {
      final repository = ref.read(bookingRepositoryProvider);
      final booking = await repository.createConsultationBooking(
        ConsultationBookingRequest(
          consultantProfileId: consultantProfileId,
          planId: planId,
          slotStartTimes: slotStartTimes,
          message: message,
        ),
      );
      state = BookingFlowState.success(booking);
    } catch (e) {
      state = BookingFlowState.error(e.toString());
    }
  }

  /// Create a subscription booking
  Future<void> createSubscriptionBooking({
    required String consultantProfileId,
    required String planId,
    required DateTime schedulingPeriodStart,
    required DateTime schedulingPeriodEnd,
    String? timezone,
    String? message,
  }) async {
    state = const BookingFlowState.loading();

    try {
      final repository = ref.read(bookingRepositoryProvider);
      final booking = await repository.createSubscriptionBooking(
        SubscriptionBookingRequest(
          consultantProfileId: consultantProfileId,
          planId: planId,
          schedulingPeriodStart: schedulingPeriodStart,
          schedulingPeriodEnd: schedulingPeriodEnd,
          timezone: timezone,
          message: message,
        ),
      );
      state = BookingFlowState.success(booking);
    } catch (e) {
      state = BookingFlowState.error(e.toString());
    }
  }

  /// Reset the booking flow state
  void reset() {
    state = const BookingFlowState.initial();
  }
}

/// Provider for managing booking cancellation
@riverpod
class BookingCancellation extends _$BookingCancellation {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  /// Cancel a booking
  Future<bool> cancelBooking({
    required String id,
    required BookingType type,
    String? reason,
  }) async {
    state = const AsyncLoading();

    try {
      final repository = ref.read(bookingRepositoryProvider);
      await repository.cancelBooking(id: id, type: type, reason: reason);
      state = const AsyncData(null);
      return true;
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return false;
    }
  }
}
