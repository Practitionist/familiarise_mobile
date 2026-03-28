# Integration Test: Consultant Lifecycle

> **Journey:** Full consultant experience from sign-up to operational
> **Flow:** Sign up -> onboard -> create plans -> set availability -> receive trial -> accept trial -> dashboard -> earnings -> payout -> tax -> verification
> **APP_URL:** http://localhost:3000

---

## Data Seeding

```sql
-- Seed only domain + subdomain. Everything else is created through the UI/API during the test.
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_intg_clife_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "SubDomain" (id, name, "domainId", "createdAt", "updatedAt")
VALUES ('test_intg_clife_sub', 'Flutter Development', 'test_intg_clife_dom', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

-- We also need a consultee to send the trial request later
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_intg_clife_cee', 'Lifecycle Consultee', 'test_intg_clife_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_intg_clife_a_cee', 'test_intg_clife_cee', 'test_intg_clife_cee', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_intg_clife_cep', 'test_intg_clife_cee', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_intg_clife_cep' WHERE id = 'test_intg_clife_cee';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_intg_clife_ck_cee', 'test_intg_clife_cee', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_intg_clife_np_cee', 'test_intg_clife_cee');
```

---

## Phase 1: Sign Up as New User

### 1.1 Navigate to Sign Up
```
navigate_page -> url: http://localhost:3000/auth/sign-up
wait_for -> text: "Create" OR text: "Sign Up"
take_snapshot
```

### 1.2 Fill Sign Up Form
```
fill -> uid: [Name], value: "Lifecycle Consultant"
fill -> uid: [Email], value: "test_intg_clife_cnt@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign Up button]
wait_for -> url_change OR timeout: 10000
take_screenshot
```

### 1.3 Verify User Created
```sql
SELECT id, email, role, "onboardingCompleted" FROM "users" WHERE email = 'test_intg_clife_cnt@test.com';
```
**Expected:** User created with onboardingCompleted = false. Save the user ID for subsequent queries.

---

## Phase 2: Consultant Onboarding (7 Steps)

Should auto-redirect to `/onboarding` since onboarding is not complete.

### 2.1 Step 0 -- Role Selection
```
wait_for -> text: "Role" OR text: "Consultant" OR text: "Consultee"
take_snapshot
click -> uid: [Consultant]
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.2 Step 1 -- Personal Info
```
take_snapshot
fill -> uid: [Name], value: "Lifecycle Consultant"
fill -> uid: [Phone], value: "+919876543210"
fill -> uid: [Bio], value: "Expert Flutter developer with 10 years of experience"
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.3 Step 2 -- Professional Info
```
take_snapshot
fill -> uid: [Headline], value: "Senior Flutter Developer & Mentor"
fill -> uid: [Description], value: "I help aspiring developers master Flutter and mobile development."
fill -> uid: [Experience], value: "10"
-- Select domain
click -> uid: [Technology] OR click -> uid: [Domain dropdown]
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.4 Step 3 -- Background (Work Experience + Education)
```
take_snapshot
-- Add Work Experience
fill -> uid: [Company], value: "Google"
fill -> uid: [Title / Position], value: "Senior Engineer"
fill -> uid: [Start Date], value: "2016-01"
fill -> uid: [End Date], value: "2024-12"
-- Add Education
fill -> uid: [Institution], value: "IIT Delhi"
fill -> uid: [Degree], value: "B.Tech Computer Science"
fill -> uid: [Year / Graduation], value: "2016"
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.5 Step 4 -- Availability Info
```
take_snapshot
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.6 Step 5 -- Agreement
```
take_snapshot
click -> uid: [Terms] OR click -> uid: [I agree to the Terms]
click -> uid: [Privacy] OR click -> uid: [I agree to the Privacy Policy]
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.7 Step 6 -- Review & Submit
```
take_snapshot
take_screenshot
click -> uid: [Submit / Complete]
wait_for -> text: "Dashboard" OR url_contains: "/dashboard" OR timeout: 10000
take_screenshot
```

### 2.8 Verify Onboarding Complete
```sql
SELECT u.id, u.role, u."onboardingCompleted", u."consultantProfileId",
       cp.id AS cp_id, cp.headline, cp."verificationStatus"
FROM "users" u
LEFT JOIN "ConsultantProfile" cp ON cp.id = u."consultantProfileId"
WHERE u.email = 'test_intg_clife_cnt@test.com';
```
**Expected:** role = 'CONSULTANT', onboardingCompleted = true, headline = 'Senior Flutter Developer & Mentor'.
Save the consultantProfileId for subsequent steps.

