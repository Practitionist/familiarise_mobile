# 02 — Explore, Schedule Allocation & Companion Booking Handoff (Multi-MCP E2E)

> **What this tests:** Consultant discovery (`/explore`), domain/rating filtering, consultant availability schedule (`SlotOfWeeklyAvailability` + `SlotOfCustomAvailability`), double-booking prevention on `SlotOfAppointment`, free trial session request, and Companion Starter web handoff (`WebHandoffDialog` / `FeatureFlags.payments == false`) for paid checkout vs pre-booked appointments (`#53`).
>
> **MCP Servers Used:**
> - **Supabase MCP** (`execute_sql` for seeding consultant, plans, availability slots, and verifying `Appointment` + `SlotOfAppointment` invariants)
> - **Chrome DevTools MCP** (`navigate_page`, `evaluate_script`, `take_snapshot`, `take_screenshot`, `click`, `type_text`, `list_network_requests`)
> - **Dart MCP** (`analyze_files`, `get_runtime_errors`, `widget_inspector`)

---

## 1. Seed Domain, Consultant, Plans & Availability Slots (Supabase MCP)

```sql
-- Tool: mcp:supabase:execute_sql
BEGIN;

-- Cleanup prior test artifacts
DELETE FROM "SlotOfAppointment" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "Appointment" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "Consultation" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "TrialSession" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "SlotOfWeeklyAvailability" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "SlotOfCustomAvailability" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "ConsultationPlan" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "SubscriptionPlan" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "WebinarPlan" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "ConsultantProfile" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "Domain" WHERE id = 'test_mcp_bk_dom1';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_mcp_bk_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_mcp_bk_%';
DELETE FROM "users" WHERE id LIKE 'test_mcp_bk_%';

-- 1. Domain
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_mcp_bk_dom1', 'Distributed Systems & Cloud', NOW(), NOW());

-- 2. Consultant & Consultee Users
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_mcp_bk_u_con', 'Dr. Priya Nair', 'test_mcp_bk_con@familiarise.test', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_mcp_bk_u_cee', 'Rohan Verma', 'test_mcp_bk_cee@familiarise.test', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_mcp_bk_acc_con', 'test_mcp_bk_u_con', 'test_mcp_bk_u_con', 'credential', '$2a$10$CwTycUXWue0Thq9StjUM0uJ8D0R6V5G7Y9h3l1x2z4B6n8M0p2Q4S', NOW(), NOW()),
  ('test_mcp_bk_acc_cee', 'test_mcp_bk_u_cee', 'test_mcp_bk_u_cee', 'credential', '$2a$10$CwTycUXWue0Thq9StjUM0uJ8D0R6V5G7Y9h3l1x2z4B6n8M0p2Q4S', NOW(), NOW());

-- 3. Profiles
INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", headline, description, experience, rating, "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_bk_cp1',
  'test_mcp_bk_u_con',
  'test_mcp_bk_dom1',
  'Principal Distributed Systems Architect',
  '15+ years designing resilient cloud-native platforms and mentoring staff engineers.',
  15,
  4.9,
  'WEEKLY',
  true,
  'VERIFIED',
  NOW(),
  NOW()
);

INSERT INTO "ConsulteeProfile" (id, "userId", "careerStage", "createdAt", "updatedAt")
VALUES ('test_mcp_bk_cee1', 'test_mcp_bk_u_cee', 'SENIOR', NOW(), NOW());

-- 4. Consultation Plan & Subscription Plan (with free trial enabled)
INSERT INTO "ConsultationPlan" (
  id, "consultantProfileId", title, description, "durationInHours", price, "priceCurrency", "language", "level", "prerequisites", "materialProvided", "learningOutcomes", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_bk_cplan1',
  'test_mcp_bk_cp1',
  'Architecture Deep-Dive (1:1)',
  'System design review and scalability roadmap.',
  1,
  499900,
  'INR',
  'English',
  'Advanced',
  'None',
  'Architecture template',
  ARRAY['System bottlenecks identified', 'Scaling plan'],
  NOW(),
  NOW()
);

INSERT INTO "SubscriptionPlan" (
  id, "consultantProfileId", title, description, "durationInMonths", price, "priceCurrency", "callsPerWeek", "sessionDurationInHours", "emailSupport", "language", "level", "prerequisites", "materialProvided", "learningOutcomes", "freeTrial", "freeTrialDurationMinutes", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_bk_splan1',
  'test_mcp_bk_cp1',
  'Staff Engineer Mentorship',
  'Weekly 1:1 mentorship with free 30-min trial.',
  3,
  2499900,
  'INR',
  1,
  1.0,
  'UNLIMITED',
  'English',
  'Advanced',
  '3+ years engineering experience',
  'Reading list & design doc templates',
  ARRAY['Staff promo readiness', 'Technical leadership'],
  true,
  30,
  NOW(),
  NOW()
);

-- 5. Weekly & Custom Availability Slots
INSERT INTO "SlotOfWeeklyAvailability" (
  id, "consultantProfileId", "startDay", "startTimeUtc", "endDay", "endTimeUtc", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_bk_wslot1',
  'test_mcp_bk_cp1',
  'MONDAY',
  540,
  'MONDAY',
  600,
  NOW(),
  NOW()
);

INSERT INTO "SlotOfCustomAvailability" (
  id, "consultantProfileId", "startsAt", "endsAt", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_bk_cslot1',
  'test_mcp_bk_cp1',
  NOW() + INTERVAL '2 days',
  NOW() + INTERVAL '2 days 1 hour',
  NOW(),
  NOW()
);

COMMIT;
```

