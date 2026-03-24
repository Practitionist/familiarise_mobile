import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/appointments/:id/documents — List documents for an appointment
/// POST /api/appointments/:id/documents — Upload a document
///
/// POST body:
/// {
///   "fileName": "resume.pdf",
///   "originalName": "My Resume.pdf",
///   "fileSize": 102400,
///   "mimeType": "application/pdf",
///   "fileUrl": "https://...",
///   "storagePath": "userId/123.pdf",
///   "description": "Resume for review",
///   "uploadedByRole": "CONSULTEE" | "CONSULTANT",
///   "responseToDocumentId": "optional-doc-id"
/// }
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context, id);
  if (method == HttpMethod.post) return _handlePost(context, id);

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
      uploadedByRole: body['uploadedByRole'] as String? ?? 'CONSULTEE',
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
