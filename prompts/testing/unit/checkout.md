# Unit Test: Checkout

> **Feature:** Checkout screen states, price display. Payment gateway will not complete in Chrome -- test up to gateway redirect.
> **Route:** `/checkout`
> **Backend:** `/api/checkout/*`

---

## Data Seeding

```sql
-- Consultant + consultee + booking in APPROVED_PENDING_PAYMENT state
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_checkout_u1', 'Checkout Consultant', 'test_unit_checkout_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_checkout_u2', 'Checkout Consultee', 'test_unit_checkout_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_checkout_a1', 'test_unit_checkout_u1', 'test_unit_checkout_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_checkout_a2', 'test_unit_checkout_u2', 'test_unit_checkout_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_checkout_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_checkout_cp1', 'test_unit_checkout_u1', 'test_unit_checkout_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_checkout_cp1' WHERE id = 'test_unit_checkout_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_checkout_cep1', 'test_unit_checkout_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_checkout_cep1' WHERE id = 'test_unit_checkout_u2';

-- Consultation plan
INSERT INTO "ConsultationPlan" (id, title, description, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_checkout_plan1', 'Checkout Test Plan', '1-hour session', 1, 75000, 'test_unit_checkout_cp1', NOW(), NOW());

-- Consultation in APPROVED_PENDING_PAYMENT status
INSERT INTO "Consultation" (id, "consultationPlanId", "requestStatus", "requestedById", "requestedAt", "createdAt", "updatedAt")
VALUES ('test_unit_checkout_con1', 'test_unit_checkout_plan1', 'APPROVED_PENDING_PAYMENT', 'test_unit_checkout_cep1', NOW(), NOW(), NOW());

-- Appointment for the consultation
INSERT INTO "Appointment" (id, "appointmentType", "consultationId", "createdAt", "updatedAt")
VALUES ('test_unit_checkout_apt1', 'CONSULTATION', 'test_unit_checkout_con1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_checkout_ck1', 'test_unit_checkout_u1', true, NOW(), NOW()),
  ('test_unit_checkout_ck2', 'test_unit_checkout_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_checkout_np1', 'test_unit_checkout_u1'), ('test_unit_checkout_np2', 'test_unit_checkout_u2');
```

---

## Scenarios

Sign in as `test_unit_checkout_cee@test.com` / `TestPassword123`.

### 1. View Checkout Page
```
navigate_page → url: http://localhost:3000/checkout?appointmentId=test_unit_checkout_apt1
wait_for → text: "Checkout" OR text: "Payment" OR text: "Pay"
take_snapshot
take_screenshot
```
**Expected:** Checkout page displays with plan name, price, and payment options.

### 2. Verify Price Display
```
take_snapshot
```
**Expected:** Price shows 750 (75000 paise = 750 INR) or appropriate formatted amount.

### 3. Check Discount Code Input
```
-- Look for discount code field
take_snapshot
fill → uid: [Discount Code] OR uid: [Promo Code], value: "TESTCODE"
click → uid: [Apply]
wait_for → timeout: 3000
take_snapshot
```
**Expected:** Either error message (invalid code) or discount applied with updated total.

### 4. Proceed to Payment Gateway
```
click → uid: [Pay Now] OR uid: [Proceed to Payment]
wait_for → timeout: 10000
take_screenshot
```
**Expected:** Redirects to payment gateway (Razorpay/Stripe). Do NOT complete payment. Take screenshot of the gateway page to confirm redirect works.

### 5. Checkout Page — Already Paid State
Update to simulate completed payment:
```sql
UPDATE "Consultation" SET "requestStatus" = 'SCHEDULED' WHERE id = 'test_unit_checkout_con1';
```
```
navigate_page → url: http://localhost:3000/checkout?appointmentId=test_unit_checkout_apt1
take_snapshot
take_screenshot
```
**Expected:** Shows "already paid" or redirects to booking details.

---

## Cleanup

```sql
DELETE FROM "Payment" WHERE "appointmentId" = 'test_unit_checkout_apt1';
DELETE FROM "SlotOfAppointment" WHERE "appointmentId" = 'test_unit_checkout_apt1';
DELETE FROM "Appointment" WHERE id = 'test_unit_checkout_apt1';
DELETE FROM "Consultation" WHERE id = 'test_unit_checkout_con1';
DELETE FROM "ConsultationPlan" WHERE id = 'test_unit_checkout_plan1';
DELETE FROM "sessions" WHERE "userId" IN ('test_unit_checkout_u1', 'test_unit_checkout_u2');
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_checkout_cep1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_checkout_cp1';
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_unit_checkout_u1', 'test_unit_checkout_u2');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_unit_checkout_u1', 'test_unit_checkout_u2');
DELETE FROM "accounts" WHERE "userId" IN ('test_unit_checkout_u1', 'test_unit_checkout_u2');
DELETE FROM "users" WHERE id IN ('test_unit_checkout_u1', 'test_unit_checkout_u2');
DELETE FROM "Domain" WHERE id = 'test_unit_checkout_dom';
```
