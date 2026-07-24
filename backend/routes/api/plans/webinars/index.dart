import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET/POST /api/plans/webinars
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method == HttpMethod.get) {
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
      final cpId = user?['consultantProfileId'] as String?;
      if (cpId == null) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {'message': 'Not a consultant'}
          },
        );
      }
      final plans = await db.plans.listWebinarPlans(cpId);
      return Response.json(
        body: {'data': plans.map(serializeForJson).toList()},
      );
    } catch (e, stackTrace) {
      await SentryLogger.severe('List failed',
          context: 'WebinarPlansGet', error: e, stackTrace: stackTrace);
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {
          'error': {'message': 'Failed'}
        },
      );
    }
  }

  if (context.request.method == HttpMethod.post) {
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
      final cpId = user?['consultantProfileId'] as String?;
      if (cpId == null) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {'message': 'Not a consultant'}
          },
        );
      }
      final body = await context.request.json() as Map<String, dynamic>;
      final title = body['title'] as String?;
      final price = (body['price'] as num?)?.toInt();
      final maxP = (body['maxParticipants'] as num?)?.toInt();
      final dur = (body['durationInHours'] as num?)?.toDouble();

      if (title == null ||
          price == null ||
          price <= 0 ||
          maxP == null ||
          maxP <= 0 ||
          dur == null ||
          dur <= 0) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {
              'message': 'title, price, maxParticipants, '
                  'durationInHours required (all > 0)',
            },
          },
        );
      }

      final plan = await db.plans.createWebinarPlan(
        consultantProfileId: cpId,
        title: title,
        description: body['description'] as String?,
        durationInHours: dur,
        price: price,
        maxParticipants: maxP,
        language: body['language'] as String?,
        level: body['level'] as String?,
        recordingEnabled: body['recordingEnabled'] as bool? ?? false,
      );

      return Response.json(
        statusCode: HttpStatus.created,
        body: {'data': serializeForJson(plan)},
      );
    } on ArgumentError catch (e) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message':
                e.message?.toString() ?? 'Invalid value: ${e.invalidValue}'
          }
        },
      );
    } catch (e, stackTrace) {
      await SentryLogger.severe('Create failed',
          context: 'WebinarPlansPost', error: e, stackTrace: stackTrace);
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {
          'error': {'message': 'Failed to create'}
        },
      );
    }
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}
