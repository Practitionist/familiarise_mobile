import 'dart:io' hide Platform;

import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:backend/utils/storage_utils.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/upload/document
///
/// Returns a signed URL for uploading a document to Supabase Storage.
/// Used for verification docs, appointment docs, support attachments, etc.
///
/// Request body:
/// ```json
/// {
///   "fileName": "report.pdf",
///   "contentType": "application/pdf",
///   "bucket": "verification-docs",
///   "prefix": "optional/subfolder"
/// }
/// ```
///
/// Response: { signedUrl, publicUrl, path, bucket, contentType }
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

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

    final body = await context.request.json() as Map<String, dynamic>;
    final fileName = body['fileName'] as String?;
    final contentType =
        body['contentType'] as String? ?? 'application/octet-stream';
    final bucket = body['bucket'] as String?;
    final prefix = body['prefix'] as String?;

    if (fileName == null || bucket == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'fileName and bucket are required'},
        },
      );
    }

    const allowedBuckets = {
      'verification-docs',
      'appointment-docs',
      'support-attachments',
      'plan-materials',
    };
    if (!allowedBuckets.contains(bucket)) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {
            'message': 'Invalid bucket. '
                'Allowed: ${allowedBuckets.join(", ")}',
          },
        },
      );
    }

    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final ext = StorageUtils.extractExtension(fileName);
    final basePath = prefix != null ? '$userId/$prefix' : userId;
    final storagePath = '$basePath/$timestamp.$ext';

    final urls = await StorageUtils.generateSignedUploadUrl(
      bucket: bucket,
      storagePath: storagePath,
    );

    return Response.json(
      body: {
        ...urls,
        'contentType': contentType,
      },
    );
  } on StorageConfigException {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Supabase configuration missing'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Document upload URL generation failed',
      context: 'DocumentUpload',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to generate upload URL'},
      },
    );
  }
}
