# Unit Test: Plans

> **Feature:** Create/list/delete consultation plan, subscription plan (with free trial), webinar plan, class plan
> **Route:** Test via API if no UI exists yet
> **Backend:** `/api/plans/consultations`, `/api/plans/subscriptions`, `/api/plans/webinars`, `/api/plans/classes`

---

## Data Seeding

```sql
-- Verified consultant
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_plans_u1', 'Plans Test Consultant', 'test_unit_plans@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_plans_a1', 'test_unit_plans_u1', 'test_unit_plans_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_plans_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_plans_cp1', 'test_unit_plans_u1', 'test_unit_plans_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_plans_cp1' WHERE id = 'test_unit_plans_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_plans_ck1', 'test_unit_plans_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_plans_np1', 'test_unit_plans_u1');
```

---

## Scenarios

Sign in as `test_unit_plans@test.com` / `TestPassword123` first to obtain a session cookie, then use API calls.

### 1. Create Consultation Plan
```
-- Via API (evaluate_script with fetch):
fetch('/api/plans/consultations', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    title: 'Unit Test Consultation',
    description: 'A test consultation plan',
    durationInHours: 1,
    price: 50000,
    language: 'English',
    level: 'Beginner'
  })
}).then(r => r.json())
```
**Verify:** `SELECT id, title, price FROM "ConsultationPlan" WHERE "consultantProfileId" = 'test_unit_plans_cp1';`
**Expected:** Plan created with title = 'Unit Test Consultation', price = 50000.

### 2. List Consultation Plans
```
fetch('/api/plans/consultations', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Response contains the plan created in Scenario 1.

### 3. Delete Consultation Plan
```
fetch('/api/plans/consultations/{planId}', {
  method: 'DELETE',
  credentials: 'include'
}).then(r => r.json())
```
**Verify:** `SELECT count(*) FROM "ConsultationPlan" WHERE "consultantProfileId" = 'test_unit_plans_cp1';`
**Expected:** Count = 0.

### 4. Create Subscription Plan with Free Trial
```
fetch('/api/plans/subscriptions', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    title: 'Unit Test Subscription',
    description: 'A test subscription plan',
    durationInMonths: 1,
    price: 200000,
    callsPerWeek: 1,
    sessionDurationInHours: 1,
    freeTrialEnabled: true,
    freeTrialDurationMinutes: 30,
    language: 'English',
    level: 'Beginner'
  })
}).then(r => r.json())
```
**Verify:** `SELECT id, title, "freeTrialEnabled", "freeTrialDurationMinutes" FROM "SubscriptionPlan" WHERE "consultantProfileId" = 'test_unit_plans_cp1';`
**Expected:** freeTrialEnabled = true, freeTrialDurationMinutes = 30.

### 5. Create Webinar Plan
```
fetch('/api/plans/webinars', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    title: 'Unit Test Webinar',
    description: 'A test webinar plan',
    price: 100000,
    durationInHours: 2,
    maxParticipants: 50,
    language: 'English'
  })
}).then(r => r.json())
```
**Verify:** `SELECT id, title, "maxParticipants" FROM "WebinarPlan" WHERE "consultantProfileId" = 'test_unit_plans_cp1';`

### 6. Create Class Plan
```
fetch('/api/plans/classes', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    title: 'Unit Test Class',
    description: 'A test class plan',
    price: 300000,
    durationInMonths: 1,
    meetingsPerWeek: 2,
    sessionDurationInHours: 1.5,
    maxParticipants: 10,
    language: 'English'
  })
}).then(r => r.json())
```
**Verify:** `SELECT id, title, "meetingsPerWeek" FROM "ClassPlan" WHERE "consultantProfileId" = 'test_unit_plans_cp1';`

### 7. Delete Subscription Plan
```
fetch('/api/plans/subscriptions/{planId}', {
  method: 'DELETE',
  credentials: 'include'
}).then(r => r.json())
```
**Verify:** `SELECT count(*) FROM "SubscriptionPlan" WHERE "consultantProfileId" = 'test_unit_plans_cp1';`

---

## Cleanup

```sql
DELETE FROM "ClassPlan" WHERE "consultantProfileId" = 'test_unit_plans_cp1';
DELETE FROM "WebinarPlan" WHERE "consultantProfileId" = 'test_unit_plans_cp1';
DELETE FROM "SubscriptionPlan" WHERE "consultantProfileId" = 'test_unit_plans_cp1';
DELETE FROM "ConsultationPlan" WHERE "consultantProfileId" = 'test_unit_plans_cp1';
DELETE FROM "sessions" WHERE "userId" = 'test_unit_plans_u1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_plans_cp1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_plans_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_plans_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_plans_u1';
DELETE FROM "users" WHERE id = 'test_unit_plans_u1';
DELETE FROM "Domain" WHERE id = 'test_unit_plans_dom';
```
