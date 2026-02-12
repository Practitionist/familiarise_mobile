import 'dart:convert';
import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET  /api/referrals/code -- Returns user's referral code (or null)
/// POST /api/referrals/code -- Creates referral code if doesn't exist
Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _handleGet(context);
    case HttpMethod.post:
      return _handlePost(context);
    default:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _handleGet(RequestContext context) async {
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

    final db = context.read<DatabaseClient>();
    final code = await db.referrals.getReferralCode(userId);

    if (code == null) {
      return Response.json(body: {'code': null});
    }

    return Response.json(body: serializeForJson(code));
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in GET /api/referrals/code',
      context: 'ReferralCodeRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to fetch referral code'}
      },
    );
  }
}

Future<Response> _handlePost(RequestContext context) async {
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

    final db = context.read<DatabaseClient>();

    // Get user name for code generation
    final user = await db.users.findById(userId);
    final userName = user?['name'] as String?;

    final code = await db.referrals.createReferralCode(
      userId: userId,
      userName: userName,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: serializeForJson(code),
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error in POST /api/referrals/code',
      context: 'ReferralCodeRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'error': {'message': 'Failed to create referral code'}
      },
    );
  }
}
