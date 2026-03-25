# Unit Test: Trials

> **Feature:** Check eligibility, request trial, view trial list, accept/reject (as consultant)
> **Route:** `/trials`, `/trials/request`
> **Backend:** `/api/trials/*`

---

## Data Seeding

```sql
-- Consultant with subscription plan (freeTrialEnabled) + consultee
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_trials_u1', 'Trials Consultant', 'test_unit_trials_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_trials_u2', 'Trials Consultee', 'test_unit_trials_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_trials_a1', 'test_unit_trials_u1', 'test_unit_trials_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_trials_a2', 'test_unit_trials_u2', 'test_unit_trials_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_trials_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_trials_cp1', 'test_unit_trials_u1', 'test_unit_trials_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_trials_cp1' WHERE id = 'test_unit_trials_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_trials_cep1', 'test_unit_trials_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_trials_cep1' WHERE id = 'test_unit_trials_u2';

-- Subscription plan with free trial enabled
INSERT INTO "SubscriptionPlan" (id, title, description, "durationInMonths", price, "callsPerWeek", "sessionDurationInHours", "freeTrialEnabled", "freeTrialDurationMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_trials_sp1', 'Trial Subscription Plan', 'Monthly mentoring with free trial', 1, 200000, 1, 1, true, 30, 'test_unit_trials_cp1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_trials_ck1', 'test_unit_trials_u1', true, NOW(), NOW()),
  ('test_unit_trials_ck2', 'test_unit_trials_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_trials_np1', 'test_unit_trials_u1'), ('test_unit_trials_np2', 'test_unit_trials_u2');
```

---

## Scenarios

### 1. Check Trial Eligibility (as Consultee)
Sign in as `test_unit_trials_cee@test.com` / `TestPassword123`.
```
fetch('/api/trials/eligibility?consultantProfileId=test_unit_trials_cp1&subscriptionPlanId=test_unit_trials_sp1', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Response indicates eligible (no prior trial with this consultant).

### 2. Request Trial (via UI)
```
navigate_page → url: http://localhost:3000/trials/request?consultantId=test_unit_trials_cp1&planId=test_unit_trials_sp1
wait_for → text: "Trial" OR text: "Free Trial"
take_snapshot
fill → uid: [Notes / Goals], value: "I want to explore Flutter mentoring"
click → uid: [Request Trial / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, status, notes FROM "TrialSession" WHERE "consulteeProfileId" = 'test_unit_trials_cep1' AND "consultantProfileId" = 'test_unit_trials_cp1';`
**Expected:** TrialSession created with status = 'PENDING'.

### 3. Request Trial (via API fallback)
```
fetch('/api/trials', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    consultantProfileId: 'test_unit_trials_cp1',
    subscriptionPlanId: 'test_unit_trials_sp1',
    notes: 'I want to explore Flutter mentoring'
  })
}).then(r => r.json())
```

### 4. View Trial List (as Consultee)
```
navigate_page → url: http://localhost:3000/trials
wait_for → text: "Trials" OR text: "Trial Sessions"
take_snapshot
take_screenshot
```
**Expected:** Trial with "Trial Subscription Plan" visible in list with PENDING status.

### 5. Accept Trial (as Consultant)
Sign in as `test_unit_trials_cnt@test.com` / `TestPassword123`.
```
navigate_page → url: http://localhost:3000/trials
wait_for → text: "Trials" OR text: "Requests"
take_snapshot
click → uid: [Accept / Approve]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT status FROM "TrialSession" WHERE "consulteeProfileId" = 'test_unit_trials_cep1' AND "consultantProfileId" = 'test_unit_trials_cp1';`
**Expected:** status = 'SCHEDULED'.

### 6. Reject Trial (alternative flow)
Reset trial first:
```sql
UPDATE "TrialSession" SET status = 'PENDING' WHERE "consulteeProfileId" = 'test_unit_trials_cep1' AND "consultantProfileId" = 'test_unit_trials_cp1';
```
Sign in as consultant:
```
navigate_page → url: http://localhost:3000/trials
take_snapshot
click → uid: [Reject / Decline]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT status FROM "TrialSession" WHERE "consulteeProfileId" = 'test_unit_trials_cep1' AND "consultantProfileId" = 'test_unit_trials_cp1';`
**Expected:** status = 'REJECTED'.

### 7. Duplicate Trial Check
Sign in as consultee. Try requesting another trial with same consultant:
```
fetch('/api/trials', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    consultantProfileId: 'test_unit_trials_cp1',
    subscriptionPlanId: 'test_unit_trials_sp1',
    notes: 'Second attempt'
  })
}).then(r => r.json())
```
**Expected:** Error response (one trial per consultant per consultee).

---

## Cleanup

```sql
DELETE FROM "TrialSession" WHERE "consulteeProfileId" = 'test_unit_trials_cep1';
DELETE FROM "SubscriptionPlan" WHERE id = 'test_unit_trials_sp1';
DELETE FROM "sessions" WHERE "userId" IN ('test_unit_trials_u1', 'test_unit_trials_u2');
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_trials_cep1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_trials_cp1';
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_unit_trials_u1', 'test_unit_trials_u2');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_unit_trials_u1', 'test_unit_trials_u2');
DELETE FROM "accounts" WHERE "userId" IN ('test_unit_trials_u1', 'test_unit_trials_u2');
DELETE FROM "users" WHERE id IN ('test_unit_trials_u1', 'test_unit_trials_u2');
DELETE FROM "Domain" WHERE id = 'test_unit_trials_dom';
```
