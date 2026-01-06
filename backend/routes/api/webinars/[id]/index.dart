import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/webinars/:id
///
/// Returns webinar plan details with upcoming sessions.
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();

    final webinar = await db.programs.findWebinarById(id);

    if (webinar == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {
            'message': 'Webinar not found',
            'details': 'No webinar plan exists with ID: $id',
            'hint':
                'Verify the webinar ID is correct and the webinar has not been deleted.',
          },
        },
      );
    }

    return Response.json(
      body: serializeForJson(webinar),
    );
  } catch (e, stackTrace) {
    // 1. Log to console and Sentry
    await SentryLogger.severe(
      'Error in GET /api/webinars/$id',
      context: 'WebinarDetailRoute',
      error: e,
      stackTrace: stackTrace,
    );

    // 2. Return detailed error response
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {
          'message': 'Failed to fetch webinar details',
          'details': e.toString(),
          'type': e.runtimeType.toString(),
          'webinarId': id,
          'hint': 'Check server logs for stack trace.',
        },
      },
    );
  }
}
