import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/maintenance/status — Current maintenance status (unauthenticated)
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();
    final activeWindow = await db.maintenance.getActive();

    if (activeWindow == null) {
      return Response.json(
        body: {
          'maintenance': false,
          'data': null,
        },
      );
    }

    return Response.json(
      body: {
        'maintenance': true,
        'data': serializeForJson(activeWindow),
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Maintenance status check failed',
      context: 'MaintenanceStatus',
      error: e,
      stackTrace: stackTrace,
    );
    // On error, assume no maintenance (graceful degradation)
    return Response.json(
      body: {'maintenance': false, 'data': null},
    );
  }
}
