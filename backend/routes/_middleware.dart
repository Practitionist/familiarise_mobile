import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

/// Root middleware - applies to all routes
/// Handles CORS for Flutter web and provides services
Handler middleware(Handler handler) {
  return (context) async {
    final corsHeaders = _getCorsHeaders();

    // Handle CORS preflight requests
    if (context.request.method == HttpMethod.options) {
      return Response(
        headers: corsHeaders,
      );
    }

    // Continue with the request
    final response = await handler(context);

    // Add CORS headers to all responses
    return response.copyWith(
      headers: {
        ...response.headers,
        ...corsHeaders,
      },
    );
  };
}

/// Get CORS headers based on environment
/// In production, restricts origins; in development, allows all
Map<String, String> _getCorsHeaders() {
  final isProduction = Platform.environment['DART_ENV'] == 'production';
  final allowedOrigin = isProduction
      ? Platform.environment['ALLOWED_ORIGINS'] ?? 'https://familiarise.com'
      : '*'; // Allow all origins in development

  return {
    'Access-Control-Allow-Origin': allowedOrigin,
    'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': 'Origin, Content-Type, Authorization, Accept',
    'Access-Control-Max-Age': '86400',
  };
}
