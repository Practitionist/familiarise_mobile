import 'dart:convert';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import '../models/user_model.dart';

class JwtUtils {
  static const String _secret = 'mtOLtDSpKQCVk66q3+NNs6o4Ph/stv8db5x791LZoUQ=';
  static const Duration _accessTokenExpiry = Duration(hours: 1);
  static const Duration _refreshTokenExpiry = Duration(days: 7);

  static String generateAccessToken(User user) {
    final jwt = JWT({
      'sub': user.id,
      'userId': user.id,
      'email': user.email,
      'name': user.name,
      'role': user.role.name.toUpperCase(),
      'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      'exp': DateTime.now().add(_accessTokenExpiry).millisecondsSinceEpoch ~/ 1000,
      'type': 'access',
    });

    return jwt.sign(SecretKey(_secret));
  }

  static String generateRefreshToken(User user) {
    final jwt = JWT({
      'sub': user.id,
      'userId': user.id,
      'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      'exp': DateTime.now().add(_refreshTokenExpiry).millisecondsSinceEpoch ~/ 1000,
      'type': 'refresh',
    });

    return jwt.sign(SecretKey(_secret));
  }

  static JWT? verifyToken(String token) {
    try {
      return JWT.verify(token, SecretKey(_secret));
    } catch (e) {
      return null;
    }
  }

  static bool isTokenExpired(JWT jwt) {
    final exp = jwt.payload['exp'] as int?;
    if (exp == null) return true;
    
    final expiry = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
    return DateTime.now().isAfter(expiry);
  }

  static String? extractUserIdFromToken(String token) {
    final jwt = verifyToken(token);
    if (jwt == null) return null;
    
    return jwt.payload['userId'] as String?;
  }

  static Map<String, String> generateTokenPair(User user) {
    return {
      'accessToken': generateAccessToken(user),
      'refreshToken': generateRefreshToken(user),
      'expiresAt': DateTime.now().add(_accessTokenExpiry).toIso8601String(),
    };
  }

  static bool isRefreshToken(JWT jwt) {
    return jwt.payload['type'] == 'refresh';
  }

  static bool isAccessToken(JWT jwt) {
    return jwt.payload['type'] == 'access';
  }
}