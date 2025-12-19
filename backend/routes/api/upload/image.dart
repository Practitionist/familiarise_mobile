import 'dart:convert';
import 'dart:io';

import 'package:backend/utils/auth_utils.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;

/// POST /api/upload/image
///
/// Returns a signed URL for uploading an image to Supabase Storage.
///
/// Request body:
/// ```json
/// {
///   "fileName": "profile.jpg",
///   "contentType": "image/jpeg",
///   "bucket": "avatars"  // Optional, defaults to "avatars"
/// }
/// ```
///
/// Response:
/// ```json
/// {
///   "signedUrl": "https://...",
///   "publicUrl": "https://..."
/// }
/// ```
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST requests
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    // Verify authentication
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    // Parse request body
    final body = await context.request.body();
    final data = jsonDecode(body) as Map<String, dynamic>;

    final fileName = data['fileName'] as String?;
    final contentType = data['contentType'] as String? ?? 'image/jpeg';
    final bucket = data['bucket'] as String? ?? 'avatars';

    if (fileName == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'fileName is required'}},
      );
    }

    // Generate unique file path
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final extension = fileName.split('.').lastOrNull ?? 'jpg';
    final storagePath = '$userId/$timestamp.$extension';

    // Get Supabase credentials from environment
    final supabaseUrl = Platform.environment['SUPABASE_URL'];
    final supabaseServiceKey =
        Platform.environment['SUPABASE_SERVICE_ROLE_KEY'];

    if (supabaseUrl == null || supabaseServiceKey == null) {
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {
          'error': {
            'message': 'Supabase configuration missing. '
                'Set SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY.',
          },
        },
      );
    }

    // Create signed upload URL via Supabase Storage API
    final signedUrlResponse = await http.post(
      Uri.parse(
        '$supabaseUrl/storage/v1/object/upload/sign/$bucket/$storagePath',
      ),
      headers: {
        'Authorization': 'Bearer $supabaseServiceKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'expiresIn': 3600, // 1 hour
      }),
    );

    if (signedUrlResponse.statusCode != 200) {
      // ignore: avoid_print
      print('Supabase error: ${signedUrlResponse.body}');
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {'error': {'message': 'Failed to generate signed URL'}},
      );
    }

    final signedUrlData =
        jsonDecode(signedUrlResponse.body) as Map<String, dynamic>;
    final signedUrl = signedUrlData['url'] as String?;
    final token = signedUrlData['token'] as String?;

    if (signedUrl == null) {
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: {
          'error': {'message': 'Failed to get signed URL from Supabase'},
        },
      );
    }

    // Construct the full signed URL
    final fullSignedUrl = token != null
        ? '$supabaseUrl/storage/v1/object/upload/sign/$bucket/'
            '$storagePath?token=$token'
        : signedUrl;

    // Public URL for accessing the file after upload
    final publicUrl =
        '$supabaseUrl/storage/v1/object/public/$bucket/$storagePath';

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
    // ignore: avoid_print
    print('Error in POST /api/upload/image: $e');
    // ignore: avoid_print
    print('Stack trace: $stackTrace');

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to generate upload URL'}},
    );
  }
}
