# Workflow Reference

Complete reference for all 11 Novu notification workflows implemented in the mobile backend. Workflow IDs are defined in `backend/lib/services/novu/novu_workflows.dart` and triggered via static methods in `backend/lib/services/novu/notification_triggers.dart`.

---

## Appointment Workflows

### `appointment-booked`

| Field | Value |
|-------|-------|
| **Trigger point** | `POST /api/appointments` (when booking status is `SCHEDULED`) -- `backend/routes/api/appointments/index.dart` |
| **Recipient** | Consultant |
| **Channels** | In-App, Email, Push |
| **Payload** | `consulteeUserName` (String, required), `appointmentType` (String, required), `appointmentDate` (String, required), `planTitle` (String?), `appointmentId` (String?) |
| **Transaction ID** | `appt-booked-{appointmentId}` |

### `appointment-cancelled`

| Field | Value |
|-------|-------|
| **Trigger point** | `PUT /api/appointments/{id}/cancel` -- `backend/routes/api/appointments/[id]/cancel.dart` |
| **Recipient** | The other party (consultant or consultee, whichever did not cancel) |
| **Channels** | In-App, Email, Push |
| **Payload** | `cancelledByName` (String, required), `appointmentType` (String, required), `appointmentDate` (String, required), `reason` (String?), `appointmentId` (String?) |
| **Transaction ID** | `appt-cancelled-{appointmentId}` |

### `appointment-rescheduled`

| Field | Value |
|-------|-------|
| **Trigger point** | `PUT /api/appointments/{id}/reschedule` -- `backend/routes/api/appointments/[id]/reschedule.dart` |
| **Recipient** | The other party (whichever did not reschedule) |
| **Channels** | In-App, Email |
| **Payload** | `rescheduledByName` (String, required), `appointmentType` (String, required), `originalDate` (String, required), `appointmentId` (String?) |
| **Transaction ID** | `appt-rescheduled-{appointmentId}` |

### `new-booking-request`

| Field | Value |
|-------|-------|
| **Trigger point** | `POST /api/appointments` (when booking status is `PENDING`) -- `backend/routes/api/appointments/index.dart` |
| **Recipient** | Consultant |
| **Channels** | In-App, Email, Push |
| **Payload** | `consulteeUserName` (String, required), `appointmentType` (String, required), `message` (String?), `appointmentId` (String?) |
| **Transaction ID** | `booking-req-{appointmentId}` |

---

## Payment Workflows

### `payment-success`

| Field | Value |
|-------|-------|
| **Trigger point** | Stripe webhook handler (payment succeeded) -- `backend/lib/services/webhook_handlers.dart` |
| **Recipient** | Consultee |
| **Channels** | In-App, Email |
| **Payload** | `amount` (String, required), `currency` (String, required), `appointmentType` (String?), `consultantName` (String?), `paymentId` (String?) |
| **Transaction ID** | `pay-success-{paymentId}` |

### `payment-failed`

| Field | Value |
|-------|-------|
| **Trigger point** | Stripe webhook handler (payment failed) -- `backend/lib/services/webhook_handlers.dart` |
| **Recipient** | Consultee |
| **Channels** | In-App, Email, Push |
| **Payload** | `amount` (String, required), `currency` (String, required), `reason` (String?), `paymentId` (String?) |
| **Transaction ID** | `pay-failed-{paymentId}` |

### `refund-processed`

| Field | Value |
|-------|-------|
| **Trigger point** | Stripe webhook handler (refund processed) -- `backend/lib/services/webhook_handlers.dart` |
| **Recipient** | Consultee |
| **Channels** | In-App, Email |
| **Payload** | `amount` (String, required), `currency` (String, required), `reason` (String?), `refundId` (String?) |
| **Transaction ID** | `refund-{refundId}` |

---

## Review Workflow

### `new-review-received`

| Field | Value |
|-------|-------|
| **Trigger point** | `POST /api/reviews` -- `backend/routes/api/reviews/index.dart` |
| **Recipient** | Consultant |
| **Channels** | In-App, Email |
| **Payload** | `reviewerName` (String, required), `rating` (int, required, 1-5), `reviewText` (String?) |
| **Transaction ID** | None |

---

## Support Workflow

### `support-ticket-created`

| Field | Value |
|-------|-------|
| **Trigger point** | `POST /api/support` -- `backend/routes/api/support/index.dart` |
| **Recipient** | The user who created the ticket (confirmation) |
| **Channels** | In-App, Email |
| **Payload** | `ticketTitle` (String, required), `ticketId` (String, required) |
| **Transaction ID** | `support-{ticketId}` |

---

## Feedback Workflow

### `feedback-received`

| Field | Value |
|-------|-------|
| **Trigger point** | `POST /api/feedback` -- `backend/routes/api/feedback/index.dart` |
| **Recipient** | Admin |
| **Channels** | In-App, Email |
| **Payload** | `userName` (String, required), `feedbackTitle` (String, required), `category` (String?), `rating` (int?) |
| **Transaction ID** | None |

---

## Dispute Workflow

### `dispute-created`

| Field | Value |
|-------|-------|
| **Trigger point** | Stripe webhook handler (dispute created) -- `backend/lib/services/webhook_handlers.dart` |
| **Recipient** | Consultant |
| **Channels** | In-App, Email, Push |
| **Payload** | `disputeId` (String, required), `amount` (String, required), `currency` (String, required), `reason` (String?), `dueBy` (String?) |
| **Transaction ID** | `dispute-{disputeId}` |

---

## Summary Table

| # | Workflow ID | Trigger | Recipient | Channels |
|---|-------------|---------|-----------|----------|
| 1 | `appointment-booked` | `POST /api/appointments` (SCHEDULED) | Consultant | In-App, Email, Push |
| 2 | `appointment-cancelled` | `PUT /api/appointments/{id}/cancel` | Other party | In-App, Email, Push |
| 3 | `appointment-rescheduled` | `PUT /api/appointments/{id}/reschedule` | Other party | In-App, Email |
| 4 | `new-booking-request` | `POST /api/appointments` (PENDING) | Consultant | In-App, Email, Push |
| 5 | `payment-success` | Stripe webhook (payment succeeded) | Consultee | In-App, Email |
| 6 | `payment-failed` | Stripe webhook (payment failed) | Consultee | In-App, Email, Push |
| 7 | `refund-processed` | Stripe webhook (refund processed) | Consultee | In-App, Email |
| 8 | `new-review-received` | `POST /api/reviews` | Consultant | In-App, Email |
| 9 | `support-ticket-created` | `POST /api/support` | Ticket creator | In-App, Email |
| 10 | `feedback-received` | `POST /api/feedback` | Admin | In-App, Email |
| 11 | `dispute-created` | Stripe webhook (dispute created) | Consultant | In-App, Email, Push |

---

## Adding a New Workflow

1. **Define the ID** -- add a constant to `NovuWorkflows` in `backend/lib/services/novu/novu_workflows.dart` with payload documentation.
2. **Create the trigger** -- add a static method to `NotificationTriggers` in `backend/lib/services/novu/notification_triggers.dart`.
3. **Wire it up** -- call the trigger from the relevant route handler or webhook handler using `unawaited()` for fire-and-forget.
4. **Configure in Novu** -- create the workflow in the Novu dashboard with matching ID and configure template steps (in-app, email, push) with the payload variables.
5. **Update this doc** -- add the workflow to the tables above.
