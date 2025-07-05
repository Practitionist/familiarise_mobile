import 'dart:convert';
import 'package:dart_frog/dart_frog.dart';
import '../../../lib/services/supabase_service.dart';
import '../../../lib/utils/jwt_utils.dart';

Future<Response> onRequest(RequestContext context) async {
  // Only allow POST requests
  if (context.request.method != HttpMethod.post) {
    return Response(
      statusCode: 405,
      body: jsonEncode({'error': 'Method not allowed'}),
      headers: {'Content-Type': 'application/json'},
    );
  }

  try {
    // Parse request body
    final body = await context.request.body();
    final data = jsonDecode(body) as Map<String, dynamic>;

    final refreshToken = data['refreshToken'] as String?;

    // Validate input
    if (refreshToken == null || refreshToken.isEmpty) {
      return Response(
        statusCode: 400,
        body: jsonEncode({'error': 'Refresh token is required'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Verify refresh token
    final jwt = JwtUtils.verifyToken(refreshToken);
    if (jwt == null) {
      return Response(
        statusCode: 401,
        body: jsonEncode({'error': 'Invalid refresh token'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    if (JwtUtils.isTokenExpired(jwt)) {
      return Response(
        statusCode: 401,
        body: jsonEncode({'error': 'Refresh token expired'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    if (!JwtUtils.isRefreshToken(jwt)) {
      return Response(
        statusCode: 401,
        body: jsonEncode({'error': 'Invalid token type'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Get user ID from token
    final userId = jwt.payload['userId'] as String?;
    if (userId == null) {
      return Response(
        statusCode: 401,
        body: jsonEncode({'error': 'Invalid token payload'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Get user from database
    final supabaseService = SupabaseService.instance;
    final user = await supabaseService.getUserById(userId);

    if (user == null) {
      return Response(
        statusCode: 401,
        body: jsonEncode({'error': 'User not found'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Generate new JWT tokens
    final tokens = JwtUtils.generateTokenPair(user);

    // Return success response
    return Response(
      statusCode: 200,
      body: jsonEncode({
        'accessToken': tokens['accessToken'],
        'refreshToken': tokens['refreshToken'],
        'expiresAt': tokens['expiresAt'],
      }),
      headers: {'Content-Type': 'application/json'},
    );

  } catch (e) {
    // Handle errors
    return Response(
      statusCode: 500,
      body: jsonEncode({'error': 'Internal server error: $e'}),
      headers: {'Content-Type': 'application/json'},
    );
  }
}