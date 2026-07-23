import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

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

  // WebinarCollaborator + ClassCollaborator were consolidated into a single
  // Collaborator model (collaboratorType discriminates webinar vs class).
  final collab = await db.prisma.collaborator.findFirst(
    where: CollaboratorWhereInput(id: StringFilter(equals: id)),
  );

  if (collab == null) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {'error': {'message': 'Collaboration not found'}},
    );
  }

  // Verify the user is a participant in this collaboration
  if (collab.consultantProfileId != consultantProfileId) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {'error': {'message': 'Collaboration not found'}},
    );
  }

  return collab.toJson();
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

    final body = await context.request.json() as Map<String, dynamic>;
    final revenueSplit = body['revenueSharePercentage'] as num?;
    final db = context.read<DatabaseClient>();

    // Single Collaborator model; revenueSharePercentage is now stored as
    // basis points (revenueShareBps, e.g. 30% -> 3000) for integer money math.
    // Typed update auto-refreshes updatedAt — no manual timestamp needed.
    final updated = await db.prisma.collaborator.update(
      where: CollaboratorWhereUniqueInput(id: id),
      data: UpdateCollaboratorInput(
        revenueShareBps: revenueSplit != null
            ? (revenueSplit.toDouble() * 100).round()
            : null,
      ),
    );

    return Response.json(
      body: {
        'data': serializeForJson(updated.toJson()),
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
