import '../models/auth/user_model.dart';
import '../models/auth/login_request.dart';
import '../models/auth/login_response.dart';
import '../models/auth/register_request.dart';
import '../models/auth/register_response.dart';
import '../services/auth_service.dart';

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
  final AuthService _authService;

  AuthRepositoryImpl({AuthService? authService}) : _authService = authService ?? AuthService();

  @override
  Future<LoginResponse> login(LoginRequest request) async {
    try {
      return await _authService.login(request);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RegisterResponse> register(RegisterRequest request) async {
    try {
      return await _authService.register(request);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _authService.logout();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User?> getCurrentUser() async {
    try {
      return await _authService.getCurrentUser();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> refreshToken() async {
    try {
      return await _authService.refreshToken();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    try {
      return await _authService.isAuthenticated();
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      await _authService.forgotPassword(email);
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
      await _authService.resetPassword(
        token: token,
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
      await _authService.changePassword(
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
      await _authService.verifyEmail(token);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> resendEmailVerification() async {
    try {
      await _authService.resendEmailVerification();
    } catch (e) {
      rethrow;
    }
  }
}