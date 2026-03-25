import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/trials/:trialId — Get trial details
/// PUT /api/trials/:trialId — Update trial status (accept/reject)
///
/// PUT body: { "status": "SCHEDULED" | "REJECTED" | "CANCELLED" }
Future<Response> onRequest(
  RequestContext context,
  String trialId,
) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context, trialId);
  if (method == HttpMethod.put) return _handlePut(context, trialId);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(
  RequestContext context,
  String trialId,
) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final trial = await db.trials.findById(trialId);
    if (trial == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Trial not found'}},
      );
    }

    return Response.json(body: {'data': trial.toJson()});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to get trial',
      context: 'TrialGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to get trial'}},
    );
  }
}

Future<Response> _handlePut(
  RequestContext context,
  String trialId,
) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final statusStr = body['status'] as String?;
    if (statusStr == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'status is required'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final trial = await db.trials.updateStatus(
      id: trialId,
      status: statusStr.toUpperCase(),
    );

    return Response.json(
      body: {
        'data': trial != null ? serializeForJson(trial) : null,
      },
    );
  } on FormatException catch (e) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {'error': {'message': e.message}},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to update trial',
      context: 'TrialUpdate',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to update trial'}},
    );
  }
}
