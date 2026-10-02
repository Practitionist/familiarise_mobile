# Integration Test: Edge Cases & Regression

> **Journey:** Error handling, validation, role-based access, duplicate prevention, empty states
> **Covers:** Auth errors, validation, route guards, duplicate trials, discount code edge cases, empty states
> **APP_URL:** http://localhost:3000

---

## Data Seeding

```sql
-- Consultee user (for general auth + role-based access tests)
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_intg_edge_cee', 'Edge Consultee', 'test_intg_edge_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_intg_edge_a_cee', 'test_intg_edge_cee', 'test_intg_edge_cee', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_intg_edge_cep', 'test_intg_edge_cee', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_intg_edge_cep' WHERE id = 'test_intg_edge_cee';

-- Staff user (for role-based access tests)
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_intg_edge_staff', 'Edge Staff', 'test_intg_edge_staff@test.com', true, 'STAFF', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_intg_edge_a_staff', 'test_intg_edge_staff', 'test_intg_edge_staff', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "StaffProfile" (id, "userId", department, position, "createdAt", "updatedAt")
VALUES ('test_intg_edge_sp', 'test_intg_edge_staff', 'Support', 'Agent', NOW(), NOW());
UPDATE "users" SET "staffProfileId" = 'test_intg_edge_sp' WHERE id = 'test_intg_edge_staff';

-- Consultant with subscription plan (for trial duplicate test)
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_intg_edge_cnt', 'Edge Consultant', 'test_intg_edge_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_intg_edge_a_cnt', 'test_intg_edge_cnt', 'test_intg_edge_cnt', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_intg_edge_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_intg_edge_cp', 'test_intg_edge_cnt', 'test_intg_edge_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_intg_edge_cp' WHERE id = 'test_intg_edge_cnt';

-- Subscription plan with free trial
INSERT INTO "SubscriptionPlan" (id, title, description, "durationInMonths", price, "callsPerWeek", "sessionDurationInHours", "freeTrialEnabled", "freeTrialDurationMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_intg_edge_sp1', 'Edge Subscription Plan', 'Plan for duplicate trial test', 1, 200000, 1, 1, true, 30, 'test_intg_edge_cp', NOW(), NOW());

-- Existing trial session (for duplicate detection)
INSERT INTO "TrialSession" (id, status, notes, "consultantProfileId", "consulteeProfileId", "subscriptionPlanId", "createdAt", "updatedAt")
VALUES ('test_intg_edge_ts', 'PENDING', 'First trial request', 'test_intg_edge_cp', 'test_intg_edge_cep', 'test_intg_edge_sp1', NOW(), NOW());

-- Expired discount code
INSERT INTO "DiscountCode" (id, code, description, "discountType", "discountValue", "isActive", "expiresAt", "maxUses", "currentUses", "createdAt", "updatedAt")
VALUES ('test_intg_edge_dc_exp', 'EXPIREDCODE10', 'Expired 10% off', 'PERCENTAGE', 10, true, NOW() - INTERVAL '1 day', 10, 0, NOW(), NOW());

-- Valid discount code (for "not found" test we use a non-existent code, not this one)
INSERT INTO "DiscountCode" (id, code, description, "discountType", "discountValue", "isActive", "expiresAt", "maxUses", "currentUses", "createdAt", "updatedAt")
VALUES ('test_intg_edge_dc_val', 'VALIDCODE20', 'Valid 20% off', 'PERCENTAGE', 20, true, NOW() + INTERVAL '30 days', 10, 0, NOW(), NOW());

-- Consultation in APPROVED_PENDING_PAYMENT for checkout discount tests
INSERT INTO "ConsultationPlan" (id, title, description, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_intg_edge_plan', 'Edge Test Plan', '1-hour session', 1, 50000, 'test_intg_edge_cp', NOW(), NOW());

INSERT INTO "Consultation" (id, "consultationPlanId", "requestStatus", "requestedById", "requestedAt", "createdAt", "updatedAt")
VALUES ('test_intg_edge_con', 'test_intg_edge_plan', 'APPROVED_PENDING_PAYMENT', 'test_intg_edge_cep', NOW(), NOW(), NOW());

INSERT INTO "Appointment" (id, "appointmentType", "consultationId", "createdAt", "updatedAt")
VALUES ('test_intg_edge_apt', 'CONSULTATION', 'test_intg_edge_con', NOW(), NOW());

-- Cookie + notification prefs
INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_intg_edge_ck_cee', 'test_intg_edge_cee', true, NOW(), NOW()),
  ('test_intg_edge_ck_cnt', 'test_intg_edge_cnt', true, NOW(), NOW()),
  ('test_intg_edge_ck_staff', 'test_intg_edge_staff', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES
  ('test_intg_edge_np_cee', 'test_intg_edge_cee'),
  ('test_intg_edge_np_cnt', 'test_intg_edge_cnt'),
  ('test_intg_edge_np_staff', 'test_intg_edge_staff');
```

