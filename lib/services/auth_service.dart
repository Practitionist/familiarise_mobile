import '../models/auth/user_model.dart';
import '../models/auth/login_request.dart';
import '../models/auth/login_response.dart';
import '../models/auth/register_request.dart';
import '../models/auth/register_response.dart';
import 'api/dio_client.dart';
import 'auth/jwt_token_manager.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  final DioClient _dioClient = DioClient();

  // Initialize the service
  void initialize() {
    _dioClient.initialize();
  }

  // Login with email and password
  Future<LoginResponse> login(LoginRequest request) async {
    try {
      final response = await _dioClient.post(
        '/api/auth/login',
        data: request.toJson(),
      );

      if (response.data == null) {
        throw AuthException('Invalid response from server', AuthErrorType.serverError);
      }

      final loginResponse = LoginResponse.fromJson(response.data);
      
      // Store tokens securely
      await JwtTokenManager.storeTokens(
        loginResponse.accessToken,
        loginResponse.refreshToken,
      );

      return loginResponse;
    } catch (e) {
      if (e is AuthException) rethrow;
      throw _handleError(e);
    }
  }

  // Register new user
  Future<RegisterResponse> register(RegisterRequest request) async {
    try {
      final response = await _dioClient.post(
        '/api/auth/register',
        data: request.toJson(),
      );

      if (response.data == null) {
        throw AuthException('Invalid response from server', AuthErrorType.serverError);
      }

      final registerResponse = RegisterResponse.fromJson(response.data);
      
      // Store tokens securely
      await JwtTokenManager.storeTokens(
        registerResponse.accessToken,
        registerResponse.refreshToken,
      );

      return registerResponse;
    } catch (e) {
      if (e is AuthException) rethrow;
      throw _handleError(e);
    }
  }

  // Logout and clear tokens
  Future<void> logout() async {
    try {
      // Try to call logout endpoint (optional, token invalidation on server)
      try {
        await _dioClient.post('/api/auth/logout');
      } catch (e) {
        // Ignore server logout errors, still clear local tokens
      }

      // Clear stored tokens
      await JwtTokenManager.clearTokens();
    } catch (e) {
      throw AuthException('Failed to logout: $e', AuthErrorType.unknown);
    }
  }

  // Refresh access token
  Future<String?> refreshToken() async {
    try {
      final refreshToken = await JwtTokenManager.getRefreshToken();
      if (refreshToken == null) {
        throw AuthException('No refresh token available', AuthErrorType.tokenExpired);
      }

      final response = await _dioClient.post(
        '/api/auth/refresh',
        data: {'refreshToken': refreshToken},
      );

      if (response.data == null) {
        throw AuthException('Invalid response from server', AuthErrorType.serverError);
      }

      final newAccessToken = response.data['accessToken'] as String?;
      final newRefreshToken = response.data['refreshToken'] as String?;

      if (newAccessToken != null && newRefreshToken != null) {
        await JwtTokenManager.storeTokens(newAccessToken, newRefreshToken);
        return newAccessToken;
      }

      throw AuthException('Invalid token response', AuthErrorType.serverError);
    } catch (e) {
      if (e is AuthException) rethrow;
      throw _handleError(e);
    }
  }

  // Get current user from token and/or server
  Future<User?> getCurrentUser() async {
    try {
      final accessToken = await JwtTokenManager.getValidAccessToken();
      if (accessToken == null) {
        return null;
      }

      // Try to get user from server
      final response = await _dioClient.get('/api/auth/profile');
      
      if (response.data != null) {
        return User.fromJson(response.data);
      }

      return null;
    } catch (e) {
      // If server call fails, try to get user info from token
      final accessToken = await JwtTokenManager.getAccessToken();
      if (accessToken != null && JwtTokenManager.isTokenValid(accessToken)) {
        final userId = JwtTokenManager.getUserIdFromToken(accessToken);
        final userRole = JwtTokenManager.getUserRoleFromToken(accessToken);
        
        if (userId != null) {
          // Return minimal user info from token
          return User(
            id: userId,
            role: userRole != null ? UserRole.fromString(userRole) : UserRole.consultee,
            onlineStatus: false,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          );
        }
      }
      return null;
    }
  }

  // Check if user is authenticated
  Future<bool> isAuthenticated() async {
    try {
      return await JwtTokenManager.hasValidStoredTokens();
    } catch (e) {
      return false;
    }
  }

  // Forgot password
  Future<void> forgotPassword(String email) async {
    try {
      await _dioClient.post(
        '/api/auth/forgot-password',
        data: {'email': email},
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Reset password
  Future<void> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    try {
      await _dioClient.post(
        '/api/auth/reset-password',
        data: {
          'token': token,
          'password': newPassword,
        },
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Change password (for authenticated users)
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      await _dioClient.post(
        '/api/auth/change-password',
        data: {
          'currentPassword': currentPassword,
          'newPassword': newPassword,
        },
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Verify email
  Future<void> verifyEmail(String token) async {
    try {
      await _dioClient.post(
        '/api/auth/verify-email',
        data: {'token': token},
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  // Resend email verification
  Future<void> resendEmailVerification() async {
    try {
      await _dioClient.post('/api/auth/resend-verification');
    } catch (e) {
      throw _handleError(e);
    }
  }

  AuthException _handleError(dynamic error) {
    if (error is ApiException) {
      switch (error.type) {
        case ApiErrorType.unauthorized:
          return AuthException('Invalid credentials', AuthErrorType.invalidCredentials);
        case ApiErrorType.validationError:
          return AuthException(error.message, AuthErrorType.validationError);
        case ApiErrorType.serverError:
          return AuthException('Server error occurred', AuthErrorType.serverError);
        case ApiErrorType.connectionTimeout:
        case ApiErrorType.connectionError:
          return AuthException('Network error. Please check your connection.', AuthErrorType.networkError);
        default:
          return AuthException(error.message, AuthErrorType.unknown);
      }
    }
    
    return AuthException('An unexpected error occurred: $error', AuthErrorType.unknown);
  }
}

class AuthException implements Exception {
  final String message;
  final AuthErrorType type;

  const AuthException(this.message, this.type);

  @override
  String toString() => 'AuthException: $message';
}

enum AuthErrorType {
  invalidCredentials,
  networkError,
  tokenExpired,
  serverError,
  validationError,
  unknown,
}