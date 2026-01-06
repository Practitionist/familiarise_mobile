import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../domain/entities/meeting/meeting_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'meeting_remote_source.g.dart';

/// Provider for MeetingRemoteSource
@riverpod
MeetingRemoteSource meetingRemoteSource(Ref ref) {
  return MeetingRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for meeting operations
abstract class MeetingRemoteSource {
  /// Get meeting token for joining a video call
  Future<MeetingToken> getMeetingToken(String appointmentId);

  /// Get meeting session details
  Future<MeetingSession> getMeetingDetails(String appointmentId);

  /// Mark meeting as started
  Future<void> startMeeting(String appointmentId);

  /// Mark meeting as ended
  Future<void> endMeeting(String appointmentId);
}

/// Implementation of MeetingRemoteSource
class MeetingRemoteSourceImpl implements MeetingRemoteSource {
  final Dio _dio;

  MeetingRemoteSourceImpl(this._dio);

  @override
  Future<MeetingToken> getMeetingToken(String appointmentId) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.streamToken,
        data: {'appointmentId': appointmentId},
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return MeetingToken.fromJson(data);
      }

      throw ServerException(
        message: 'Failed to get meeting token',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to get meeting token',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<MeetingSession> getMeetingDetails(String appointmentId) async {
    try {
      final response = await _dio.get(
        ApiEndpoints.meetingByAppointmentId(appointmentId),
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return MeetingSession.fromJson(data);
      }

      throw ServerException(
        message: 'Failed to get meeting details',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      if (e.response?.statusCode == 404) {
        throw const NotFoundException(resource: 'Meeting');
      }
      throw ServerException(
        message: e.response?.data?['error']?['message'] ??
            'Failed to get meeting details',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<void> startMeeting(String appointmentId) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.meetingStart(appointmentId),
      );

      if (response.statusCode != 200 && response.statusCode != 204) {
        throw ServerException(
          message: 'Failed to start meeting',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message:
            e.response?.data?['error']?['message'] ?? 'Failed to start meeting',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<void> endMeeting(String appointmentId) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.meetingEnd(appointmentId),
      );

      if (response.statusCode != 200 && response.statusCode != 204) {
        throw ServerException(
          message: 'Failed to end meeting',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message:
            e.response?.data?['error']?['message'] ?? 'Failed to end meeting',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }
}
