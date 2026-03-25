import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// GET /api/consultant/tax-info — Get consultant's tax information
/// PUT /api/consultant/tax-info — Update tax information
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context);
  if (method == HttpMethod.put) return _handlePut(context);

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
          'error': {'message': 'Only consultants can view tax info'},
        },
      );
    }

    final query = JsonQueryBuilder()
        .model('ConsultantTaxInfo')
        .action(QueryAction.findFirst)
        .where({'consultantProfileId': consultantProfileId})
        .build();
    final taxInfo =
        await db.executor.executeQueryAsSingleMap(query);

    return Response.json(
      body: {
        'data': taxInfo != null ? serializeForJson(taxInfo) : null,
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Tax info get failed',
      context: 'TaxInfoGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to get tax info'}},
    );
  }
}

Future<Response> _handlePut(RequestContext context) async {
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
          'error': {
            'message': 'Only consultants can update tax info',
          },
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final now = DateTime.now().toUtc().toIso8601String();

    // Upsert tax info
    final existingQuery = JsonQueryBuilder()
        .model('ConsultantTaxInfo')
        .action(QueryAction.findFirst)
        .where({'consultantProfileId': consultantProfileId})
        .build();
    final existing =
        await db.executor.executeQueryAsSingleMap(existingQuery);

    if (existing != null) {
      final updateQuery = JsonQueryBuilder()
          .model('ConsultantTaxInfo')
          .action(QueryAction.update)
          .where({'id': existing['id']})
          .data({
        if (body.containsKey('panNumber'))
          'panNumber': body['panNumber'],
        if (body.containsKey('gstNumber'))
          'gstNumber': body['gstNumber'],
        if (body.containsKey('taxResidency'))
          'taxResidency': body['taxResidency'],
        'updatedAt': now,
      }).build();
      final result =
          await db.executor.executeQueryAsSingleMap(updateQuery);
      return Response.json(
        body: {
          'data': result != null ? serializeForJson(result) : null,
        },
      );
    } else {
      // Validate required fields for creation
      final panNumber = body['panNumber'] as String?;
      if (panNumber == null || panNumber.isEmpty) {
        return Response.json(
          statusCode: HttpStatus.badRequest,
          body: {
            'error': {
              'message': 'panNumber is required for new tax info',
            },
          },
        );
      }

      final createQuery = JsonQueryBuilder()
          .model('ConsultantTaxInfo')
          .action(QueryAction.create)
          .data({
        'consultantProfileId': consultantProfileId,
        'panNumber': panNumber,
        'gstNumber': body['gstNumber'] as String?,
        'taxResidency': body['taxResidency'] as String? ?? 'IN',
        'createdAt': now,
        'updatedAt': now,
      }).build();
      final result =
          await db.executor.executeQueryAsSingleMap(createQuery);
      return Response.json(
        statusCode: HttpStatus.created,
        body: {
          'data': result != null ? serializeForJson(result) : null,
        },
      );
    }
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Tax info update failed',
      context: 'TaxInfoPut',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to update tax info'}},
    );
  }
}
