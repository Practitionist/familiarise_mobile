import 'package:backend/services/novu/novu_service.dart';
import 'package:backend/services/novu/novu_workflows.dart';

/// Static notification trigger functions for fire-and-forget use.
///
/// Each method builds the payload for a specific Novu workflow and delegates
/// to [NovuService.triggerWorkflow]. All methods return a `bool` indicating
/// whether the trigger succeeded.
///
/// Usage:
/// ```dart
/// unawaited(NotificationTriggers.appointmentBooked(novuService, ...));
/// ```
class NotificationTriggers {
  NotificationTriggers._(); // prevent instantiation

  // ---------------------------------------------------------------------------
  // Appointment workflows
  // ---------------------------------------------------------------------------

  /// Notify the **consultant** that a booking has been scheduled.
  static Future<bool> appointmentBooked(
    NovuService service, {
    required String consultantUserId,
    required String consulteeUserName,
    required String appointmentType,
    required String appointmentDate,
    String? planTitle,
    String? appointmentId,
  }) async {
    final payload = <String, dynamic>{
      'consulteeUserName': consulteeUserName,
      'appointmentType': appointmentType,
      'appointmentDate': appointmentDate,
    };
    if (planTitle != null) payload['planTitle'] = planTitle;
    if (appointmentId != null) payload['appointmentId'] = appointmentId;

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.appointmentBooked,
      subscriberId: consultantUserId,
      payload: payload,
      transactionId:
          appointmentId != null ? 'appt-booked-$appointmentId' : null,
    );
  }

  /// Notify the **other party** that an appointment has been cancelled.
  static Future<bool> appointmentCancelled(
    NovuService service, {
    required String recipientUserId,
    required String cancelledByName,
    required String appointmentType,
    required String appointmentDate,
    String? reason,
    String? appointmentId,
  }) async {
    final payload = <String, dynamic>{
      'cancelledByName': cancelledByName,
      'appointmentType': appointmentType,
      'appointmentDate': appointmentDate,
    };
    if (reason != null) payload['reason'] = reason;
    if (appointmentId != null) payload['appointmentId'] = appointmentId;

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.appointmentCancelled,
      subscriberId: recipientUserId,
      payload: payload,
      transactionId:
          appointmentId != null ? 'appt-cancelled-$appointmentId' : null,
    );
  }

  /// Notify the **other party** that an appointment has been rescheduled.
  static Future<bool> appointmentRescheduled(
    NovuService service, {
    required String recipientUserId,
    required String rescheduledByName,
    required String appointmentType,
    required String originalDate,
    String? appointmentId,
  }) async {
    final payload = <String, dynamic>{
      'rescheduledByName': rescheduledByName,
      'appointmentType': appointmentType,
      'originalDate': originalDate,
    };
    if (appointmentId != null) payload['appointmentId'] = appointmentId;

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.appointmentRescheduled,
      subscriberId: recipientUserId,
      payload: payload,
      transactionId:
          appointmentId != null ? 'appt-rescheduled-$appointmentId' : null,
    );
  }

  // ---------------------------------------------------------------------------
  // Payment workflows
  // ---------------------------------------------------------------------------

  /// Notify the **consultee** of a successful payment.
  static Future<bool> paymentSuccess(
    NovuService service, {
    required String consulteeUserId,
    required String amount,
    required String currency,
    String? appointmentType,
    String? consultantName,
    String? paymentId,
  }) async {
    final payload = <String, dynamic>{
      'amount': amount,
      'currency': currency,
    };
    if (appointmentType != null) payload['appointmentType'] = appointmentType;
    if (consultantName != null) payload['consultantName'] = consultantName;
    if (paymentId != null) payload['paymentId'] = paymentId;

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.paymentSuccess,
      subscriberId: consulteeUserId,
      payload: payload,
      transactionId: paymentId != null ? 'pay-success-$paymentId' : null,
    );
  }

  /// Notify the **consultee** of a failed payment.
  static Future<bool> paymentFailed(
    NovuService service, {
    required String consulteeUserId,
    required String amount,
    required String currency,
    String? reason,
    String? paymentId,
  }) async {
    final payload = <String, dynamic>{
      'amount': amount,
      'currency': currency,
    };
    if (reason != null) payload['reason'] = reason;
    if (paymentId != null) payload['paymentId'] = paymentId;

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.paymentFailed,
      subscriberId: consulteeUserId,
      payload: payload,
      transactionId: paymentId != null ? 'pay-failed-$paymentId' : null,
    );
  }

  /// Notify the **consultee** that a refund has been processed.
  static Future<bool> refundProcessed(
    NovuService service, {
    required String consulteeUserId,
    required String amount,
    required String currency,
    String? reason,
    String? refundId,
  }) async {
    final payload = <String, dynamic>{
      'amount': amount,
      'currency': currency,
    };
    if (reason != null) payload['reason'] = reason;
    if (refundId != null) payload['refundId'] = refundId;

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.refundProcessed,
      subscriberId: consulteeUserId,
      payload: payload,
      transactionId: refundId != null ? 'refund-$refundId' : null,
    );
  }

  // ---------------------------------------------------------------------------
  // Booking request workflow
  // ---------------------------------------------------------------------------

  /// Notify the **consultant** of a new pending booking request.
  static Future<bool> newBookingRequest(
    NovuService service, {
    required String consultantUserId,
    required String consulteeUserName,
    required String appointmentType,
    String? message,
    String? appointmentId,
  }) async {
    final payload = <String, dynamic>{
      'consulteeUserName': consulteeUserName,
      'appointmentType': appointmentType,
    };
    if (message != null) payload['message'] = message;
    if (appointmentId != null) payload['appointmentId'] = appointmentId;

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.newBookingRequest,
      subscriberId: consultantUserId,
      payload: payload,
      transactionId:
          appointmentId != null ? 'booking-req-$appointmentId' : null,
    );
  }

  // ---------------------------------------------------------------------------
  // Review workflow
  // ---------------------------------------------------------------------------

  /// Notify the **consultant** that they received a new review.
  static Future<bool> newReviewReceived(
    NovuService service, {
    required String consultantUserId,
    required String reviewerName,
    required int rating,
    String? reviewText,
  }) async {
    final payload = <String, dynamic>{
      'reviewerName': reviewerName,
      'rating': rating,
    };
    if (reviewText != null) payload['reviewText'] = reviewText;

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.newReviewReceived,
      subscriberId: consultantUserId,
      payload: payload,
    );
  }

  // ---------------------------------------------------------------------------
  // Support workflow
  // ---------------------------------------------------------------------------

  /// Send the **user** a confirmation after creating a support ticket.
  static Future<bool> supportTicketCreated(
    NovuService service, {
    required String userId,
    required String ticketTitle,
    required String ticketId,
  }) async {
    final payload = <String, dynamic>{
      'ticketTitle': ticketTitle,
      'ticketId': ticketId,
    };

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.supportTicketCreated,
      subscriberId: userId,
      payload: payload,
      transactionId: 'support-$ticketId',
    );
  }

  // ---------------------------------------------------------------------------
  // Feedback workflow
  // ---------------------------------------------------------------------------

  /// Notify the **admin** that new feedback has been submitted.
  static Future<bool> feedbackReceived(
    NovuService service, {
    required String adminUserId,
    required String userName,
    required String feedbackTitle,
    String? category,
    int? rating,
  }) async {
    final payload = <String, dynamic>{
      'userName': userName,
      'feedbackTitle': feedbackTitle,
    };
    if (category != null) payload['category'] = category;
    if (rating != null) payload['rating'] = rating;

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.feedbackReceived,
      subscriberId: adminUserId,
      payload: payload,
    );
  }

  // ---------------------------------------------------------------------------
  // Dispute workflow
  // ---------------------------------------------------------------------------

  /// Notify the **consultant** that a dispute has been created.
  static Future<bool> disputeCreated(
    NovuService service, {
    required String consultantUserId,
    required String disputeId,
    required String amount,
    required String currency,
    String? reason,
    String? dueBy,
  }) async {
    final payload = <String, dynamic>{
      'disputeId': disputeId,
      'amount': amount,
      'currency': currency,
    };
    if (reason != null) payload['reason'] = reason;
    if (dueBy != null) payload['dueBy'] = dueBy;

    return service.triggerWorkflow(
      workflowId: NovuWorkflows.disputeCreated,
      subscriberId: consultantUserId,
      payload: payload,
      transactionId: 'dispute-$disputeId',
    );
  }
}
