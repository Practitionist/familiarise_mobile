# 05 — Enterprise Organization Seats, Notifications & Support Tickets (Multi-MCP E2E)

> **What this tests:** Enterprise B2B organization context (`organizations`, `members`, `invitations` from the 93-model schema), seat membership visibility (`#55`), granular notification preferences & quiet hours (`notification_preferences` / `/notifications`), and end-to-end support ticket creation & threaded replies (`support_tickets` / `SupportTicketResponse`, `#61`).
>
> **MCP Servers Used:**
> - **Supabase MCP** (`execute_sql` for seeding `organizations`, `members`, `invitations`, `notification_preferences`, `support_tickets`, and verifying DB mutations)
> - **Chrome DevTools MCP** (`navigate_page`, `evaluate_script`, `take_snapshot`, `take_screenshot`, `click`, `type_text`, `list_network_requests`, `list_console_messages`)
> - **Dart MCP** (`analyze_files`, `get_runtime_errors`)

---

## 1. Seed Enterprise Organization, Members, Notification Preferences & Support Ticket (Supabase MCP)

```sql
-- Tool: mcp:supabase:execute_sql
BEGIN;

DELETE FROM "SupportTicketResponse" WHERE "ticketId" LIKE 'test_mcp_ent_%';
DELETE FROM "support_tickets" WHERE id LIKE 'test_mcp_ent_%';
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_mcp_ent_%';
DELETE FROM "invitations" WHERE "organizationId" LIKE 'test_mcp_ent_%';
DELETE FROM "members" WHERE "organizationId" LIKE 'test_mcp_ent_%';
DELETE FROM "organizations" WHERE id LIKE 'test_mcp_ent_%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_mcp_ent_%';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_mcp_ent_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_mcp_ent_%';
DELETE FROM "users" WHERE id LIKE 'test_mcp_ent_%';

-- 1. Create Org Admin user & Org Member user
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_mcp_ent_u_admin', 'Kavita Deshmukh (Org Admin)', 'test_mcp_ent_admin@familiarise.test', true, 'CONSULTEE', true, NOW(), NOW()),
  ('test_mcp_ent_u_mem', 'Nikhil Kapoor (Org Member)', 'test_mcp_ent_member@familiarise.test', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_mcp_ent_acc1', 'test_mcp_ent_u_admin', 'test_mcp_ent_u_admin', 'credential', '$2a$10$CwTycUXWue0Thq9StjUM0uJ8D0R6V5G7Y9h3l1x2z4B6n8M0p2Q4S', NOW(), NOW()),
  ('test_mcp_ent_acc2', 'test_mcp_ent_u_mem', 'test_mcp_ent_u_mem', 'credential', '$2a$10$CwTycUXWue0Thq9StjUM0uJ8D0R6V5G7Y9h3l1x2z4B6n8M0p2Q4S', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "careerStage", "createdAt", "updatedAt")
VALUES
  ('test_mcp_ent_cee1', 'test_mcp_ent_u_admin', 'EXECUTIVE', NOW(), NOW()),
  ('test_mcp_ent_cee2', 'test_mcp_ent_u_mem', 'MID_CAREER', NOW(), NOW());

-- 2. Create Enterprise Organization & Seat Memberships
INSERT INTO "organizations" (
  id, name, slug, logo, "createdAt", metadata
) VALUES (
  'test_mcp_ent_org1',
  'Acme Cloud Engineering India',
  'acme-cloud-eng-test',
  NULL,
  NOW(),
  '{"tier":"ENTERPRISE","maxSeats":25}'
);

INSERT INTO "members" (
  id, "organizationId", "userId", role, "createdAt"
) VALUES
  ('test_mcp_ent_m1', 'test_mcp_ent_org1', 'test_mcp_ent_u_admin', 'owner', NOW()),
  ('test_mcp_ent_m2', 'test_mcp_ent_org1', 'test_mcp_ent_u_mem', 'member', NOW());

INSERT INTO "invitations" (
  id, "organizationId", email, role, status, "expiresAt", "inviterId"
) VALUES (
  'test_mcp_ent_inv1',
  'test_mcp_ent_org1',
  'new_hire@acme.test',
  'member',
  'pending',
  NOW() + INTERVAL '7 days',
  'test_mcp_ent_u_admin'
);

-- 3. Seed Notification Preferences
INSERT INTO "notification_preferences" (
  id, "userId", "allNotifications", "emailNotifications", "pushNotifications", "inAppNotifications",
  "quietHoursEnabled", "quietHoursStart", "quietHoursEnd", "quietHoursTimezone", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_ent_np1',
  'test_mcp_ent_u_admin',
  true, true, true, true,
  false, '22:00', '07:00', 'Asia/Kolkata',
  NOW(), NOW()
);

COMMIT;
```

