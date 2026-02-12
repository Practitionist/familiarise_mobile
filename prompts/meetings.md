# Feature: Meetings / Video Calls

> **What this tests:** Pre-join meeting view, in-call controls (mic, camera, flip, leave), recording indicator, and error/emulator states.
>
> **Prerequisites:** Flutter web running at `http://localhost:<PORT>`, Supabase project accessible via MCP. Stream.io Video SDK configured. Camera/microphone permissions available.

---

## 1. Configuration

```
APP_URL             = http://localhost:<PORT>
SUPABASE_PROJECT_ID = <your-project-id>
```

**Note:** Video meetings use Stream.io Video SDK and require a valid appointment with a meeting call created. The meeting screen is accessed via `/meeting/:appointmentId`.

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create users for meeting test

```sql
-- execute_sql
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_meeting_user', 'Meeting User', 'test_meeting_user@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_meeting_acc', 'test_meeting_user', 'test_meeting_user', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());
```

**Note:** Actual meeting calls are created by the backend when appointments are scheduled. To test the meeting UI, you need a valid appointment ID with a Stream call. The meeting screen states can still be tested for error handling.

---

## 3. Test Scenario 1: Meeting Screen States (Chrome DevTools MCP)

### 3.1 Sign in

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_meeting_user@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"
```

### 3.2 Navigate to meeting with invalid ID (error state test)

```
navigate_page → url: {APP_URL}/meeting/invalid-appointment-id
take_snapshot
```

The error state should show:
- Icon: **error_outline** (64px)
- Title: **"Unable to Connect"**
- Error message text
- Buttons: **"Go Back"** (outlined) and **"Retry"** (elevated)

```
take_screenshot  -- meeting error state
```

### 3.3 Test error state buttons

```
click → uid: [Retry button]
take_snapshot
-- Verify: retry attempt is made (may show loading then error again)

click → uid: [Go Back button]
-- Verify: navigates back to previous screen
```

---

## 4. Test Scenario 2: Pre-Join View (if valid appointment)

If you have a valid appointment with a meeting, navigate to it:

```
navigate_page → url: {APP_URL}/meeting/{valid-appointment-id}
wait_for → text: "Ready to join?"
take_snapshot
```

The pre-join view should show:
- Header: **"Ready to join?"** with close button
- Camera preview (or emulator placeholder)
- Controls: **Mic** button, **Camera** button, **Flip camera** button
- Button: **"Join Meeting"** (green filled button)

```
take_screenshot  -- pre-join view
```

### 4.1 Toggle controls

```
click → uid: [Mic toggle button]
take_snapshot
-- Verify: mic icon changes to muted state

click → uid: [Camera toggle button]
take_snapshot
-- Verify: camera icon changes to off state

click → uid: [Join Meeting button]
-- Verify: connects to the call
```

---

## 5. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

DELETE FROM "sessions" WHERE "userId" = 'test_meeting_user';
DELETE FROM "accounts" WHERE "userId" = 'test_meeting_user';
DELETE FROM "User" WHERE id = 'test_meeting_user';
```

---

## 6. Checklist

- [ ] Meeting error state shows "Unable to Connect" with retry/go back buttons
- [ ] Retry button triggers reconnection attempt
- [ ] Go Back button navigates to previous screen
- [ ] Pre-join view shows camera preview and controls (if valid appointment)
- [ ] Mic and camera toggle buttons work
- [ ] "Join Meeting" button is visible
- [ ] Test data cleaned up
