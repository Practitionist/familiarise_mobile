import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/support/:ticketId/attachments — List attachments
/// POST /api/support/:ticketId/attachments — Add attachment
///
/// POST body:
/// { "fileName": "...", "fileUrl": "...", "mimeType": "...",
///   "fileSize": 123, "storagePath": "..." }
Future<Response> onRequest(
  RequestContext context,
  String ticketId,
) async {
  final method = context.request.method;

  if (method == HttpMethod.get) {
    return _handleGet(context, ticketId);
  }
  if (method == HttpMethod.post) {
    return _handlePost(context, ticketId);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(
  RequestContext context,
  String ticketId,
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
    // FK column is `ticketId` (schema re-sync renamed it from supportTicketId).
    final attachments = await db.prisma.supportTicketAttachment.findMany(
      where: SupportTicketAttachmentWhereInput(
        ticketId: StringFilter(equals: ticketId),
      ),
    );

    return Response.json(
      body: {
        'data': attachments.map((a) => serializeForJson(a.toJson())).toList(),
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Attachment list failed',
      context: 'SupportAttachmentsGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to list attachments'}},
    );
  }
}

Future<Response> _handlePost(
  RequestContext context,
  String ticketId,
) async {
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
    final fileUrl = body['fileUrl'] as String?;
    final mimeType = body['mimeType'] as String?;
    final fileSize = body['fileSize'] as int?;
    final storagePath = body['storagePath'] as String?;

    if (fileName == null ||
        fileUrl == null ||
        mimeType == null ||
        fileSize == null ||
        storagePath == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'fileName, fileUrl, mimeType, fileSize, '
                'and storagePath are required',
          },
        },
      );
    }

    final db = context.read<DatabaseClient>();
    // Typed create autofills id/uploadedAt defaults. The schema has no
    // `uploadedBy` column (dropped during the re-sync) and requires
    // `originalName` — use the client-provided fileName for it.
    final result = await db.prisma.supportTicketAttachment.create(
      data: CreateSupportTicketAttachmentInput(
        ticketId: ticketId,
        fileName: fileName,
        originalName: fileName,
        fileUrl: fileUrl,
        mimeType: mimeType,
        fileSize: fileSize,
        storagePath: storagePath,
      ),
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': serializeForJson(result.toJson())},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Attachment upload failed',
      context: 'SupportAttachmentsPost',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to add attachment'}},
    );
  }
}
