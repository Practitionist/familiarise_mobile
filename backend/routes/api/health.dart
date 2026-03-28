import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

/// GET /api/health
/// Railway uses this endpoint to verify the server is running.
Response onRequest(RequestContext context) {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  return Response.json(
    body: {
      'status': 'ok',
      'timestamp': DateTime.now().toIso8601String(),
      'service': 'familiarise-mobile-api',
    },
  );
}
