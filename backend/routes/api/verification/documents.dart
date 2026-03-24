import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/verification/documents — List verification documents
/// POST /api/verification/documents — Add a document to current verification
///
/// POST body:
/// ```json
/// {
///   "fileName": "id-card.pdf",
///   "originalName": "My ID Card.pdf",
///   "fileSize": 102400,
///   "mimeType": "application/pdf",
///   "fileUrl": "https://...",
///   "storagePath": "userId/123.pdf",
///   "description": "Government ID"
/// }
/// ```
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) {
    return _handleGet(context);
  } else if (method == HttpMethod.post) {
    return _handlePost(context);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final consultantProfileId = user?['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Only consultants can view documents'},
        },
      );
    }

    final verification = await db.consultantVerifications.findLatest(
      consultantProfileId,
    );
    if (verification == null) {
      return Response.json(body: {'data': <dynamic>[]});
    }

    final documents = await db.consultantVerifications.getDocuments(
      verification.id,
    );

    return Response.json(
      body: {'data': documents.map((d) => d.toJson()).toList()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Verification documents list failed',
      context: 'VerificationDocuments',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to list documents'},
      },
    );
  }
}

Future<Response> _handlePost(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'},
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final consultantProfileId = user?['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Only consultants can upload documents'},
        },
      );
    }

    final verification = await db.consultantVerifications.findLatest(
      consultantProfileId,
    );
    if (verification == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Submit a verification request first',
          },
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final fileName = body['fileName'] as String?;
    final originalName = body['originalName'] as String?;
    final fileSize = body['fileSize'] as int?;
    final mimeType = body['mimeType'] as String?;
    final fileUrl = body['fileUrl'] as String?;
    final storagePath = body['storagePath'] as String?;
    final description = body['description'] as String?;

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

    final document = await db.consultantVerifications.addDocument(
      verificationId: verification.id,
      fileName: fileName,
      originalName: originalName,
      fileSize: fileSize,
      mimeType: mimeType,
      fileUrl: fileUrl,
      storagePath: storagePath,
      description: description,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': document.toJson()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Verification document upload failed',
      context: 'VerificationDocumentUpload',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to add document'},
      },
    );
  }
}
