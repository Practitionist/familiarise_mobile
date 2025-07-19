import 'package:shared_preferences/shared_preferences.dart';

class SimpleTokenManager {
  static const String _sessionTokenKey = 'session_token';

  // Store session token
  static Future<void> storeToken(String token) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_sessionTokenKey, token);
    } catch (e) {
      throw TokenStorageException('Failed to store token: $e');
    }
  }

  // Retrieve session token
  static Future<String?> getToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_sessionTokenKey);
    } catch (e) {
      throw TokenStorageException('Failed to retrieve token: $e');
    }
  }

  // Clear session token (logout)
  static Future<void> clearToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_sessionTokenKey);
    } catch (e) {
      throw TokenStorageException('Failed to clear token: $e');
    }
  }

  // Clear all storage (complete logout)
  static Future<void> clearAllStorage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
    } catch (e) {
      throw TokenStorageException('Failed to clear all storage: $e');
    }
  }

  // Check if we have a valid token
  static Future<bool> hasValidToken() async {
    try {
      final token = await getToken();
      return token != null && token.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}

class TokenStorageException implements Exception {
  final String message;
  
  const TokenStorageException(this.message);
  
  @override
  String toString() => 'TokenStorageException: $message';
} 