---

## Category 1: Authentication Errors

### 1.1 Sign In with Non-Existent Email
```
navigate_page -> url: http://localhost:3000/auth/sign-in
wait_for -> text: "Sign In"
take_snapshot
fill -> uid: [Email], value: "nonexistent_user_xyz@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign In button]
wait_for -> timeout: 5000
take_snapshot
take_screenshot
```
**Expected:** Error message visible (e.g., "Invalid credentials", "User not found", or similar).

### 1.2 Sign Up with Password Too Short (< 8 chars)
```
navigate_page -> url: http://localhost:3000/auth/sign-up
wait_for -> text: "Create" OR text: "Sign Up"
take_snapshot
fill -> uid: [Name], value: "Short Pass User"
fill -> uid: [Email], value: "test_intg_edge_short@test.com"
fill -> uid: [Password], value: "Ab1"
click -> uid: [Sign Up button]
wait_for -> timeout: 5000
take_snapshot
take_screenshot
```
**Expected:** Validation error about password length (minimum 8 characters).

---

## Category 2: Route Guards -- Unauthenticated Access

### 2.1 Access /dashboard Without Signing In
Clear session first (sign out or use incognito):
```
navigate_page -> url: http://localhost:3000/auth/sign-in
take_snapshot
-- If currently signed in, sign out first
navigate_page -> url: http://localhost:3000/dashboard
wait_for -> timeout: 5000
take_snapshot
take_screenshot
```
**Expected:** Redirected to `/auth` or `/auth/sign-in`. Dashboard should NOT be accessible.

---

## Category 3: Role-Based Access Control

### 3.1 Access /staff as Consultee
Sign in as consultee:
```
navigate_page -> url: http://localhost:3000/auth/sign-in
fill -> uid: [Email], value: "test_intg_edge_cee@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign In button]
wait_for -> text: "Dashboard" OR url_contains: "/dashboard" OR url_contains: "/explore"

navigate_page -> url: http://localhost:3000/staff
wait_for -> timeout: 5000
take_snapshot
take_screenshot
```
**Expected:** Access denied -- redirected away from /staff, or "Unauthorized" / "Access Denied" message shown. Consultee should NOT see staff dashboard.

### 3.2 Access /payout-accounts as Consultee
```
navigate_page -> url: http://localhost:3000/payout-accounts
wait_for -> timeout: 5000
take_snapshot
take_screenshot
```
**Expected:** Access denied or redirected. Payout accounts are consultant-only.

---

## Category 4: Duplicate Trial Request

### 4.1 Request Trial for Same Consultant Twice
Still signed in as consultee:
```
fetch('/api/trials', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    consultantProfileId: 'test_intg_edge_cp',
    subscriptionPlanId: 'test_intg_edge_sp1',
    notes: 'Second attempt -- should fail'
  })
}).then(r => r.json())
```
**Expected:** Error response indicating conflict -- one trial per consultant per consultee. HTTP 409 or similar error with message about existing trial.

### 4.2 Check Eligibility Returns Ineligible
```
fetch('/api/trials/check-eligibility?consultantProfileId=test_intg_edge_cp&subscriptionPlanId=test_intg_edge_sp1', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Response indicates NOT eligible (existing trial with this consultant).

---

## Category 5: Discount Code Edge Cases

### 5.1 Apply Expired Discount Code
```
navigate_page -> url: http://localhost:3000/checkout?appointmentId=test_intg_edge_apt
wait_for -> text: "Checkout" OR text: "Payment"
take_snapshot
fill -> uid: [Discount Code] OR uid: [Promo Code], value: "EXPIREDCODE10"
click -> uid: [Apply]
wait_for -> timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** Error message indicating discount code is expired (e.g., "This code has expired", "Code is no longer valid").