---

## Phase 3: Create Plans

### 3.1 Create Consultation Plan
```
fetch('/api/plans/consultations', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    title: 'Lifecycle Consultation Plan',
    description: 'One hour Flutter consultation',
    durationInHours: 1,
    price: 50000,
    language: 'English',
    level: 'Beginner'
  })
}).then(r => r.json())
```
**Verify:**
```sql
SELECT id, title, price FROM "ConsultationPlan" WHERE "consultantProfileId" = '{consultantProfileId}';
```
**Expected:** Plan created with title = 'Lifecycle Consultation Plan', price = 50000.

### 3.2 Create Subscription Plan with Free Trial
```
fetch('/api/plans/subscriptions', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    title: 'Lifecycle Subscription Plan',
    description: 'Monthly Flutter mentoring with free trial',
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
**Verify:**
```sql
SELECT id, title, "freeTrialEnabled", "freeTrialDurationMinutes"
FROM "SubscriptionPlan" WHERE "consultantProfileId" = '{consultantProfileId}';
```
**Expected:** freeTrialEnabled = true, freeTrialDurationMinutes = 30. Save the subscription plan ID.

---

## Phase 4: Set Weekly Availability

### 4.1 Create Monday Slot
```
fetch('/api/slots/availability/weekly', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    startDay: 'MONDAY',
    startTimeUtc: 600,
    endDay: 'MONDAY',
    endTimeUtc: 660,
    utcOffsetMinutes: 330
  })
}).then(r => r.json())
```

### 4.2 Create Wednesday Slot
```
fetch('/api/slots/availability/weekly', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    startDay: 'WEDNESDAY',
    startTimeUtc: 600,
    endDay: 'WEDNESDAY',
    endTimeUtc: 660,
    utcOffsetMinutes: 330
  })
}).then(r => r.json())
```

### 4.3 Verify Slots via Schedule Page
```
navigate_page -> url: http://localhost:3000/schedule
wait_for -> text: "Schedule" OR text: "Availability"
take_snapshot
take_screenshot
```
**Verify:**
```sql
SELECT id, "startDay", "startTimeUtc", "endTimeUtc"
FROM "SlotOfAvailabilityWeekly" WHERE "consultantProfileId" = '{consultantProfileId}';
```
**Expected:** 2 slots -- Monday and Wednesday.

---

## Phase 5: Receive and Accept Trial Request

### 5.1 Sign In as Consultee
```
navigate_page -> url: http://localhost:3000/auth/sign-in
wait_for -> text: "Sign In"
take_snapshot
fill -> uid: [Email], value: "test_intg_clife_cee@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign In button]
wait_for -> text: "Dashboard" OR url_contains: "/dashboard" OR url_contains: "/explore"
take_screenshot
```

### 5.2 Check Trial Eligibility
```
fetch('/api/trials/check-eligibility?consultantProfileId={consultantProfileId}&subscriptionPlanId={subscriptionPlanId}', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Eligible -- no prior trial with this consultant.

### 5.3 Request Trial
```
fetch('/api/trials', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    consultantProfileId: '{consultantProfileId}',
    subscriptionPlanId: '{subscriptionPlanId}',
    notes: 'I want to explore Flutter mentoring'
  })
}).then(r => r.json())
```
**Verify:**
```sql
SELECT id, status, notes FROM "TrialSession"
WHERE "consulteeProfileId" = 'test_intg_clife_cep' AND "consultantProfileId" = '{consultantProfileId}';
```
**Expected:** TrialSession created with status = 'PENDING'.

### 5.4 View Trials List (as Consultee)
```
navigate_page -> url: http://localhost:3000/trials
wait_for -> text: "Trials" OR text: "Trial Sessions"
take_snapshot
take_screenshot
```
**Expected:** Trial with 'Lifecycle Subscription Plan' visible with PENDING status.

### 5.5 Sign In as Consultant and Accept Trial
```
navigate_page -> url: http://localhost:3000/auth/sign-in
fill -> uid: [Email], value: "test_intg_clife_cnt@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign In button]
wait_for -> text: "Dashboard" OR url_contains: "/dashboard"

navigate_page -> url: http://localhost:3000/trials
wait_for -> text: "Trials" OR text: "Requests"
take_snapshot
click -> uid: [Accept / Approve]
wait_for -> timeout: 5000
take_screenshot
```
**Verify:**
```sql
SELECT status FROM "TrialSession"
WHERE "consulteeProfileId" = 'test_intg_clife_cep' AND "consultantProfileId" = '{consultantProfileId}';
```
**Expected:** status = 'SCHEDULED'.

---

## Phase 6: View Dashboard

### 6.1 Navigate to Dashboard
```
navigate_page -> url: http://localhost:3000/dashboard
wait_for -> text: "Dashboard" OR text: "Stats"
take_snapshot
take_screenshot
```
**Expected:** Dashboard loads with pending requests section, upcoming appointments, and stats.

---

## Phase 7: Earnings & Payout Setup

### 7.1 View Earnings
```
navigate_page -> url: http://localhost:3000/dashboard
take_snapshot
```
**Expected:** Earnings section visible (may show 0 for new consultant).

### 7.2 View Payout Accounts (Empty)
```
navigate_page -> url: http://localhost:3000/payout-accounts
wait_for -> text: "Payout" OR text: "Accounts"
take_snapshot
take_screenshot
```
**Expected:** Empty state -- no payout accounts.

### 7.3 Add Bank Account
```
navigate_page -> url: http://localhost:3000/payout-accounts/add
wait_for -> text: "Add" OR text: "Bank"
take_snapshot
fill -> uid: [Account Holder Name], value: "Lifecycle Consultant"
fill -> uid: [Bank Name], value: "State Bank of India"
fill -> uid: [Account Number], value: "12345678901234"
fill -> uid: [IFSC Code], value: "SBIN0001234"
click -> uid: [Save / Submit / Add]
wait_for -> timeout: 5000
take_screenshot
```
**Verify:**
```sql
SELECT id, "accountType", "bankName", "accountNumberLast4", "isDefault"
FROM "PayoutAccount" WHERE "consultantProfileId" = '{consultantProfileId}';
```
**Expected:** Account created with accountType = 'BANK_ACCOUNT', accountNumberLast4 = '1234'.

### 7.4 Set as Default
```
navigate_page -> url: http://localhost:3000/payout-accounts
take_snapshot
click -> uid: [Set Default]
wait_for -> timeout: 5000
take_screenshot
```
**Verify:**
```sql
SELECT "isDefault" FROM "PayoutAccount" WHERE "consultantProfileId" = '{consultantProfileId}';
```
**Expected:** isDefault = true.

---

## Phase 8: Tax Info

### 8.1 Add PAN
```
navigate_page -> url: http://localhost:3000/tax-info
wait_for -> text: "Tax" OR text: "PAN"
take_snapshot
fill -> uid: [PAN], value: "ABCDE1234F"
click -> uid: [Save / Submit]
wait_for -> timeout: 5000
take_screenshot
```
**Verify:**
```sql
SELECT "panLast4", "panVerified" FROM "ConsultantTaxInfo" WHERE "consultantProfileId" = '{consultantProfileId}';
```
**Expected:** panLast4 = '234F'.

---

## Phase 9: Verification

### 9.1 Submit Verification Request
```
navigate_page -> url: http://localhost:3000/verification/submit
wait_for -> text: "Submit" OR text: "Verification"
take_snapshot
fill -> uid: [Notes], value: "Please verify my profile. I have 10 years of experience at Google."
click -> uid: [Submit]
wait_for -> timeout: 5000
take_screenshot
```
**Verify:**
```sql
SELECT id, status, notes FROM "ConsultantProfileVerification"
WHERE "consultantProfileId" = '{consultantProfileId}';
```
**Expected:** Verification request with status = 'PENDING'.

### 9.2 Check Verification Status
```
navigate_page -> url: http://localhost:3000/verification
wait_for -> text: "Verification" OR text: "Pending"
take_snapshot
take_screenshot
```
**Expected:** Status shows PENDING or equivalent UI indicator.

---

## Final Verification -- Complete Consultant State

```sql
-- Verify the complete consultant state
SELECT u.id, u.name, u.role, u."onboardingCompleted",
       cp.headline, cp."verificationStatus",
       (SELECT count(*) FROM "ConsultationPlan" WHERE "consultantProfileId" = cp.id) AS consultation_plans,
       (SELECT count(*) FROM "SubscriptionPlan" WHERE "consultantProfileId" = cp.id) AS subscription_plans,
       (SELECT count(*) FROM "SlotOfAvailabilityWeekly" WHERE "consultantProfileId" = cp.id) AS weekly_slots,
       (SELECT count(*) FROM "PayoutAccount" WHERE "consultantProfileId" = cp.id) AS payout_accounts,
       (SELECT count(*) FROM "ConsultantTaxInfo" WHERE "consultantProfileId" = cp.id) AS tax_info,
       (SELECT count(*) FROM "ConsultantProfileVerification" WHERE "consultantProfileId" = cp.id) AS verifications,
       (SELECT count(*) FROM "TrialSession" WHERE "consultantProfileId" = cp.id) AS trial_sessions
FROM "users" u
JOIN "ConsultantProfile" cp ON cp.id = u."consultantProfileId"
WHERE u.email = 'test_intg_clife_cnt@test.com';
```
**Expected:** consultation_plans = 1, subscription_plans = 1, weekly_slots = 2, payout_accounts = 1, tax_info = 1, verifications = 1, trial_sessions = 1.

---

## Cleanup

```sql
-- Trial sessions
DELETE FROM "TrialSession" WHERE "consultantProfileId" IN (
  SELECT id FROM "ConsultantProfile" WHERE "userId" IN (
    SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com'
  )
);

-- Verification
DELETE FROM "ProfileVerificationDocument" WHERE "verificationId" IN (
  SELECT id FROM "ConsultantProfileVerification" WHERE "consultantProfileId" IN (
    SELECT id FROM "ConsultantProfile" WHERE "userId" IN (
      SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com'
    )
  )
);
DELETE FROM "ConsultantProfileVerification" WHERE "consultantProfileId" IN (
  SELECT id FROM "ConsultantProfile" WHERE "userId" IN (
    SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com'
  )
);

-- Tax
DELETE FROM "ConsultantTaxInfo" WHERE "consultantProfileId" IN (
  SELECT id FROM "ConsultantProfile" WHERE "userId" IN (
    SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com'
  )
);

-- Payout
DELETE FROM "PayoutAccount" WHERE "consultantProfileId" IN (
  SELECT id FROM "ConsultantProfile" WHERE "userId" IN (
    SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com'
  )
);

-- Slots
DELETE FROM "SlotOfAvailabilityWeekly" WHERE "consultantProfileId" IN (
  SELECT id FROM "ConsultantProfile" WHERE "userId" IN (
    SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com'
  )
);
DELETE FROM "SlotOfAvailabilityCustom" WHERE "consultantProfileId" IN (
  SELECT id FROM "ConsultantProfile" WHERE "userId" IN (
    SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com'
  )
);

-- Plans
DELETE FROM "SubscriptionPlan" WHERE "consultantProfileId" IN (
  SELECT id FROM "ConsultantProfile" WHERE "userId" IN (
    SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com'
  )
);
DELETE FROM "ConsultationPlan" WHERE "consultantProfileId" IN (
  SELECT id FROM "ConsultantProfile" WHERE "userId" IN (
    SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com'
  )
);

-- Work experience + Education
DELETE FROM "WorkExperience" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com');
DELETE FROM "Education" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com');
DELETE FROM "Certification" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com');

-- Sessions + profiles + accounts for consultant
DELETE FROM "sessions" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com');
DELETE FROM "ConsultantProfile" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com');
DELETE FROM "notification_preferences" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com');
DELETE FROM "cookie_preferences" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com');
DELETE FROM "accounts" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_clife_cnt@test.com');
DELETE FROM "users" WHERE email = 'test_intg_clife_cnt@test.com';

-- Sessions + profiles + accounts for consultee
DELETE FROM "sessions" WHERE "userId" = 'test_intg_clife_cee';
DELETE FROM "ConsulteeProfile" WHERE id = 'test_intg_clife_cep';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_intg_clife_cee';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_intg_clife_cee';
DELETE FROM "accounts" WHERE "userId" = 'test_intg_clife_cee';
DELETE FROM "users" WHERE id = 'test_intg_clife_cee';

-- Domain + SubDomain
DELETE FROM "SubDomain" WHERE id = 'test_intg_clife_sub';
DELETE FROM "Domain" WHERE id = 'test_intg_clife_dom';
```
