import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/env_config.dart';
import '../constants/storage_keys.dart';
import '../errors/exceptions.dart';

part 'dio_client.g.dart';

/// Provides the configured Dio instance
@riverpod
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: EnvConfig.apiBaseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  // Add interceptors
  dio.interceptors.addAll([
    AuthInterceptor(ref),
    ErrorInterceptor(),
    LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
    ),
  ]);

  return dio;
}

/// Interceptor to add auth token to requests
class AuthInterceptor extends Interceptor {
  // ignore: unused_field - kept for future use (e.g., accessing auth state)
  final Ref _ref;

  AuthInterceptor(this._ref);

  static const _storage = FlutterSecureStorage();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Get token from secure storage
    final token = await _storage.read(key: StorageKeys.authToken);

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle 401 Unauthorized - clear token and redirect to login
    if (err.response?.statusCode == 401) {
      _storage.delete(key: StorageKeys.authToken);
      // Auth state will be handled by auth provider
    }
    handler.next(err);
  }

  /// Save auth token to secure storage
  static Future<void> saveToken(String token) async {
    await _storage.write(key: StorageKeys.authToken, value: token);
  }

  /// Clear auth token from secure storage
  static Future<void> clearToken() async {
    await _storage.delete(key: StorageKeys.authToken);
  }

  /// Get current auth token
  static Future<String?> getToken() async {
    return _storage.read(key: StorageKeys.authToken);
  }
}

/// Interceptor to handle errors consistently
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final exception = _mapDioExceptionToAppException(err);
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: exception,
        type: err.type,
        response: err.response,
      ),
    );
  }

  AppException _mapDioExceptionToAppException(DioException err) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkException(
          message: 'Connection timed out. Please try again.',
        );

      case DioExceptionType.connectionError:
        return const NetworkException(
          message: 'No internet connection. Please check your network.',
        );

      case DioExceptionType.badResponse:
        final statusCode = err.response?.statusCode;
        final data = err.response?.data;

        // Try to extract error message from response
        String message = 'An error occurred';
        if (data is Map<String, dynamic>) {
          message = data['message'] as String? ??
              data['error'] as String? ??
              'An error occurred';
        }

        if (statusCode == 401) {
          return AuthException(
            message: message,
            statusCode: statusCode,
            originalError: err,
          );
        }

        if (statusCode == 404) {
          return NotFoundException(
            resource: err.requestOptions.path,
            originalError: err,
          );
        }

        if (statusCode == 422 && data is Map<String, dynamic>) {
          final errors = data['errors'] as Map<String, dynamic>?;
          if (errors != null) {
            return ValidationException(
              errors: errors.map(
                (key, value) => MapEntry(
                  key,
                  (value as List).cast<String>(),
                ),
              ),
              originalError: err,
            );
          }
        }

        return ServerException(
          message: message,
          statusCode: statusCode,
          originalError: err,
        );

      case DioExceptionType.cancel:
        return const ServerException(message: 'Request was cancelled');

      case DioExceptionType.unknown:
      case DioExceptionType.badCertificate:
        return ServerException(
          message: err.message ?? 'An unexpected error occurred',
          originalError: err,
        );
    }
  }
}
