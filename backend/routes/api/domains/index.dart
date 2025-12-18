import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/domains
///
/// Returns all domains with their subdomains.
/// Used by the mobile app for onboarding (consultant domain selection).
Future<Response> onRequest(RequestContext context) async {
  // Only allow GET requests
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();
    final domains = await db.domains.findAllWithSubDomains();

    return Response.json(
      body: {'domains': domains},
    );
  } catch (e, stackTrace) {
    // Log error for debugging
    // ignore: avoid_print
    print('Error in GET /api/domains: $e');
    // ignore: avoid_print
    print('Stack trace: $stackTrace');

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to fetch domains'}},
    );
  }
}
