import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/plans/subscriptions — List
/// POST /api/plans/subscriptions — Create
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

    final plans = await db.plans.listSubscriptionPlans(cpId);
    return Response.json(
      body: {'data': plans.map(serializeForJson).toList()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('List subscription plans failed',
        context: 'SubscriptionPlansGet',
        error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to list plans'}},
    );
  }
}

Future<Response> _handlePost(RequestContext context) async {
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

    final body = await context.request.json() as Map<String, dynamic>;
    final title = body['title'] as String?;
    final durationInMonths = (body['durationInMonths'] as num?)?.toInt();
    final price = (body['price'] as num?)?.toInt();

    if (title == null || title.isEmpty ||
        durationInMonths == null || durationInMonths < 1 ||
        price == null || price <= 0) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'title, durationInMonths (>=1), '
                'and price (>0) are required',
          },
        },
      );
    }

    final plan = await db.plans.createSubscriptionPlan(
      consultantProfileId: cpId,
      title: title,
      description: body['description'] as String?,
      durationInMonths: durationInMonths,
      price: price,
      callsPerWeek: (body['callsPerWeek'] as num?)?.toInt() ?? 1,
      sessionDurationInHours:
          (body['sessionDurationInHours'] as num?)?.toDouble() ?? 1.0,
      language: body['language'] as String?,
      level: body['level'] as String?,
      freeTrialEnabled: body['freeTrialEnabled'] as bool? ?? false,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': serializeForJson(plan)},
    );
  } on ArgumentError catch (e) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': e.message?.toString() ?? 'Invalid value: ${e.invalidValue}'}
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe('Create subscription plan failed',
        context: 'SubscriptionPlansPost',
        error: e, stackTrace: stackTrace);
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to create plan'}},
    );
  }
}
