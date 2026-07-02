import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../../shared/providers/core_providers.dart';
import 'booking_json_parser.dart';

part 'booking_remote_source.g.dart';

/// Provider for BookingRemoteSource
@riverpod
BookingRemoteSource bookingRemoteSource(Ref ref) {
  return BookingRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for booking operations
abstract class BookingRemoteSource {
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
}

/// Implementation of BookingRemoteSource
class BookingRemoteSourceImpl implements BookingRemoteSource {
  final Dio _dio;

  BookingRemoteSourceImpl(this._dio);

  @override
  Future<List<DayAvailability>> getConsultantAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
    String? planId,
    String? planType,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'startDate': startDate.toUtc().toIso8601String(),
        'endDate': endDate.toUtc().toIso8601String(),
      };
      if (planId != null) {
        queryParams['planId'] = planId;
      }
      if (planType != null) {
        queryParams['planType'] = planType;
      }

      final response = await _dio.get(
        '/api/consultants/$consultantProfileId/availability',
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final availabilityJson = data['availability'] as List<dynamic>;

        return availabilityJson.map((json) {
          final dayJson = json as Map<String, dynamic>;
          // Parse date string to DateTime
          final dateStr = dayJson['date'] as String;
          final date = DateTime.parse(dateStr);

          // Parse slots
          final slotsJson = dayJson['slots'] as List<dynamic>? ?? [];
          final slots = slotsJson
              .map((s) => AvailabilitySlot.fromJson(s as Map<String, dynamic>))
              .toList();

          return DayAvailability(date: date, slots: slots);
        }).toList();
      }

      throw ServerException(
        message: 'Failed to fetch availability',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'BookingRemoteSource.getConsultantAvailability',
        extras: {
          'consultantProfileId': consultantProfileId,
          'statusCode': e.response?.statusCode,
        },
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch availability',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<BookingsResponse> getMyBookings({
    String? status,
    String? role,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (status != null) {
        queryParams['status'] = status;
      }
      if (role != null) {
        queryParams['role'] = role;
      }

      final response = await _dio.get(
        '/api/appointments',
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseBookingsResponse(data);
      }

      throw ServerException(
        message: 'Failed to fetch bookings',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'BookingRemoteSource.getMyBookings',
        extras: {
          'status': status,
          'statusCode': e.response?.statusCode,
        },
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch bookings',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<Booking> getBookingById({
    required String id,
    required BookingType type,
  }) async {
    try {
      final response = await _dio.get(
        '/api/appointments/$id',
        queryParameters: {'type': type.value},
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseBooking(data);
      }

      throw ServerException(
        message: 'Failed to fetch booking details',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw const NotFoundException(resource: 'Booking');
      }
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'BookingRemoteSource.getBookingById',
        extras: {
          'bookingId': id,
          'bookingType': type.value,
          'statusCode': e.response?.statusCode,
        },
      );
      throw ServerException(
        message: e.message ?? 'Failed to fetch booking details',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<Booking> createConsultationBooking(
    ConsultationBookingRequest request,
  ) async {
    try {
      final response = await _dio.post(
        '/api/appointments',
        data: request.toRequestJson(),
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseBooking(data);
      }

      throw ServerException(
        message: 'Failed to create booking',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      _throwBookingError(e);
    }
  }

  @override
  Future<Booking> createSubscriptionBooking(
    SubscriptionBookingRequest request,
  ) async {
    try {
      final response = await _dio.post(
        '/api/appointments',
        data: request.toRequestJson(),
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseBooking(data);
      }

      throw ServerException(
        message: 'Failed to create booking',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      _throwBookingError(e);
    }
  }

  /// Handle booking creation errors with specific error codes
  Never _throwBookingError(DioException e) {
    if (e.error is AppException) {
      throw e.error as AppException;
    }
    final errorCode = _extractErrorCode(e);
    final errorMessage = _extractErrorMessage(e);

    if (e.response?.statusCode == 409) {
      if (errorCode == 'SLOT_CONFLICT') {
        throw SlotConflictException(
          message: errorMessage ?? 'Selected slot is no longer available',
        );
      }
      if (errorCode == 'DUPLICATE_BOOKING') {
        throw const AlreadyExistsException(resource: 'Booking');
      }
    }
    if (e.response?.statusCode == 400 &&
        errorCode == 'MISSING_CONSULTEE_PROFILE') {
      throw ServerException(
        message:
            errorMessage ?? 'Please complete your profile before booking',
        statusCode: 400,
        errorCode: 'MISSING_CONSULTEE_PROFILE',
      );
    }

    AppSentryLogger.captureException(
      e,
      stackTrace: e.stackTrace,
      context: 'BookingRemoteSource._throwBookingError',
      extras: {
        'statusCode': e.response?.statusCode,
        'errorCode': errorCode,
        'errorMessage': errorMessage,
      },
    );

    throw ServerException(
      message: errorMessage ?? 'Failed to create booking',
      statusCode: e.response?.statusCode,
      originalError: e,
    );
  }

  @override
  Future<void> cancelBooking({
    required String id,
    required BookingType type,
    String? reason,
  }) async {
    try {
      final response = await _dio.post(
        '/api/appointments/$id/cancel',
        queryParameters: {'type': type.value},
        data: reason != null ? {'reason': reason} : null,
      );

      if (response.statusCode == 200) {
        return;
      }

      throw ServerException(
        message: 'Failed to cancel booking',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw const NotFoundException(resource: 'Booking');
      }
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'BookingRemoteSource.cancelBooking',
        extras: {
          'bookingId': id,
          'bookingType': type.value,
          'statusCode': e.response?.statusCode,
        },
      );
      throw ServerException(
        message: e.message ?? 'Failed to cancel booking',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<void> respondToBookingRequest({
    required String id,
    required BookingType type,
    required bool approve,
  }) async {
    try {
      final response = await _dio.post(
        '/api/appointments/$id/respond',
        queryParameters: {'type': type.value},
        data: {'action': approve ? 'approve' : 'reject'},
      );

      if (response.statusCode == 200) {
        return;
      }

      throw ServerException(
        message: 'Failed to respond to booking request',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw const NotFoundException(resource: 'Booking request');
      }
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'BookingRemoteSource.respondToBookingRequest',
        extras: {
          'bookingId': id,
          'bookingType': type.value,
          'statusCode': e.response?.statusCode,
        },
      );
      throw ServerException(
        message: e.message ?? 'Failed to respond to booking request',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<Booking> rescheduleBooking({
    required String id,
    required BookingType type,
    String? slotId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/appointments/$id/reschedule',
        queryParameters: {'type': type.value},
        data: slotId != null ? {'slotId': slotId} : null,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final bookingJson = data['booking'] as Map<String, dynamic>;
        return _parseBooking(bookingJson);
      }

      throw ServerException(
        message: 'Failed to reschedule booking',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw const NotFoundException(resource: 'Booking');
      }
      // Handle 400 for 24h restriction
      if (e.response?.statusCode == 400) {
        final errorMessage = _extractErrorMessage(e) ??
            'Cannot reschedule within 24 hours of appointment';
        throw ValidationException(
          errors: {
            'reschedule': [errorMessage]
          },
          message: errorMessage,
        );
      }
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      AppSentryLogger.captureException(
        e,
        stackTrace: e.stackTrace,
        context: 'BookingRemoteSource.rescheduleBooking',
        extras: {
          'bookingId': id,
          'bookingType': type.value,
          'slotId': slotId,
          'statusCode': e.response?.statusCode,
        },
      );
      throw ServerException(
        message: _extractErrorMessage(e) ?? 'Failed to reschedule booking',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  /// Parse a booking from API response.
  /// Delegates to the shared [parseBookingJson] parser.
  Booking _parseBooking(Map<String, dynamic> json) =>
      parseBookingJson(json);

  /// Parse bookings response with pagination
  BookingsResponse _parseBookingsResponse(Map<String, dynamic> json) {
    final bookingsJson = json['bookings'] as List<dynamic>? ?? [];
    final paginationJson =
        json['pagination'] as Map<String, dynamic>? ?? <String, dynamic>{};

    final bookings = bookingsJson
        .map((b) => _parseBooking(b as Map<String, dynamic>))
        .toList();

    final pagination = BookingsPagination(
      page: paginationJson['page'] as int? ?? 0,
      pageSize: paginationJson['pageSize'] as int? ?? 20,
      totalCount: paginationJson['totalCount'] as int? ?? 0,
      totalPages: paginationJson['totalPages'] as int? ?? 0,
    );

    return BookingsResponse(bookings: bookings, pagination: pagination);
  }

  /// Extract error message from DioException
  String? _extractErrorMessage(DioException e) {
    final data = e.response?.data;
    if (data is Map<String, dynamic>) {
      final error = data['error'];
      if (error is Map<String, dynamic>) {
        return error['message'] as String?;
      }
    }
    return e.message;
  }

  /// Extract error code from DioException response
  String? _extractErrorCode(DioException e) {
    final data = e.response?.data;
    if (data is Map<String, dynamic>) {
      final error = data['error'];
      if (error is Map<String, dynamic>) {
        return error['code'] as String?;
      }
      return data['code'] as String?;
    }
    return null;
  }

}
