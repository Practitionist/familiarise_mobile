import 'package:backend/database/database_client.dart';
import 'package:backend/services/stream_service.dart';
import 'package:backend/utils/sentry_logger.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Shared webhook handlers for payment gateway events
///
/// This service contains business logic that is shared between
/// Razorpay and Stripe webhook endpoints.
class WebhookHandlers {
  final DatabaseClient _db;
  final StreamService? _streamService;

  WebhookHandlers(this._db, {StreamService? streamService})
      : _streamService = streamService;

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
  Future<Map<String, dynamic>?> _findPaymentByIntent(
      String paymentIntent) async {
    final query = JsonQueryBuilder()
        .model('Payment')
        .action(QueryAction.findFirst)
        .where({'paymentIntent': paymentIntent}).build();

    return _db.executor.executeQueryAsSingleMap(query);
  }

  /// Confirm booking after successful payment
  Future<void> _confirmBooking(String appointmentId) async {
    // Get appointment to find booking with related data
    final appointmentQuery = JsonQueryBuilder()
        .model('Appointment')
        .action(QueryAction.findUnique)
        .where({'id': appointmentId}).include({
      'webinar': {
        'include': {'webinarPlan': true}
      },
      'class': {
        'include': {'classPlan': true}
      },
      'slots': {
        'include': {
          'user': true,
        }
      },
    }).build();
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
    final webinarId = appointment['webinarId'] as String?;
    final classId = appointment['classId'] as String?;
    final appointmentType = appointment['appointmentType'] as String?;

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
    } else if (webinarId != null && appointmentType == 'WEBINAR') {
      // Handle webinar booking - create group channel
      await _handleWebinarBookingConfirmation(appointment, webinarId);
    } else if (classId != null && appointmentType == 'CLASS') {
      // Handle class booking - create group channel
      await _handleClassBookingConfirmation(appointment, classId);
    }
  }

  /// Handle webinar booking confirmation - creates group chat channel
  Future<void> _handleWebinarBookingConfirmation(
    Map<String, dynamic> appointment,
    String webinarId,
  ) async {
    if (_streamService == null || !_streamService!.isConfigured) {
      SentryLogger.warning(
        'StreamService not configured, skipping group channel creation',
        context: 'WebhookHandlers',
      );
      return;
    }

    try {
      final webinar = appointment['webinar'] as Map<String, dynamic>?;
      final webinarPlan = webinar?['webinarPlan'] as Map<String, dynamic>?;
      final slots = appointment['slots'] as List<dynamic>?;

      if (webinar == null || webinarPlan == null) {
        SentryLogger.warning(
          'Webinar or plan not found for booking confirmation: $webinarId',
          context: 'WebhookHandlers',
        );
        return;
      }

      // Get instructor info
      final consultantProfileId =
          webinarPlan['consultantProfileId'] as String?;
      final consultantInfo =
          await _getConsultantUserInfo(consultantProfileId);

      // Get participant info from slots (enrolled users)
      final participantInfo = _getParticipantFromSlots(slots);

      if (consultantInfo == null || participantInfo == null) {
        SentryLogger.warning(
          'Could not get user info for group channel: $webinarId',
          context: 'WebhookHandlers',
        );
        return;
      }

      final channelId = 'webinar_$webinarId';
      final channelName = webinarPlan['title'] as String? ?? 'Webinar';

      await _streamService!.getOrCreateGroupChannelAndAddMember(
        channelId: channelId,
        channelName: channelName,
        instructorUserId: consultantInfo['userId'] as String,
        participantUserId: participantInfo['userId'] as String,
        programType: 'WEBINAR',
        programId: webinarId,
        instructorName: consultantInfo['name'] as String?,
        instructorImage: consultantInfo['image'] as String?,
        participantName: participantInfo['name'] as String?,
        participantImage: participantInfo['image'] as String?,
      );

      SentryLogger.info(
        'Group channel created/updated for webinar: $channelId',
        context: 'WebhookHandlers',
      );
    } catch (e, stackTrace) {
      SentryLogger.error(
        'Failed to create group channel for webinar: $webinarId',
        context: 'WebhookHandlers',
        error: e,
        stackTrace: stackTrace,
      );
      // Don't rethrow - channel creation failure shouldn't fail payment
    }
  }

  /// Handle class booking confirmation - creates group chat channel
  Future<void> _handleClassBookingConfirmation(
    Map<String, dynamic> appointment,
    String classId,
  ) async {
    if (_streamService == null || !_streamService!.isConfigured) {
      SentryLogger.warning(
        'StreamService not configured, skipping group channel creation',
        context: 'WebhookHandlers',
      );
      return;
    }

    try {
      final classRecord = appointment['class'] as Map<String, dynamic>?;
      final classPlan = classRecord?['classPlan'] as Map<String, dynamic>?;
      final slots = appointment['slots'] as List<dynamic>?;

      if (classRecord == null || classPlan == null) {
        SentryLogger.warning(
          'Class or plan not found for booking confirmation: $classId',
          context: 'WebhookHandlers',
        );
        return;
      }

      // Get instructor info
      final consultantProfileId = classPlan['consultantProfileId'] as String?;
      final consultantInfo =
          await _getConsultantUserInfo(consultantProfileId);

      // Get participant info from slots (enrolled users)
      final participantInfo = _getParticipantFromSlots(slots);

      if (consultantInfo == null || participantInfo == null) {
        SentryLogger.warning(
          'Could not get user info for group channel: $classId',
          context: 'WebhookHandlers',
        );
        return;
      }

      final channelId = 'class_$classId';
      final channelName = classPlan['title'] as String? ?? 'Class';

      await _streamService!.getOrCreateGroupChannelAndAddMember(
        channelId: channelId,
        channelName: channelName,
        instructorUserId: consultantInfo['userId'] as String,
        participantUserId: participantInfo['userId'] as String,
        programType: 'CLASS',
        programId: classId,
        instructorName: consultantInfo['name'] as String?,
        instructorImage: consultantInfo['image'] as String?,
        participantName: participantInfo['name'] as String?,
        participantImage: participantInfo['image'] as String?,
      );

      SentryLogger.info(
        'Group channel created/updated for class: $channelId',
        context: 'WebhookHandlers',
      );
    } catch (e, stackTrace) {
      SentryLogger.error(
        'Failed to create group channel for class: $classId',
        context: 'WebhookHandlers',
        error: e,
        stackTrace: stackTrace,
      );
      // Don't rethrow - channel creation failure shouldn't fail payment
    }
  }

  /// Get consultant's user info from consultant profile ID
  Future<Map<String, dynamic>?> _getConsultantUserInfo(
      String? consultantProfileId) async {
    if (consultantProfileId == null) return null;

    final query = JsonQueryBuilder()
        .model('ConsultantProfile')
        .action(QueryAction.findUnique)
        .where({'id': consultantProfileId}).include({'user': true}).build();

    final profile = await _db.executor.executeQueryAsSingleMap(query);
    if (profile == null) return null;

    final user = profile['user'] as Map<String, dynamic>?;
    if (user == null) return null;

    return {
      'userId': user['id'],
      'name': user['name'],
      'image': user['image'],
    };
  }

  /// Extract participant info from appointment slots
  Map<String, dynamic>? _getParticipantFromSlots(List<dynamic>? slots) {
    if (slots == null || slots.isEmpty) return null;

    // Get users from the first slot (should all be the same for single bookings)
    final firstSlot = slots.first as Map<String, dynamic>;
    final users = firstSlot['user'] as List<dynamic>?;

    if (users == null || users.isEmpty) return null;

    final user = users.first as Map<String, dynamic>;
    return {
      'userId': user['id'],
      'name': user['name'],
      'image': user['image'],
    };
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
