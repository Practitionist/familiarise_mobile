import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// GET /api/collaborations/:id — Collaboration details with revenue split
/// PUT /api/collaborations/:id — Update collaboration (revenue split)
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context, id);
  if (method == HttpMethod.put) return _handlePut(context, id);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context, String id) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final query = JsonQueryBuilder()
        .model('WebinarCollaborator')
        .action(QueryAction.findFirst)
        .where({'id': id})
        .build();
    var collab = await db.executor.executeQueryAsSingleMap(query);

    // Try class collaborator if webinar not found
    if (collab == null) {
      final classQuery = JsonQueryBuilder()
          .model('ClassCollaborator')
          .action(QueryAction.findFirst)
          .where({'id': id})
          .build();
      collab = await db.executor.executeQueryAsSingleMap(classQuery);
    }

    if (collab == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Collaboration not found'}},
      );
    }

    return Response.json(
      body: {'data': serializeForJson(collab)},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Collaboration get failed',
      context: 'CollaborationGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to get collaboration'}},
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

    final body = await context.request.json() as Map<String, dynamic>;
    final revenueSplit = body['revenueSharePercentage'] as num?;

    final db = context.read<DatabaseClient>();
    final now = DateTime.now().toUtc().toIso8601String();

    // Try updating webinar collaborator first
    final query = JsonQueryBuilder()
        .model('WebinarCollaborator')
        .action(QueryAction.update)
        .where({'id': id})
        .data({
      if (revenueSplit != null)
        'revenueSharePercentage': revenueSplit.toDouble(),
      'updatedAt': now,
    }).build();

    try {
      final result =
          await db.executor.executeQueryAsSingleMap(query);
      if (result != null) {
        return Response.json(
          body: {'data': serializeForJson(result)},
        );
      }
    } catch (_) {
      // Not a webinar collaborator, try class
    }

    // Try class collaborator
    final classQuery = JsonQueryBuilder()
        .model('ClassCollaborator')
        .action(QueryAction.update)
        .where({'id': id})
        .data({
      if (revenueSplit != null)
        'revenueSharePercentage': revenueSplit.toDouble(),
      'updatedAt': now,
    }).build();

    final result =
        await db.executor.executeQueryAsSingleMap(classQuery);
    if (result == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Collaboration not found'}},
      );
    }

    return Response.json(
      body: {'data': serializeForJson(result)},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Collaboration update failed',
      context: 'CollaborationPut',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to update collaboration'}},
    );
  }
}
