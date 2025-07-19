import 'package:dart_frog/dart_frog.dart';
import 'jwt_utils.dart';

Middleware authMiddleware() {
  return (handler) {
    return (context) async {
      // Skip auth for login and register endpoints
      final path = context.request.uri.path;
      if (path.contains('/api/auth/login') || 
          path.contains('/api/auth/register') ||
          path.contains('/api/auth/refresh') ||
          path.contains('/api/auth/forgot-password') ||
          path.contains('/api/auth/reset-password')) {
        return handler(context);
      }

      // Extract token from Authorization header
      final authHeader = context.request.headers['authorization'] ?? 
                        context.request.headers['Authorization'];
      
      if (authHeader == null || !authHeader.startsWith('Bearer ')) {
        return Response(
          statusCode: 401,
          body: '{"error": "Missing or invalid authorization header"}',
          headers: {'Content-Type': 'application/json'},
        );
      }

      final token = authHeader.substring(7); // Remove 'Bearer '
      final jwt = JwtUtils.verifyToken(token);

      if (jwt == null) {
        return Response(
          statusCode: 401,
          body: '{"error": "Invalid token"}',
          headers: {'Content-Type': 'application/json'},
        );
      }

      if (JwtUtils.isTokenExpired(jwt)) {
        return Response(
          statusCode: 401,
          body: '{"error": "Token expired"}',
          headers: {'Content-Type': 'application/json'},
        );
      }

      if (!JwtUtils.isAccessToken(jwt)) {
        return Response(
          statusCode: 401,
          body: '{"error": "Invalid token type"}',
          headers: {'Content-Type': 'application/json'},
        );
      }

      // Add user info to context
      final userId = jwt.payload['userId'] as String?;
      if (userId == null) {
        return Response(
          statusCode: 401,
          body: '{"error": "Invalid token payload"}',
          headers: {'Content-Type': 'application/json'},
        );
      }

      // Store user info in context for use in handlers
      final contextWithUser = context.provide<String>(() => userId);
      
      return handler(contextWithUser);
    };
  };
}

// Helper extension to get user ID from context
extension AuthContext on RequestContext {
  String get userId {
    try {
      return read<String>();
    } catch (e) {
      throw StateError('User ID not found in context. Ensure auth middleware is applied.');
    }
  }
}