import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/appointments/:id/documents — List documents
/// POST /api/appointments/:id/documents — Upload a document
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context, id);
  if (method == HttpMethod.post) return _handlePost(context, id);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// Verify user is a participant in the appointment.
/// Returns the user's role ('CONSULTEE'|'CONSULTANT') or a Response.
Future<Object> _authorizeParticipant(
  RequestContext context,
  String appointmentId,
  String userId,
) async {
  final db = context.read<DatabaseClient>();
  final appointment = await db.prisma.appointment.findFirst(
    where: AppointmentWhereInput(id: StringFilter(equals: appointmentId)),
  );
  if (appointment == null) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {'error': {'message': 'Appointment not found'}},
    );
  }

  final user = await db.users.findById(userId);
  final consulteeProfileId = user?['consulteeProfileId'] as String?;
  final consultantProfileId = user?['consultantProfileId'] as String?;

  // Appointment links to Consultation (which has requestedById = consulteeProfileId)
  // and to ConsultationPlan (which has consultantProfileId).
  final consultationId = appointment.consultationId;
  String? apptConsulteeId;
  String? apptConsultantId;

  if (consultationId != null) {
    final consultation = await db.prisma.consultation.findFirst(
      where: ConsultationWhereInput(id: StringFilter(equals: consultationId)),
    );
    apptConsulteeId = consultation?.requestedById;

    final planId = consultation?.consultationPlanId;
    if (planId != null) {
      final plan = await db.prisma.consultationPlan.findFirst(
        where: ConsultationPlanWhereInput(id: StringFilter(equals: planId)),
      );
      apptConsultantId = plan?.consultantProfileId;
    }
  }

  if (consulteeProfileId != null &&
      consulteeProfileId == apptConsulteeId) {
    return 'CONSULTEE';
  }
  if (consultantProfileId != null &&
      consultantProfileId == apptConsultantId) {
    return 'CONSULTANT';
  }

  return Response.json(
    statusCode: HttpStatus.forbidden,
    body: {
      'error': {
        'message': 'You are not a participant in this appointment',
      },
    },
  );
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

    final authResult = await _authorizeParticipant(context, id, userId);
    if (authResult is Response) return authResult;

    final db = context.read<DatabaseClient>();
    final docs = await db.appointmentDocuments.findByAppointment(id);

    return Response.json(
      body: {'data': docs.map(serializeForJson).toList()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Document list failed',
      context: 'AppointmentDocumentsGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to list documents'}},
    );
  }
}

Future<Response> _handlePost(RequestContext context, String id) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    // Authorize and determine role server-side (not from client)
    final authResult = await _authorizeParticipant(context, id, userId);
    if (authResult is Response) return authResult;
    final uploadedByRole = authResult as String;

    final body = await context.request.json() as Map<String, dynamic>;
    final fileName = body['fileName'] as String?;
    final originalName = body['originalName'] as String?;
    final fileSize = body['fileSize'] as int?;
    final mimeType = body['mimeType'] as String?;
    final fileUrl = body['fileUrl'] as String?;
    final storagePath = body['storagePath'] as String?;

    if (fileName == null ||
        originalName == null ||
        fileSize == null ||
        mimeType == null ||
        fileUrl == null ||
        storagePath == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'fileName, originalName, fileSize, mimeType, '
                'fileUrl, and storagePath are required',
          },
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final doc = await db.appointmentDocuments.create(
      appointmentId: id,
      fileName: fileName,
      originalName: originalName,
      fileSize: fileSize,
      mimeType: mimeType,
      fileUrl: fileUrl,
      storagePath: storagePath,
      description: body['description'] as String?,
      uploadedByRole: uploadedByRole,
      responseToDocumentId:
          body['responseToDocumentId'] as String?,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': serializeForJson(doc)},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Document upload failed',
      context: 'AppointmentDocumentsPost',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to upload document'}},
    );
  }
}