### 5.2 Apply Invalid (Non-Existent) Discount Code
```
navigate_page -> url: http://localhost:3000/checkout?appointmentId=test_intg_edge_apt
wait_for -> text: "Checkout" OR text: "Payment"
take_snapshot
fill -> uid: [Discount Code] OR uid: [Promo Code], value: "DOESNOTEXIST999"
click -> uid: [Apply]
wait_for -> timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** Error message indicating code not found (e.g., "Invalid discount code", "Code not found").

### 5.3 Apply Valid Discount Code (Positive Control)
```
navigate_page -> url: http://localhost:3000/checkout?appointmentId=test_intg_edge_apt
wait_for -> text: "Checkout" OR text: "Payment"
fill -> uid: [Discount Code] OR uid: [Promo Code], value: "VALIDCODE20"
click -> uid: [Apply]
wait_for -> timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** Discount applied successfully. Price reduced by 20%.

---

## Category 6: Validation -- Empty Form Submissions

### 6.1 Submit Empty Support Ticket
```
navigate_page -> url: http://localhost:3000/support/create
wait_for -> text: "Create" OR text: "New Ticket"
take_snapshot
click -> uid: [Submit / Create]
wait_for -> timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** Validation errors for required fields (title, description). Ticket should NOT be created.

**Verify:**
```sql
SELECT count(*) FROM "support_tickets"
WHERE "userId" = 'test_intg_edge_cee' AND title = '';
```
**Expected:** count = 0.

### 6.2 Submit Empty Feedback
```
navigate_page -> url: http://localhost:3000/feedback
wait_for -> text: "Feedback" OR text: "Share"
take_snapshot
click -> uid: [Submit]
wait_for -> timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** Validation errors for required fields (title, description). Feedback should NOT be created.

---

## Category 7: Non-Existent Route

### 7.1 Navigate to Non-Existent Route
```
navigate_page -> url: http://localhost:3000/this-page-does-not-exist-12345
wait_for -> timeout: 5000
take_snapshot
take_screenshot
```
**Expected:** 404 page shown, or redirect to home/explore/dashboard. Should NOT show a blank page or crash.

---

## Category 8: Empty State Screens

### 8.1 /my-bookings with No Bookings
Create a fresh consultee with no bookings to test empty state. Use the existing consultee (clear any bookings first or check if they have none on this route):
```
navigate_page -> url: http://localhost:3000/my-bookings
wait_for -> text: "Bookings" OR text: "My Bookings"
take_snapshot
take_screenshot
```
**Expected:** Empty state message (e.g., "No bookings yet", "You have no bookings"). No crash or blank screen.

### 8.2 /trials with No Trials (as Consultant)
Sign in as consultant (who has no received trials as a consultee):
```
navigate_page -> url: http://localhost:3000/auth/sign-in
fill -> uid: [Email], value: "test_intg_edge_cnt@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign In button]
wait_for -> text: "Dashboard" OR url_contains: "/dashboard"

navigate_page -> url: http://localhost:3000/trials
wait_for -> text: "Trials" OR text: "Trial"
take_snapshot
take_screenshot
```
**Expected:** Trials page loads with the pending trial from the consultee (seeded data). If viewing as consultant, should show incoming trial requests.

### 8.3 /waitlist with No Entries
Sign in as consultee:
```
navigate_page -> url: http://localhost:3000/auth/sign-in
fill -> uid: [Email], value: "test_intg_edge_cee@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign In button]
wait_for -> text: "Dashboard" OR url_contains: "/dashboard" OR url_contains: "/explore"

navigate_page -> url: http://localhost:3000/waitlist
wait_for -> text: "Waitlist" OR text: "Waiting"
take_snapshot
take_screenshot
```
**Expected:** Empty state message (e.g., "No waitlist entries", "You're not on any waitlists").

