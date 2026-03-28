import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET/DELETE /api/plans/classes/:id
Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method == HttpMethod.get) {
    try {
      final db = context.read<DatabaseClient>();
      final plan = await db.plans.findClassPlan(id);
      if (plan == null) {
        return Response.json(
          statusCode: HttpStatus.notFound,
          body: {'error': {'message': 'Not found'}},
        );
      }
      return Response.json(body: {'data': plan});
    } catch (e, stackTrace) {
      await SentryLogger.severe('Get failed',
          context: 'ClassPlanGet',
          error: e, stackTrace: stackTrace);
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {'error': {'message': 'Failed'}},
      );
    }
  }

  if (context.request.method == HttpMethod.delete) {
    try {
      final userId = getUserIdFromToken(context);
      if (userId == null) {
        return Response.json(
          statusCode: HttpStatus.unauthorized,
          body: {'error': {'message': 'Unauthorized'}},
        );
      }
      final db = context.read<DatabaseClient>();
      final plan = await db.plans.findClassPlan(id);
      if (plan == null) {
        return Response.json(
          statusCode: HttpStatus.notFound,
          body: {'error': {'message': 'Not found'}},
        );
      }
      final user = await db.users.findById(userId);
      if (user?['consultantProfileId'] !=
          plan['consultantProfileId']) {
        return Response.json(
          statusCode: HttpStatus.forbidden,
          body: {'error': {'message': 'Not your plan'}},
        );
      }
      await db.plans.deleteClassPlan(id);
      return Response.json(body: {'message': 'Deleted'});
    } catch (e, stackTrace) {
      await SentryLogger.severe('Delete failed',
          context: 'ClassPlanDel',
          error: e, stackTrace: stackTrace);
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {'error': {'message': 'Failed'}},
      );
    }
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}
