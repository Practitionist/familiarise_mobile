import 'dart:convert';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// PATCH /api/collaborations/:id/respond
///
/// Accept or decline a collaboration invitation.
/// Body: { "response": "ACCEPTED"|"DECLINED", "planType": "webinar"|"class" }
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.patch) {
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

    final body =
        jsonDecode(await context.request.body()) as Map<String, dynamic>;
    final response = body['response'] as String?;
    final planType = body['planType'] as String?;

    if (response == null ||
        !['ACCEPTED', 'DECLINED'].contains(response)) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'response must be ACCEPTED or DECLINED',
          }
        },
      );
    }

    if (planType == null || !['webinar', 'class'].contains(planType)) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'planType must be webinar or class',
          }
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // Look up consultant profile
    final profile = await db.consultantProfiles.findByUserId(userId);

    if (profile == null) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': 'Consultant profile not found'}
        },
      );
    }

    final consultantProfileId = profile['id'] as String;

    final result = await db.collaborators.respondToCollaboration(
      id: id,
      consultantProfileId: consultantProfileId,
      response: response,
      planType: planType,
    );

    if (result == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {
            'message': 'Collaboration not found or already responded',
          }
        },
      );
    }

    return Response.json(body: serializeForJson(result));
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in PATCH /api/collaborations/$id/respond',
      context: 'CollaborationRespondRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to respond to collaboration'}
      },
    );
  }
}
