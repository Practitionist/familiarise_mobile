import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Stream Video token endpoint
///
/// POST /api/stream/token - Get Stream Video token for joining a meeting
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  if (method == HttpMethod.post) {
    return _handleGetStreamToken(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGetStreamToken(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final data = await context.request.json() as Map<String, dynamic>;

    final appointmentId = data['appointmentId'] as String?;
    if (appointmentId == null || appointmentId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'appointmentId is required'},
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final streamService = context.read<StreamService>();

    // Strict participant, host consultant, or accepted collaborator check
    final hasAccess = await streamService.verifyAppointmentAccess(
      db,
      appointmentId: appointmentId,
      userId: userId,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message': 'Forbidden: you do not have participant, consultant, '
                'or collaborator access to this meeting',
          },
        },
      );
    }

    final meeting = await db.meetingSessions.getOrCreateMeetingSession(
      appointmentId: appointmentId,
    );

    final streamCallId = meeting['streamCallId'] as String;

    if (!streamService.isConfigured) {
      await SentryLogger.error(
        'Stream API not configured',
        context: 'StreamTokenRoute',
      );
      return Response.json(
        statusCode: HttpStatus.serviceUnavailable,
        body: {
          'error': {'message': 'Video service is not configured'},
        },
      );
    }

    final token = streamService.generateUserToken(userId);

    return Response.json(
      body: {
        'token': token,
        'apiKey': streamService.apiKey,
        'callId': streamCallId,
        'userId': userId,
      },
    );
  } on FormatException catch (_) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'Invalid request body format'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/stream/token',
      context: 'StreamTokenRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to generate Stream token'},
      },
    );
  }
}
