import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
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

    // Serialize DateTime values for JSON encoding
    final serializedDomains = domains.map(serializeForJson).toList();

    return Response.json(
      body: {'domains': serializedDomains},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to fetch domains',
      context: 'Domains',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch domains'},
      },
    );
  }
}
