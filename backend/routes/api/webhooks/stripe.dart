import 'dart:convert';
import 'dart:io' as io;

import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/services/stripe_service.dart';
import 'package:backend/services/webhook_handlers.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';

/// Stripe webhook endpoint
///
/// POST /api/webhooks/stripe
///
/// Handles webhook events from Stripe:
/// - payment_intent.succeeded: Payment successful
/// - payment_intent.payment_failed: Payment failed
/// - charge.refunded: Refund completed
/// - charge.dispute.created: Dispute created
Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: io.HttpStatus.methodNotAllowed);
  }

  try {
    final db = context.read<DatabaseClient>();
    final env = context.read<DotEnv>();

    // Read raw body for signature verification
    final rawBody = await context.request.body();

    // Verify webhook signature
    final signature = context.request.headers['stripe-signature'];
    final webhookSecret = env['STRIPE_WEBHOOK_SECRET'];

    if (webhookSecret == null || webhookSecret.isEmpty) {
      await SentryLogger.error(
        'STRIPE_WEBHOOK_SECRET not configured',
        context: 'StripeWebhook',
      );
      return Response(statusCode: io.HttpStatus.internalServerError);
    }

    // Use StripeService to verify signature
    final stripeService = StripeService(
      secretKey: env['STRIPE_SECRET_KEY'] ?? '',
      webhookSecret: webhookSecret,
    );

    if (!stripeService.verifyWebhookSignature(
      payload: rawBody,
      signature: signature ?? '',
    )) {
      SentryLogger.warning(
        'Invalid Stripe webhook signature',
        context: 'StripeWebhook',
      );
      return Response(statusCode: io.HttpStatus.unauthorized);
    }

    // Parse event payload
    final payload = jsonDecode(rawBody) as Map<String, dynamic>;
    final eventType = payload['type'] as String?;
    final eventId = payload['id'] as String?;
    final dataObject = payload['data']?['object'] as Map<String, dynamic>?;

    if (eventType == null || eventId == null) {
      return Response.json(
        statusCode: io.HttpStatus.badRequest,
        body: {'error': 'Missing event type or id'},
      );
    }

    // Idempotency check - record event
    final isNew = await db.webhookEvents.recordEvent(
      eventId: eventId,
      provider: 'STRIPE',
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
        case 'payment_intent.succeeded':
          final paymentIntentId = dataObject?['id'] as String?;
          if (paymentIntentId != null) {
            await handlers.handlePaymentSuccess(
              paymentIntentOrOrderId: paymentIntentId,
              gateway: 'STRIPE',
            );
            success = true;
          }

        case 'payment_intent.payment_failed':
          final paymentIntentId = dataObject?['id'] as String?;
          final lastError = dataObject?['last_payment_error'] as Map?;
          final errorMessage = lastError?['message'] as String? ?? 'Unknown';
          if (paymentIntentId != null) {
            await handlers.handlePaymentFailure(
              paymentIntentOrOrderId: paymentIntentId,
              gateway: 'STRIPE',
              reason: errorMessage,
            );
            success = true;
          }

        case 'charge.refunded':
          // Extract refund from the charge
          final refunds = dataObject?['refunds']?['data'] as List?;
          final paymentIntentId = dataObject?['payment_intent'] as String?;

          if (refunds != null &&
              refunds.isNotEmpty &&
              paymentIntentId != null) {
            // Process the most recent refund
            final refund = refunds.first as Map<String, dynamic>;
            await handlers.handleRefundProcessed(
              refundId: refund['id'] as String,
              paymentIntentOrOrderId: paymentIntentId,
              amount: refund['amount'] as int? ?? 0,
              currency: refund['currency'] as String? ?? 'usd',
              status: refund['status'] as String? ?? 'succeeded',
              gateway: 'STRIPE',
              reason: refund['reason'] as String?,
            );
            success = true;
          }

        case 'charge.dispute.created':
          // Handle dispute creation
          final disputePaymentIntentId =
              dataObject?['payment_intent'] as String?;
          final evidenceDetails =
              dataObject?['evidence_details'] as Map<String, dynamic>?;

          if (disputePaymentIntentId != null) {
            await handlers.handleDisputeCreated(
              paymentIntentOrOrderId: disputePaymentIntentId,
              disputeId: dataObject?['id'] as String? ?? '',
              amount: dataObject?['amount'] as int? ?? 0,
              currency:
                  (dataObject?['currency'] as String?)?.toUpperCase() ?? 'USD',
              reason: dataObject?['reason'] as String? ?? 'unknown',
              status: _mapDisputeStatus(dataObject?['status'] as String?),
              gateway: 'STRIPE',
              dueBy: evidenceDetails?['due_by'] != null
                  ? DateTime.fromMillisecondsSinceEpoch(
                      (evidenceDetails!['due_by'] as int) * 1000,
                    )
                  : null,
              isChargeRefundable:
                  dataObject?['is_charge_refundable'] as bool? ?? true,
            );
            success = true;
          }

        default:
          // Unhandled event type - acknowledge receipt
          SentryLogger.info(
            'Unhandled Stripe event: $eventType',
            context: 'StripeWebhook',
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
      await SentryLogger.error(
        'Error processing Stripe webhook: $eventType',
        context: 'StripeWebhook',
        error: e,
        stackTrace: stackTrace,
      );
      // Return 200 to prevent Stripe from retrying - we'll handle retries
      return Response.json(body: {'status': 'error', 'message': e.toString()});
    }
  } catch (e, stackTrace) {
    await SentryLogger.error(
      'Stripe webhook error',
      context: 'StripeWebhook',
      error: e,
      stackTrace: stackTrace,
    );
    return Response(statusCode: io.HttpStatus.internalServerError);
  }
}

/// Map Stripe dispute status to internal status
String _mapDisputeStatus(String? status) {
  switch (status) {
    case 'warning_needs_response':
    case 'needs_response':
      return 'NEEDS_RESPONSE';
    case 'warning_under_review':
    case 'under_review':
      return 'UNDER_REVIEW';
    case 'charge_refunded':
      return 'CHARGE_REFUNDED';
    case 'won':
      return 'WON';
    case 'lost':
      return 'LOST';
    default:
      return 'NEEDS_RESPONSE';
  }
}
