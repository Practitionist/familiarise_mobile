import 'dart:io' as io;

import 'package:backend/database/database_client.dart';
import 'package:backend/utils/auth_utils.dart';
import 'package:backend/utils/json_utils.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';

/// Refund visibility endpoint
///
/// GET /api/payments/:paymentId/refunds
///
/// Returns all refunds associated with a payment.
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

    // Get refunds for this payment
    final refunds = await db.refunds.getRefundsByPaymentId(paymentId);

    // Format response
    final formattedRefunds = refunds
        .map((r) => {
              'id': r['id'],
              'refundId': r['refundId'],
              'amount': r['amount'],
              'currency': r['currency'],
              'status': r['status'],
              'reason': r['reason'],
              'paymentGateway': r['paymentGateway'],
              'createdAt': r['createdAt'],
            })
        .toList();

    return Response.json(
      body: serializeForJson({
        'paymentId': paymentId,
        'refunds': formattedRefunds,
        'count': formattedRefunds.length,
      }),
    );
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Error fetching refunds for payment: $paymentId',
      context: 'RefundsRoute',
      error: e,
      stackTrace: stackTrace,
    );

    return Response.json(
      statusCode: io.HttpStatus.internalServerError,
      body: {
        'error': {
          'message': 'Failed to fetch refunds',
          'details': e.toString(),
        },
      },
    );
  }
}
