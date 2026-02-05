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

/// POST /api/stream/token
///
/// Get a Stream Video token for joining a meeting.
///
/// Request body:
/// ```json
/// {
///   "appointmentId": "appointment-uuid"
/// }
/// ```
///
/// Response:
/// ```json
/// {
///   "token": "jwt-token",
///   "apiKey": "stream-api-key",
///   "callId": "unique-call-id",
///   "userId": "user-id"
/// }
/// ```
Future<Response> _handleGetStreamToken(RequestContext context) async {
  try {
    // Verify user is authenticated
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    // Parse request body
    final data = await context.request.json() as Map<String, dynamic>;

    final appointmentId = data['appointmentId'] as String?;
    if (appointmentId == null || appointmentId.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'appointmentId is required'}
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // Verify user has access to this appointment
    final hasAccess = await db.meetingSessions.userHasAccessToAppointment(
      appointmentId: appointmentId,
      userId: userId,
    );

    if (!hasAccess) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': 'You do not have access to this meeting'}
        },
      );
    }

    // Get or create meeting session
    final meeting = await db.meetingSessions.getOrCreateMeetingSession(
      appointmentId: appointmentId,
    );

    final streamCallId = meeting['streamCallId'] as String;

    // Get Stream service from provider
    final streamService = context.read<StreamService>();

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

    // Generate user token (valid for 24 hours)
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
        'error': {'message': 'Failed to generate Stream token'}
      },
    );
  }
}