---

## 2. Scenario A — Explore Discovery & Consultant Profile Inspection (Chrome DevTools MCP)

1. Sign in as `test_mcp_bk_cee@familiarise.test` (`TestPassword123`) and navigate to `/explore`:
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/explore" }
   ```
2. Call `mcp:chrome-devtools:take_snapshot` and verify:
   - `"Dr. Priya Nair"` is listed with rating `4.9` and domain `"Distributed Systems & Cloud"`.
3. Click `"Dr. Priya Nair"` to open `/explore/consultant/test_mcp_bk_cp1`.
4. Call `mcp:chrome-devtools:take_snapshot` and verify both plans render:
   - `"Architecture Deep-Dive (1:1)"`
   - `"Staff Engineer Mentorship"` (with **Free 30-min Trial** badge)

---

## 3. Scenario B — Free Trial Request & Schedule Slot Allocation

1. On the consultant profile page, click **Request Free Trial** on `"Staff Engineer Mentorship"`.
2. Select an available slot and enter notes `"Looking forward to discussing distributed consensus"`.
3. Submit the trial request.
4. Inspect network requests via `mcp:chrome-devtools:list_network_requests`:
   - Confirm `POST /api/trials` returned `201 Created`.
5. Verify in Postgres via **Supabase MCP**:
   ```sql
   -- Tool: mcp:supabase:execute_sql
   SELECT id, status, "consultantProfileId", "consulteeProfileId", "subscriptionPlanId"
   FROM "TrialSession"
   WHERE "consulteeProfileId" = 'test_mcp_bk_cee1';
   ```
   **Expected:** 1 row with `status = 'REQUESTED'`.

---

## 4. Scenario C — Companion Starter Web Handoff for Paid Checkout (`#53`)

Because `FeatureFlags.payments` and `FeatureFlags.programCheckout` are `false` in the Companion Starter build (complying with App Store Guideline `3.1.3(b)` / `3.1.3(d)`), attempting to purchase a paid plan in-app must present the Companion Web Handoff UX (`WebHandoffDialog` / `Continue on Web`) rather than a raw 403 error:

1. Navigate to book `"Architecture Deep-Dive (1:1)"` and select slot `test_mcp_bk_cslot1`.
2. Click **Continue / Book Consultation**.
3. Call `mcp:chrome-devtools:take_snapshot` and `mcp:chrome-devtools:take_screenshot`:
   - Verify the Companion Starter handoff sheet/dialog is shown explaining that billing and plan activation are managed on `familiarise.com` (with deep-link handoff button).
   - Verify `mcp:chrome-devtools:list_console_messages` has `0` unhandled 403 exceptions.

