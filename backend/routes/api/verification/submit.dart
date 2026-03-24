import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/database/repositories/consultant_verification_repository.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/verification/submit
///
/// Submit a new consultant profile verification request.
///
/// Request body:
/// ```json
/// {
///   "notes": "optional notes from the consultant"
/// }
/// ```
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

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

    // Get consultant profile ID for this user
    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    if (user == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'User not found'},
        },
      );
    }

    final consultantProfileId = user['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Only consultants can submit verification',
          },
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final notes = body['notes'] as String?;

    // Atomic check-and-submit to prevent race conditions
    final verification = await db.consultantVerifications.submitIfNoPending(
      consultantProfileId: consultantProfileId,
      notes: notes,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': verification.toJson()},
    );
  } on VerificationConflictException {
    return Response.json(
      statusCode: HttpStatus.conflict,
      body: {
        'error': {
          'message': 'A verification request is already pending',
        },
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Verification submit failed',
      context: 'VerificationSubmit',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to submit verification'},
      },
    );
  }
}
