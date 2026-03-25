import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET/POST /api/plans/classes
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method == HttpMethod.get) {
    try {
      final userId = getUserIdFromToken(context);
      if (userId == null) {
        return Response.json(
          statusCode: HttpStatus.unauthorized,
          body: {'error': {'message': 'Unauthorized'}},
        );
      }
      final db = context.read<DatabaseClient>();
      final user = await db.users.findById(userId);
      final cpId = user?['consultantProfileId'] as String?;
      if (cpId == null) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {'error': {'message': 'Not a consultant'}},
        );
      }
      final plans = await db.plans.listClassPlans(cpId);
      return Response.json(
        body: {'data': plans.map(serializeForJson).toList()},
      );
    } catch (e, stackTrace) {
      await SentryLogger.severe('List failed',
          context: 'ClassPlansGet',
          error: e, stackTrace: stackTrace);
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {'error': {'message': 'Failed'}},
      );
    }
  }

  if (context.request.method == HttpMethod.post) {
    try {
      final userId = getUserIdFromToken(context);
      if (userId == null) {
        return Response.json(
          statusCode: HttpStatus.unauthorized,
          body: {'error': {'message': 'Unauthorized'}},
        );
      }
      final db = context.read<DatabaseClient>();
      final user = await db.users.findById(userId);
      final cpId = user?['consultantProfileId'] as String?;
      if (cpId == null) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {'error': {'message': 'Not a consultant'}},
        );
      }
      final body =
          await context.request.json() as Map<String, dynamic>;
      final title = body['title'] as String?;
      final price = (body['price'] as num?)?.toInt();
      final maxP = (body['maxParticipants'] as num?)?.toInt();
      final dur = (body['durationInMonths'] as num?)?.toInt();

      if (title == null || price == null || price <= 0 ||
          maxP == null || maxP <= 0 ||
          dur == null || dur < 1) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {
              'message': 'title, price, maxParticipants, '
                  'durationInMonths required',
            },
          },
        );
      }

      final plan = await db.plans.createClassPlan(
        consultantProfileId: cpId,
        title: title,
        description: body['description'] as String?,
        durationInMonths: dur,
        price: price,
        maxParticipants: maxP,
        meetingsPerWeek:
            (body['meetingsPerWeek'] as num?)?.toInt() ?? 1,
        sessionDurationInHours:
            (body['sessionDurationInHours'] as num?)?.toDouble() ??
                1.0,
        language: body['language'] as String?,
        level: body['level'] as String?,
        recordingEnabled:
            body['recordingEnabled'] as bool? ?? false,
      );

      return Response.json(
        statusCode: HttpStatus.created,
        body: {'data': serializeForJson(plan)},
      );
    } catch (e, stackTrace) {
      await SentryLogger.severe('Create failed',
          context: 'ClassPlansPost',
          error: e, stackTrace: stackTrace);
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {'error': {'message': 'Failed to create'}},
      );
    }
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}