---

## 2. Scenario A — Enterprise Organization Seats & Pending Invitations (`#55`)

1. Sign in as `test_mcp_ent_admin@familiarise.test` (`TestPassword123`).
2. Navigate to the Organization / Enterprise Seats view (`/profile/organization` or `/organization`):
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/profile" }
   ```
3. Call `mcp:chrome-devtools:take_snapshot` and verify:
   - Organization name `"Acme Cloud Engineering India"` (`ENTERPRISE`, `2 / 25 seats used`) is displayed.
   - Active members `"Kavita Deshmukh (Org Admin)"` (`owner`) and `"Nikhil Kapoor (Org Member)"` (`member`) are listed alongside pending invitation `new_hire@acme.test`.
   - Seat billing / bulk seat expansion displays the Companion Web handoff link (`familiarise.com`).

---

## 3. Scenario B — Notification Preferences & Quiet Hours Toggle (`/notifications`)

1. Navigate to Notification Settings (`/notifications/settings` or `/profile/notifications`):
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/notifications" }
   ```
2. Call `mcp:chrome-devtools:take_snapshot`, open notification preferences, and toggle **Quiet Hours** ON (`22:00` – `07:00`, `Asia/Kolkata`).
3. Verify network call `PUT` / `PATCH /api/notifications/preferences` returns `200 OK`.
4. Verify in Postgres via **Supabase MCP**:
   ```sql
   -- Tool: mcp:supabase:execute_sql
   SELECT "quietHoursEnabled", "quietHoursStart", "quietHoursEnd", "quietHoursTimezone"
   FROM "notification_preferences"
   WHERE "userId" = 'test_mcp_ent_u_admin';
   ```
   **Expected:** `"quietHoursEnabled" = true`.

---

## 4. Scenario C — Support Ticket Creation & Threaded Follow-Up Reply (`#61`)

1. Navigate to `/support`:
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/support" }
   ```
2. Click **New Support Ticket** (`Create Ticket`), fill:
   - **Title:** `"Enterprise seat allocation sync question"`
   - **Description:** `"Need assistance syncing SSO group seats for Acme Cloud Engineering."`
   - **Priority:** `"HIGH"`
   - **Category:** `"ACCOUNT"` / `"BILLING"`
3. Submit the ticket and confirm `POST /api/support/tickets` returns `201 Created` (or `200 OK`).
4. Open the newly created ticket detail view, type a follow-up message `"Adding our org slug: acme-cloud-eng-test"`, and click **Send Reply**.
5. Verify both the ticket and threaded response exist in Postgres via **Supabase MCP**:
   ```sql
   -- Tool: mcp:supabase:execute_sql
   SELECT t.id, t.title, t.priority, t.status, COUNT(r.id)::int AS reply_count
   FROM "support_tickets" t
   LEFT JOIN "SupportTicketResponse" r ON r."ticketId" = t.id
   WHERE t."userId" = 'test_mcp_ent_u_admin'
   GROUP BY t.id, t.title, t.priority, t.status;
   ```
   **Expected:** 1 ticket row (`title = 'Enterprise seat allocation sync question'`, `status = 'OPEN'`) with `reply_count >= 1`.

---

## 5. Cleanup (Supabase MCP)

```sql
-- Tool: mcp:supabase:execute_sql
BEGIN;
DELETE FROM "SupportTicketResponse" WHERE "ticketId" IN (
  SELECT id FROM "support_tickets" WHERE "userId" LIKE 'test_mcp_ent_%'
);
DELETE FROM "support_tickets" WHERE "userId" LIKE 'test_mcp_ent_%';
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_mcp_ent_%';
DELETE FROM "invitations" WHERE "organizationId" LIKE 'test_mcp_ent_%';
DELETE FROM "members" WHERE "organizationId" LIKE 'test_mcp_ent_%';
DELETE FROM "organizations" WHERE id LIKE 'test_mcp_ent_%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_mcp_ent_%';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_mcp_ent_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_mcp_ent_%';
DELETE FROM "users" WHERE id LIKE 'test_mcp_ent_%';
COMMIT;
```

---

## 6. Verification Checklist

- [ ] Enterprise organization (`organizations`, `members`, `invitations`) renders active seats and pending invites
- [ ] Notification preferences update `quietHoursEnabled = true` in `"notification_preferences"`
- [ ] Support ticket creation + threaded reply persists in `"support_tickets"` and `"SupportTicketResponse"`
- [ ] Zero console or Dart runtime errors (`mcp:dart:get_runtime_errors`)
- [ ] Cleanup SQL leaves zero orphan test records
