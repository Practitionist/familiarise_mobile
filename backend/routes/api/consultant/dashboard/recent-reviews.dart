import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/consultant/dashboard/recent-reviews
///
/// Returns recent reviews for the authenticated consultant.
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
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final reviews = await db.dashboard.getConsultantRecentReviews(
      userId: userId,
    );

    return Response.json(
      body: serializeForJson({'reviews': reviews}),
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/consultant/dashboard/recent-reviews',
      context: 'ConsultantRecentReviewsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch recent reviews'}
      },
    );
  }
}
