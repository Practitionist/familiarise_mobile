import 'dart:convert';
import 'dart:io' as io;

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/services/webhook_handlers.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:crypto/crypto.dart';
import 'package:dart_frog/dart_frog.dart';

/// Razorpay webhook endpoint
///
/// POST /api/webhooks/razorpay
///
/// Handles webhook events from Razorpay:
/// - payment.captured: Payment successful
/// - order.paid: Order paid
/// - payment.failed: Payment failed
/// - refund.processed: Refund completed
/// - refund.created: Refund initiated
/// - payment.dispute.created: Dispute created
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: io.HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();
    final env = io.Platform.environment;

    // Read raw body for signature verification
    final rawBody = await context.request.body();

    // Verify webhook signature
    final signature = context.request.headers['x-razorpay-signature'];
    final webhookSecret = env['RAZORPAY_WEBHOOK_SECRET'];

    if (webhookSecret == null || webhookSecret.isEmpty) {
      SentryLogger.error(
        'RAZORPAY_WEBHOOK_SECRET not configured',
        context: 'RazorpayWebhook',
      );
      return Response(statusCode: io.HttpStatus.internalServerError);
    }

    if (!_verifySignature(rawBody, signature, webhookSecret)) {
      SentryLogger.warning(
        'Invalid Razorpay webhook signature',
        context: 'RazorpayWebhook',
      );
      return Response(statusCode: io.HttpStatus.unauthorized);
    }

    // Parse event payload
    final payload = jsonDecode(rawBody) as Map<String, dynamic>;
    final eventType = payload['event'] as String?;
    final paymentEntity =
        payload['payload']?['payment']?['entity'] as Map<String, dynamic>?;

    if (eventType == null) {
      return Response.json(
        statusCode: io.HttpStatus.badRequest,
        body: {'error': 'Missing event type'},
      );
    }

    // Generate event ID for idempotency
    // Razorpay events use account_id + event for uniqueness
    final accountId = payload['account_id'] as String? ?? 'unknown';
    final paymentId = paymentEntity?['id'] as String? ?? '';
    final eventId = '${accountId}_${eventType}_$paymentId';

    // Idempotency check - record event
    final isNew = await db.webhookEvents.recordEvent(
      eventId: eventId,
      provider: 'RAZORPAY',
      eventType: eventType,
      payload: payload,
      signature: signature,
    );

    if (!isNew) {
      // Already processed by this or web backend
      return Response.json(body: {'status': 'already_processed'});
    }

    // Process the event with Stream service for group channel creation
    final streamService = StreamService();
    final handlers = WebhookHandlers(db, streamService: streamService);
    var success = false;

    try {
      switch (eventType) {
        case 'payment.captured':
        case 'order.paid':
          final orderId = paymentEntity?['order_id'] as String?;
          if (orderId != null) {
            await handlers.handlePaymentSuccess(
              paymentIntentOrOrderId: orderId,
              gateway: 'RAZORPAY',
            );
            success = true;
          }

        case 'payment.failed':
          final orderId = paymentEntity?['order_id'] as String?;
          final errorDesc =
              paymentEntity?['error_description'] as String? ?? 'Unknown error';
          if (orderId != null) {
            await handlers.handlePaymentFailure(
              paymentIntentOrOrderId: orderId,
              gateway: 'RAZORPAY',
              reason: errorDesc,
            );
            success = true;
          }

        case 'refund.processed':
        case 'refund.created':
          final refundEntity =
              payload['payload']?['refund']?['entity'] as Map<String, dynamic>?;
          if (refundEntity != null) {
            final refundId = refundEntity['id'] as String;
            final refundPaymentId = refundEntity['payment_id'] as String?;

            // Get order ID from the payment
            String? orderId;
            if (refundPaymentId != null && paymentEntity != null) {
              orderId = paymentEntity['order_id'] as String?;
            }

            if (orderId != null) {
              await handlers.handleRefundProcessed(
                refundId: refundId,
                paymentIntentOrOrderId: orderId,
                amount: refundEntity['amount'] as int? ?? 0,
                currency: refundEntity['currency'] as String? ?? 'INR',
                status: refundEntity['status'] as String? ?? 'processed',
                gateway: 'RAZORPAY',
                reason: refundEntity['notes']?['reason'] as String?,
              );
              success = true;
            }
          }

        case 'payment.dispute.created':
          // Handle dispute creation
          // Note: Razorpay sends dispute at payload.dispute.entity (sibling to payment)
          final disputeEntity = payload['payload']?['dispute']?['entity']
              as Map<String, dynamic>?;
          final disputeOrderId = paymentEntity?['order_id'] as String?;

          if (disputeEntity != null && disputeOrderId != null) {
            await handlers.handleDisputeCreated(
              paymentIntentOrOrderId: disputeOrderId,
              disputeId: disputeEntity['id'] as String,
              amount: disputeEntity['amount'] as int? ?? 0,
              currency: disputeEntity['currency'] as String? ?? 'INR',
              reason: disputeEntity['reason_code'] as String? ?? 'unknown',
              status: _mapDisputeStatus(disputeEntity['status'] as String?),
              gateway: 'RAZORPAY',
              dueBy: disputeEntity['respond_by'] != null
                  ? DateTime.fromMillisecondsSinceEpoch(
                      (disputeEntity['respond_by'] as int) * 1000,
                    )
                  : null,
            );
            success = true;
          }

        default:
          // Unhandled event type - acknowledge receipt
          SentryLogger.info(
            'Unhandled Razorpay event: $eventType',
            context: 'RazorpayWebhook',
          );
          success = true;
      }

      // Mark event as processed
      if (success) {
        await db.webhookEvents.markProcessed(eventId);
      }

      return Response.json(body: {'status': 'ok'});
    } catch (e, stackTrace) {
      // Mark event as failed
      await db.webhookEvents.markFailed(eventId, e.toString());
      SentryLogger.error(
        'Error processing Razorpay webhook: $eventType',
        context: 'RazorpayWebhook',
        error: e,
        stackTrace: stackTrace,
      );
      // Return 200 to prevent Razorpay from retrying - we'll handle retries
      return Response.json(body: {'status': 'error', 'message': e.toString()});
    }
  } catch (e, stackTrace) {
    SentryLogger.error(
      'Razorpay webhook error',
      context: 'RazorpayWebhook',
      error: e,
      stackTrace: stackTrace,
    );
    return Response(statusCode: io.HttpStatus.internalServerError);
  }
}

/// Verify Razorpay webhook signature using HMAC-SHA256
bool _verifySignature(String body, String? signature, String secret) {
  if (signature == null || signature.isEmpty) {
    return false;
  }

  final hmac = Hmac(sha256, utf8.encode(secret));
  final digest = hmac.convert(utf8.encode(body));
  final expectedSignature = digest.toString();

  return signature == expectedSignature;
}

/// Map Razorpay dispute status to internal status
String _mapDisputeStatus(String? status) {
  switch (status) {
    case 'open':
      return 'NEEDS_RESPONSE';
    case 'under_review':
      return 'UNDER_REVIEW';
    case 'won':
      return 'WON';
    case 'lost':
      return 'LOST';
    case 'closed':
      return 'CHARGE_REFUNDED';
    default:
      return 'NEEDS_RESPONSE';
  }
}
