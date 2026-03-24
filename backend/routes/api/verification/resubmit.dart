import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/verification/resubmit
///
/// Resubmit a verification after rejection. Creates a new verification
/// request and marks the previous one as SUPERSEDED.
///
/// Request body:
/// ```json
/// {
///   "notes": "optional notes about changes made"
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

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final consultantProfileId = user?['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Only consultants can resubmit verification',
          },
        },
      );
    }

    // Must have a previous rejected/needs_info verification
    final existing = await db.consultantVerifications.findLatest(
      consultantProfileId,
    );
    if (existing == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'No previous verification to resubmit',
          },
        },
      );
    }

    if (existing.status != ProfileVerificationStatus.rejected &&
        existing.status != ProfileVerificationStatus.needsInfo) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Can only resubmit rejected or needs-info '
                'verifications. Current status: ${existing.status.name}',
          },
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final notes = body['notes'] as String?;

    final verification = await db.consultantVerifications.resubmit(
      consultantProfileId: consultantProfileId,
      previousVerificationId: existing.id,
      notes: notes,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': verification.toJson()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Verification resubmit failed',
      context: 'VerificationResubmit',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to resubmit verification'},
      },
    );
  }
}
