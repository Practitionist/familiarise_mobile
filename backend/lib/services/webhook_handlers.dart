import 'package:backend/database/database_client.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Shared webhook handlers for payment gateway events
///
/// This service contains business logic that is shared between
/// Razorpay and Stripe webhook endpoints.
class WebhookHandlers {
  final DatabaseClient _db;

  WebhookHandlers(this._db);

  /// Handle successful payment from webhook
  ///
  /// Called by both Razorpay payment.captured and Stripe payment_intent.succeeded
  ///
  /// [paymentIntentOrOrderId] - The payment intent (Stripe) or order ID (Razorpay)
  /// [gateway] - The payment gateway ("RAZORPAY" or "STRIPE")
  Future<void> handlePaymentSuccess({
    required String paymentIntentOrOrderId,
    required String gateway,
  }) async {
    SentryLogger.info(
      'Processing payment success via webhook: $paymentIntentOrOrderId',
      context: 'WebhookHandlers',
    );

    // Find payment by paymentIntent field
    final payment = await _findPaymentByIntent(paymentIntentOrOrderId);
    if (payment == null) {
      SentryLogger.error(
        'Payment not found for webhook: $paymentIntentOrOrderId',
        context: 'WebhookHandlers',
      );
      return;
    }

    final paymentId = payment['id'] as String;
    final appointmentId = payment['appointmentId'] as String?;
    final currentStatus = payment['paymentStatus'] as String?;

    // Skip if already processed
    if (currentStatus == 'SUCCEEDED') {
      SentryLogger.info(
        'Payment already succeeded, skipping: $paymentId',
        context: 'WebhookHandlers',
      );
      return;
    }

    // Update payment status to SUCCEEDED
    await _db.checkout.updatePaymentStatus(
      paymentId: paymentId,
      status: 'SUCCEEDED',
    );

    // Update booking status and confirm slots
    if (appointmentId != null) {
      await _confirmBooking(appointmentId);
    }

    SentryLogger.info(
      'Payment confirmed via webhook: $paymentId ($gateway)',
      context: 'WebhookHandlers',
    );
  }

  /// Handle failed payment from webhook
  ///
  /// Called by both Razorpay payment.failed and Stripe payment_intent.payment_failed
  Future<void> handlePaymentFailure({
    required String paymentIntentOrOrderId,
    required String gateway,
    String? reason,
  }) async {
    SentryLogger.info(
      'Processing payment failure via webhook: $paymentIntentOrOrderId',
      context: 'WebhookHandlers',
    );

    final payment = await _findPaymentByIntent(paymentIntentOrOrderId);
    if (payment == null) {
      SentryLogger.warning(
        'Payment not found for failure webhook: $paymentIntentOrOrderId',
        context: 'WebhookHandlers',
      );
      return;
    }

    final paymentId = payment['id'] as String;
    final currentStatus = payment['paymentStatus'] as String?;

    // Skip if already processed
    if (currentStatus == 'FAILED' || currentStatus == 'SUCCEEDED') {
      return;
    }

    // Update payment status to FAILED
    await _db.checkout.updatePaymentStatus(
      paymentId: paymentId,
      status: 'FAILED',
    );

    SentryLogger.info(
      'Payment marked failed via webhook: $paymentId, reason: $reason',
      context: 'WebhookHandlers',
    );
  }

  /// Handle refund processed event from webhook
  ///
  /// Creates or updates refund record in database
  Future<void> handleRefundProcessed({
    required String refundId,
    required String paymentIntentOrOrderId,
    required int amount,
    required String currency,
    required String status,
    required String gateway,
    String? reason,
  }) async {
    SentryLogger.info(
      'Processing refund via webhook: $refundId',
      context: 'WebhookHandlers',
    );

    // Find the payment to get paymentId
    final payment = await _findPaymentByIntent(paymentIntentOrOrderId);
    if (payment == null) {
      SentryLogger.error(
        'Payment not found for refund webhook: $paymentIntentOrOrderId',
        context: 'WebhookHandlers',
      );
      return;
    }

    final paymentId = payment['id'] as String;

    // Create or update refund record
    await _db.refunds.createRefund(
      refundId: refundId,
      paymentId: paymentId,
      amount: amount,
      currency: currency,
      status: _mapRefundStatus(status),
      paymentGateway: gateway,
      reason: reason,
    );

    SentryLogger.info(
      'Refund processed: $refundId for payment $paymentId',
      context: 'WebhookHandlers',
    );
  }

