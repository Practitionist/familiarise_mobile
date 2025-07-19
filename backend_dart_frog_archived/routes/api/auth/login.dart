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

    final email = data['email'] as String?;
    final password = data['password'] as String?;

    // Validate input
    if (email == null || email.isEmpty) {
      return Response(
        statusCode: 400,
        body: jsonEncode({'error': 'Email is required'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    if (password == null || password.isEmpty) {
      return Response(
        statusCode: 400,
        body: jsonEncode({'error': 'Password is required'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Authenticate user
    final supabaseService = SupabaseService.instance;
    final user = await supabaseService.authenticateUser(email, password);

    if (user == null) {
      return Response(
        statusCode: 401,
        body: jsonEncode({'error': 'Invalid credentials'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Generate JWT tokens
    final tokens = JwtUtils.generateTokenPair(user);

    // Return success response
    return Response(
      statusCode: 200,
      body: jsonEncode({
        'accessToken': tokens['accessToken'],
        'refreshToken': tokens['refreshToken'],
        'expiresAt': tokens['expiresAt'],
        'user': user.toJsonSafe(),
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