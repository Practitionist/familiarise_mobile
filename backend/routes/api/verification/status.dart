import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/verification/status
///
/// Get the current verification status for the authenticated consultant.
///
/// Response:
/// ```json
/// {
///   "data": {
///     "id": "...",
///     "status": "PENDING" | "APPROVED" | "REJECTED" | "NEEDS_INFO",
///     "submittedAt": "...",
///     "rejectionReason": "...",
///     "feedbackDetails": "...",
///     "documents": [...]
///   }
/// }
/// ```
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
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
            'message': 'Only consultants can check verification status',
          },
        },
      );
    }

    final verification = await db.consultantVerifications.findLatest(
      consultantProfileId,
    );

    if (verification == null) {
      return Response.json(
        body: {'data': null, 'message': 'No verification submitted'},
      );
    }

    // Fetch documents for this verification
    final documents = await db.consultantVerifications.getDocuments(
      verification.id,
    );

    final verificationJson = verification.toJson();
    verificationJson['documents'] =
        documents.map((d) => d.toJson()).toList();

    return Response.json(body: {'data': verificationJson});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Verification status check failed',
      context: 'VerificationStatus',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to get verification status'},
      },
    );
  }
}
