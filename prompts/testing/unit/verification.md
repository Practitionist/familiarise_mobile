# Unit Test: Verification

> **Feature:** Submit verification, check status, view documents, resubmit after rejection
> **Route:** `/verification`, `/verification/submit`
> **Backend:** `/api/verification/*`

---

## Data Seeding

```sql
-- Consultant with PENDING_VERIFICATION status
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_verif_u1', 'Verif Test User', 'test_unit_verif@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_verif_a1', 'test_unit_verif_u1', 'test_unit_verif_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_verif_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_verif_cp1', 'test_unit_verif_u1', 'test_unit_verif_dom', 'WEEKLY', false, 'PENDING_VERIFICATION', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_verif_cp1' WHERE id = 'test_unit_verif_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_verif_ck1', 'test_unit_verif_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_verif_np1', 'test_unit_verif_u1');
```

---

## Scenarios

### 1. View Verification Status — Pending
Sign in as `test_unit_verif@test.com` / `TestPassword123`.
```
navigate_page → url: http://localhost:3000/verification
wait_for → text: "Verification" OR text: "Pending"
take_snapshot
take_screenshot
```
**Expected:** Status shows PENDING_VERIFICATION or equivalent UI indicator.

### 2. Submit Verification Request
```
navigate_page → url: http://localhost:3000/verification/submit
wait_for → text: "Submit" OR text: "Verification"
take_snapshot
-- Fill in verification notes
fill → uid: [Notes], value: "Please verify my profile. I have 10 years of experience."
-- Upload documents (if file picker is available)
click → uid: [Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, status, notes FROM "ConsultantProfileVerification" WHERE "consultantProfileId" = 'test_unit_verif_cp1';`
**Expected:** A new verification request with status = 'PENDING'.

### 3. View Verification Documents
After submitting verification:
```
navigate_page → url: http://localhost:3000/verification
take_snapshot
-- Look for documents section or submitted documents list
take_screenshot
```
**Expected:** Submitted documents (if any) are listed with file names.

### 4. Check Status After Rejection
Simulate rejection:
```sql
UPDATE "ConsultantProfileVerification"
SET status = 'REJECTED', "rejectionReason" = 'Documents unclear', "feedbackDetails" = 'Please resubmit clearer copies'
WHERE "consultantProfileId" = 'test_unit_verif_cp1';

UPDATE "ConsultantProfile" SET "verificationStatus" = 'REJECTED' WHERE id = 'test_unit_verif_cp1';
```
Then:
```
navigate_page → url: http://localhost:3000/verification
wait_for → text: "Rejected" OR text: "Resubmit"
take_snapshot
take_screenshot
```
**Expected:** Rejection reason and feedback visible. Resubmit option available.

### 5. Resubmit After Rejection
```
navigate_page → url: http://localhost:3000/verification/submit
wait_for → text: "Submit" OR text: "Resubmit"
take_snapshot
fill → uid: [Notes], value: "Resubmitting with clearer documents."
click → uid: [Submit / Resubmit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, status FROM "ConsultantProfileVerification" WHERE "consultantProfileId" = 'test_unit_verif_cp1' ORDER BY "createdAt" DESC LIMIT 1;`
**Expected:** New verification request created with status = 'PENDING'.

---

## Cleanup

```sql
DELETE FROM "ProfileVerificationDocument" WHERE "verificationId" IN (SELECT id FROM "ConsultantProfileVerification" WHERE "consultantProfileId" = 'test_unit_verif_cp1');
DELETE FROM "ConsultantProfileVerification" WHERE "consultantProfileId" = 'test_unit_verif_cp1';
DELETE FROM "sessions" WHERE "userId" = 'test_unit_verif_u1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_verif_cp1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_verif_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_verif_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_verif_u1';
DELETE FROM "users" WHERE id = 'test_unit_verif_u1';
DELETE FROM "Domain" WHERE id = 'test_unit_verif_dom';
```
