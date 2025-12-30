import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/sentry_logger.dart';
import '../../../data/repositories/booking_repository_impl.dart';
import '../../../domain/entities/booking/booking_entities.dart';

part 'booking_actions_provider.g.dart';

/// State for booking actions (reschedule, cancel)
sealed class BookingActionState {
  const BookingActionState();
}

class BookingActionIdle extends BookingActionState {
  const BookingActionIdle();
}

class BookingActionLoading extends BookingActionState {
  const BookingActionLoading();
}

class BookingActionSuccess extends BookingActionState {
  final String message;
  final Booking? updatedBooking;

  const BookingActionSuccess({
    required this.message,
    this.updatedBooking,
  });
}

class BookingActionError extends BookingActionState {
  final String message;

  const BookingActionError(this.message);
}

/// Provider for booking actions (reschedule, cancel)
@riverpod
class BookingActions extends _$BookingActions {
  @override
  BookingActionState build() => const BookingActionIdle();

  /// Reschedule a booking
  ///
  /// For consultations: Marks all slots as tentative and reverts to PENDING
  /// For subscriptions with [slotId]: Only marks that specific slot as tentative
  /// For subscriptions without [slotId]: Marks all slots as tentative and reverts to PENDING
  Future<bool> rescheduleBooking({
    required String id,
    required BookingType type,
    String? slotId,
  }) async {
    state = const BookingActionLoading();

    // Add breadcrumb for user action tracking
    SentryLogger.addBreadcrumb(
      message: 'User initiated reschedule',
      category: 'booking.action',
      data: {
        'bookingId': id,
        'bookingType': type.value,
        'slotId': slotId,
        'isIndividualSession': slotId != null,
      },
    );

    try {
      final repository = ref.read(bookingRepositoryProvider);
      final updatedBooking = await repository.rescheduleBooking(
        id: id,
        type: type,
        slotId: slotId,
      );

      final message = slotId != null
          ? 'Session marked for rescheduling. Please select a new time.'
          : 'Booking rescheduled. Please select new time slot(s).';

      state = BookingActionSuccess(
        message: message,
        updatedBooking: updatedBooking,
      );
      return true;
    } catch (e, stackTrace) {
      await SentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'BookingActions.rescheduleBooking',
        extras: {
          'bookingId': id,
          'bookingType': type.value,
          'slotId': slotId,
        },
      );
      state = BookingActionError(_extractErrorMessage(e));
      return false;
    }
  }

  /// Cancel a booking
  ///
  /// [reason] is optional and will be stored with the cancellation
  Future<bool> cancelBooking({
    required String id,
    required BookingType type,
    String? reason,
  }) async {
    state = const BookingActionLoading();

    // Add breadcrumb for user action tracking
    SentryLogger.addBreadcrumb(
      message: 'User initiated cancellation',
      category: 'booking.action',
      data: {
        'bookingId': id,
        'bookingType': type.value,
        'hasReason': reason != null,
      },
    );

    try {
      final repository = ref.read(bookingRepositoryProvider);
      await repository.cancelBooking(
        id: id,
        type: type,
        reason: reason,
      );

      state = const BookingActionSuccess(
        message: 'Booking cancelled successfully. Refund will be processed within 5-7 business days.',
      );
      return true;
    } catch (e, stackTrace) {
      await SentryLogger.captureException(
        e,
        stackTrace: stackTrace,
        context: 'BookingActions.cancelBooking',
        extras: {
          'bookingId': id,
          'bookingType': type.value,
        },
      );
      state = BookingActionError(_extractErrorMessage(e));
      return false;
    }
  }

  /// Reset state to idle
  void reset() {
    state = const BookingActionIdle();
  }

  /// Extract error message from exception
  String _extractErrorMessage(dynamic error) {
    final errorStr = error.toString();

    // Common error patterns
    if (errorStr.contains('24 hours') || errorStr.contains('24h')) {
      return 'Cannot modify bookings within 24 hours of the scheduled time.';
    }
    if (errorStr.contains('not found') || errorStr.contains('NotFound')) {
      return 'Booking not found. It may have been deleted.';
    }
    if (errorStr.contains('unauthorized') || errorStr.contains('Unauthorized')) {
      return 'You are not authorized to modify this booking.';
    }
    if (errorStr.contains('network') || errorStr.contains('connection')) {
      return 'Network error. Please check your connection and try again.';
    }

    // Generic fallback
    return 'Something went wrong. Please try again.';
  }
}
