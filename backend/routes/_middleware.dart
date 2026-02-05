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

/// Localhost origins allowed in development mode
const _devAllowedOrigins = [
  'http://localhost:3000',
  'http://localhost:8080',
  'http://127.0.0.1:3000',
  'http://127.0.0.1:8080',
];

/// Get CORS headers based on environment
/// In production, restricts origins; in development, allows localhost variants
Map<String, String> _getCorsHeaders(String? requestOrigin) {
  final isProduction = Platform.environment['DART_ENV'] == 'production';

  String allowedOrigin;
  if (isProduction) {
    allowedOrigin = Platform.environment['ALLOWED_ORIGINS'] ??
        'https://familiarise.com';
  } else {
    // Reflect the request origin if it matches a known localhost variant
    allowedOrigin = (requestOrigin != null &&
            _devAllowedOrigins.contains(requestOrigin))
        ? requestOrigin
        : _devAllowedOrigins.first;
  }

  return {
    'Access-Control-Allow-Origin': allowedOrigin,
    'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
    'Access-Control-Allow-Headers':
        'Origin, Content-Type, Authorization, Accept',
    'Access-Control-Max-Age': '86400',
  };
}