### 8.4 /payout-accounts with No Accounts (as Consultant)
Sign in as consultant:
```
navigate_page -> url: http://localhost:3000/auth/sign-in
fill -> uid: [Email], value: "test_intg_edge_cnt@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign In button]
wait_for -> text: "Dashboard" OR url_contains: "/dashboard"

navigate_page -> url: http://localhost:3000/payout-accounts
wait_for -> text: "Payout" OR text: "Accounts"
take_snapshot
take_screenshot
```
**Expected:** Empty state -- "No payout accounts" or similar message.

---

## Final DB Verification -- No Unintended Data Created

```sql
-- Verify no user was created from the short-password signup
SELECT count(*) FROM "users" WHERE email = 'test_intg_edge_short@test.com';
-- Expected: 0

-- Verify the trial session count has not increased (duplicate was rejected)
SELECT count(*) FROM "TrialSession"
WHERE "consultantProfileId" = 'test_intg_edge_cp' AND "consulteeProfileId" = 'test_intg_edge_cep';
-- Expected: 1 (only the seeded one)

-- Verify no empty tickets/feedbacks were created
SELECT count(*) FROM "support_tickets" WHERE "userId" = 'test_intg_edge_cee';
-- Expected: 0 (empty submission should have been rejected)

SELECT count(*) FROM "feedbacks" WHERE "userId" = 'test_intg_edge_cee';
-- Expected: 0 (empty submission should have been rejected)
```

---

## Cleanup

```sql
-- Payment (if checkout attempts created any)
DELETE FROM "Payment" WHERE "appointmentId" = 'test_intg_edge_apt';

-- Booking chain
DELETE FROM "SlotOfAppointment" WHERE "appointmentId" = 'test_intg_edge_apt';
DELETE FROM "Appointment" WHERE id = 'test_intg_edge_apt';
DELETE FROM "Consultation" WHERE id = 'test_intg_edge_con';
DELETE FROM "ConsultationPlan" WHERE id = 'test_intg_edge_plan';

-- Trial session
DELETE FROM "TrialSession" WHERE id = 'test_intg_edge_ts';

-- Discount codes
DELETE FROM "DiscountCode" WHERE id IN ('test_intg_edge_dc_exp', 'test_intg_edge_dc_val');

-- Subscription plan
DELETE FROM "SubscriptionPlan" WHERE id = 'test_intg_edge_sp1';

-- Support (if any were accidentally created)
DELETE FROM "SupportResponse" WHERE "supportTicketId" IN (
  SELECT id FROM "support_tickets" WHERE "userId" = 'test_intg_edge_cee'
);
DELETE FROM "SupportTicketAttachment" WHERE "ticketId" IN (
  SELECT id FROM "support_tickets" WHERE "userId" = 'test_intg_edge_cee'
);
DELETE FROM "support_tickets" WHERE "userId" = 'test_intg_edge_cee';

-- Feedback (if any were accidentally created)
DELETE FROM "feedbacks" WHERE "userId" = 'test_intg_edge_cee';

-- Sessions
DELETE FROM "sessions" WHERE "userId" IN ('test_intg_edge_cee', 'test_intg_edge_cnt', 'test_intg_edge_staff');

-- Profiles
DELETE FROM "ConsulteeProfile" WHERE id = 'test_intg_edge_cep';
DELETE FROM "ConsultantProfile" WHERE id = 'test_intg_edge_cp';
DELETE FROM "StaffProfile" WHERE id = 'test_intg_edge_sp';

-- Prefs
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_intg_edge_cee', 'test_intg_edge_cnt', 'test_intg_edge_staff');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_intg_edge_cee', 'test_intg_edge_cnt', 'test_intg_edge_staff');

-- Accounts + users
DELETE FROM "accounts" WHERE "userId" IN ('test_intg_edge_cee', 'test_intg_edge_cnt', 'test_intg_edge_staff');
DELETE FROM "users" WHERE id IN ('test_intg_edge_cee', 'test_intg_edge_cnt', 'test_intg_edge_staff');

-- Cleanup user created by short-password test (just in case)
DELETE FROM "sessions" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_edge_short@test.com');
DELETE FROM "accounts" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_edge_short@test.com');
DELETE FROM "users" WHERE email = 'test_intg_edge_short@test.com';

-- Domain
DELETE FROM "Domain" WHERE id = 'test_intg_edge_dom';
```
