import 'dart:io';

import 'package:backend/services/auth/github_oauth_service.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/auth/github/url
/// Returns the GitHub OAuth URL for initiating the OAuth flow
///
/// Response:
/// - url: The GitHub OAuth URL to redirect to
/// - state: The state parameter for CSRF protection (mobile needs this)
Future<Response> onRequest(RequestContext context) async {
  // Only allow GET
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final GitHubOAuthService? githubService;
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

    final result = githubService.generateOAuthUrl();

    return Response.json(body: result);
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Failed to generate GitHub OAuth URL',
      context: 'AuthGitHubUrl',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to generate OAuth URL'}},
    );
  }
}
