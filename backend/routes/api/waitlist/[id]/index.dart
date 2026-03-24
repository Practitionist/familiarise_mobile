import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/waitlist/:id — Waitlist entry details
/// DELETE /api/waitlist/:id — Leave waitlist
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context, id);
  if (method == HttpMethod.delete) return _handleDelete(context, id);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context, String id) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final entry = await db.waitlists.findById(id);

    if (entry == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Waitlist entry not found'}},
      );
    }

    return Response.json(body: {'data': entry.toJson()});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Waitlist get failed',
      context: 'WaitlistGetById',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to get waitlist entry'}},
    );
  }
}

Future<Response> _handleDelete(RequestContext context, String id) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    await db.waitlists.leave(id);

    return Response.json(body: {'message': 'Left waitlist'});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Waitlist leave failed',
      context: 'WaitlistDelete',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to leave waitlist'}},
    );
  }
}
