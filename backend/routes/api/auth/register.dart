import 'dart:convert';
import 'package:dart_frog/dart_frog.dart';
import '../../../lib/services/supabase_service.dart';
import '../../../lib/utils/jwt_utils.dart';
import '../../../lib/models/user_model.dart';

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
    final name = data['name'] as String?;
    final phone = data['phone'] as String?;
    final roleString = data['role'] as String?;

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

    if (name == null || name.isEmpty) {
      return Response(
        statusCode: 400,
        body: jsonEncode({'error': 'Name is required'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Validate email format
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      return Response(
        statusCode: 400,
        body: jsonEncode({'error': 'Invalid email format'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Validate password strength
    if (password.length < 8) {
      return Response(
        statusCode: 400,
        body: jsonEncode({'error': 'Password must be at least 8 characters'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Parse role
    final role = UserRole.fromString(roleString ?? 'CONSULTEE');

    // Create user
    final supabaseService = SupabaseService.instance;
    final user = await supabaseService.createUser(
      email: email,
      password: password,
      name: name,
      phone: phone,
      role: role,
    );

    // Generate JWT tokens
    final tokens = JwtUtils.generateTokenPair(user);

    // Return success response
    return Response(
      statusCode: 201,
      body: jsonEncode({
        'accessToken': tokens['accessToken'],
        'refreshToken': tokens['refreshToken'],
        'expiresAt': tokens['expiresAt'],
        'user': user.toJsonSafe(),
      }),
      headers: {'Content-Type': 'application/json'},
    );

  } on AuthenticationException catch (e) {
    return Response(
      statusCode: 409,
      body: jsonEncode({'error': e.message}),
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