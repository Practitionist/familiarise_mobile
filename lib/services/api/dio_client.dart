import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../auth/auth_interceptor.dart';
import '../logging_service.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;
  DioClient._internal();

  late final Dio _dio;
  bool _initialized = false;

  void initialize() {
    if (_initialized) return;
    
    _dio = Dio(BaseOptions(
      baseUrl: dotenv.env['API_BASE_URL'] ?? 'http://localhost:3000',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    _setupInterceptors();
    _initialized = true;
  }

  void _setupInterceptors() {
    // Add authentication interceptor
    _dio.interceptors.add(AuthInterceptor());
    
    // Add logging interceptor for debugging
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      requestHeader: false,
      responseHeader: false,
      error: true,
      logPrint: (obj) {
        // Use proper logging framework
        LoggingService().debug('[HTTP] $obj');
      },
    ));
  }

  Dio get dio {
    if (!_initialized) {
      initialize();
    }
    return _dio;
  }

  // HTTP Methods
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw ApiException('Unexpected error: $e');
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw ApiException('Unexpected error: $e');
    }
  }

  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw ApiException('Unexpected error: $e');
    }
  }

  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw ApiException('Unexpected error: $e');
    }
  }

  Future<Response<T>> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await dio.patch<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw ApiException('Unexpected error: $e');
    }
  }

  ApiException _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ApiException(
          'Connection timeout. Please check your internet connection.',
          statusCode: null,
          type: ApiErrorType.connectionTimeout,
        );
      case DioExceptionType.sendTimeout:
        return ApiException(
          'Send timeout. Please try again.',
          statusCode: null,
          type: ApiErrorType.sendTimeout,
        );
      case DioExceptionType.receiveTimeout:
        return ApiException(
          'Receive timeout. Please try again.',
          statusCode: null,
          type: ApiErrorType.receiveTimeout,
        );
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        final message = _extractErrorMessage(e.response?.data) ?? 
                       'Server error occurred';
        return ApiException(
          message,
          statusCode: statusCode,
          type: _getErrorTypeFromStatusCode(statusCode),
        );
      case DioExceptionType.cancel:
        return ApiException(
          'Request was cancelled',
          statusCode: null,
          type: ApiErrorType.cancelled,
        );
      case DioExceptionType.connectionError:
        return ApiException(
          'Connection error. Please check your internet connection.',
          statusCode: null,
          type: ApiErrorType.connectionError,
        );
      case DioExceptionType.badCertificate:
        return ApiException(
          'Certificate error. Please try again.',
          statusCode: null,
          type: ApiErrorType.badCertificate,
        );
      case DioExceptionType.unknown:
        return ApiException(
          e.message ?? 'An unknown error occurred',
          statusCode: e.response?.statusCode,
          type: ApiErrorType.unknown,
        );
    }
  }

  String? _extractErrorMessage(dynamic data) {
    if (data == null) return null;
    
    if (data is Map<String, dynamic>) {
      return data['message'] as String? ?? 
             data['error'] as String? ??
             data['detail'] as String?;
    }
    
    if (data is String) {
      return data;
    }
    
    return null;
  }

  ApiErrorType _getErrorTypeFromStatusCode(int? statusCode) {
    if (statusCode == null) return ApiErrorType.unknown;
    
    switch (statusCode) {
      case 400:
        return ApiErrorType.badRequest;
      case 401:
        return ApiErrorType.unauthorized;
      case 403:
        return ApiErrorType.forbidden;
      case 404:
        return ApiErrorType.notFound;
      case 422:
        return ApiErrorType.validationError;
      case 500:
        return ApiErrorType.serverError;
      default:
        return ApiErrorType.unknown;
    }
  }
}

class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final ApiErrorType type;

  const ApiException(
    this.message, {
    this.statusCode,
    this.type = ApiErrorType.unknown,
  });

  @override
  String toString() => 'ApiException: $message${statusCode != null ? ' (Status: $statusCode)' : ''}';
}

enum ApiErrorType {
  connectionTimeout,
  sendTimeout,
  receiveTimeout,
  badRequest,
  unauthorized,
  forbidden,
  notFound,
  validationError,
  serverError,
  cancelled,
  connectionError,
  badCertificate,
  unknown,
}