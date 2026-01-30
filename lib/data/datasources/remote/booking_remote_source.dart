import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/enums.dart'
    show BookingSource, CancellationReason;
import '../../../core/errors/exceptions.dart';
import '../../../core/utils/sentry_logger.dart';
import '../../../domain/entities/booking/booking_entities.dart';
import '../../../shared/providers/core_providers.dart';

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

  /// Parse a booking from API response
  ///
  /// Handles both consultee and consultant perspectives:
  /// - Falls back to `appointmentType` when `bookingType` is absent
  /// - Falls back to consultee fields when consultant fields are null
  ///   (when role=consultant, the "other party" info is in consultee fields)
  Booking _parseBooking(Map<String, dynamic> json) {
    return Booking(
      id: json['id'] as String,
      bookingType: BookingType.fromString(
        json['bookingType'] as String? ??
            json['appointmentType'] as String? ??
            'CONSULTATION',
      ),
      status: RequestStatus.fromString(json['status'] as String? ?? 'PENDING'),
      message: json['message'] as String?,
      createdAt: _parseDateTime(json['createdAt']),
      updatedAt: _parseDateTime(json['updatedAt']),
      appointmentId: json['appointmentId'] as String?,
      planId: json['planId'] as String?,
      planTitle: json['planTitle'] as String?,
      planPrice: (json['planPrice'] as num?)?.toDouble(),
      planCurrency: json['planCurrency'] as String? ?? 'INR',
      planDuration: (json['planDuration'] as num?)?.toDouble(),
      consultantProfileId: json['consultantProfileId'] as String?,
      consultantUserId: json['consultantUserId'] as String? ??
          json['consulteeUserId'] as String?,
      consultantName: json['consultantName'] as String? ??
          json['consulteeName'] as String?,
      consultantImage: json['consultantImage'] as String? ??
          json['consulteeImage'] as String?,
      slots: _parseSlots(json['slots']),
      schedulingPeriodStartsAt:
          _parseDateTime(json['schedulingPeriodStartsAt']),
      schedulingPeriodEndsAt: _parseDateTime(json['schedulingPeriodEndsAt']),
      schedulingTimezone: json['schedulingTimezone'] as String?,
      totalSessions: json['totalSessions'] as int?,
      sessionDurationInHours:
          (json['sessionDurationInHours'] as num?)?.toDouble(),
      // Cancellation fields
      cancellationReason: json['cancellationReason'] != null
          ? CancellationReason.values.firstWhere(
              (e) => e.name == json['cancellationReason'] ||
                  e.name ==
                      _camelCase(json['cancellationReason'] as String),
              orElse: () => CancellationReason.other,
            )
          : null,
      cancellationNotes: json['cancellationNotes'] as String?,
      cancelledAt: _parseDateTime(json['cancelledAt']),
      cancelledBy: json['cancelledBy'] as String?,
      // Booking source
      bookingSource: json['bookingSource'] != null
          ? BookingSource.values.firstWhere(
              (e) => e.name == json['bookingSource'] ||
                  e.name ==
                      _camelCase(json['bookingSource'] as String),
              orElse: () => BookingSource.requestSubmitted,
            )
          : null,
      // Feedback fields
      feedbackFromConsultee: json['feedbackFromConsultee'] as String?,
      feedbackFromConsultant: json['feedbackFromConsultant'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      // Participant info (for group programs)
      participants: _parseParticipants(json['participants']),
      participantCount: json['participantCount'] as int? ?? 0,
    );
  }

  /// Parse participants list from API response
  List<BookingParticipant> _parseParticipants(dynamic participantsJson) {
    if (participantsJson == null || participantsJson is! List) return [];
    return participantsJson.map((p) {
      final pMap = p as Map<String, dynamic>;
      return BookingParticipant(
        id: pMap['id'] as String,
        name: pMap['name'] as String?,
        image: pMap['image'] as String?,
      );
    }).toList();
  }

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

  /// Parse slots list
  List<BookingSlot> _parseSlots(dynamic slotsJson) {
    if (slotsJson == null) return [];
    if (slotsJson is! List) return [];

    return slotsJson.map((s) {
      final slotJson = s as Map<String, dynamic>;
      // Fail fast if startsAt/endsAt is null - indicates data integrity issue
      return BookingSlot(
        id: slotJson['id'] as String,
        startsAt: _parseDateTime(slotJson['startsAt'])!,
        endsAt: _parseDateTime(slotJson['endsAt'])!,
        isTentative: slotJson['isTentative'] as bool? ?? false,
      );
    }).toList();
  }

  /// Parse datetime from string or null
  DateTime? _parseDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;
    if (value is String) return DateTime.tryParse(value);
    return null;
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

  /// Convert SCREAMING_SNAKE_CASE or snake_case to camelCase
  String _camelCase(String input) {
    final parts = input.toLowerCase().split('_');
    return parts.first +
        parts.skip(1).map((p) => p[0].toUpperCase() + p.substring(1)).join();
  }
}
