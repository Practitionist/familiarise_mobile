import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/appointments/:id/documents/:docId — Details
/// PUT /api/appointments/:id/documents/:docId — Review
/// DELETE /api/appointments/:id/documents/:docId — Remove
Future<Response> onRequest(
  RequestContext context,
  String id,
  String docId,
) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handle(context, id, docId, method);
  if (method == HttpMethod.put) return _handle(context, id, docId, method);
  if (method == HttpMethod.delete) {
    return _handle(context, id, docId, method);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// Shared auth + authorization for all handlers.
Future<Response> _handle(
  RequestContext context,
  String appointmentId,
  String docId,
  HttpMethod method,
) async {
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

    // Verify user is a participant in the appointment
    final db = context.read<DatabaseClient>();
    final appointmentRecord = await db.prisma.appointment.findUnique(
      where: AppointmentWhereUniqueInput(id: appointmentId),
    );
    if (appointmentRecord == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {
          'error': {'message': 'Appointment not found'}
        },
      );
    }
    final appointment = appointmentRecord.toJson();

    final user = await db.users.findById(userId);
    final consulteeProfileId = user?['consulteeProfileId'] as String?;
    final consultantProfileId = user?['consultantProfileId'] as String?;
    final apptConsulteeId = appointment['consulteeProfileId'] as String?;
    final apptConsultantId = appointment['consultantProfileId'] as String?;

    final isConsultee =
        consulteeProfileId != null && consulteeProfileId == apptConsulteeId;
    final isConsultant =
        consultantProfileId != null && consultantProfileId == apptConsultantId;

    if (!isConsultee && !isConsultant) {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: {
          'error': {
            'message': 'You are not a participant in this appointment',
          },
        },
      );
    }

    if (method == HttpMethod.get) return _handleGet(db, docId);
    if (method == HttpMethod.put) {
      return _handlePut(context, db, docId, userId);
    }
    if (method == HttpMethod.delete) return _handleDelete(db, docId);
    return Response(statusCode: HttpStatus.methodNotAllowed);
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Document operation failed',
      context: 'AppointmentDoc',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Operation failed'}
      },
    );
  }
}

Future<Response> _handleGet(DatabaseClient db, String docId) async {
  final doc = await db.appointmentDocuments.findById(docId);
  if (doc == null) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {
        'error': {'message': 'Document not found'}
      },
    );
  }
  return Response.json(body: {'data': doc.toJson()});
}

Future<Response> _handlePut(
  RequestContext context,
  DatabaseClient db,
  String docId,
  String userId,
) async {
  final body = await context.request.json() as Map<String, dynamic>;
  final reviewStatusStr = body['reviewStatus'] as String?;
  final reviewNotes = body['reviewNotes'] as String?;

  if (reviewStatusStr == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {'message': 'reviewStatus is required'}
      },
    );
  }

  // Validate reviewStatus — return 400 for invalid values
  final reviewStatus =
      DocumentReviewStatus.values.cast<DocumentReviewStatus?>().firstWhere(
            (s) => s!.name.toUpperCase() == reviewStatusStr.toUpperCase(),
            orElse: () => null,
          );

  if (reviewStatus == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'error': {
          'message': 'Invalid reviewStatus: "$reviewStatusStr"',
        },
      },
    );
  }

  final updated = await db.appointmentDocuments.updateReview(
    id: docId,
    status: reviewStatus,
    reviewNotes: reviewNotes,
    reviewedBy: userId,
  );

  return Response.json(body: {'data': updated.toJson()});
}

Future<Response> _handleDelete(DatabaseClient db, String docId) async {
  await db.appointmentDocuments.delete(docId);
  return Response.json(body: {'message': 'Document deleted'});
}
