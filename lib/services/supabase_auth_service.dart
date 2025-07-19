import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';
import '../models/auth/user_model.dart' as auth_model;
import '../models/auth/login_request.dart';
import '../models/auth/login_response.dart';
import '../models/auth/register_request.dart';
import '../models/auth/register_response.dart';

class SupabaseAuthService {
  static final SupabaseAuthService _instance = SupabaseAuthService._internal();
  factory SupabaseAuthService() => _instance;
  SupabaseAuthService._internal();

  SupabaseClient get _client => Supabase.instance.client;

  // Hash password using SHA-256 (matches backend implementation)
  String _hashPassword(String password) {
    final bytes = utf8.encode(password);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  // Verify password
  bool _verifyPassword(String password, String hashedPassword) {
    final hashedInput = _hashPassword(password);
    return hashedInput == hashedPassword;
  }

  // Login with email and password
  Future<LoginResponse> login(LoginRequest request) async {
    try {
      // Get user from database
      final userResponse = await _client
          .from('users')
          .select()
          .eq('email', request.email)
          .maybeSingle();

      if (userResponse == null) {
        throw AuthException('Invalid credentials', AuthErrorType.invalidCredentials);
      }

      final user = auth_model.User.fromJson(userResponse);

      // Verify password
      if (!_verifyPassword(request.password, user.password ?? '')) {
        throw AuthException('Invalid credentials', AuthErrorType.invalidCredentials);
      }

      // For now, we'll use a simple session approach
      // In a real app, you might want to implement proper JWT tokens
      // or use Supabase Auth (though you mentioned not using it)
      
      // Update user's online status
      await _client
          .from('users')
          .update({'onlineStatus': true, 'updatedAt': DateTime.now().toIso8601String()})
          .eq('id', user.id);

      // Create a simple session token (you can implement JWT if needed)
      final sessionToken = base64.encode(utf8.encode('${user.id}:${DateTime.now().millisecondsSinceEpoch}'));

      return LoginResponse(
        accessToken: sessionToken,
        refreshToken: sessionToken, // Simplified for now
        expiresAt: DateTime.now().add(const Duration(hours: 24)),
        user: _createSafeUser(user),
      );
    } catch (e) {
      if (e is AuthException) rethrow;
      if (e.toString().contains('network') || e.toString().contains('connection')) {
        throw AuthException('Network error. Please check your connection.', AuthErrorType.networkError);
      }
      throw AuthException('Login failed: ${e.toString()}', AuthErrorType.unknown);
    }
  }

  // Register new user
  Future<RegisterResponse> register(RegisterRequest request) async {
    try {
      // Check if user already exists
      final existingUser = await _client
          .from('users')
          .select('id')
          .eq('email', request.email)
          .maybeSingle();

      if (existingUser != null) {
        throw AuthException('User already exists with this email', AuthErrorType.validationError);
      }

      // Hash password
      final hashedPassword = _hashPassword(request.password);

      // Create user data
      final userData = {
        'email': request.email,
        'password': hashedPassword,
        'name': request.name,
        'phone': request.phone,
        'role': request.role.serverValue,
        'onlineStatus': false,
        'onboardingCompleted': false,
      };

      // Insert user into database
      final userResponse = await _client
          .from('users')
          .insert(userData)
          .select()
          .single();

      final user = auth_model.User.fromJson(userResponse);

      // Update user's online status
      await _client
          .from('users')
          .update({'onlineStatus': true})
          .eq('id', user.id);

      // Create a simple session token
      final sessionToken = base64.encode(utf8.encode('${user.id}:${DateTime.now().millisecondsSinceEpoch}'));

      return RegisterResponse(
        accessToken: sessionToken,
        refreshToken: sessionToken,
        expiresAt: DateTime.now().add(const Duration(hours: 24)),
        user: _createSafeUser(user),
      );
    } catch (e) {
      if (e is AuthException) rethrow;
      if (e.toString().contains('duplicate key value')) {
        throw AuthException('User already exists with this email', AuthErrorType.validationError);
      }
      if (e.toString().contains('network') || e.toString().contains('connection')) {
        throw AuthException('Network error. Please check your connection.', AuthErrorType.networkError);
      }
      throw AuthException('Registration failed: ${e.toString()}', AuthErrorType.unknown);
    }
  }

  // Get current user by ID
  Future<auth_model.User?> getUserById(String userId) async {
    try {
      final userResponse = await _client
          .from('users')
          .select()
          .eq('id', userId)
          .maybeSingle();

      if (userResponse == null) return null;
      
      return _createSafeUser(auth_model.User.fromJson(userResponse));
    } catch (e) {
      throw AuthException('Failed to get user: ${e.toString()}', AuthErrorType.unknown);
    }
  }

  // Get current user from session token
  Future<auth_model.User?> getCurrentUser(String sessionToken) async {
    try {
      // Decode simple session token
      final decoded = utf8.decode(base64.decode(sessionToken));
      final parts = decoded.split(':');
      
      if (parts.length != 2) return null;
      
      final userId = parts[0];
      return await getUserById(userId);
    } catch (e) {
      return null;
    }
  }

  // Update user
  Future<auth_model.User> updateUser(String userId, Map<String, dynamic> updates) async {
    try {
      updates['updatedAt'] = DateTime.now().toIso8601String();
      
      final userResponse = await _client
          .from('users')
          .update(updates)
          .eq('id', userId)
          .select()
          .single();

      return _createSafeUser(auth_model.User.fromJson(userResponse));
    } catch (e) {
      throw AuthException('Failed to update user: ${e.toString()}', AuthErrorType.unknown);
    }
  }

  // Helper method to create user without password
  auth_model.User _createSafeUser(auth_model.User user) {
    return user.copyWith(password: null);
  }

  // Logout user
  Future<void> logout(String userId) async {
    try {
      // Update user's online status
      await _client
          .from('users')
          .update({'onlineStatus': false, 'updatedAt': DateTime.now().toIso8601String()})
          .eq('id', userId);
    } catch (e) {
      // Ignore logout errors on server side
    }
  }

  // Change password
  Future<void> changePassword({
    required String userId,
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      // Get user to verify current password
      final userResponse = await _client
          .from('users')
          .select('password')
          .eq('id', userId)
          .single();

      final currentHashedPassword = userResponse['password'] as String?;
      
      if (currentHashedPassword == null || !_verifyPassword(currentPassword, currentHashedPassword)) {
        throw AuthException('Current password is incorrect', AuthErrorType.validationError);
      }

      // Hash new password
      final newHashedPassword = _hashPassword(newPassword);

      // Update password
      await _client
          .from('users')
          .update({
            'password': newHashedPassword,
            'updatedAt': DateTime.now().toIso8601String(),
          })
          .eq('id', userId);
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException('Failed to change password: ${e.toString()}', AuthErrorType.unknown);
    }
  }

  // Reset password (simplified - in production you'd want email verification)
  Future<void> resetPassword({
    required String email,
    required String newPassword,
  }) async {
    try {
      // Check if user exists
      final userResponse = await _client
          .from('users')
          .select('id')
          .eq('email', email)
          .maybeSingle();

      if (userResponse == null) {
        throw AuthException('No user found with this email', AuthErrorType.validationError);
      }

      // Hash new password
      final hashedPassword = _hashPassword(newPassword);

      // Update password
      await _client
          .from('users')
          .update({
            'password': hashedPassword,
            'updatedAt': DateTime.now().toIso8601String(),
          })
          .eq('email', email);
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException('Failed to reset password: ${e.toString()}', AuthErrorType.unknown);
    }
  }

  // Validate session token
  bool validateSessionToken(String token) {
    try {
      final decoded = utf8.decode(base64.decode(token));
      final parts = decoded.split(':');
      
      if (parts.length != 2) return false;
      
      final timestamp = int.tryParse(parts[1]);
      if (timestamp == null) return false;
      
      // Check if token is expired (24 hours)
      final tokenTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
      final now = DateTime.now();
      final difference = now.difference(tokenTime);
      
      return difference.inHours < 24;
    } catch (e) {
      return false;
    }
  }

  // Extract user ID from session token
  String? getUserIdFromToken(String token) {
    try {
      final decoded = utf8.decode(base64.decode(token));
      final parts = decoded.split(':');
      
      if (parts.length != 2) return null;
      return parts[0];
    } catch (e) {
      return null;
    }
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
  validationError,
  networkError,
  serverError,
  tokenExpired,
  unknown,
} 