import 'dart:convert';
import 'dart:io' hide Platform;
import 'dart:io' as io show Platform;

import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;

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
///   "bucket": "verification-docs" | "appointment-docs" | "support-attachments",
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

    // Validate bucket is allowed
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
    final extension = fileName.split('.').lastOrNull ?? 'bin';
    final basePath = prefix != null ? '$userId/$prefix' : userId;
    final storagePath = '$basePath/$timestamp.$extension';

    final supabaseUrl = io.Platform.environment['SUPABASE_URL'];
    final supabaseServiceKey =
        io.Platform.environment['SUPABASE_SERVICE_ROLE_KEY'];

    if (supabaseUrl == null || supabaseServiceKey == null) {
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {
          'error': {'message': 'Supabase configuration missing'},
        },
      );
    }

    final signedUrlResponse = await http.post(
      Uri.parse(
        '$supabaseUrl/storage/v1/object/upload/sign/$bucket/$storagePath',
      ),
      headers: {
        'Authorization': 'Bearer $supabaseServiceKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'expiresIn': 3600}),
    );

    if (signedUrlResponse.statusCode != 200) {
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {
          'error': {'message': 'Failed to generate signed URL'},
        },
      );
    }

    final signedUrlData =
        jsonDecode(signedUrlResponse.body) as Map<String, dynamic>;
    final token = signedUrlData['token'] as String?;
    final publicUrl =
        '$supabaseUrl/storage/v1/object/public/$bucket/$storagePath';
    final fullSignedUrl = token != null
        ? '$supabaseUrl/storage/v1/object/upload/sign/$bucket/'
            '$storagePath?token=$token'
        : signedUrlData['url'] as String;

    return Response.json(
      body: {
        'signedUrl': fullSignedUrl,
        'publicUrl': publicUrl,
        'path': storagePath,
        'bucket': bucket,
        'contentType': contentType,
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
