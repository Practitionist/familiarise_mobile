import 'package:dart_frog/dart_frog.dart';

/// Root middleware - applies to all routes
/// Handles CORS for Flutter web and provides services
Handler middleware(Handler handler) {
  return (context) async {
    // Handle CORS preflight requests
    if (context.request.method == HttpMethod.options) {
      return Response(
        statusCode: 200,
        headers: _corsHeaders,
      );
    }

    // Continue with the request
    final response = await handler(context);

    // Add CORS headers to all responses
    return response.copyWith(
      headers: {
        ...response.headers,
        ..._corsHeaders,
      },
    );
  };
}

/// CORS headers for Flutter web compatibility
const _corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
  'Access-Control-Allow-Headers': 'Origin, Content-Type, Authorization, Accept',
  'Access-Control-Max-Age': '86400',
};