  /// Handle dispute created from webhook
  ///
  /// Called by both Razorpay payment.dispute.created and Stripe charge.dispute.created
  Future<void> handleDisputeCreated({
    required String paymentIntentOrOrderId,
    required String disputeId,
    required int amount,
    required String currency,
    required String reason,
    required String status,
    required String gateway,
    DateTime? dueBy,
    bool isChargeRefundable = true,
  }) async {
    SentryLogger.info(
      'Processing dispute created via webhook: $disputeId',
      context: 'WebhookHandlers',
    );

    final payment = await _findPaymentByIntent(paymentIntentOrOrderId);
    if (payment == null) {
      SentryLogger.error(
        'Payment not found for dispute webhook: $paymentIntentOrOrderId',
        context: 'WebhookHandlers',
      );
      return;
    }

    final paymentId = payment['id'] as String;

    // Create dispute record
    await _db.disputes.createDispute(
      disputeId: disputeId,
      paymentId: paymentId,
      amount: amount,
      currency: currency,
      reason: reason,
      status: status,
      paymentGateway: gateway,
      dueBy: dueBy,
      isChargeRefundable: isChargeRefundable,
    );

    SentryLogger.info(
      'Dispute created: $disputeId for payment $paymentId',
      context: 'WebhookHandlers',
    );
  }

  /// Find payment by paymentIntent field
  Future<Map<String, dynamic>?> _findPaymentByIntent(String paymentIntent) async {
    final query = JsonQueryBuilder()
        .model('Payment')
        .action(QueryAction.findFirst)
        .where({'paymentIntent': paymentIntent})
        .build();

    return _db.executor.executeQueryAsSingleMap(query);
  }

  /// Confirm booking after successful payment
  Future<void> _confirmBooking(String appointmentId) async {
    // Get appointment to find booking
    final appointmentQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findUnique)
        .where({'id': appointmentId})
        .build();
    final appointment =
        await _db.executor.executeQueryAsSingleMap(appointmentQuery);

    if (appointment == null) {
      SentryLogger.warning(
        'Appointment not found for confirmation: $appointmentId',
        context: 'WebhookHandlers',
      );
      return;
    }

    final consultationId = appointment['consultationId'] as String?;
    final subscriptionId = appointment['subscriptionId'] as String?;

    if (consultationId != null) {
      // Update consultation status to SCHEDULED
      await _db.checkout.updateBookingStatus(
        bookingId: consultationId,
        bookingType: 'CONSULTATION',
        status: 'SCHEDULED',
      );

      // Confirm slots (mark as non-tentative)
      await _db.checkout.confirmSlots(consultationId);
    } else if (subscriptionId != null) {
      // Update subscription status to SCHEDULED
      await _db.checkout.updateBookingStatus(
        bookingId: subscriptionId,
        bookingType: 'SUBSCRIPTION',
        status: 'SCHEDULED',
      );
    }
  }

  /// Map gateway-specific refund status to our enum
  String _mapRefundStatus(String status) {
    switch (status.toLowerCase()) {
      case 'succeeded':
      case 'processed':
        return 'SUCCEEDED';
      case 'pending':
        return 'PENDING';
      case 'failed':
        return 'FAILED';
      case 'cancelled':
      case 'canceled':
        return 'CANCELLED';
      default:
        return 'PENDING';
    }
  }
}
