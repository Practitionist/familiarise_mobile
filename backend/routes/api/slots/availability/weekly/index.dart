import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/slots/availability/weekly — List weekly slots
/// POST /api/slots/availability/weekly — Create weekly slot
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
    final slots = await db.slots.listWeeklySlots(cpId);

    return Response.json(
      body: {'data': slots.map(serializeForJson).toList()},
    );
  } on ArgumentError catch (e) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': e.message?.toString() ?? 'Invalid input'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'List weekly slots failed',
      context: 'WeeklySlotsGet',
      error: e,
      stackTrace: stackTrace,
    );
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
    final startDay = body['startDay'] as String?;
    final endDay = body['endDay'] as String?;
    final startTimeUtc = (body['startTimeUtc'] as num?)?.toInt();
    final endTimeUtc = (body['endTimeUtc'] as num?)?.toInt();
    final utcOffsetMinutes = (body['utcOffsetMinutes'] as num?)?.toInt() ?? 0;

    if (startDay == null ||
        endDay == null ||
        startTimeUtc == null ||
        endTimeUtc == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'startDay, endDay, startTimeUtc, '
                'endTimeUtc are required',
          },
        },
      );
    }

    // Validate time range (0-1439 minutes)
    if (startTimeUtc < 0 ||
        startTimeUtc > 1439 ||
        endTimeUtc < 0 ||
        endTimeUtc > 1439) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Time values must be 0-1439 (minutes)',
          },
        },
      );
    }

    final slot = await db.slots.createWeeklySlot(
      consultantProfileId: cpId,
      startDay: startDay,
      endDay: endDay,
      startTimeUtc: startTimeUtc,
      endTimeUtc: endTimeUtc,
      utcOffsetMinutes: utcOffsetMinutes,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': serializeForJson(slot)},
    );
  } on ArgumentError catch (e) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': e.message?.toString() ?? 'Invalid input'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Create weekly slot failed',
      context: 'WeeklySlotsPost',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to create slot'}
      },
    );
  }
}
