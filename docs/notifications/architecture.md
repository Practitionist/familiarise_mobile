# Notification System -- Architecture

Detailed design of the Novu-based notification system across both backend (Dart Frog) and frontend (Flutter/Riverpod).

---

## Backend Component Overview

```
NovuConfig
    |
    +---> NovuService              (HTTP client for Novu Events API)
    |       - triggerWorkflow()
    |       - triggerForMultiple()
    |       - cancelTrigger()
    |
    +---> SubscriberService        (Subscriber lifecycle management)
            - syncSubscriber()
            - deleteSubscriber()
            - setDeviceToken()
            - removeDeviceToken()
            - generateSubscriberHash()

NotificationTriggers               (Static convenience layer)
    - appointmentBooked()
    - appointmentCancelled()
    - appointmentRescheduled()
    - newBookingRequest()
    - paymentSuccess()
    - paymentFailed()
    - refundProcessed()
    - newReviewReceived()
    - supportTicketCreated()
    - feedbackReceived()
    - disputeCreated()
```

### NovuConfig

`backend/lib/services/novu/novu_config.dart`

Reads environment variables at construction time:

| Env Var | Required | Default |
|---------|----------|---------|
| `NOVU_SECRET_KEY` | Yes | `''` (empty disables all triggers) |
| `NOVU_API_URL` | No | `https://api.novu.co/v1` |
| `NOVU_APP_ID` | No | `''` |

The `isConfigured` getter returns `true` only when `secretKey` is non-empty.

### NovuService

`backend/lib/services/novu/novu_service.dart`

Core HTTP client. Every public method:
- Checks `isConfigured` first -- logs an info message and returns `false` if not configured.
- Catches all exceptions, logs them via `SentryLogger.error`, and returns `false`.
- Uses a 10-second timeout on all HTTP calls.

Key methods:

| Method | Purpose |
|--------|---------|
| `triggerWorkflow()` | POST to `/events/trigger` with workflow ID, subscriber, payload, optional overrides and transaction ID |
| `triggerForMultiple()` | Loop over a list of subscriber IDs, calling `triggerWorkflow` for each |
| `cancelTrigger()` | DELETE to `/events/trigger/{transactionId}` to cancel a pending notification |

### SubscriberService

`backend/lib/services/novu/subscriber_service.dart`

Manages subscriber profiles in Novu's system:

| Method | Purpose |
|--------|---------|
| `syncSubscriber()` | PUT to `/subscribers/{id}` -- creates or updates subscriber with email, name, avatar, phone |
| `deleteSubscriber()` | DELETE to `/subscribers/{id}` |
| `setDeviceToken()` | PUT to `/subscribers/{id}/credentials` -- registers an FCM/APNs token |
| `removeDeviceToken()` | Same endpoint with empty token list |
| `generateSubscriberHash()` | HMAC-SHA256 of subscriber ID using the secret key -- used by the frontend Novu SDK for identity verification |

### NotificationTriggers

`backend/lib/services/novu/notification_triggers.dart`

Static methods that build the correct payload and call `NovuService.triggerWorkflow()`. Each method maps 1:1 to a workflow defined in `NovuWorkflows`. These are designed for fire-and-forget usage:

```dart
unawaited(NotificationTriggers.appointmentBooked(novuService, ...));
```

Transaction IDs are generated deterministically (e.g., `appt-booked-{appointmentId}`) so the same event cannot produce duplicate notifications.

---

## Backend Data Flow

```
1. Route handler receives request (e.g., POST /api/appointments)
       |
2. Business logic executes (validate, DB write, etc.)
       |
3. unawaited(NotificationTriggers.xxx(novuService, ...))
       |
4. NotificationTriggers builds payload map
       |
5. NovuService.triggerWorkflow() sends HTTP POST to Novu API
       |
6. Novu Cloud processes the workflow:
       +--- Step 1: In-App notification (delivered via WebSocket/polling)
       +--- Step 2: Email (routed to Resend provider)
       +--- Step 3: Push (routed to FCM provider)
```

Triggers from route handlers in `backend/routes/api/`:
- `appointments/index.dart` -- `appointmentBooked`, `newBookingRequest`
- `appointments/[id]/cancel.dart` -- `appointmentCancelled`
- `appointments/[id]/reschedule.dart` -- `appointmentRescheduled`
- `reviews/index.dart` -- `newReviewReceived`
- `support/index.dart` -- `supportTicketCreated`
- `feedback/index.dart` -- `feedbackReceived`

Triggers from webhook handlers in `backend/lib/services/webhook_handlers.dart`:
- `paymentSuccess`, `paymentFailed`, `refundProcessed`, `disputeCreated`

All webhook-originated triggers use `unawaited()` to avoid blocking the webhook response.

---

## Frontend Provider Graph

```
dioProvider
    |
    v
notificationRemoteSourceProvider
    |
    v
notificationRepositoryProvider
    |
    +---> subscriberHashProvider           (FutureProvider<String>)
    +---> notificationPreferencesProvider   (AsyncNotifierProvider)
    +---> syncSubscriberProvider            (AsyncNotifierProvider)
    +---> unreadNotificationCountProvider   (NotifierProvider<int>)
    +---> pushNotificationProvider          (AsyncNotifierProvider, keepAlive)
```

### Provider Details

