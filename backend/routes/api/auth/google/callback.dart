import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/google/callback
/// Exchanges Google OAuth tokens for user credentials
///
/// Request body:
/// - idToken (preferred): Google ID token to verify (from mobile)
/// - accessToken: Google access token (required for web, optional for mobile)
///
/// On mobile, ID token is available and preferred for verification.
/// On web, google_sign_in cannot provide an ID token, so access token
/// is used to fetch user info from Google's userinfo endpoint.
///
/// Both methods are secure - the backend always fetches user info
/// directly from Google, never trusting client-provided user data.
///
/// Response:
/// - user: The authenticated user object
/// - token: JWT token for subsequent API calls
Future<Response> onRequest(RequestContext context) async {
  // Only allow POST
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final body = await context.request.json() as Map<String, dynamic>;
    final idToken = body['idToken'] as String?;
    final accessToken = body['accessToken'] as String?;

    // Either idToken or accessToken is required
    final hasIdToken = idToken != null && idToken.isNotEmpty;
    final hasAccessToken = accessToken != null && accessToken.isNotEmpty;

    if (!hasIdToken && !hasAccessToken) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Either idToken or accessToken is required'},
        },
      );
    }

    final authService = context.read<AuthService>();
    final result = await authService.signInWithGoogle(
      idToken: idToken,
      accessToken: accessToken,
    );

    return Response.json(body: result);
  } on AuthException catch (e) {
    return Response.json(
      statusCode: e.statusCode,
      body: {
        'error': {'message': e.message}
      },
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Google OAuth callback failed',
      context: 'AuthGoogleCallback',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'An unexpected error occurred'}
      },
    );
  }
}
