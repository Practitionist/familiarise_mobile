import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/consultant/payout-accounts — List payout accounts
/// POST /api/consultant/payout-accounts — Add new account
Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context);
  if (method == HttpMethod.post) return _handlePost(context);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final consultantProfileId =
        user?['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Only consultants can manage payouts'},
        },
      );
    }

    final accounts =
        await db.payoutAccounts.findByConsultant(consultantProfileId);

    return Response.json(
      body: {'data': accounts.map(serializeForJson).toList()},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Payout accounts list failed',
      context: 'PayoutAccountsGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to list payout accounts'}},
    );
  }
}

Future<Response> _handlePost(RequestContext context) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final user = await db.users.findById(userId);
    final consultantProfileId =
        user?['consultantProfileId'] as String?;
    if (consultantProfileId == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          'error': {'message': 'Only consultants can add payouts'},
        },
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final provider = body['provider'] as String? ?? 'RAZORPAY';
    final accountType =
        body['accountType'] as String? ?? 'BANK_ACCOUNT';

    final account = await db.payoutAccounts.create(
      consultantProfileId: consultantProfileId,
      provider: provider,
      accountType: accountType,
      accountHolderName: body['accountHolderName'] as String?,
      bankName: body['bankName'] as String?,
      accountNumberLast4: body['accountNumberLast4'] as String?,
      ifscCode: body['ifscCode'] as String?,
      upiId: body['upiId'] as String?,
    );

    return Response.json(
      statusCode: HttpStatus.created,
      body: {'data': serializeForJson(account)},
    );
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Payout account creation failed',
      context: 'PayoutAccountsPost',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to create payout account'}},
    );
  }
}
