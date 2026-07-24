import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/waitlist/:id — Waitlist entry details (own entries only)
/// DELETE /api/waitlist/:id — Leave waitlist (own entries only)
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context, id);
  if (method == HttpMethod.delete) return _handleDelete(context, id);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// Fetch entry and verify ownership. Returns the entry's JSON or an
/// error Response.
Future<Object> _fetchAndAuthorize(
  RequestContext context,
  String id,
  String userId,
) async {
  final db = context.read<DatabaseClient>();
  final entry = await db.waitlists.findById(id);

  if (entry == null) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {
        'error': {'message': 'Waitlist entry not found'}
      },
    );
  }

  // Ownership check — prevent IDOR
  final entryJson = entry.toJson();
  final entryUserId = entryJson['userId'] as String?;
  if (entryUserId != userId) {
    return Response.json(
      statusCode: HttpStatus.forbidden,
      body: {
        'error': {'message': 'You can only access your own entries'},
      },
    );
  }

  return entryJson;
}

Future<Response> _handleGet(RequestContext context, String id) async {
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

    final result = await _fetchAndAuthorize(context, id, userId);
    if (result is Response) return result;

    return Response.json(body: {'data': result});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Waitlist get failed',
      context: 'WaitlistGetById',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to get waitlist entry'}
      },
    );
  }
}

Future<Response> _handleDelete(RequestContext context, String id) async {
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

    // Verify ownership before allowing leave
    final result = await _fetchAndAuthorize(context, id, userId);
    if (result is Response) return result;

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
      body: {
        'error': {'message': 'Failed to leave waitlist'}
      },
    );
  }
}
