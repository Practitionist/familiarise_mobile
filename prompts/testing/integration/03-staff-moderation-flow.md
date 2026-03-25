# Integration Test: Staff Moderation Flow

> **Journey:** Staff workflow for moderation -- dashboard stats, verification review, ticket response, feedback review
> **Flow:** Sign in -> dashboard -> verify stats -> pending verification -> review docs -> approve -> tickets -> respond -> feedback -> update status -> verify counts
> **APP_URL:** http://localhost:3000

---

## Data Seeding

```sql
-- Staff user
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_intg_staff_u1', 'Moderation Staff', 'test_intg_staff@test.com', true, 'STAFF', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_intg_staff_a1', 'test_intg_staff_u1', 'test_intg_staff_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "StaffProfile" (id, "userId", department, position, "createdAt", "updatedAt")
VALUES ('test_intg_staff_sp', 'test_intg_staff_u1', 'Operations', 'Senior Moderator', NOW(), NOW());
UPDATE "users" SET "staffProfileId" = 'test_intg_staff_sp' WHERE id = 'test_intg_staff_u1';

-- Consultant with pending verification
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_intg_staff_u2', 'Pending Consultant', 'test_intg_staff_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_intg_staff_a2', 'test_intg_staff_u2', 'test_intg_staff_u2', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_intg_staff_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", headline, "createdAt", "updatedAt")
VALUES ('test_intg_staff_cp', 'test_intg_staff_u2', 'test_intg_staff_dom', 'WEEKLY', false, 'PENDING_VERIFICATION', 'Flutter Specialist', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_intg_staff_cp' WHERE id = 'test_intg_staff_u2';

-- Pending verification request with documents
INSERT INTO "ConsultantProfileVerification" (id, status, "consultantProfileId", "submittedAt", notes, "createdAt", "updatedAt")
VALUES ('test_intg_staff_pv', 'PENDING', 'test_intg_staff_cp', NOW(), 'Please verify my credentials. I have 8 years of Flutter experience.', NOW(), NOW());

INSERT INTO "ProfileVerificationDocument" (id, "fileName", "originalName", "fileSize", "mimeType", "fileUrl", "storagePath", description, "verificationId", "uploadedAt")
VALUES
  ('test_intg_staff_pvd1', 'degree.pdf', 'degree_certificate.pdf', 204800, 'application/pdf', 'https://example.com/degree.pdf', 'verifications/test/degree.pdf', 'B.Tech Degree Certificate', 'test_intg_staff_pv', NOW()),
  ('test_intg_staff_pvd2', 'id_proof.pdf', 'aadhaar_card.pdf', 102400, 'application/pdf', 'https://example.com/id.pdf', 'verifications/test/id.pdf', 'Government ID Proof', 'test_intg_staff_pv', NOW());

-- Consultee with open support ticket
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_intg_staff_u3', 'Ticket Consultee', 'test_intg_staff_tkt@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_intg_staff_a3', 'test_intg_staff_u3', 'test_intg_staff_u3', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_intg_staff_cep', 'test_intg_staff_u3', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_intg_staff_cep' WHERE id = 'test_intg_staff_u3';

-- Support ticket (OPEN, HIGH priority)
INSERT INTO "support_tickets" (id, title, description, priority, status, category, "userId", "createdAt", "updatedAt")
VALUES ('test_intg_staff_t1', 'Payment Failed But Amount Deducted', 'My payment of 750 INR was deducted but the booking still shows pending. Transaction ID: TXN123456', 'HIGH', 'OPEN', 'PAYMENT_FAILED', 'test_intg_staff_u3', NOW(), NOW());

-- Pending feedback
INSERT INTO "feedbacks" (id, title, description, rating, status, "userId", "createdAt", "updatedAt")
VALUES ('test_intg_staff_fb', 'Consultant search improvements', 'The explore page could benefit from more filters like language, price range, and availability.', 4, 'PENDING', 'test_intg_staff_u3', NOW(), NOW());

-- Cookie + notification prefs
INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_intg_staff_ck1', 'test_intg_staff_u1', true, NOW(), NOW()),
  ('test_intg_staff_ck2', 'test_intg_staff_u2', true, NOW(), NOW()),
  ('test_intg_staff_ck3', 'test_intg_staff_u3', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES
  ('test_intg_staff_np1', 'test_intg_staff_u1'),
  ('test_intg_staff_np2', 'test_intg_staff_u2'),
  ('test_intg_staff_np3', 'test_intg_staff_u3');
```

