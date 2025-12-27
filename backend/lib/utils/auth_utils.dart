import 'package:backend/services/auth/jwt_service.dart';
import 'package:dart_frog/dart_frog.dart';

/// Extract user ID from JWT token in Authorization header
///
/// Returns null if:
/// - Authorization header is missing
/// - Token doesn't start with "Bearer "
/// - Token is invalid or expired
///
/// Usage:
/// ```dart
/// final userId = getUserIdFromToken(context);
/// if (userId == null) {
///   return Response.json(statusCode: 401, body: {'error': 'Unauthorized'});
/// }
/// ```
String? getUserIdFromToken(RequestContext context) {
  final authHeader = context.request.headers['authorization'];
  if (authHeader == null || !authHeader.startsWith('Bearer ')) {
    return null;
  }

  final token = authHeader.substring(7);
  final jwtService = context.read<JwtService>();
  final payload = jwtService.tryVerify(token);

  return payload?['userId'] as String?;
}
