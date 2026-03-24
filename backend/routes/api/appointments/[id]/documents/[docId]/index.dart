import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/appointments/:id/documents/:docId — Document details
/// PUT /api/appointments/:id/documents/:docId — Review document
///   (consultant updates review status)
/// DELETE /api/appointments/:id/documents/:docId — Remove document
///
/// PUT body: { "reviewStatus": "APPROVED"|"REJECTED"|..., "reviewNotes": "..." }
Future<Response> onRequest(
  RequestContext context,
  String id,
  String docId,
) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context, docId);
  if (method == HttpMethod.put) return _handlePut(context, docId);
  if (method == HttpMethod.delete) return _handleDelete(context, docId);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context, String docId) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final doc = await db.appointmentDocuments.findById(docId);

    if (doc == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Document not found'}},
      );
    }

    return Response.json(body: {'data': doc.toJson()});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Document get failed',
      context: 'AppointmentDocGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to get document'}},
    );
  }
}

Future<Response> _handlePut(RequestContext context, String docId) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final reviewStatusStr = body['reviewStatus'] as String?;
    final reviewNotes = body['reviewNotes'] as String?;

    if (reviewStatusStr == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'reviewStatus is required'}},
      );
    }

    final reviewStatus = DocumentReviewStatus.values.firstWhere(
      (s) => s.name.toUpperCase() == reviewStatusStr.toUpperCase(),
      orElse: () => DocumentReviewStatus.pending,
    );

    final db = context.read<DatabaseClient>();
    final updated = await db.appointmentDocuments.updateReview(
      id: docId,
      status: reviewStatus,
      reviewNotes: reviewNotes,
      reviewedBy: userId,
    );

    return Response.json(body: {'data': updated.toJson()});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Document review failed',
      context: 'AppointmentDocPut',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to review document'}},
    );
  }
}

Future<Response> _handleDelete(
  RequestContext context,
  String docId,
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
    await db.appointmentDocuments.delete(docId);

    return Response.json(body: {'message': 'Document deleted'});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Document delete failed',
      context: 'AppointmentDocDelete',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to delete document'}},
    );
  }
}
