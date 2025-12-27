import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

/// Service for JWT token management
class JwtService {
  /// Creates a JwtService with the given secret and optional token expiry
  JwtService(
    this._secret, {
    Duration tokenExpiry = const Duration(days: 30),
  }) : _tokenExpiry = tokenExpiry;

  final String _secret;
  final Duration _tokenExpiry;

  /// Create a JWT token with the given payload
  String createToken({
    required String userId,
    required String sessionId,
    Map<String, dynamic>? additionalClaims,
  }) {
    final jwt = JWT(
      {
        'userId': userId,
        'sessionId': sessionId,
        ...?additionalClaims,
      },
      issuer: 'familiarise-backend',
    );

    return jwt.sign(
      SecretKey(_secret),
      expiresIn: _tokenExpiry,
    );
  }

  /// Verify a JWT token and return the payload
  /// Throws JWTException if token is invalid or expired
  Map<String, dynamic> verify(String token) {
    final jwt = JWT.verify(token, SecretKey(_secret));
    return jwt.payload as Map<String, dynamic>;
  }

  /// Try to verify a token, return null if invalid
  Map<String, dynamic>? tryVerify(String token) {
    try {
      return verify(token);
    } catch (_) {
      return null;
    }
  }
}
