import 'dart:convert';
import 'dart:io' hide Platform;
import 'dart:io' as io show Platform;

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;
import 'package:prisma_flutter_connector/runtime_server.dart';

/// POST /api/user/profile-image — Get signed URL for profile image upload
/// DELETE /api/user/profile-image — Remove profile image
///
/// POST response: { signedUrl, publicUrl, path, bucket }
/// After client uploads to signedUrl, the publicUrl is the permanent URL.
/// Client should then PUT /api/user/:id with { image: publicUrl }.
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
    final extension = fileName.split('.').lastOrNull ?? 'jpg';
    final storagePath = '$userId/profile-$timestamp.$extension';

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

    // Clear the image field via JsonQueryBuilder
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