---

## 5. Scenario D — Concurrent Slot Booking Race Guard (Double-Booking Prevention)

Verify that two concurrent booking requests for the exact same time window on `test_mcp_bk_cp1` cannot both allocate overlapping `SlotOfAppointment` records:

```json
// Tool: mcp:chrome-devtools:evaluate_script
{
  "function": "async () => {\n  const start = new Date(Date.now() + 72 * 3600 * 1000).toISOString();\n  const end = new Date(Date.now() + 73 * 3600 * 1000).toISOString();\n  const payload = {\n    consultantProfileId: 'test_mcp_bk_cp1',\n    consultationPlanId: 'test_mcp_bk_cplan1',\n    slotStartTimeInUTC: start,\n    slotEndTimeInUTC: end,\n    notes: 'Concurrent slot booking race test'\n  };\n  const [r1, r2] = await Promise.all([\n    fetch('http://localhost:8081/api/appointments/book', {\n      method: 'POST',\n      headers: { 'Content-Type': 'application/json' },\n      credentials: 'include',\n      body: JSON.stringify(payload)\n    }),\n    fetch('http://localhost:8081/api/appointments/book', {\n      method: 'POST',\n      headers: { 'Content-Type': 'application/json' },\n      credentials: 'include',\n      body: JSON.stringify(payload)\n    })\n  ]);\n  return { status1: r1.status, status2: r2.status };\n}"
}
```

Verify in Postgres via **Supabase MCP** that at most `1` non-tentative `SlotOfAppointment` exists for that consultant and interval:

```sql
-- Tool: mcp:supabase:execute_sql
SELECT COUNT(*)::int AS slot_count
FROM "SlotOfAppointment" s
JOIN "Appointment" a ON a.id = s."appointmentId"
JOIN "Consultation" c ON c.id = a."consultationId"
WHERE c."consultationPlanId" = 'test_mcp_bk_cplan1';
```

**Expected:** At most `1` booked slot (the second concurrent request is rejected with `409 Conflict` or `400 Bad Request`).

---

## 6. Cleanup (Supabase MCP)

```sql
-- Tool: mcp:supabase:execute_sql
BEGIN;
DELETE FROM "SlotOfAppointment" WHERE "appointmentId" IN (
  SELECT a.id FROM "Appointment" a
  LEFT JOIN "Consultation" c ON c.id = a."consultationId"
  WHERE c."consultationPlanId" = 'test_mcp_bk_cplan1' OR a.id LIKE 'test_mcp_bk_%'
);
DELETE FROM "Appointment" WHERE "consultationId" IN (
  SELECT id FROM "Consultation" WHERE "consultationPlanId" = 'test_mcp_bk_cplan1'
) OR id LIKE 'test_mcp_bk_%';
DELETE FROM "Consultation" WHERE "consultationPlanId" = 'test_mcp_bk_cplan1' OR id LIKE 'test_mcp_bk_%';
DELETE FROM "TrialSession" WHERE "consulteeProfileId" = 'test_mcp_bk_cee1' OR id LIKE 'test_mcp_bk_%';
DELETE FROM "SlotOfWeeklyAvailability" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "SlotOfCustomAvailability" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "ConsultationPlan" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "SubscriptionPlan" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "ConsultantProfile" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_mcp_bk_%';
DELETE FROM "Domain" WHERE id = 'test_mcp_bk_dom1';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_mcp_bk_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_mcp_bk_%';
DELETE FROM "users" WHERE id LIKE 'test_mcp_bk_%';
COMMIT;
```

---

## 7. Verification Checklist

- [ ] Consultant profile and plans render in `/explore`
- [ ] Free trial request creates `TrialSession` row in Postgres
- [ ] Paid consultation triggers Companion Starter Web handoff dialog without 403 crashes
- [ ] Concurrent slot booking race test prevents double-booking in `SlotOfAppointment`
- [ ] Cleanup SQL leaves zero orphan test records
