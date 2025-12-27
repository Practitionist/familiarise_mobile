import 'dart:io';

import 'package:backend/services/auth/auth_service.dart';
import 'package:backend/services/auth/github_oauth_service.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/auth/github/callback
/// Exchanges the GitHub OAuth code for user credentials
///
/// Request body:
/// - code: The authorization code from GitHub OAuth callback
/// - state: The state parameter for CSRF verification
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
    final code = body['code'] as String?;
    final state = body['state'] as String?;

    if (code == null || code.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'Authorization code is required'}},
      );
    }

    if (state == null || state.isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {'error': {'message': 'State parameter is required'}},
      );
    }

    final GitHubOAuthService githubService;
    try {
      githubService = context.read<GitHubOAuthService>();
    } catch (_) {
      return Response.json(
        statusCode: HttpStatus.serviceUnavailable,
        body: {
          'error': {
            'message': 'GitHub authentication is not configured on this server',
          },
        },
      );
    }

    final authService = context.read<AuthService>();

    // Exchange code for user info
    final githubUser = await githubService.exchangeCodeForUser(code, state);

    // Create/update user and generate token
    final result = await authService.signInWithGitHub(githubUser);

    return Response.json(body: result);
  } on GitHubOAuthException catch (e) {
    return Response.json(
      statusCode: e.statusCode,
      body: {'error': {'message': e.message}},
    );
  } on AuthException catch (e) {
    return Response.json(
      statusCode: e.statusCode,
      body: {'error': {'message': e.message}},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'GitHub OAuth callback failed',
      context: 'AuthGitHubCallback',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'An unexpected error occurred'}},
    );
  }
}
