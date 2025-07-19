import '../models/auth/user_model.dart';
import '../models/auth/login_request.dart';
import '../models/auth/login_response.dart';
import '../models/auth/register_request.dart';
import '../models/auth/register_response.dart';
import '../services/supabase_auth_service.dart';
import '../services/simple_token_manager.dart';

abstract class AuthRepository {
  Future<LoginResponse> login(LoginRequest request);
  Future<RegisterResponse> register(RegisterRequest request);
  Future<void> logout();
  Future<User?> getCurrentUser();
  Future<String?> refreshToken();
  Future<bool> isAuthenticated();
  Future<void> forgotPassword(String email);
  Future<void> resetPassword({required String token, required String newPassword});
  Future<void> changePassword({required String currentPassword, required String newPassword});
  Future<void> verifyEmail(String token);
  Future<void> resendEmailVerification();
}

class AuthRepositoryImpl implements AuthRepository {
  final SupabaseAuthService _authService;

  AuthRepositoryImpl({SupabaseAuthService? authService}) : _authService = authService ?? SupabaseAuthService();

  @override
  Future<LoginResponse> login(LoginRequest request) async {
    try {
      final response = await _authService.login(request);
      // Store the session token
      await SimpleTokenManager.storeToken(response.accessToken);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RegisterResponse> register(RegisterRequest request) async {
    try {
      final response = await _authService.register(request);
      // Store the session token
      await SimpleTokenManager.storeToken(response.accessToken);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      // Get current user ID for logout call
      final token = await SimpleTokenManager.getToken();
      if (token != null) {
        final userId = _authService.getUserIdFromToken(token);
        if (userId != null) {
          await _authService.logout(userId);
        }
      }
      // Clear stored token
      await SimpleTokenManager.clearToken();
    } catch (e) {
      // Always clear token even if server logout fails
      await SimpleTokenManager.clearToken();
      rethrow;
    }
  }

  @override
  Future<User?> getCurrentUser() async {
    try {
      final token = await SimpleTokenManager.getToken();
      if (token == null) return null;
      
      return await _authService.getCurrentUser(token);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> refreshToken() async {
    try {
      // In our simple implementation, we don't need to refresh
      // Just return the current token if it's valid
      final token = await SimpleTokenManager.getToken();
      if (token != null && _authService.validateSessionToken(token)) {
        return token;
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    try {
      final token = await SimpleTokenManager.getToken();
      if (token == null) return false;
      
      return _authService.validateSessionToken(token);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      // For simplicity, we'll just throw an exception
      // In a real app, you'd want to implement email-based password reset
      throw AuthException('Password reset not implemented yet', AuthErrorType.unknown);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> resetPassword({
    required String token,
    required String newPassword,
  }) async {
    try {
      // Simple implementation - in production you'd want proper token verification
      // For now, we'll use the token as an email
      await _authService.resetPassword(
        email: token,
        newPassword: newPassword,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      final token = await SimpleTokenManager.getToken();
      if (token == null) {
        throw AuthException('Not authenticated', AuthErrorType.tokenExpired);
      }
      
      final userId = _authService.getUserIdFromToken(token);
      if (userId == null) {
        throw AuthException('Invalid session', AuthErrorType.tokenExpired);
      }
      
      await _authService.changePassword(
        userId: userId,
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> verifyEmail(String token) async {
    try {
      // Email verification not implemented in simplified version
      throw AuthException('Email verification not implemented yet', AuthErrorType.unknown);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> resendEmailVerification() async {
    try {
      // Email verification not implemented in simplified version
      throw AuthException('Email verification not implemented yet', AuthErrorType.unknown);
    } catch (e) {
      rethrow;
    }
  }
}