import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
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

/// Implementation of BookingRemoteSource
class BookingRemoteSourceImpl implements BookingRemoteSource {
  final Dio _dio;

  BookingRemoteSourceImpl(this._dio);

  @override
  Future<List<DayAvailability>> getConsultantAvailability({
    required String consultantProfileId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    try {
      final response = await _dio.get(
        '/api/consultants/$consultantProfileId/availability',
        queryParameters: {
          'startDate': startDate.toUtc().toIso8601String(),
          'endDate': endDate.toUtc().toIso8601String(),
        },
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
    int page = 0,
    int pageSize = 20,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'pageSize': pageSize,
      };
      if (status != null) {
        queryParams['status'] = status;
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
      final errorMessage = _extractErrorMessage(e);
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: errorMessage ?? 'Failed to create booking',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
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
      final errorMessage = _extractErrorMessage(e);
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: errorMessage ?? 'Failed to create booking',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
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
      throw ServerException(
        message: e.message ?? 'Failed to cancel booking',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  /// Parse a booking from API response
  Booking _parseBooking(Map<String, dynamic> json) {
    return Booking(
      id: json['id'] as String,
      bookingType: BookingType.fromString(
        json['bookingType'] as String? ?? 'CONSULTATION',
      ),
      status: RequestStatus.fromString(json['status'] as String? ?? 'PENDING'),
      message: json['message'] as String?,
      createdAt: _parseDateTime(json['createdAt']),
      updatedAt: _parseDateTime(json['updatedAt']),
      planId: json['planId'] as String?,
      planTitle: json['planTitle'] as String?,
      planPrice: (json['planPrice'] as num?)?.toDouble(),
      planCurrency: json['planCurrency'] as String? ?? 'INR',
      planDuration: (json['planDuration'] as num?)?.toDouble(),
      consultantProfileId: json['consultantProfileId'] as String?,
      consultantUserId: json['consultantUserId'] as String?,
      consultantName: json['consultantName'] as String?,
      consultantImage: json['consultantImage'] as String?,
      slots: _parseSlots(json['slots']),
      schedulingPeriodStartsAt:
          _parseDateTime(json['schedulingPeriodStartsAt']),
      schedulingPeriodEndsAt: _parseDateTime(json['schedulingPeriodEndsAt']),
      schedulingTimezone: json['schedulingTimezone'] as String?,
      totalSessions: json['totalSessions'] as int?,
      sessionDurationInHours:
          (json['sessionDurationInHours'] as num?)?.toDouble(),
    );
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
}
