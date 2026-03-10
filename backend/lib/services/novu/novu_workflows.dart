/// Novu workflow identifiers shared with the web app.
///
/// Each constant maps to a workflow configured in the Novu dashboard.
/// The payload documentation below describes the fields each workflow template
/// expects — keep them in sync when editing templates.
class NovuWorkflows {
  NovuWorkflows._(); // prevent instantiation

  /// Sent to the **consultant** after a booking moves to SCHEDULED.
  ///
  /// Payload fields:
  ///   - `consulteeUserName` (String) — name of the person who booked
  ///   - `appointmentType` (String) — e.g. "ONE_ON_ONE", "WEBINAR"
  ///   - `appointmentDate` (String) — human-readable date/time
  ///   - `planTitle` (String?) — plan/package name, if applicable
  ///   - `appointmentId` (String?) — booking reference ID
  static const String appointmentBooked = 'appointment-booked';

  /// Sent to the **other party** when an appointment is cancelled.
  ///
  /// Payload fields:
  ///   - `cancelledByName` (String) — name of the person who cancelled
  ///   - `appointmentType` (String)
  ///   - `appointmentDate` (String)
  ///   - `reason` (String?) — optional cancellation reason
  ///   - `appointmentId` (String?)
  static const String appointmentCancelled = 'appointment-cancelled';

  /// Sent to the **other party** when an appointment is rescheduled.
  ///
  /// Payload fields:
  ///   - `rescheduledByName` (String) — name of the person who rescheduled
  ///   - `appointmentType` (String)
  ///   - `originalDate` (String) — the previous date/time
  ///   - `appointmentId` (String?)
  static const String appointmentRescheduled = 'appointment-rescheduled';

  /// Sent to the **consultee** after a successful payment (from webhook).
  ///
  /// Payload fields:
  ///   - `amount` (String) — formatted amount, e.g. "49.99"
  ///   - `currency` (String) — ISO currency code, e.g. "USD"
  ///   - `appointmentType` (String?) — related appointment type
  ///   - `consultantName` (String?) — consultant display name
  ///   - `paymentId` (String?) — payment gateway reference
  static const String paymentSuccess = 'payment-success';

  /// Sent to the **consultee** after a failed payment (from webhook).
  ///
  /// Payload fields:
  ///   - `amount` (String)
  ///   - `currency` (String)
  ///   - `reason` (String?) — failure reason from the gateway
  ///   - `paymentId` (String?)
  static const String paymentFailed = 'payment-failed';

  /// Sent to the **consultee** after a refund is processed (from webhook).
  ///
  /// Payload fields:
  ///   - `amount` (String)
  ///   - `currency` (String)
  ///   - `reason` (String?) — reason for refund
  ///   - `refundId` (String?) — refund reference
  static const String refundProcessed = 'refund-processed';

  /// Sent to the **consultant** after a new PENDING booking request.
  ///
  /// Payload fields:
  ///   - `consulteeUserName` (String) — name of the requester
  ///   - `appointmentType` (String)
  ///   - `message` (String?) — optional message from the consultee
  ///   - `appointmentId` (String?)
  static const String newBookingRequest = 'new-booking-request';

  /// Sent to the **consultant** after a new review is created.
  ///
  /// Payload fields:
  ///   - `reviewerName` (String)
  ///   - `rating` (int) — 1-5 star rating
  ///   - `reviewText` (String?) — optional review body
  static const String newReviewReceived = 'new-review-received';

  /// Sent to the **user** as confirmation after a support ticket is created.
  ///
  /// Payload fields:
  ///   - `ticketTitle` (String)
  ///   - `ticketId` (String) — support ticket reference
  static const String supportTicketCreated = 'support-ticket-created';

  /// Sent to the **admin** after user feedback is submitted.
  ///
  /// Payload fields:
  ///   - `userName` (String) — name of the user who submitted feedback
  ///   - `feedbackTitle` (String)
  ///   - `category` (String?) — feedback category
  ///   - `rating` (int?) — optional satisfaction rating
  static const String feedbackReceived = 'feedback-received';

  /// Sent to the **consultant** when a dispute is created (from webhook).
  ///
  /// Payload fields:
  ///   - `disputeId` (String)
  ///   - `amount` (String)
  ///   - `currency` (String)
  ///   - `reason` (String?) — dispute reason
  ///   - `dueBy` (String?) — response deadline
  static const String disputeCreated = 'dispute-created';
}
