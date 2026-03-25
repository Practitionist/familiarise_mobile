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

/// Find a collaboration and verify the user is a participant.
/// Returns the collaboration data or a Response to return early.
Future<Object> _findAndAuthorize(
  RequestContext context,
  String id,
  String userId,
) async {
  final db = context.read<DatabaseClient>();

  // Get user's consultant profile ID
  final user = await db.users.findById(userId);
  final consultantProfileId =
      user?['consultantProfileId'] as String?;
  if (consultantProfileId == null) {
    return Response.json(
      statusCode: HttpStatus.forbidden,
      body: {
        'error': {
          'message': 'Only consultants can access collaborations',
        },
      },
    );
  }

  // Try webinar collaborator
  final webQuery = JsonQueryBuilder()
      .model('WebinarCollaborator')
      .action(QueryAction.findFirst)
      .where({'id': id})
      .build();
  var collab = await db.executor.executeQueryAsSingleMap(webQuery);

  // Try class collaborator if not found
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

  // Verify the user is a participant in this collaboration
  final collabProfileId =
      collab['consultantProfileId'] as String?;
  if (collabProfileId != consultantProfileId) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {'error': {'message': 'Collaboration not found'}},
    );
  }

  return collab;
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

    final result = await _findAndAuthorize(context, id, userId);
    if (result is Response) return result;

    return Response.json(
      body: {
        'data': serializeForJson(
          result as Map<String, dynamic>,
        ),
      },
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

    // Authorize first
    final authResult = await _findAndAuthorize(context, id, userId);
    if (authResult is Response) return authResult;
    final collab = authResult as Map<String, dynamic>;

    final body = await context.request.json() as Map<String, dynamic>;
    final revenueSplit = body['revenueSharePercentage'] as num?;
    final db = context.read<DatabaseClient>();
    final now = DateTime.now().toUtc().toIso8601String();

    // Determine which model to update based on what we found
    final modelName = collab.containsKey('webinarPlanId')
        ? 'WebinarCollaborator'
        : 'ClassCollaborator';

    final updateQuery = JsonQueryBuilder()
        .model(modelName)
        .action(QueryAction.update)
        .where({'id': id})
        .data({
      if (revenueSplit != null)
        'revenueSharePercentage': revenueSplit.toDouble(),
      'updatedAt': now,
    }).build();

    final updated =
        await db.executor.executeQueryAsSingleMap(updateQuery);

    return Response.json(
      body: {
        'data':
            updated != null ? serializeForJson(updated) : null,
      },
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
