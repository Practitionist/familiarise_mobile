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

  if (method == HttpMethod.get) return _handle(context, id, method);
  if (method == HttpMethod.put) return _handle(context, id, method);
  if (method == HttpMethod.delete) return _handle(context, id, method);

  return Response(statusCode: HttpStatus.methodNotAllowed);
}

/// Shared auth + ownership verification for all handlers.
Future<Response> _handle(
  RequestContext context,
  String id,
  HttpMethod method,
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

    // Get user's consultant profile ID
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

    // Fetch account and verify ownership
    final account = await db.payoutAccounts.findById(id);
    if (account == null) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Account not found'}},
      );
    }

    final accountJson = account.toJson();
    if (accountJson['consultantProfileId'] != consultantProfileId) {
      // Return 404 to avoid leaking that the account exists
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: {'error': {'message': 'Account not found'}},
      );
    }

    // Dispatch to handler
    if (method == HttpMethod.get) {
      return Response.json(body: {'data': accountJson});
    }
    if (method == HttpMethod.put) {
      return _handlePut(context, db, id);
    }
    // DELETE
    await db.payoutAccounts.delete(id);
    return Response.json(body: {'message': 'Account deleted'});
  } catch (e, stackTrace) {
    await SentryLogger.severe(
      'Payout account operation failed',
      context: 'PayoutAccount',
      error: e,
      stackTrace: stackTrace,
    );
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {'error': {'message': 'Operation failed'}},
    );
  }
}

Future<Response> _handlePut(
  RequestContext context,
  DatabaseClient db,
  String id,
) async {
  final body = await context.request.json() as Map<String, dynamic>;
  final updated = await db.payoutAccounts.update(
    id: id,
    accountHolderName: body['accountHolderName'] as String?,
    bankName: body['bankName'] as String?,
    accountNumberLast4: body['accountNumberLast4'] as String?,
    ifscCode: body['ifscCode'] as String?,
    upiId: body['upiId'] as String?,
  );
  return Response.json(body: {'data': updated.toJson()});
}
