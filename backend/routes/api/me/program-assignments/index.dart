import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/me/program-assignments
///
/// Returns the authenticated user's active program assignments
/// (entitlements) with remaining engagements/credits per cycle.
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final assignments = await db.organizations.getMyProgramAssignments(userId);

    return Response.json(
      body: serializeForJson({'assignments': assignments}),
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/me/program-assignments',
      context: 'MyProgramAssignmentsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch program assignments'}
      },
    );
  }
}
