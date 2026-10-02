# Unit Test: Staff

> **Feature:** Staff dashboard stats, pending verifications list, support tickets list, review verification, respond to ticket, review feedback
> **Route:** `/staff`
> **Backend:** `/api/staff/*`

---

## Data Seeding

```sql
-- Staff user
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_staff_u1', 'Staff User', 'test_unit_staff@test.com', true, 'STAFF', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_staff_a1', 'test_unit_staff_u1', 'test_unit_staff_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "StaffProfile" (id, "userId", department, position, "createdAt", "updatedAt")
VALUES ('test_unit_staff_sp1', 'test_unit_staff_u1', 'Support', 'Manager', NOW(), NOW());
UPDATE "users" SET "staffProfileId" = 'test_unit_staff_sp1' WHERE id = 'test_unit_staff_u1';

-- Consultant with pending verification
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_staff_u2', 'Pending Consultant', 'test_unit_staff_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_staff_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_staff_cp1', 'test_unit_staff_u2', 'test_unit_staff_dom', 'WEEKLY', false, 'PENDING_VERIFICATION', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_staff_cp1' WHERE id = 'test_unit_staff_u2';

-- Pending verification request
INSERT INTO "ConsultantProfileVerification" (id, status, "consultantProfileId", "submittedAt", notes, "createdAt", "updatedAt")
VALUES ('test_unit_staff_pv1', 'PENDING', 'test_unit_staff_cp1', NOW(), 'Please verify my credentials', NOW(), NOW());

-- User with open support ticket
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_staff_u3', 'Ticket User', 'test_unit_staff_tkt@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_staff_cep1', 'test_unit_staff_u3', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_staff_cep1' WHERE id = 'test_unit_staff_u3';

INSERT INTO "support_tickets" (id, title, description, priority, status, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_staff_t1', 'Staff Test Ticket', 'Need help with booking issue', 'HIGH', 'OPEN', 'test_unit_staff_u3', NOW(), NOW());

-- Pending feedback
INSERT INTO "feedbacks" (id, title, description, rating, status, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_staff_fb1', 'Staff Test Feedback', 'Great platform but needs improvement', 4, 'PENDING', 'test_unit_staff_u3', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_staff_ck1', 'test_unit_staff_u1', true, NOW(), NOW()),
  ('test_unit_staff_ck2', 'test_unit_staff_u2', true, NOW(), NOW()),
  ('test_unit_staff_ck3', 'test_unit_staff_u3', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_staff_np1', 'test_unit_staff_u1'), ('test_unit_staff_np2', 'test_unit_staff_u2'), ('test_unit_staff_np3', 'test_unit_staff_u3');
```

---

## Scenarios

Sign in as `test_unit_staff@test.com` / `TestPassword123`.

### 1. Staff Dashboard Stats
```
navigate_page → url: http://localhost:3000/staff
wait_for → text: "Dashboard" OR text: "Staff"
take_snapshot
take_screenshot
```
**Expected:** Dashboard loads with stats (pending verifications count, open tickets count, pending feedbacks count).

### 2. Pending Verifications List
```
navigate_page → url: http://localhost:3000/staff/verifications
wait_for → text: "Verifications" OR text: "Pending"
take_snapshot
take_screenshot
```
**Expected:** "Pending Consultant" visible with PENDING status.

### 3. Review Verification — Approve
```
-- Navigate to verification detail
navigate_page → url: http://localhost:3000/staff/verifications/test_unit_staff_pv1
wait_for → text: "Pending Consultant" OR text: "Verification"
take_snapshot
fill → uid: [Review Notes], value: "Profile looks good, verified."
click → uid: [Approve / Verify]
wait_for → timeout: 5000
take_screenshot
```
**Verify:**
```sql
SELECT status FROM "ConsultantProfileVerification" WHERE id = 'test_unit_staff_pv1';
SELECT "verificationStatus", "isVerified" FROM "ConsultantProfile" WHERE id = 'test_unit_staff_cp1';
```
**Expected:** Verification status = 'APPROVED', consultant isVerified = true.

### 4. Support Tickets List
```
navigate_page → url: http://localhost:3000/staff/tickets
wait_for → text: "Tickets" OR text: "Support"
take_snapshot
take_screenshot
```
**Expected:** "Staff Test Ticket" visible with OPEN status and HIGH priority.

### 5. Respond to Ticket
```
navigate_page → url: http://localhost:3000/staff/tickets/test_unit_staff_t1
wait_for → text: "Staff Test Ticket"
take_snapshot
fill → uid: [Response / Reply], value: "We are looking into your booking issue. Please provide your booking ID."
click → uid: [Send / Reply / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, message FROM "SupportResponse" WHERE "supportTicketId" = 'test_unit_staff_t1' AND "userId" = 'test_unit_staff_u1';`
**Expected:** Staff response added.

### 6. Review Feedback
```
navigate_page → url: http://localhost:3000/staff/feedback
wait_for → text: "Feedback" OR text: "Staff Test Feedback"
take_snapshot
-- Click on feedback entry
click → uid: [Staff Test Feedback]
wait_for → timeout: 3000
take_snapshot
-- Acknowledge feedback
click → uid: [Acknowledge / Mark Reviewed]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT status FROM "feedbacks" WHERE id = 'test_unit_staff_fb1';`
**Expected:** status = 'ACKNOWLEDGED'.

---

## Cleanup

```sql
DELETE FROM "SupportResponse" WHERE "supportTicketId" = 'test_unit_staff_t1';
DELETE FROM "support_tickets" WHERE id = 'test_unit_staff_t1';
DELETE FROM "feedbacks" WHERE id = 'test_unit_staff_fb1';
DELETE FROM "ProfileVerificationDocument" WHERE "verificationId" = 'test_unit_staff_pv1';
DELETE FROM "ConsultantProfileVerification" WHERE id = 'test_unit_staff_pv1';
DELETE FROM "sessions" WHERE "userId" IN ('test_unit_staff_u1', 'test_unit_staff_u2', 'test_unit_staff_u3');
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_staff_cep1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_staff_cp1';
DELETE FROM "StaffProfile" WHERE id = 'test_unit_staff_sp1';
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_unit_staff_u1', 'test_unit_staff_u2', 'test_unit_staff_u3');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_unit_staff_u1', 'test_unit_staff_u2', 'test_unit_staff_u3');
DELETE FROM "accounts" WHERE "userId" IN ('test_unit_staff_u1', 'test_unit_staff_u2', 'test_unit_staff_u3');
DELETE FROM "users" WHERE id IN ('test_unit_staff_u1', 'test_unit_staff_u2', 'test_unit_staff_u3');
DELETE FROM "Domain" WHERE id = 'test_unit_staff_dom';
```
