import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/collaborations
///
/// Returns all collaborations (webinar + class) for the authenticated consultant.
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

    // Look up consultant profile for this user
    final profiles = await db.executeRaw(
      'SELECT id FROM "ConsultantProfile" WHERE "userId" = \$1',
      [userId],
    );

    if (profiles.isEmpty) {
      return Response.json(
        body: {
          'webinarCollaborations': <dynamic>[],
          'classCollaborations': <dynamic>[],
          'counts': {'pendingCount': 0, 'acceptedCount': 0},
        },
      );
    }

    final consultantProfileId = profiles.first['id'] as String;
    final result =
        await db.collaborators.getMyCollaborations(consultantProfileId);

    // Serialize DateTime values for JSON
    final webinars = (result['webinarCollaborations'] as List)
        .map((w) => serializeForJson(w as Map<String, dynamic>))
        .toList();
    final classes = (result['classCollaborations'] as List)
        .map((c) => serializeForJson(c as Map<String, dynamic>))
        .toList();

    return Response.json(
      body: {
        'webinarCollaborations': webinars,
        'classCollaborations': classes,
        'counts': result['counts'],
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/collaborations',
      context: 'CollaborationsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch collaborations'}
      },
    );
  }
}
