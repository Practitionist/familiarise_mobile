# 03 — Stream Video, Stream Chat & DPDP Recording Consent (Multi-MCP E2E)

> **What this tests:** Stream Video call provisioning, Stream Chat channel creation & real-time messaging, token generation (`/api/stream/token`, `/api/stream/chat-token`), meeting room access validation, and **DPDP (Digital Personal Data Protection Act) explicit consent verification** (`ConsentRecord` / recording consent prompt before `video_start_recording` is permitted).
>
> **MCP Servers Used:**
> - **Stream.io MCP** (`users_upsert`, `chat_create_channel`, `chat_send_message`, `chat_query_channels`, `video_create_call`, `video_get_call`, `video_list_recordings`, `chat_delete_channel`, `video_delete_call`)
> - **Supabase MCP** (`execute_sql` for seeding `Appointment`, `SlotOfAppointment`, `MeetingSession`, and verifying `ConsentRecord` / `Recording` rows)
> - **Chrome DevTools MCP** (`navigate_page`, `evaluate_script`, `take_snapshot`, `take_screenshot`, `click`, `type_text`, `list_network_requests`, `list_console_messages`)
> - **Dart MCP** (`get_runtime_errors`, `widget_inspector`)

---

## 1. Seed Scheduled Appointment & Meeting Session (Supabase MCP)

```sql
-- Tool: mcp:supabase:execute_sql
BEGIN;

DELETE FROM "ConsentRecord" WHERE "userId" LIKE 'test_mcp_stm_%';
DELETE FROM "Recording" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "MeetingSession" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "SlotOfAppointment" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "Appointment" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "Consultation" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "ConsultationPlan" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "ConsultantProfile" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "Domain" WHERE id = 'test_mcp_stm_dom1';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_mcp_stm_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_mcp_stm_%';
DELETE FROM "users" WHERE id LIKE 'test_mcp_stm_%';

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_mcp_stm_dom1', 'AI Safety & Governance', NOW(), NOW());

INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_mcp_stm_u_con', 'Vikramaditya Rao', 'test_mcp_stm_con@familiarise.test', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_mcp_stm_u_cee', 'Ananya Sharma', 'test_mcp_stm_cee@familiarise.test', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_mcp_stm_acc1', 'test_mcp_stm_u_con', 'test_mcp_stm_u_con', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.XzoCvKkqWyYZaFphvixFFncWVsC4W4O', NOW(), NOW()),
  ('test_mcp_stm_acc2', 'test_mcp_stm_u_cee', 'test_mcp_stm_u_cee', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.XzoCvKkqWyYZaFphvixFFncWVsC4W4O', NOW(), NOW());

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", headline, description, experience, rating, "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_stm_cp1', 'test_mcp_stm_u_con', 'test_mcp_stm_dom1', 'AI Governance Lead', 'DPDP & EU AI Act compliance advisor.', 12, 5.0, 'WEEKLY', true, 'VERIFIED', NOW(), NOW()
);

INSERT INTO "ConsulteeProfile" (id, "userId", "careerStage", "createdAt", "updatedAt")
VALUES ('test_mcp_stm_cee1', 'test_mcp_stm_u_cee', 'MID_CAREER', NOW(), NOW());

INSERT INTO "ConsultationPlan" (
  id, "consultantProfileId", title, description, "durationInHours", price, "priceCurrency", "language", "level", "prerequisites", "materialProvided", "learningOutcomes", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_stm_cplan1', 'test_mcp_stm_cp1', '1:1 Compliance Review', 'Live video consultation.', 1, 350000, 'INR', 'English', 'Intermediate', 'None', 'Checklist', ARRAY['Compliance audit'], NOW(), NOW()
);

INSERT INTO "Consultation" (
  id, "consultationPlanId", "requestStatus", "requestedById", "requestedAt"
) VALUES (
  'test_mcp_stm_cons1', 'test_mcp_stm_cplan1', 'APPROVED', 'test_mcp_stm_cee1', NOW()
);

INSERT INTO "Appointment" (
  id, "appointmentType", "consultationId", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_stm_appt1', 'CONSULTATION', 'test_mcp_stm_cons1', NOW(), NOW()
);

INSERT INTO "SlotOfAppointment" (
  id, "appointmentId", "startsAt", "endsAt", "isTentative", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_stm_slot1', 'test_mcp_stm_appt1', NOW() - INTERVAL '5 minutes', NOW() + INTERVAL '55 minutes', false, NOW(), NOW()
);

INSERT INTO "MeetingSession" (
  id, "slotOfAppointmentId", "streamCallId", platform, "ended", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_stm_ms1', 'test_mcp_stm_slot1', 'call_test_mcp_stm_1', 'STREAM', false, NOW(), NOW()
);

COMMIT;
```

---

## 2. Provision Stream Users, Video Call & Chat Channel (Stream.io MCP)

### 2.1 Upsert Consultant & Consultee Users in Stream.io

```json
// Tool: mcp:stream-io:users_upsert
{
  "users": [
    {
      "id": "test_mcp_stm_u_con",
      "name": "Vikramaditya Rao",
      "role": "user"
    },
    {
      "id": "test_mcp_stm_u_cee",
      "name": "Ananya Sharma",
      "role": "user"
    }
  ]
}
```

### 2.2 Create Consultation Video Call (`default:call_test_mcp_stm_1`)

```json
// Tool: mcp:stream-io:video_create_call
{
  "type": "default",
  "id": "call_test_mcp_stm_1",
  "created_by_id": "test_mcp_stm_u_con",
  "members": [
    { "user_id": "test_mcp_stm_u_con", "role": "host" },
    { "user_id": "test_mcp_stm_u_cee", "role": "user" }
  ]
}
```

