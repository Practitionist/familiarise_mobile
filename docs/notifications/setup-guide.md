# Notification System -- Setup Guide

This guide walks through every step required to get the Novu notification system running locally and in production.

---

## 1. Novu Account

1. Create a free account at [novu.co](https://novu.co).
2. In the Novu dashboard, navigate to **Settings > API Keys**.
3. Copy the following values -- you will need them in the next steps:
   - **Secret Key** (server-side only, starts with a long alphanumeric string)
   - **Application Identifier** (App ID)
   - **API URL** (defaults to `https://api.novu.co/v1`; only change this if you self-host Novu)

## 2. Backend Environment Variables

Add the following to `backend/.env`:

```env
# Required
NOVU_SECRET_KEY=<your-novu-secret-key>
NOVU_APP_ID=<your-novu-app-id>

# Optional -- defaults to https://api.novu.co/v1
NOVU_API_URL=https://api.novu.co/v1
```

`NovuConfig` (in `backend/lib/services/novu/novu_config.dart`) reads these from `Platform.environment` at startup. If `NOVU_SECRET_KEY` is empty the backend gracefully skips all notification triggers (see [Architecture -- Graceful Degradation](./architecture.md#graceful-degradation)).

## 3. Frontend Environment Variables

Add the Novu App ID to the root `.env` file used by the Flutter app:

```env
NOVU_APP_ID=<your-novu-app-id>
```

This value is consumed via the Envied code-generation pattern used throughout the project.

## 4. Firebase Configuration (Push Notifications)

Push notifications are delivered through Firebase Cloud Messaging (FCM). If you do not need push, you can skip this step -- the frontend degrades gracefully.

### Android

1. In the [Firebase Console](https://console.firebase.google.com), create or select a project.
2. Add an Android app with your package name.
3. Download `google-services.json` and place it at:
   ```
   android/app/google-services.json
   ```

### iOS

1. In the same Firebase project, add an iOS app with your bundle ID.
2. Download `GoogleService-Info.plist` and place it at:
   ```
   ios/Runner/GoogleService-Info.plist
   ```
3. Enable **Push Notifications** capability in Xcode under **Signing & Capabilities**.
4. Upload your APNs authentication key (`.p8`) to Firebase Console > Project Settings > Cloud Messaging.

### Novu FCM Integration

1. In the Novu dashboard go to **Integrations > Push > Firebase Cloud Messaging**.
2. Upload your Firebase service account JSON (download from Firebase Console > Project Settings > Service accounts > Generate new private key).
3. Activate the integration.

## 5. Code Generation

After updating `.env` files, regenerate the Envied configuration classes:

```bash
dart run build_runner build --delete-conflicting-outputs
```

This is necessary for the frontend to pick up `NOVU_APP_ID` through the generated env config.

## 6. Novu Dashboard -- Workflow Setup

Create the following 11 workflows in the Novu dashboard (or verify they exist if shared with the web app). Each workflow ID must match the constants in `backend/lib/services/novu/novu_workflows.dart` exactly:

| Workflow ID | Steps to configure |
|---|---|
| `appointment-booked` | In-App + Email + Push |
| `appointment-cancelled` | In-App + Email + Push |
| `appointment-rescheduled` | In-App + Email |
| `new-booking-request` | In-App + Email + Push |
| `payment-success` | In-App + Email |
| `payment-failed` | In-App + Email + Push |
| `refund-processed` | In-App + Email |
| `new-review-received` | In-App + Email |
| `support-ticket-created` | In-App + Email |
| `feedback-received` | In-App + Email |
| `dispute-created` | In-App + Email + Push |

For each workflow, configure the template steps with the payload variables documented in the [Workflow Reference](./workflow-reference.md).

## 7. Verification Checklist

After completing setup, verify end-to-end:

- [ ] **Backend starts without errors** -- `dart_frog dev` logs `Novu configured` (or silently skips if key is missing).
- [ ] **Novu dashboard shows workflows** -- all 11 workflow IDs appear under Workflows.
- [ ] **Subscriber sync works** -- create/login a user and verify the subscriber appears in Novu dashboard > Subscribers.
- [ ] **Trigger via API** -- use the Novu dashboard "Test" button on any workflow, or call the backend endpoint that triggers it (e.g., create a support ticket) and confirm the notification appears in the Novu Activity Feed.
- [ ] **In-app inbox** -- tap the notification bell in the Flutter app; verify the inbox screen loads without errors.
- [ ] **Push (if configured)** -- send a test push from Firebase Console > Cloud Messaging or trigger a workflow with a push step; verify the device receives it.
- [ ] **Preferences screen** -- navigate to notification settings and toggle channels; verify the API call succeeds (check network tab or backend logs).

## Troubleshooting

| Symptom | Cause | Fix |
|---------|-------|-----|
| `Novu not configured -- skipping trigger` in logs | `NOVU_SECRET_KEY` is empty or missing | Add the key to `backend/.env` and restart the server |
| Subscriber hash returns empty string | Same as above | Ensure the secret key is set |
| FCM token is null | Firebase not initialized or permission denied | Check that `google-services.json` / `GoogleService-Info.plist` is in place |
| Push arrives but no local notification on Android | Missing notification channel | Ensure `LocalNotificationService.initialize()` is called at app startup |
| 401 from Novu API | Secret key is invalid or expired | Regenerate the key in Novu dashboard and update `.env` |
