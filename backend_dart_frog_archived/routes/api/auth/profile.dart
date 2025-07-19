import 'dart:convert';
import 'package:dart_frog/dart_frog.dart';
import '../../../lib/services/supabase_service.dart';
import '../../../lib/utils/auth_middleware.dart';

Future<Response> onRequest(RequestContext context) async {
  // Only allow GET requests
  if (context.request.method != HttpMethod.get) {
    return Response(
      statusCode: 405,
      body: jsonEncode({'error': 'Method not allowed'}),
      headers: {'Content-Type': 'application/json'},
    );
  }

  try {
    // Get user ID from auth middleware
    final userId = context.userId;

    // Get user from database
    final supabaseService = SupabaseService.instance;
    final user = await supabaseService.getUserById(userId);

    if (user == null) {
      return Response(
        statusCode: 404,
        body: jsonEncode({'error': 'User not found'}),
        headers: {'Content-Type': 'application/json'},
      );
    }

    // Return user profile
    return Response(
      statusCode: 200,
      body: jsonEncode(user.toJsonSafe()),
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