import 'dart:io' hide Platform;

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:backend/utils/storage_utils.dart';
import 'package:dart_frog/dart_frog.dart';

/// Handles /api/user/profile-image.
Future<Response> handleProfileImage(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.post) return _handleProfileImagePost(context);
  if (method == HttpMethod.delete) return _handleProfileImageDelete(context);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleProfileImagePost(RequestContext context) async {
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

    return Response.json(body: {...urls, 'contentType': contentType});
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

Future<Response> _handleProfileImageDelete(RequestContext context) async {
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
    // 0.9.0 setNull: explicit null-clear through the typed surface
    // (updatedAt auto-refreshes).
    await db.prisma.user.update(
      where: UserWhereUniqueInput(id: userId),
      data: const UpdateUserInput(),
      setNull: [UserScalarField.image],
    );

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

/// Handles /api/user/profile-display-image.
Future<Response> handleProfileDisplayImage(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.post) {
    return _handleProfileDisplayImagePost(context);
  }
  if (method == HttpMethod.delete) {
    return _handleProfileDisplayImageDelete(context);
  }

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleProfileDisplayImagePost(RequestContext context) async {
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
    final storagePath = '$userId/display-$timestamp.$ext';

    final urls = await StorageUtils.generateSignedUploadUrl(
      bucket: bucket,
      storagePath: storagePath,
    );

    return Response.json(body: {...urls, 'contentType': contentType});
  } on StorageConfigException {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Supabase configuration missing'},
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Display image upload URL generation failed',
      context: 'ProfileDisplayImageUpload',
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

Future<Response> _handleProfileDisplayImageDelete(
  RequestContext context,
) async {
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
    // 0.9.0 setNull: explicit null-clear through the typed surface.
    await db.prisma.user.update(
      where: UserWhereUniqueInput(id: userId),
      data: const UpdateUserInput(),
      setNull: [UserScalarField.profileDisplayImage],
    );

    return Response.json(
      body: {'message': 'Profile display image removed'},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Display image deletion failed',
      context: 'ProfileDisplayImageDelete',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to remove display image'},
      },
    );
  }
}
