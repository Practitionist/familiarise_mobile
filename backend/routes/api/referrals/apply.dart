import 'dart:convert';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// POST /api/referrals/apply
///
/// Apply a referral code for the authenticated user.
/// Body: { "code": "ABC123" }
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
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final body =
        jsonDecode(await context.request.body()) as Map<String, dynamic>;
    final code = body['code'] as String?;

    if (code == null || code.trim().isEmpty) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Referral code is required'}
        },
      );
    }

    final db = context.read<DatabaseClient>();
    final result = await db.referrals.applyReferralCode(
      userId: userId,
      code: code.trim(),
    );

    return Response.json(body: result);
  } on Exception catch (e, stackTrace) {
    final message = e.toString().replaceFirst('Exception: ', '');

    // Known validation errors
    if (message.contains('Invalid') ||
        message.contains('Cannot use') ||
        message.contains('already used') ||
        message.contains('reached its maximum')) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': message}
        },
      );
    }

    await SentryLogger.error(
      'Error in POST /api/referrals/apply',
      context: 'ReferralApplyRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to apply referral code'}
      },
    );
  }
}
