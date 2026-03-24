import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/trials/check-eligibility?consultantProfileId=...
///
/// Check if the authenticated consultee is eligible for a trial
/// with the given consultant (one trial per pair).
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
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

    final consultantProfileId =
        context.request.uri.queryParameters['consultantProfileId'];
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'consultantProfileId query parameter is required',
          },
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final consulteeProfileId =
        user?['consulteeProfileId'] as String?;

    if (consulteeProfileId == null) {
      return Response.json(
        body: {'eligible': false, 'reason': 'Not a consultee'},
      );
    }

    final exists = await db.trials.existsForPair(
      consulteeProfileId: consulteeProfileId,
      consultantProfileId: consultantProfileId,
    );

    return Response.json(
      body: {
        'eligible': !exists,
        'reason': exists
            ? 'Already have a trial with this consultant'
            : null,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to check trial eligibility',
      context: 'TrialEligibility',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to check eligibility'}},
    );
  }
}
