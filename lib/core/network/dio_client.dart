import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show debugPrint, kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    // Add interceptor to convert _JsonMap on web
    JsonMapConversionInterceptor(),
    ErrorInterceptor(),
    LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
    ),
  ]);

  return dio;
}

/// Interceptor to convert _JsonMap to Map<String, dynamic> on web
class JsonMapConversionInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Convert response data if needed
    if (response.data != null) {
      response.data = _deepConvertMap(response.data);
    }
    handler.next(response);
  }

  /// Recursively convert _JsonMap and _JsonList to standard Dart types
  dynamic _deepConvertMap(dynamic value) {
    if (value is Map<String, dynamic>) {
      // Already proper type, but recursively check nested values
      return value.map((k, v) => MapEntry(k, _deepConvertMap(v)));
    }
    if (value is Map) {
      // Convert _JsonMap to Map<String, dynamic>
      return Map<String, dynamic>.fromEntries(
        value.entries.map((e) => MapEntry(e.key.toString(), _deepConvertMap(e.value))),
      );
    }
    if (value is List) {
      return value.map(_deepConvertMap).toList();
    }
    return value;
  }
}

/// Interceptor to add auth token to requests
class AuthInterceptor extends Interceptor {
  // ignore: unused_field - kept for future use (e.g., accessing auth state)
  final Ref _ref;

  AuthInterceptor(this._ref);

  static const _secureStorage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );
  // Key used for SharedPreferences storage (web and mobile fallback)
  static const _tokenKey = 'auth_token';
  // Mobile fallback key in SharedPreferences (separate from web key)
  static const _mobileTokenFallbackKey = 'auth_token_mobile_fallback';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Get token - web uses SharedPreferences, mobile uses SecureStorage
    final token = await _getToken();

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle 401 Unauthorized - clear token and redirect to login
    if (err.response?.statusCode == 401) {
      clearToken();
      // Auth state will be handled by auth provider
    }
    handler.next(err);
  }

  /// Get token from appropriate storage based on platform
  static Future<String?> _getToken() async {
    if (kIsWeb) {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_tokenKey);
    }

    // On mobile: Try SecureStorage first
    try {
      final secureToken = await _secureStorage.read(key: StorageKeys.authToken);
      if (secureToken != null && secureToken.isNotEmpty) {
        return secureToken;
      }
    } catch (e) {
      // SecureStorage failed (common on Android emulators), continue to fallback
      debugPrint('AuthInterceptor: SecureStorage read failed: $e');
    }

    // Fallback: check SharedPreferences (works on all platforms including emulators)
    final prefs = await SharedPreferences.getInstance();
    final fallbackToken = prefs.getString(_mobileTokenFallbackKey);
    if (fallbackToken != null && fallbackToken.isNotEmpty) {
      return fallbackToken;
    }

    return null;
  }

  /// Save auth token to secure storage (with fallback to SharedPreferences on mobile)
  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();

    if (kIsWeb) {
      await prefs.setString(_tokenKey, token);
    } else {
      // On mobile: Try SecureStorage first, then always save to SharedPreferences as fallback
      try {
        await _secureStorage.write(key: StorageKeys.authToken, value: token);
      } catch (e) {
        debugPrint('AuthInterceptor: SecureStorage write failed: $e');
      }

      // Always save to SharedPreferences as fallback (handles Android emulator issues)
      await prefs.setString(_mobileTokenFallbackKey, token);
      debugPrint('AuthInterceptor: Token saved successfully');
    }
  }

  /// Clear auth token from all storage locations
  static Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();

    if (kIsWeb) {
      await prefs.remove(_tokenKey);
    } else {
      // Clear from both SecureStorage and SharedPreferences fallback
      try {
        await _secureStorage.delete(key: StorageKeys.authToken);
      } catch (e) {
        debugPrint('AuthInterceptor: SecureStorage delete failed: $e');
      }
      await prefs.remove(_mobileTokenFallbackKey);
    }
  }

  /// Get current auth token
  static Future<String?> getToken() async {
    return _getToken();
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

  /// Safely convert response data to Map<String, dynamic>
  /// Handles _JsonMap on Flutter web
  Map<String, dynamic>? _safeMapFromData(dynamic data) {
    if (data == null) return null;
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    return null;
  }

  /// Safely extract a string value from a map
  /// Handles cases where value might be a nested object
  String? _safeStringFromMap(Map<String, dynamic> map, String key) {
    final value = map[key];
    if (value == null) return null;
    if (value is String) return value;
    // If it's a nested object, try to get a message or convert to string
    if (value is Map) {
      final nestedMap = Map<String, dynamic>.from(value);
      return nestedMap['message']?.toString() ?? value.toString();
    }
    return value.toString();
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
        final rawData = err.response?.data;
        final data = _safeMapFromData(rawData);

        // Try to extract error message from response
        String message = 'An error occurred';
        if (data != null) {
          message = _safeStringFromMap(data, 'message') ??
              _safeStringFromMap(data, 'error') ??
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

        if (statusCode == 422 && data != null) {
          final errorsRaw = data['errors'];
          final errors = _safeMapFromData(errorsRaw);
          if (errors != null) {
            return ValidationException(
              errors: errors.map(
                (key, value) => MapEntry(
                  key,
                  value is List
                      ? value.map((e) => e.toString()).toList()
                      : [value.toString()],
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
