import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'jwt_token_manager.dart';

class AuthInterceptor extends Interceptor {
  static const int maxRetries = 1;
  
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      // Skip auth for authentication endpoints
      if (_isAuthEndpoint(options.path)) {
        return handler.next(options);
      }

      // Add JWT token to requests
      final token = await JwtTokenManager.getValidAccessToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }

      handler.next(options);
    } catch (e) {
      handler.reject(DioException(
        requestOptions: options,
        error: 'Failed to add authentication: $e',
        type: DioExceptionType.unknown,
      ));
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Handle 401 Unauthorized errors
    if (err.response?.statusCode == 401 && !_isAuthEndpoint(err.requestOptions.path)) {
      try {
        final refreshed = await _handleTokenRefresh();
        if (refreshed) {
          // Retry original request with new token
          final retryResponse = await _retryRequest(err.requestOptions);
          return handler.resolve(retryResponse);
        }
      } catch (e) {
        // Token refresh failed, clear tokens and continue with original error
        await JwtTokenManager.clearTokens();
      }
    }

    handler.next(err);
  }

  bool _isAuthEndpoint(String path) {
    final authPaths = [
      '/api/auth/login',
      '/api/auth/register',
      '/api/auth/refresh',
      '/api/auth/forgot-password',
      '/api/auth/reset-password',
    ];
    
    return authPaths.any((authPath) => path.contains(authPath));
  }

  Future<bool> _handleTokenRefresh() async {
    try {
      final refreshToken = await JwtTokenManager.getRefreshToken();
      if (refreshToken == null || JwtTokenManager.isTokenExpired(refreshToken)) {
        return false;
      }

      // Create a new Dio instance to avoid interceptor loops
      final dio = Dio();
      final baseUrl = dotenv.env['API_BASE_URL'] ?? 'http://localhost:3000';
      final response = await dio.post(
        '$baseUrl/api/auth/refresh',
        data: {'refreshToken': refreshToken},
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final newAccessToken = response.data['accessToken'] as String?;
        final newRefreshToken = response.data['refreshToken'] as String?;
        
        if (newAccessToken != null && newRefreshToken != null) {
          await JwtTokenManager.storeTokens(newAccessToken, newRefreshToken);
          return true;
        }
      }
      
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<Response> _retryRequest(RequestOptions requestOptions) async {
    // Get the new access token
    final newToken = await JwtTokenManager.getAccessToken();
    if (newToken != null) {
      requestOptions.headers['Authorization'] = 'Bearer $newToken';
    }

    // Create a new Dio instance to avoid interceptor loops
    final dio = Dio();
    return await dio.fetch(requestOptions);
  }
}

class AuthenticationException implements Exception {
  final String message;
  final int? statusCode;
  
  const AuthenticationException(this.message, {this.statusCode});
  
  @override
  String toString() => 'AuthenticationException: $message${statusCode != null ? ' (Status: $statusCode)' : ''}';
}