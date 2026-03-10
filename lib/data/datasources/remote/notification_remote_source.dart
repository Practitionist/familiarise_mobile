import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../domain/entities/notification/notification_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'notification_remote_source.g.dart';

/// Provider for NotificationRemoteSource
@riverpod
NotificationRemoteSource notificationRemoteSource(Ref ref) {
  return NotificationRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for notification operations
abstract class NotificationRemoteSource {
  /// Get user's notification preferences
  Future<NotificationPreference> getPreferences();

  /// Update user's notification preferences
  Future<NotificationPreference> updatePreferences(
      NotificationPreference prefs);

  /// Get subscriber hash for Novu Inbox HMAC authentication
  Future<String> getSubscriberHash();

  /// Register an FCM token with the backend
  Future<void> registerFcmToken({
    required String token,
    required String platform,
  });

  /// Unregister an FCM token from the backend
  Future<void> unregisterFcmToken({required String token});

  /// Sync subscriber profile with Novu
  Future<void> syncSubscriber();
}

/// Implementation of NotificationRemoteSource
class NotificationRemoteSourceImpl implements NotificationRemoteSource {
  final Dio _dio;

  NotificationRemoteSourceImpl(this._dio);

  @override
  Future<NotificationPreference> getPreferences() async {
    try {
      final response = await _dio.get(
        ApiEndpoints.notificationsPreferences,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return NotificationPreference.fromJson(data);
      }

      throw ServerException(
        message: 'Failed to fetch notification preferences',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch notification preferences',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<NotificationPreference> updatePreferences(
      NotificationPreference prefs) async {
    try {
      final response = await _dio.put(
        ApiEndpoints.notificationsPreferences,
        data: prefs.toJson(),
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return NotificationPreference.fromJson(data);
      }

      throw ServerException(
        message: 'Failed to update notification preferences',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      final errorMessage = _extractErrorMessage(e);
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: errorMessage ?? 'Failed to update notification preferences',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<String> getSubscriberHash() async {
    try {
      final response = await _dio.get(
        ApiEndpoints.notificationsSubscriberHash,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return data['subscriberHash'] as String;
      }

      throw ServerException(
        message: 'Failed to fetch subscriber hash',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch subscriber hash',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<void> registerFcmToken({
    required String token,
    required String platform,
  }) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.notificationsRegisterToken,
        data: {
          'token': token,
          'platform': platform,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      }

      throw ServerException(
        message: 'Failed to register FCM token',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to register FCM token',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<void> unregisterFcmToken({required String token}) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.notificationsUnregisterToken,
        data: {'token': token},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      }

      throw ServerException(
        message: 'Failed to unregister FCM token',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to unregister FCM token',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<void> syncSubscriber() async {
    try {
      final response = await _dio.post(
        ApiEndpoints.notificationsSubscriberSync,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      }

      throw ServerException(
        message: 'Failed to sync subscriber',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to sync subscriber',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
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