---

## Phase 1: Sign In as Staff

### 1.1 Sign In
```
navigate_page -> url: http://localhost:3000/auth/sign-in
wait_for -> text: "Sign In"
take_snapshot
fill -> uid: [Email], value: "test_intg_staff@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign In button]
wait_for -> text: "Dashboard" OR url_contains: "/staff" OR url_contains: "/dashboard"
take_screenshot
```

---

## Phase 2: Staff Dashboard -- Verify Stats

### 2.1 Navigate to Staff Dashboard
```
navigate_page -> url: http://localhost:3000/staff
wait_for -> text: "Dashboard" OR text: "Staff"
take_snapshot
take_screenshot
```

### 2.2 Verify Stats Cards
**Expected counts (at minimum, accounting for possible other test data):**
- Open Tickets: >= 1 (our seeded ticket)
- Pending Verifications: >= 1 (our seeded verification)
- Pending Feedback: >= 1 (our seeded feedback)

Record the initial counts from the snapshot for comparison after actions.

---

## Phase 3: Pending Verification -- Review & Approve

### 3.1 Navigate to Pending Verifications
```
navigate_page -> url: http://localhost:3000/staff/verifications
wait_for -> text: "Verifications" OR text: "Pending"
take_snapshot
take_screenshot
```
**Expected:** "Pending Consultant" visible with PENDING status.

### 3.2 Click Into Verification Detail
```
navigate_page -> url: http://localhost:3000/staff/verifications/test_intg_staff_pv
wait_for -> text: "Pending Consultant" OR text: "Verification"
take_snapshot
take_screenshot
```
**Expected:** Verification details visible:
- Consultant name: "Pending Consultant"
- Notes: "Please verify my credentials..."
- Documents: degree.pdf and id_proof.pdf listed

### 3.3 Review Documents
```
take_snapshot
```
**Expected:** Both documents listed with file names and descriptions.

### 3.4 Approve Verification
```
fill -> uid: [Review Notes], value: "Credentials verified. Degree and ID proof are authentic."
click -> uid: [Approve / Verify]
wait_for -> timeout: 5000
take_screenshot
```

### 3.5 Verify Approval in DB
```sql
SELECT status, "reviewedAt", "reviewNotes"
FROM "ConsultantProfileVerification" WHERE id = 'test_intg_staff_pv';

SELECT "verificationStatus", "isVerified"
FROM "ConsultantProfile" WHERE id = 'test_intg_staff_cp';
```
**Expected:** Verification status = 'APPROVED', consultant isVerified = true, verificationStatus = 'VERIFIED'.

---

## Phase 4: Go Back to Dashboard -- Verify Updated Count

### 4.1 Navigate Back to Dashboard
```
navigate_page -> url: http://localhost:3000/staff
wait_for -> text: "Dashboard" OR text: "Staff"
take_snapshot
take_screenshot
```
**Expected:** Pending Verifications count should be decremented by 1 compared to initial count.

---

## Phase 5: Support Tickets -- View & Respond

### 5.1 Navigate to Support Tickets
```
navigate_page -> url: http://localhost:3000/staff/tickets
wait_for -> text: "Tickets" OR text: "Support"
take_snapshot
take_screenshot
```
**Expected:** "Payment Failed But Amount Deducted" ticket visible with OPEN status and HIGH priority.

### 5.2 Click Into Ticket Detail
```
navigate_page -> url: http://localhost:3000/staff/tickets/test_intg_staff_t1
wait_for -> text: "Payment Failed But Amount Deducted"
take_snapshot
take_screenshot
```
**Expected:** Ticket title, description (with transaction ID), status, priority, and category visible.

### 5.3 Add Staff Response
```
fill -> uid: [Response / Reply / Message], value: "We have located your transaction TXN123456. The amount will be refunded within 3-5 business days. Your booking has been manually confirmed."
click -> uid: [Send / Reply / Submit]
wait_for -> timeout: 5000
take_screenshot
```

