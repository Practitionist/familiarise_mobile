import 'dart:io';

import 'package:backend/services/auth_service.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/google/callback
/// Google OAuth code exchange endpoint
///
/// Request body:
/// - code: Authorization code from Google OAuth redirect
/// - redirectUri: The redirect URI used in the OAuth flow
///
/// Used for browser-based OAuth flows (e.g., macOS desktop app) where
/// the client receives an authorization code instead of tokens directly.
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final body = await context.request.json() as Map<String, dynamic>;
    final code = body['code'] as String?;
    final redirectUri = body['redirectUri'] as String?;
    final clientId = body['clientId'] as String?;

    if (code == null || code.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Authorization code is required'},
        },
      );
    }

    if (redirectUri == null || redirectUri.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Redirect URI is required'},
        },
      );
    }

    final authService = context.read<AuthService>();
    final result = await authService.signInWithGoogleCode(
      code: code,
      redirectUri: redirectUri,
      clientId: clientId,
    );

    return Response.json(body: result);
  } on AuthException catch (e) {
    return Response.json(
      statusCode: e.statusCode,
      body: {'error': {'message': e.message}},
    );
  } catch (e, stackTrace) {
    // Log error server-side only - never expose to client
    print('Error in Google callback: $e');
    print('Stack trace: $stackTrace');
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'An unexpected error occurred'}},
    );
  }
}