| Provider | Type | Purpose |
|----------|------|---------|
| `notificationRemoteSource` | `Provider` | Dio-based HTTP calls to backend notification endpoints |
| `notificationRepository` | `Provider` | Repository wrapping the remote source |
| `subscriberHash` | `FutureProvider<String>` | Fetches HMAC hash for Novu Inbox SDK authentication |
| `notificationPreferences` | `AsyncNotifier` | CRUD for per-user preferences with optimistic updates |
| `unreadNotificationCount` | `Notifier<int>` | In-memory counter, incremented by push handler, reset by mark-all-read |
| `syncSubscriber` | `AsyncNotifier` | Triggers backend subscriber sync (called after auth/profile changes) |
| `pushNotification` | `AsyncNotifier` (keepAlive) | FCM lifecycle -- initialize, register token, listen for refresh, unregister |

### Repository & Remote Source

`lib/data/repositories/notification_repository_impl.dart` defines the `NotificationRepository` interface:

- `getPreferences()` / `updatePreferences()` -- GET/PUT notification preferences
- `getSubscriberHash()` -- GET subscriber HMAC hash
- `registerFcmToken()` / `unregisterFcmToken()` -- POST to register/unregister device tokens
- `syncSubscriber()` -- POST to trigger backend-side Novu subscriber sync

`lib/data/datasources/remote/notification_remote_source.dart` implements these via Dio HTTP calls.

---

## FCM Token Lifecycle

```
App launch
    |
    v
PushNotification.initialize()
    |
    +--- FcmService.initialize()        (no-op if Firebase is missing)
    |
    +--- FcmService.requestPermission() (iOS prompts, Android auto-grants)
    |
    +--- FcmService.getToken()          (returns null if unavailable)
    |
    +--- repo.registerFcmToken()        (sends token + platform to backend)
    |                                    backend calls SubscriberService.setDeviceToken()
    +--- FcmService.setupListeners()    (foreground: increment unread count)
    |
    +--- FcmService.onTokenRefresh()    (re-registers with backend on refresh)

Sign-out
    |
    v
PushNotification.unregister()
    |
    +--- repo.unregisterFcmToken()      (backend calls SubscriberService.removeDeviceToken())
```

The `PushNotification` provider uses `keepAlive: true` so it persists across navigation. Web builds skip initialization entirely (`kIsWeb` guard).

### Local Notifications

`LocalNotificationService` (in `lib/features/notifications/services/local_notification_service.dart`) uses `flutter_local_notifications` to display system notifications when an FCM message arrives while the app is in the foreground. It creates an Android notification channel (`familiarise_default`) and supports tap-to-open callbacks.

---

## Graceful Degradation

The system is designed to work at any configuration level without crashing:

### Backend -- without `NOVU_SECRET_KEY`

- `NovuConfig.isConfigured` returns `false`.
- `NovuService.triggerWorkflow()` logs an info message and returns `false` immediately.
- `SubscriberService` methods similarly skip with an info log.
- `SubscriberService.generateSubscriberHash()` returns an empty string.
- All route handlers continue to function normally -- notifications are simply not sent.

### Frontend -- without Firebase config

- `FcmService.initialize()` catches `FirebaseException` when `Firebase.app()` throws, sets `_initialized` to `false`, and returns.
- `FcmService.getToken()` returns `null` (guarded by `_messaging == null`).
- `PushNotification.initialize()` catches all exceptions, logs to Sentry, and sets state to `AsyncData(null)`.
- All other notification features (in-app inbox, preferences, subscriber sync) continue to work.

### Frontend -- permission denied

- `FcmService.requestPermission()` returns `false`.
- `PushNotification.initialize()` stops early and sets state to `AsyncData(null)`.
- No token registration occurs; push is silently disabled.

---

## Frontend UI Components

### NotificationBellWidget

`lib/features/notifications/widgets/notification_bell_widget.dart`

A `ConsumerWidget` that watches `unreadNotificationCountProvider`. Displays:
- A plain bell icon when count is 0
- A Material 3 `Badge` with the count (capped at "99+") when count > 0

Taps navigate to `/notifications` (the inbox screen).

### NotificationInboxScreen

`lib/features/notifications/screens/notification_inbox_screen.dart`

Full-screen inbox with pull-to-refresh. Currently displays a placeholder empty state. Will integrate the Novu Flutter SDK (`NovuInboxWidget`) once the `novu_flutter` package is added. Includes a "Mark All Read" action that resets the unread count.

### NotificationPreferencesScreen

`lib/features/notifications/screens/notification_preferences_screen.dart`

Three sections with toggle controls:
- **Channels** -- Email, Push, In-App (each independently toggleable)
- **Categories** -- Appointments, Payments, Support, Feedback, Subscriptions, Marketing
- **Quiet Hours** -- Enable/disable with start and end time pickers

Uses optimistic updates via `notificationPreferencesProvider`: the UI updates immediately on toggle, reverts if the API call fails.

---

## Future Extensibility

The web application has 13+ additional Novu workflows (e.g., subscription lifecycle, admin alerts, payout notifications, availability updates) that are not yet triggered from mobile routes. As mobile features expand, adding a new workflow requires:

1. Add the workflow constant to `NovuWorkflows`.
2. Add a trigger method to `NotificationTriggers`.
3. Call it from the relevant route handler.
4. Configure the workflow template in the Novu dashboard.

No frontend changes are needed unless the workflow requires a new UI surface beyond the existing inbox and push channels.
