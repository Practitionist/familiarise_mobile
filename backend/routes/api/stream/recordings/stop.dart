import 'dart:io';

import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/stream/recordings/stop — Stop recording a meeting
///
/// Body: { "callId": "..." }
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final callId = body['callId'] as String?;

    if (callId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'callId is required'}},
      );
    }

    // TODO: Call Stream SDK to stop recording
    // final streamService = context.read<StreamService>();
    // await streamService.stopRecording(callId);

    return Response.json(
      body: {'message': 'Recording stopped', 'callId': callId},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Stop recording failed',
      context: 'RecordingStop',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to stop recording'}},
    );
  }
}