### 5.4 Verify Response in DB
```sql
SELECT id, message, "userId" FROM "SupportResponse"
WHERE "supportTicketId" = 'test_intg_staff_t1' AND "userId" = 'test_intg_staff_u1';
```
**Expected:** Staff response created with the message content.

### 5.5 Navigate Back to Dashboard
```
navigate_page -> url: http://localhost:3000/staff
wait_for -> text: "Dashboard"
take_snapshot
```

---

## Phase 6: Feedback -- View & Update Status

### 6.1 Navigate to Feedback List
```
navigate_page -> url: http://localhost:3000/staff/feedback
wait_for -> text: "Feedback" OR text: "Consultant search improvements"
take_snapshot
take_screenshot
```
**Expected:** "Consultant search improvements" feedback visible with PENDING status and rating 4.

### 6.2 Click Into Feedback
```
click -> uid: [Consultant search improvements]
wait_for -> timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** Full feedback details visible including title, description, and rating.

### 6.3 Update Feedback Status to REVIEWED
```
click -> uid: [Acknowledge / Mark Reviewed / Review]
wait_for -> timeout: 5000
take_screenshot
```

### 6.4 Verify Updated Status in DB
```sql
SELECT status FROM "feedbacks" WHERE id = 'test_intg_staff_fb';
```
**Expected:** status = 'ACKNOWLEDGED' or 'REVIEWED'.

---

## Phase 7: Final Dashboard Check -- All Counts Updated

### 7.1 Navigate to Dashboard
```
navigate_page -> url: http://localhost:3000/staff
wait_for -> text: "Dashboard" OR text: "Staff"
take_snapshot
take_screenshot
```

### 7.2 Verify All Counts Updated
Compare with initial counts from Phase 2:
- Pending Verifications: decremented by 1 (we approved one)
- Pending Feedback: decremented by 1 (we reviewed one)
- Open Tickets: may still be same count (responding does not close the ticket)

### 7.3 Final DB Verification
```sql
-- Verify all actions persisted
SELECT
  (SELECT count(*) FROM "ConsultantProfileVerification" WHERE id = 'test_intg_staff_pv' AND status = 'APPROVED') AS verification_approved,
  (SELECT count(*) FROM "SupportResponse" WHERE "supportTicketId" = 'test_intg_staff_t1') AS ticket_responses,
  (SELECT count(*) FROM "feedbacks" WHERE id = 'test_intg_staff_fb' AND status != 'PENDING') AS feedback_reviewed;
```
**Expected:** verification_approved = 1, ticket_responses >= 1, feedback_reviewed = 1.

---

## Cleanup

```sql
-- Support responses
DELETE FROM "SupportResponse" WHERE "supportTicketId" = 'test_intg_staff_t1';

-- Support ticket attachments + ticket
DELETE FROM "SupportTicketAttachment" WHERE "ticketId" = 'test_intg_staff_t1';
DELETE FROM "support_tickets" WHERE id = 'test_intg_staff_t1';

-- Feedback
DELETE FROM "feedbacks" WHERE id = 'test_intg_staff_fb';

-- Verification documents + verification
DELETE FROM "ProfileVerificationDocument" WHERE "verificationId" = 'test_intg_staff_pv';
DELETE FROM "ConsultantProfileVerification" WHERE id = 'test_intg_staff_pv';

-- Sessions
DELETE FROM "sessions" WHERE "userId" IN ('test_intg_staff_u1', 'test_intg_staff_u2', 'test_intg_staff_u3');

-- Profiles
DELETE FROM "ConsulteeProfile" WHERE id = 'test_intg_staff_cep';
DELETE FROM "ConsultantProfile" WHERE id = 'test_intg_staff_cp';
DELETE FROM "StaffProfile" WHERE id = 'test_intg_staff_sp';

-- Prefs
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_intg_staff_u1', 'test_intg_staff_u2', 'test_intg_staff_u3');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_intg_staff_u1', 'test_intg_staff_u2', 'test_intg_staff_u3');

-- Accounts + users
DELETE FROM "accounts" WHERE "userId" IN ('test_intg_staff_u1', 'test_intg_staff_u2', 'test_intg_staff_u3');
DELETE FROM "users" WHERE id IN ('test_intg_staff_u1', 'test_intg_staff_u2', 'test_intg_staff_u3');

-- Domain
DELETE FROM "Domain" WHERE id = 'test_intg_staff_dom';
```
