import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:supabase/supabase.dart' hide User;
import '../models/user_model.dart';

class SupabaseService {
  static SupabaseService? _instance;
  late final SupabaseClient _client;

  SupabaseService._internal();

  static SupabaseService get instance {
    _instance ??= SupabaseService._internal();
    return _instance!;
  }

  void initialize({
    required String url,
    required String serviceRoleKey,
  }) {
    _client = SupabaseClient(url, serviceRoleKey);
  }

  SupabaseClient get client => _client;

  // User operations
  Future<User?> getUserById(String id) async {
    try {
      final response = await _client
          .from('users')
          .select()
          .eq('id', id)
          .maybeSingle();

      if (response == null) return null;
      return User.fromJson(response);
    } catch (e) {
      throw DatabaseException('Failed to get user: $e');
    }
  }

  Future<User?> getUserByEmail(String email) async {
    try {
      final response = await _client
          .from('users')
          .select()
          .eq('email', email)
          .maybeSingle();

      if (response == null) return null;
      return User.fromJson(response);
    } catch (e) {
      throw DatabaseException('Failed to get user by email: $e');
    }
  }

  Future<User> createUser({
    required String email,
    required String password,
    required String name,
    String? phone,
    required UserRole role,
  }) async {
    try {
      // Hash password
      final hashedPassword = _hashPassword(password);
      
      final userData = {
        'email': email,
        'password': hashedPassword,
        'name': name,
        'phone': phone,
        'role': role.serverValue,
        'onlineStatus': false,
        'onboardingCompleted': false,
        'createdAt': DateTime.now().toIso8601String(),
        'updatedAt': DateTime.now().toIso8601String(),
      };

      final response = await _client
          .from('users')
          .insert(userData)
          .select()
          .single();

      return User.fromJson(response);
    } catch (e) {
      if (e.toString().contains('duplicate key value')) {
        throw AuthenticationException('User already exists with this email');
      }
      throw DatabaseException('Failed to create user: $e');
    }
  }

  Future<User?> authenticateUser(String email, String password) async {
    try {
      final user = await getUserByEmail(email);
      if (user == null) return null;

      // Verify password
      if (!_verifyPassword(password, user.password ?? '')) {
        return null;
      }

      return user;
    } catch (e) {
      throw DatabaseException('Failed to authenticate user: $e');
    }
  }

  Future<User> updateUser(String id, Map<String, dynamic> updates) async {
    try {
      updates['updatedAt'] = DateTime.now().toIso8601String();
      
      final response = await _client
          .from('users')
          .update(updates)
          .eq('id', id)
          .select()
          .single();

      return User.fromJson(response);
    } catch (e) {
      throw DatabaseException('Failed to update user: $e');
    }
  }

  Future<void> deleteUser(String id) async {
    try {
      await _client
          .from('users')
          .delete()
          .eq('id', id);
    } catch (e) {
      throw DatabaseException('Failed to delete user: $e');
    }
  }

  Future<User> updateUserPassword(String id, String newPassword) async {
    try {
      final hashedPassword = _hashPassword(newPassword);
      return await updateUser(id, {'password': hashedPassword});
    } catch (e) {
      throw DatabaseException('Failed to update password: $e');
    }
  }

  Future<User> setPasswordResetToken(String email, String token) async {
    try {
      final user = await getUserByEmail(email);
      if (user == null) {
        throw AuthenticationException('User not found');
      }

      return await updateUser(user.id, {
        'passwordResetToken': token,
        'passwordResetExpires': DateTime.now().add(Duration(hours: 1)).toIso8601String(),
      });
    } catch (e) {
      if (e is AuthenticationException) rethrow;
      throw DatabaseException('Failed to set password reset token: $e');
    }
  }

  Future<User?> getUserByResetToken(String token) async {
    try {
      final response = await _client
          .from('users')
          .select()
          .eq('passwordResetToken', token)
          .gte('passwordResetExpires', DateTime.now().toIso8601String())
          .maybeSingle();

      if (response == null) return null;
      return User.fromJson(response);
    } catch (e) {
      throw DatabaseException('Failed to get user by reset token: $e');
    }
  }

  Future<User> clearPasswordResetToken(String id) async {
    try {
      return await updateUser(id, {
        'passwordResetToken': null,
        'passwordResetExpires': null,
      });
    } catch (e) {
      throw DatabaseException('Failed to clear password reset token: $e');
    }
  }

  // Password hashing utilities
  String _hashPassword(String password) {
    final bytes = utf8.encode(password + 'salt'); // Add salt in production
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  bool _verifyPassword(String password, String hashedPassword) {
    return _hashPassword(password) == hashedPassword;
  }
}

class DatabaseException implements Exception {
  final String message;
  
  const DatabaseException(this.message);
  
  @override
  String toString() => 'DatabaseException: $message';
}

class AuthenticationException implements Exception {
  final String message;
  
  const AuthenticationException(this.message);
  
  @override
  String toString() => 'AuthenticationException: $message';
}