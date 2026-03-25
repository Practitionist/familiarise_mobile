# Unit Test: Support

> **Feature:** Create support ticket, view ticket list, view detail, add response
> **Route:** `/support`, `/support/create`, `/support/:ticketId`
> **Backend:** `/api/support/*`

---

## Data Seeding

```sql
-- User with existing ticket
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_support_u1', 'Support User', 'test_unit_support@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_support_a1', 'test_unit_support_u1', 'test_unit_support_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_support_cep1', 'test_unit_support_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_support_cep1' WHERE id = 'test_unit_support_u1';

-- Existing support ticket
INSERT INTO "support_tickets" (id, title, description, priority, status, category, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_support_t1', 'Payment not received', 'I completed payment but status still shows pending', 'HIGH', 'OPEN', 'PAYMENT_FAILED', 'test_unit_support_u1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_support_ck1', 'test_unit_support_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_support_np1', 'test_unit_support_u1');
```

---

## Scenarios

Sign in as `test_unit_support@test.com` / `TestPassword123`.

### 1. View Support Ticket List
```
navigate_page → url: http://localhost:3000/support
wait_for → text: "Support" OR text: "Tickets"
take_snapshot
take_screenshot
```
**Expected:** "Payment not received" ticket visible with OPEN status and HIGH priority.

### 2. View Ticket Detail
```
navigate_page → url: http://localhost:3000/support/test_unit_support_t1
wait_for → text: "Payment not received"
take_snapshot
take_screenshot
```
**Expected:** Ticket title, description, status, priority, and category visible.

### 3. Create New Support Ticket
```
navigate_page → url: http://localhost:3000/support/create
wait_for → text: "Create" OR text: "New Ticket"
take_snapshot
fill → uid: [Title], value: "Cannot access booking"
fill → uid: [Description], value: "I am unable to view my booking details after payment"
-- Select priority if available
click → uid: [Submit / Create]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, title, status FROM "support_tickets" WHERE "userId" = 'test_unit_support_u1' AND title = 'Cannot access booking';`
**Expected:** New ticket created with status = 'OPEN'.

### 4. Add Response to Ticket
```
navigate_page → url: http://localhost:3000/support/test_unit_support_t1
wait_for → text: "Payment not received"
take_snapshot
fill → uid: [Message / Response / Reply], value: "Here is my payment receipt screenshot"
click → uid: [Send / Reply / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, message FROM "SupportResponse" WHERE "supportTicketId" = 'test_unit_support_t1';`
**Expected:** Response added to ticket.

### 5. View Updated Ticket with Response
```
navigate_page → url: http://localhost:3000/support/test_unit_support_t1
wait_for → text: "Payment not received"
take_snapshot
take_screenshot
```
**Expected:** Response "Here is my payment receipt screenshot" visible in conversation thread.

---

## Cleanup

```sql
DELETE FROM "SupportResponse" WHERE "supportTicketId" IN (SELECT id FROM "support_tickets" WHERE "userId" = 'test_unit_support_u1');
DELETE FROM "SupportTicketAttachment" WHERE "ticketId" IN (SELECT id FROM "support_tickets" WHERE "userId" = 'test_unit_support_u1');
DELETE FROM "support_tickets" WHERE "userId" = 'test_unit_support_u1';
DELETE FROM "sessions" WHERE "userId" = 'test_unit_support_u1';
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_support_cep1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_support_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_support_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_support_u1';
DELETE FROM "users" WHERE id = 'test_unit_support_u1';
```