### 2.3 Create Consultation Chat Channel & Send Welcome Message

```json
// Tool: mcp:stream-io:chat_create_channel
{
  "type": "messaging",
  "id": "consultation-test_mcp_stm_cons1",
  "created_by_id": "test_mcp_stm_u_con",
  "members": ["test_mcp_stm_u_con", "test_mcp_stm_u_cee"],
  "data": {
    "name": "1:1 Compliance Review — Vikramaditya & Ananya"
  }
}
```

```json
// Tool: mcp:stream-io:chat_send_message
{
  "type": "messaging",
  "id": "consultation-test_mcp_stm_cons1",
  "user_id": "test_mcp_stm_u_con",
  "text": "Hi Ananya! I have uploaded the pre-session checklist. Ready when you join the call."
}
```

---

## 3. Scenario A — Verify Chat Channel & Real-Time Reply in Mobile UI (Chrome DevTools MCP + Stream.io MCP)

1. Sign in as `test_mcp_stm_cee@familiarise.test` (`TestPassword123`) and navigate to `/chat`:
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/chat" }
   ```
2. Call `mcp:chrome-devtools:take_snapshot` and verify the channel `"1:1 Compliance Review — Vikramaditya & Ananya"` and message preview `"Hi Ananya! I have uploaded the pre-session checklist..."` appear.
3. Open the channel, type `"Thanks Vikramaditya, joining the video room now!"`, and click **Send**.
4. Verify the message arrived in Stream via **Stream.io MCP**:
   ```json
   // Tool: mcp:stream-io:chat_query_channels
   {
     "filter_conditions": {
       "id": { "$eq": "consultation-test_mcp_stm_cons1" }
     },
     "message_limit": 5
   }
   ```
   **Expected:** Both messages appear in the channel's message list.

---

## 4. Scenario B — Video Call Lobby, DPDP Consent Gate & Recording Guard

Under India's **DPDP Act**, video/audio recording and transcript processing require explicit, granular participant consent (`ConsentRecord`) before recording can begin:

1. Navigate to the meeting screen `/meetings/test_mcp_stm_appt1`:
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/meetings/test_mcp_stm_appt1" }
   ```
2. Call `mcp:chrome-devtools:take_snapshot` and verify:
   - The pre-call lobby or meeting header displays the **DPDP Recording & Data Processing Consent** banner/checkbox.
   - Recording controls are disabled/blocked in the UI until consent is granted.
3. **Attempt to start recording BEFORE consent is granted** and verify server-side denial (`403 Forbidden`):
   ```json
   // Tool: mcp:chrome-devtools:evaluate_script
   {
     "function": "async () => {\n  const res = await fetch('http://localhost:8081/api/stream/meetings/test_mcp_stm_ms1/recording/start', {\n    method: 'POST',\n    headers: { 'Content-Type': 'application/json' },\n    credentials: 'include'\n  });\n  return { status: res.status, body: await res.json().catch(() => null) };\n}"
   }
   ```
   **Expected:** Server rejects the pre-consent recording attempt with `403 Forbidden` (or `400 Bad Request` indicating missing participant `ConsentRecord`).
4. Accept the DPDP Recording Consent in the UI (or invoke the consent API endpoint) and verify the network call `POST /api/stream/meetings/test_mcp_stm_ms1/consent` (or `/api/user/consent`) returns `200 OK`.
5. Verify in Postgres via **Supabase MCP** that the consent audit trail is persisted:
   ```sql
   -- Tool: mcp:supabase:execute_sql
   SELECT id, "userId", "consentType", granted, "grantedAt"
   FROM "ConsentRecord"
   WHERE "userId" = 'test_mcp_stm_u_cee';
   ```
6. Verify the live Stream call state via **Stream.io MCP**:
   ```json
   // Tool: mcp:stream-io:video_get_call
   {
     "type": "default",
     "id": "call_test_mcp_stm_1"
   }
   ```
   **Expected:** Call exists with both `test_mcp_stm_u_con` and `test_mcp_stm_u_cee` registered as members.

---

## 5. Cleanup (Stream.io MCP + Supabase MCP)

### 5.1 Remove Stream Channel & Call
```json
// Tool: mcp:stream-io:chat_delete_channel
{
  "type": "messaging",
  "id": "consultation-test_mcp_stm_cons1",
  "hard_delete": true
}
```

```json
// Tool: mcp:stream-io:video_delete_call
{
  "type": "default",
  "id": "call_test_mcp_stm_1",
  "hard": true
}
```

### 5.2 Remove Postgres Test Records
```sql
-- Tool: mcp:supabase:execute_sql
BEGIN;
DELETE FROM "ConsentRecord" WHERE "userId" LIKE 'test_mcp_stm_%';
DELETE FROM "Recording" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "MeetingSession" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "SlotOfAppointment" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "Appointment" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "Consultation" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "ConsultationPlan" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "ConsultantProfile" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_mcp_stm_%';
DELETE FROM "Domain" WHERE id = 'test_mcp_stm_dom1';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_mcp_stm_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_mcp_stm_%';
DELETE FROM "users" WHERE id LIKE 'test_mcp_stm_%';
COMMIT;
```

---

## 6. Verification Checklist

- [ ] Stream users, messaging channel, and video call created via Stream.io MCP
- [ ] Mobile Chat screen displays incoming Stream messages and sends replies verified via `chat_query_channels`
- [ ] Meeting screen enforces DPDP recording consent before enabling recording
- [ ] `ConsentRecord` persisted in Supabase PostgreSQL
- [ ] Stream call/channel and Supabase records cleaned up
