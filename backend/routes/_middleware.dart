import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

/// Root middleware - applies to all routes
/// Handles CORS for Flutter web and provides services
Handler middleware(Handler handler) {
  return (context) async {
    final origin = context.request.headers['origin'];
    final corsHeaders = _getCorsHeaders(origin);

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

/// Pattern to match any localhost or 127.0.0.1 origin (any port)
final _localhostPattern = RegExp(r'^http://(localhost|127\.0\.0\.1)(:\d+)?$');

/// Get CORS headers based on environment
/// In production, restricts origins; in development, allows any localhost
Map<String, String> _getCorsHeaders(String? requestOrigin) {
  final isProduction = Platform.environment['DART_ENV'] == 'production';

  String allowedOrigin;
  if (isProduction) {
    allowedOrigin =
        Platform.environment['ALLOWED_ORIGINS'] ?? 'https://familiarise.com';
  } else {
    // Reflect the request origin if it's any localhost variant
    allowedOrigin =
        (requestOrigin != null && _localhostPattern.hasMatch(requestOrigin))
            ? requestOrigin
            : 'http://localhost:3000';
  }

  return {
    'Access-Control-Allow-Origin': allowedOrigin,
    'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
    'Access-Control-Allow-Headers':
        'Origin, Content-Type, Authorization, Accept',
    'Access-Control-Max-Age': '86400',
  };
}
