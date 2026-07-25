import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/slots/availability/custom — List custom slots
/// POST /api/slots/availability/custom — Create custom slot
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context);
  if (method == HttpMethod.post) return _handlePost(context);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context) async {
  try {
    final cpId = context.request.uri.queryParameters['consultantProfileId'];
    if (cpId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'consultantProfileId is required',
          },
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final slots = await db.slots.listCustomSlots(cpId);

    return Response.json(
      body: {'data': slots.map(serializeForJson).toList()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('List custom slots failed',
        context: 'CustomSlotsGet', error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to list slots'}
      },
    );
  }
}

Future<Response> _handlePost(RequestContext context) async {
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
    final user = await db.users.findById(userId);
    final cpId = user?['consultantProfileId'] as String?;
    if (cpId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Not a consultant'}
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final startsAt = body['startsAt'] as String?;
    final endsAt = body['endsAt'] as String?;

    if (startsAt == null || endsAt == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'startsAt and endsAt are required',
          },
        },
      );
    }

    // Validate ISO date format
    if (DateTime.tryParse(startsAt) == null ||
        DateTime.tryParse(endsAt) == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Invalid date format (use ISO 8601)'},
        },
      );
    }

    final slot = await db.slots.createCustomSlot(
      consultantProfileId: cpId,
      startsAt: startsAt,
      endsAt: endsAt,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': serializeForJson(slot)},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('Create custom slot failed',
        context: 'CustomSlotsPost', error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to create slot'}
      },
    );
  }
}
