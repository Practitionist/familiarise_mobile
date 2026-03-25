import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// PUT /api/slots/availability/weekly/:id — Update
/// DELETE /api/slots/availability/weekly/:id — Delete
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method == HttpMethod.put) {
    return _handlePut(context, id);
  }
  if (context.request.method == HttpMethod.delete) {
    return _handleDelete(context, id);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handlePut(RequestContext context, String id) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final db = context.read<DatabaseClient>();

    final updated = await db.slots.updateWeeklySlot(
      id: id,
      startDay: body['startDay'] as String?,
      endDay: body['endDay'] as String?,
      startTimeUtc: (body['startTimeUtc'] as num?)?.toInt(),
      endTimeUtc: (body['endTimeUtc'] as num?)?.toInt(),
    );

    if (updated == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Slot not found'}},
      );
    }

    return Response.json(
      body: {'data': serializeForJson(updated)},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('Update weekly slot failed',
        context: 'WeeklySlotPut',
        error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to update slot'}},
    );
  }
}

Future<Response> _handleDelete(
  RequestContext context,
  String id,
) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    await db.slots.deleteWeeklySlot(id);

    return Response.json(body: {'message': 'Slot deleted'});
  } catch (e, stackTrace) {
    await SentryLogger.severe('Delete weekly slot failed',
        context: 'WeeklySlotDel',
        error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to delete slot'}},
    );
  }
}
