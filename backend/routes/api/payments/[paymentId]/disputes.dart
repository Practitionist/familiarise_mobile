import 'dart:io' as io;

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Dispute visibility endpoint
///
/// GET /api/payments/:paymentId/disputes
///
/// Returns all disputes associated with a payment.
/// User must be authenticated and own the payment.
Future<Response> onRequest(RequestContext context, String paymentId) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: io.HttpStatus.methodNotAllowed);
  }

  try {
    // Verify authentication
    final userId = getUserIdFromToken(context);
    if (userId == null) {
      return Response.json(
        statusCode: io.HttpStatus.unauthorized,
        body: {
          'error': {'message': 'Unauthorized'}
        },
      );
    }

    final db = context.read<DatabaseClient>();

    // Verify user owns this payment
    final payment = await db.checkout.getPaymentById(paymentId);
    if (payment == null) {
      return Response.json(
        statusCode: io.HttpStatus.notFound,
        body: {
          'error': {'message': 'Payment not found'}
        },
      );
    }

    if (payment['userId'] != userId) {
      return Response.json(
        statusCode: io.HttpStatus.forbidden,
        body: {
          'error': {'message': 'Access denied'}
        },
      );
    }

    // Get disputes for this payment
    final disputes = await db.disputes.getDisputesByPaymentId(paymentId);

    // Format response
    final formattedDisputes = disputes
        .map((d) => {
              'id': d['id'],
              'disputeId': d['disputeId'],
              'amount': d['amount'],
              'currency': d['currency'],
              'reason': d['reason'],
              'status': d['status'],
              'paymentGateway': d['paymentGateway'],
              'dueBy': d['dueBy'],
              'isChargeRefundable': d['isChargeRefundable'],
              'createdAt': d['createdAt'],
            })
        .toList();

    return Response.json(
      body: serializeForJson(
        {
          'paymentId': paymentId,
          'disputes': formattedDisputes,
          'count': formattedDisputes.length,
        },
      ),
    );
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Error fetching disputes for payment: $paymentId',
      context: 'DisputesRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: io.HttpStatus.internalServerError,
      body: {
        'error': {
          'message': 'Failed to fetch disputes',
          'details': e.toString(),
        },
      },
    );
  }
}
