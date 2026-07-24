import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/trials — List user's trial sessions
/// POST /api/trials — Request a new trial
///
/// POST body:
/// {
///   "consultantProfileId": "...",
///   "subscriptionPlanId": "...",
///   "notes": "optional"
/// }
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context);
  if (method == HttpMethod.post) return _handlePost(context);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context) async {
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
    final user = await db.users.findById(userId);

    // Return trials based on role
    final consultantProfileId = user?['consultantProfileId'] as String?;
    final consulteeProfileId = user?['consulteeProfileId'] as String?;

    List<Map<String, dynamic>> trials;
    if (consultantProfileId != null) {
      trials = await db.trials.findByConsultant(consultantProfileId);
    } else if (consulteeProfileId != null) {
      trials = await db.trials.findByConsultee(consulteeProfileId);
    } else {
      trials = [];
    }

    return Response.json(
      body: {'data': trials.map(serializeForJson).toList()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to list trials',
      context: 'TrialsList',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to list trials'}
      },
    );
  }
}

Future<Response> _handlePost(RequestContext context) async {
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
    final user = await db.users.findById(userId);
    final consulteeProfileId = user?['consulteeProfileId'] as String?;

    if (consulteeProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Only consultees can request trials'},
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final consultantProfileId = body['consultantProfileId'] as String?;
    final subscriptionPlanId = body['subscriptionPlanId'] as String?;
    final notes = body['notes'] as String?;

    if (consultantProfileId == null || subscriptionPlanId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message':
                'consultantProfileId and subscriptionPlanId are required',
          },
        },
      );
    }

    // Check eligibility (one trial per pair)
    final exists = await db.trials.existsForPair(
      consulteeProfileId: consulteeProfileId,
      consultantProfileId: consultantProfileId,
    );
    if (exists) {
      return Response.json(
        statusCode: HttpStatus.conflict,
        body: {
          'error': {
            'message': 'You already have a trial with this consultant',
          },
        },
      );
    }

    final trial = await db.trials.create(
      consulteeProfileId: consulteeProfileId,
      consultantProfileId: consultantProfileId,
      subscriptionPlanId: subscriptionPlanId,
      notes: notes,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': serializeForJson(trial)},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to create trial',
      context: 'TrialCreate',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to create trial'}
      },
    );
  }
}
