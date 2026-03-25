import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/plans/consultations/:id — Plan details
/// PUT /api/plans/consultations/:id — Update plan
/// DELETE /api/plans/consultations/:id — Delete plan
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context, id);
  if (method == HttpMethod.put) return _handlePut(context, id);
  if (method == HttpMethod.delete) return _handleDelete(context, id);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context, String id) async {
  try {
    final db = context.read<DatabaseClient>();
    final plan = await db.plans.findConsultationPlan(id);
    if (plan == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Plan not found'}},
      );
    }
    return Response.json(body: {'data': plan.toJson()});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Get consultation plan failed',
      context: 'ConsultationPlanGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to get plan'}},
    );
  }
}

Future<Response> _handlePut(RequestContext context, String id) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    // Verify ownership
    final db = context.read<DatabaseClient>();
    final existing = await db.plans.findConsultationPlan(id);
    if (existing == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Plan not found'}},
      );
    }

    final user = await db.users.findById(userId);
    if (user?['consultantProfileId'] !=
        existing.consultantProfileId) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': 'You can only edit your own plans'},
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final updated = await db.plans.updateConsultationPlan(
      id: id,
      title: body['title'] as String?,
      description: body['description'] as String?,
      durationInHours:
          (body['durationInHours'] as num?)?.toDouble(),
      price: (body['price'] as num?)?.toInt(),
      language: body['language'] as String?,
      level: body['level'] as String?,
    );

    return Response.json(
      body: {
        'data': updated != null ? serializeForJson(updated) : null,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Update consultation plan failed',
      context: 'ConsultationPlanPut',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to update plan'}},
    );
  }
}

Future<Response> _handleDelete(
  RequestContext context,
  String id,
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
    final existing = await db.plans.findConsultationPlan(id);
    if (existing == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Plan not found'}},
      );
    }

    final user = await db.users.findById(userId);
    if (user?['consultantProfileId'] !=
        existing.consultantProfileId) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {'message': 'You can only delete your own plans'},
        },
      );
    }

    await db.plans.deleteConsultationPlan(id);
    return Response.json(body: {'message': 'Plan deleted'});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Delete consultation plan failed',
      context: 'ConsultationPlanDelete',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to delete plan'}},
    );
  }
}
