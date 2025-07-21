import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';

class JwtTokenManager {
  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  
  static const FlutterSecureStorage _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
    lOptions: LinuxOptions(),
    wOptions: WindowsOptions(),
  );

  // Store tokens securely
  static Future<void> storeTokens(String accessToken, String refreshToken) async {
    try {
      await Future.wait([
        _storage.write(key: _accessTokenKey, value: accessToken),
        _storage.write(key: _refreshTokenKey, value: refreshToken),
      ]);
    } catch (e) {
      throw TokenStorageException('Failed to store tokens: $e');
    }
  }

  // Retrieve access token
  static Future<String?> getAccessToken() async {
    try {
      return await _storage.read(key: _accessTokenKey);
    } catch (e) {
      throw TokenStorageException('Failed to retrieve access token: $e');
    }
  }

  // Retrieve refresh token
  static Future<String?> getRefreshToken() async {
    try {
      return await _storage.read(key: _refreshTokenKey);
    } catch (e) {
      throw TokenStorageException('Failed to retrieve refresh token: $e');
    }
  }

  // Clear all tokens (logout)
  static Future<void> clearTokens() async {
    try {
      await Future.wait([
        _storage.delete(key: _accessTokenKey),
        _storage.delete(key: _refreshTokenKey),
      ]);
    } catch (e) {
      throw TokenStorageException('Failed to clear tokens: $e');
    }
  }

  // Clear all storage (complete logout)
  static Future<void> clearAllStorage() async {
    try {
      await _storage.deleteAll();
    } catch (e) {
      throw TokenStorageException('Failed to clear all storage: $e');
    }
  }

  // Token validation
  static bool isTokenValid(String token) {
    try {
      final payload = Jwt.parseJwt(token);
      return payload.isNotEmpty && payload.containsKey('exp');
    } catch (e) {
      return false;
    }
  }

  static bool isTokenExpired(String token) {
    try {
      return Jwt.isExpired(token);
    } catch (e) {
      return true;
    }
  }

  static Map<String, dynamic> decodeToken(String token) {
    try {
      return Jwt.parseJwt(token);
    } catch (e) {
      return {};
    }
  }

  // Get token expiry date
  static DateTime? getTokenExpiry(String token) {
    try {
      final payload = decodeToken(token);
      final exp = payload['exp'] as int?;
      if (exp != null) {
        return DateTime.fromMillisecondsSinceEpoch(exp * 1000);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  // Check if token expires within specified duration
  static bool isTokenExpiringWithin(String token, Duration duration) {
    final expiry = getTokenExpiry(token);
    if (expiry == null) return true;
    
    final now = DateTime.now();
    return expiry.isBefore(now.add(duration));
  }

  // Get user ID from token
  static String? getUserIdFromToken(String token) {
    try {
      final payload = decodeToken(token);
      return payload['sub'] as String? ?? payload['userId'] as String?;
    } catch (e) {
      return null;
    }
  }

  // Get user role from token
  static String? getUserRoleFromToken(String token) {
    try {
      final payload = decodeToken(token);
      return payload['role'] as String?;
    } catch (e) {
      return null;
    }
  }

  // Get valid access token (refresh if needed)
  static Future<String?> getValidAccessToken() async {
    try {
      final accessToken = await getAccessToken();
      
      if (accessToken == null) {
        return null;
      }

      // Check if token is valid and not expired
      if (isTokenValid(accessToken) && !isTokenExpired(accessToken)) {
        return accessToken;
      }

      // Token is expired or invalid, needs refresh
      return null;
    } catch (e) {
      return null;
    }
  }

  // Check if we have stored tokens
  static Future<bool> hasStoredTokens() async {
    try {
      final accessToken = await getAccessToken();
      final refreshToken = await getRefreshToken();
      return accessToken != null && refreshToken != null;
    } catch (e) {
      return false;
    }
  }

  // Check if stored tokens are valid (access token may be expired but refresh token should be valid)
  static Future<bool> hasValidStoredTokens() async {
    try {
      final accessToken = await getAccessToken();
      final refreshToken = await getRefreshToken();
      
      if (accessToken == null || refreshToken == null) {
        return false;
      }

      // Refresh token should be valid
      return isTokenValid(refreshToken) && !isTokenExpired(refreshToken);
    } catch (e) {
      return false;
    }
  }

  // Store only access token (for refresh scenarios)
  static Future<void> storeAccessToken(String accessToken) async {
    try {
      await _storage.write(key: _accessTokenKey, value: accessToken);
    } catch (e) {
      throw TokenStorageException('Failed to store access token: $e');
    }
  }

  // Get time until token expires
  static Duration? getTimeUntilExpiry(String token) {
    final expiry = getTokenExpiry(token);
    if (expiry == null) return null;
    
    final now = DateTime.now();
    if (expiry.isBefore(now)) return Duration.zero;
    
    return expiry.difference(now);
  }
}

class TokenStorageException implements Exception {
  final String message;
  
  const TokenStorageException(this.message);
  
  @override
  String toString() => 'TokenStorageException: $message';
}