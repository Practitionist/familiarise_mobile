import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/classes/:id
///
/// Returns class/course plan details with curriculum.
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();

    final classPlan = await db.programs.findClassById(id);

    if (classPlan == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {
            'message': 'Class not found',
            'details': 'No class plan exists with ID: $id',
            'hint':
                'Verify the class ID is correct and the class has not been deleted.',
          },
        },
      );
    }

    return Response.json(
      body: serializeForJson(classPlan),
    );
  } catch (e, stackTrace) {
    // 1. Log to console and Sentry
    await SentryLogger.severe(
      'Error in GET /api/classes/$id',
      context: 'ClassDetailRoute',
      error: e,
      stackTrace: stackTrace,
    );

    // 2. Return detailed error response
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {
          'message': 'Failed to fetch class details',
          'details': e.toString(),
          'type': e.runtimeType.toString(),
          'classId': id,
          'hint': 'Check server logs for stack trace.',
        },
      },
    );
  }
}
