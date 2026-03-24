# Notification System (Novu)

## Overview

Familiarise Mobile uses [Novu](https://novu.co) as the notification orchestration layer. Novu manages delivery across three channels -- in-app inbox, email (via Resend), and push notifications (via Firebase Cloud Messaging) -- so application code only needs to fire a single trigger per event.

## Architecture at a Glance

```
Route handler / Webhook
        |
        v
NotificationTriggers  (fire-and-forget static methods)
        |
        v
NovuService.triggerWorkflow()  -->  Novu Cloud API
        |                               |
        |                        +-----------+-----------+
        |                        |           |           |
        v                     In-App      Email        Push
SubscriberService              (Inbox)    (Resend)     (FCM)
  - sync profiles
  - manage device tokens
  - generate HMAC hashes
```

**Backend** (Dart Frog): `NovuConfig`, `NovuService`, `SubscriberService`, `NotificationTriggers`, and `NovuWorkflows` live under `backend/lib/services/novu/`. Route handlers and webhook handlers call `NotificationTriggers` methods in a fire-and-forget pattern.

**Frontend** (Flutter): Riverpod providers (`notification_providers`, `push_notification_provider`) manage subscriber sync, FCM token registration, unread counts, and notification preferences. The `NotificationBellWidget` displays an unread badge, the `NotificationInboxScreen` shows the inbox, and the `NotificationPreferencesScreen` lets users toggle channels and categories.

## Workflows Implemented

11 workflows are currently wired up:

| Category | Workflows |
|----------|-----------|
| Appointment | `appointment-booked`, `appointment-cancelled`, `appointment-rescheduled`, `new-booking-request` |
| Payment | `payment-success`, `payment-failed`, `refund-processed` |
| Review | `new-review-received` |
| Support | `support-ticket-created` |
| Feedback | `feedback-received` |
| Dispute | `dispute-created` |

## Reading Order

1. **[Setup Guide](./setup-guide.md)** -- environment variables, Firebase config, and verification checklist
2. **[Architecture](./architecture.md)** -- component design, data flows, provider graph, and degradation behavior
3. **[Workflow Reference](./workflow-reference.md)** -- full table of every workflow with trigger points, recipients, payload fields, and channels

## Key Source Files

| Layer | Path |
|-------|------|
| Workflow IDs | `backend/lib/services/novu/novu_workflows.dart` |
| Config | `backend/lib/services/novu/novu_config.dart` |
| HTTP client | `backend/lib/services/novu/novu_service.dart` |
| Subscriber mgmt | `backend/lib/services/novu/subscriber_service.dart` |
| Trigger helpers | `backend/lib/services/novu/notification_triggers.dart` |
| Webhook triggers | `backend/lib/services/webhook_handlers.dart` |
| Frontend providers | `lib/features/notifications/providers/` |
| FCM service | `lib/features/notifications/services/fcm_service.dart` |
| Local notifications | `lib/features/notifications/services/local_notification_service.dart` |
| Bell widget | `lib/features/notifications/widgets/notification_bell_widget.dart` |
| Inbox screen | `lib/features/notifications/screens/notification_inbox_screen.dart` |
| Preferences screen | `lib/features/notifications/screens/notification_preferences_screen.dart` |
| Repository | `lib/data/repositories/notification_repository_impl.dart` |
| Remote source | `lib/data/datasources/remote/notification_remote_source.dart` |
| Entities | `lib/domain/entities/notification/notification_entities.dart` |
