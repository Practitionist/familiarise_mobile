import 'dart:io';

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// GET /api/consultant/payout-accounts/:id — Account details
/// PUT /api/consultant/payout-accounts/:id — Update account
/// DELETE /api/consultant/payout-accounts/:id — Remove account
Future<Response> onRequest(RequestContext context, String id) async {
  final method = context.request.method;

  if (method == HttpMethod.get) return _handleGet(context, id);
  if (method == HttpMethod.put) return _handlePut(context, id);
  if (method == HttpMethod.delete) return _handleDelete(context, id);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _handleGet(RequestContext context, String id) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    final account = await db.payoutAccounts.findById(id);

    if (account == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Account not found'}},
      );
    }

    return Response.json(body: {'data': account.toJson()});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Payout account get failed',
      context: 'PayoutAccountGet',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to get account'}},
    );
  }
}

Future<Response> _handlePut(RequestContext context, String id) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final body = await context.request.json() as Map<String, dynamic>;
    final db = context.read<DatabaseClient>();

    final updated = await db.payoutAccounts.update(
      id: id,
      accountHolderName: body['accountHolderName'] as String?,
      bankName: body['bankName'] as String?,
      accountNumberLast4: body['accountNumberLast4'] as String?,
      ifscCode: body['ifscCode'] as String?,
      upiId: body['upiId'] as String?,
    );

    return Response.json(body: {'data': updated.toJson()});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Payout account update failed',
      context: 'PayoutAccountPut',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to update account'}},
    );
  }
}

Future<Response> _handleDelete(
  RequestContext context,
  String id,
) async {
  try {
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: {'error': {'message': 'Unauthorized'}},
      );
    }

    final db = context.read<DatabaseClient>();
    await db.payoutAccounts.delete(id);

    return Response.json(body: {'message': 'Account deleted'});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Payout account delete failed',
      context: 'PayoutAccountDelete',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Failed to delete account'}},
    );
  }
}
