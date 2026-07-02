import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/plans/consultations — List consultant's consultation plans
/// POST /api/plans/consultations — Create consultation plan
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
    final consultantProfileId =
        user?['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Only consultants can list plans'},
        },
      );
    }

    final plans = await db.plans.listConsultationPlans(
      consultantProfileId,
    );

    return Response.json(
      body: {'data': plans.map(serializeForJson).toList()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'List consultation plans failed',
      context: 'ConsultationPlansGet',
      error: e,
      stackTrace: stackTrace,
    );
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
    final consultantProfileId =
        user?['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Only consultants can create plans'},
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final title = body['title'] as String?;
    final durationInHours = (body['durationInHours'] as num?)?.toDouble();
    final price = (body['price'] as num?)?.toInt();

    if (title == null || title.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'title is required'}},
      );
    }
    if (durationInHours == null ||
        durationInHours < 0.5 ||
        durationInHours > 8) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'durationInHours must be between 0.5 and 8',
          },
        },
      );
    }
    if (price == null || price <= 0) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'price must be > 0'}},
      );
    }

    final plan = await db.plans.createConsultationPlan(
      consultantProfileId: consultantProfileId,
      title: title,
      description: body['description'] as String?,
      durationInHours: durationInHours,
      price: price,
      priceCurrency: body['priceCurrency'] as String? ?? 'INR',
      language: body['language'] as String?,
      level: body['level'] as String?,
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
    await SentryLogger.severe(
      'Create consultation plan failed',
      context: 'ConsultationPlansPost',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to create plan'}},
    );
  }
}
