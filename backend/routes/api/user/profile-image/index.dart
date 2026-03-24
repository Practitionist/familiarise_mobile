import 'dart:io' hide Platform;

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:backend/utils/storage_utils.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// POST /api/user/profile-image — Get signed URL for profile image upload
/// DELETE /api/user/profile-image — Remove profile image
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.post) {
    return _handlePost(context);
  } else if (method == HttpMethod.delete) {
    return _handleDelete(context);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
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

    final body = await context.request.json() as Map<String, dynamic>;
    final fileName = body['fileName'] as String?;
    final contentType = body['contentType'] as String? ?? 'image/jpeg';

    if (fileName == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'fileName is required'},
        },
      );
    }

    const bucket = 'avatars';
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final ext = StorageUtils.extractExtension(fileName, fallback: 'jpg');
    final storagePath = '$userId/profile-$timestamp.$ext';

    final urls = await StorageUtils.generateSignedUploadUrl(
      bucket: bucket,
      storagePath: storagePath,
    );

    return Response.json(
      body: {...urls, 'contentType': contentType},
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
      'Profile image upload URL generation failed',
      context: 'ProfileImageUpload',
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

Future<Response> _handleDelete(RequestContext context) async {
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
    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.update)
        .where({'id': userId})
        .data({
          'image': null,
          'updatedAt': DateTime.now().toUtc().toIso8601String(),
        })
        .build();
    await db.executor.executeMutation(query);

    return Response.json(body: {'message': 'Profile image removed'});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Profile image deletion failed',
      context: 'ProfileImageDelete',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to remove profile image'},
      },
    );
  }
}
