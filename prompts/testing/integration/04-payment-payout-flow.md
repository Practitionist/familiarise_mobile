# Integration Test: Payment & Payout Flow

> **Journey:** Money flow end-to-end -- consultee books & pays (with discount), consultant views earnings & sets up payouts
> **Flow:** (Consultee) Book -> checkout -> apply discount -> attempt payment -> (mock payment) -> (Consultant) dashboard -> earnings -> payout accounts -> bank -> tax -> invoice
> **APP_URL:** http://localhost:3000

---

## Data Seeding

```sql
-- Consultant (verified, with plan + slots)
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_intg_pay_cnt', 'Payment Consultant', 'test_intg_pay_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_intg_pay_a_cnt', 'test_intg_pay_cnt', 'test_intg_pay_cnt', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_intg_pay_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "totalRevenue", "pendingRevenue", rating, "createdAt", "updatedAt")
VALUES ('test_intg_pay_cp', 'test_intg_pay_cnt', 'test_intg_pay_dom', 'WEEKLY', true, 'VERIFIED', 0, 0, 4.5, NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_intg_pay_cp' WHERE id = 'test_intg_pay_cnt';

-- Consultee
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_intg_pay_cee', 'Payment Consultee', 'test_intg_pay_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_intg_pay_a_cee', 'test_intg_pay_cee', 'test_intg_pay_cee', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_intg_pay_cep', 'test_intg_pay_cee', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_intg_pay_cep' WHERE id = 'test_intg_pay_cee';

-- Consultation plan
INSERT INTO "ConsultationPlan" (id, title, description, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_intg_pay_plan', 'Payment Test Plan', '1-hour premium consultation', 1, 100000, 'test_intg_pay_cp', NOW(), NOW());

-- Weekly availability slot
INSERT INTO "SlotOfAvailabilityWeekly" (id, "startDay", "startTimeUtc", "endDay", "endTimeUtc", "utcOffsetMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_intg_pay_slot', 'TUESDAY', 600, 'TUESDAY', 660, 330, 'test_intg_pay_cp', NOW(), NOW());

-- Discount code: 20% off, code "INTGTEST20"
INSERT INTO "DiscountCode" (id, code, description, "discountType", "discountValue", "isActive", "expiresAt", "maxUses", "currentUses", "createdAt", "updatedAt")
VALUES ('test_intg_pay_dc', 'INTGTEST20', 'Integration test 20% off', 'PERCENTAGE', 20, true, NOW() + INTERVAL '30 days', 10, 0, NOW(), NOW());

-- Cookie + notification prefs
INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_intg_pay_ck_cnt', 'test_intg_pay_cnt', true, NOW(), NOW()),
  ('test_intg_pay_ck_cee', 'test_intg_pay_cee', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES
  ('test_intg_pay_np_cnt', 'test_intg_pay_cnt'),
  ('test_intg_pay_np_cee', 'test_intg_pay_cee');
```

---

## Phase 1: Consultee Books a Consultation

### 1.1 Sign In as Consultee
```
navigate_page -> url: http://localhost:3000/auth/sign-in
wait_for -> text: "Sign In"
take_snapshot
fill -> uid: [Email], value: "test_intg_pay_cee@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign In button]
wait_for -> text: "Dashboard" OR url_contains: "/dashboard" OR url_contains: "/explore"
take_screenshot
```

### 1.2 Navigate to Booking Page
```
navigate_page -> url: http://localhost:3000/booking/test_intg_pay_cp/test_intg_pay_plan
wait_for -> text: "Payment Test Plan" OR text: "Book"
take_snapshot
take_screenshot
```
**Expected:** Plan details visible showing price 1,000 INR (100000 paise).

### 1.3 Select Slot and Submit Booking
```
click -> uid: [Tuesday slot] OR click -> uid: [10:00]
wait_for -> timeout: 3000
fill -> uid: [Notes], value: "Premium consultation booking"
click -> uid: [Request / Book / Submit]
wait_for -> timeout: 5000
take_screenshot
```

### 1.4 Verify Booking Created
```sql
SELECT id, "requestStatus" FROM "Consultation"
WHERE "consultationPlanId" = 'test_intg_pay_plan' AND "requestedById" = 'test_intg_pay_cep';
```
**Expected:** Consultation with requestStatus = 'PENDING'. Save the consultation ID.

---

## Phase 2: Simulate Consultant Approval + Checkout

Simulate consultant approving the booking:
```sql
UPDATE "Consultation" SET "requestStatus" = 'APPROVED_PENDING_PAYMENT'
WHERE "consultationPlanId" = 'test_intg_pay_plan' AND "requestedById" = 'test_intg_pay_cep';

-- Create appointment
INSERT INTO "Appointment" (id, "appointmentType", "consultationId", "createdAt", "updatedAt")
SELECT 'test_intg_pay_apt', 'CONSULTATION', id, NOW(), NOW()
FROM "Consultation" WHERE "consultationPlanId" = 'test_intg_pay_plan' AND "requestedById" = 'test_intg_pay_cep' LIMIT 1;
```

### 2.1 Navigate to Checkout
```
navigate_page -> url: http://localhost:3000/checkout?appointmentId=test_intg_pay_apt
wait_for -> text: "Checkout" OR text: "Payment" OR text: "Pay"
take_snapshot
take_screenshot
```
**Expected:** Checkout page with plan name "Payment Test Plan" and original price 1,000 INR.

### 2.2 Apply Discount Code "INTGTEST20"
```
fill -> uid: [Discount Code] OR uid: [Promo Code], value: "INTGTEST20"
click -> uid: [Apply]
wait_for -> timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** 20% discount applied. Discounted price = 800 INR (from 1,000 INR). Discount amount shown as 200 INR.

### 2.3 Verify Discounted Price Display
```
take_snapshot
```
**Expected:** The checkout summary should show:
- Original price: 1,000 INR
- Discount (INTGTEST20): -200 INR
- Total: 800 INR (plus tax if applicable)

### 2.4 Attempt Payment (Proceed to Gateway)
```
click -> uid: [Pay Now] OR uid: [Proceed to Payment]
wait_for -> timeout: 10000
take_screenshot
```
**Expected:** Redirects to payment gateway (Razorpay/Stripe). Do NOT complete payment -- just verify the redirect or checkout session initiation.

### 2.5 Verify Checkout Session in DB (if applicable)
```sql
SELECT id, amount, "paymentStatus", "discountCodeId"
FROM "Payment" WHERE "appointmentId" = 'test_intg_pay_apt';
```
**Expected:** Payment record created (may be PENDING status). If discount was applied, discountCodeId should reference 'test_intg_pay_dc'.

---

## Phase 3: Mock Successful Payment

Since the payment gateway cannot complete in test, seed the payment records directly:

```sql
-- Insert mock payment record
INSERT INTO "Payment" (id, amount, "originalAmount", "taxAmount", currency, "paymentMethod", "paymentIntent", "paymentGateway", "paymentStatus", "isMockPayment", "userId", "appointmentId", "discountCodeId", "createdAt", "updatedAt")
VALUES (
  'test_intg_pay_pmt',
  80000,          -- 800 INR after 20% discount (in paise)
  100000,         -- original 1000 INR (in paise)
  0,              -- no tax for simplicity
  'INR',
  'card',
  'test_intg_pay_pi_mock',
  'RAZORPAY',
  'SUCCEEDED',
  true,
  'test_intg_pay_cee',
  'test_intg_pay_apt',
  'test_intg_pay_dc',
  NOW(),
  NOW()
) ON CONFLICT ("paymentIntent") DO NOTHING;

-- Update consultation to SCHEDULED
UPDATE "Consultation" SET "requestStatus" = 'SCHEDULED'
WHERE "consultationPlanId" = 'test_intg_pay_plan' AND "requestedById" = 'test_intg_pay_cep';

-- Update discount code usage
UPDATE "DiscountCode" SET "currentUses" = "currentUses" + 1 WHERE id = 'test_intg_pay_dc';

-- Create consultant earnings
INSERT INTO "ConsultantEarnings" (id, "consultantProfileId", "paymentId", "grossAmount", "platformFee", "consultantShare", role, "sharePercentage", status, "holdUntil", currency, "createdAt", "updatedAt")
VALUES (
  'test_intg_pay_earn',
  'test_intg_pay_cp',
  'test_intg_pay_pmt',
  80000,      -- gross (after discount)
  16000,      -- 20% platform fee
  64000,      -- 80% consultant share
  'OWNER',
  100,
  'PENDING',
  NOW() + INTERVAL '7 days',
  'INR',
  NOW(),
  NOW()
);

-- Update consultant revenue stats
UPDATE "ConsultantProfile"
SET "totalRevenue" = 64000, "pendingRevenue" = 64000
WHERE id = 'test_intg_pay_cp';

-- Create invoice
INSERT INTO "Invoice" (id, "paymentId", "invoiceNumber", amount, currency, status, items, "taxAmount", "taxRate", "hsnCode", "paidAt", "createdAt", "updatedAt")
VALUES (
  'test_intg_pay_inv',
  'test_intg_pay_pmt',
  'INV-202603-00001',
  80000,
  'INR',
  'SUCCEEDED',
  '[{"description": "Payment Test Plan - 1 hour consultation", "amount": 80000, "hsnCode": "999293"}]'::jsonb,
  0,
  18.0,
  '999293',
  NOW(),
  NOW(),
  NOW()
);
```

---

## Phase 4: Consultant -- View Dashboard & Earnings

### 4.1 Sign In as Consultant
```
navigate_page -> url: http://localhost:3000/auth/sign-in
wait_for -> text: "Sign In"
take_snapshot
fill -> uid: [Email], value: "test_intg_pay_cnt@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign In button]
wait_for -> text: "Dashboard" OR url_contains: "/dashboard"
take_screenshot
```

### 4.2 View Dashboard with Earnings
```
navigate_page -> url: http://localhost:3000/dashboard
wait_for -> text: "Dashboard" OR text: "Earnings" OR text: "Stats"
take_snapshot
take_screenshot
```
**Expected:** Dashboard shows:
- Total Revenue: 640 INR (64000 paise)
- Pending Revenue: 640 INR
- Rating: 4.5

---

## Phase 5: Payout Accounts

### 5.1 View Payout Accounts (Empty)
```
navigate_page -> url: http://localhost:3000/payout-accounts
wait_for -> text: "Payout" OR text: "Accounts"
take_snapshot
take_screenshot
```
**Expected:** Empty state -- no payout accounts.

### 5.2 Add Bank Account
```
navigate_page -> url: http://localhost:3000/payout-accounts/add
wait_for -> text: "Add" OR text: "Bank"
take_snapshot
fill -> uid: [Account Holder Name], value: "Payment Consultant"
fill -> uid: [Bank Name], value: "HDFC Bank"
fill -> uid: [Account Number], value: "50100123456789"
fill -> uid: [IFSC Code], value: "HDFC0001234"
click -> uid: [Save / Submit / Add]
wait_for -> timeout: 5000
take_screenshot
```

### 5.3 Verify Bank Account Created
```sql
SELECT id, "accountType", "bankName", "accountNumberLast4", "ifscCode", "isDefault"
FROM "PayoutAccount" WHERE "consultantProfileId" = 'test_intg_pay_cp';
```
**Expected:** accountType = 'BANK_ACCOUNT', bankName = 'HDFC Bank', accountNumberLast4 = '6789'.

### 5.4 Set as Default
```
navigate_page -> url: http://localhost:3000/payout-accounts
take_snapshot
click -> uid: [Set Default]
wait_for -> timeout: 5000
take_screenshot
```

### 5.5 Verify Default Status
```sql
SELECT "isDefault" FROM "PayoutAccount" WHERE "consultantProfileId" = 'test_intg_pay_cp';
```
**Expected:** isDefault = true.

---

## Phase 6: Tax Info

### 6.1 View Tax Info (Empty)
```
navigate_page -> url: http://localhost:3000/tax-info
wait_for -> text: "Tax" OR text: "PAN"
take_snapshot
take_screenshot
```
**Expected:** Empty tax info form.

### 6.2 Add PAN
```
fill -> uid: [PAN], value: "GHIJK5678L"
click -> uid: [Save / Submit]
wait_for -> timeout: 5000
take_screenshot
```

### 6.3 Verify PAN Saved
```sql
SELECT "panLast4", "panVerified" FROM "ConsultantTaxInfo"
WHERE "consultantProfileId" = 'test_intg_pay_cp';
```
**Expected:** panLast4 = '678L'.

---

## Phase 7: Invoice Verification (via API)

### 7.1 View Invoice via API
```
fetch('/api/invoices?paymentId=test_intg_pay_pmt', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Invoice with invoiceNumber = 'INV-202603-00001', amount = 80000, status = 'SUCCEEDED'.

**Alternative -- if invoices are listed on a page:**
```
navigate_page -> url: http://localhost:3000/invoices
wait_for -> text: "Invoice" OR text: "INV-"
take_snapshot
take_screenshot
```

---

## Final Verification -- Complete Payment Flow State

```sql
-- Verify the full money flow
SELECT
  p.id AS payment_id, p.amount AS paid_amount, p."originalAmount", p."paymentStatus", p."isMockPayment",
  dc.code AS discount_code, dc."currentUses",
  ce."grossAmount", ce."platformFee", ce."consultantShare", ce.status AS earning_status,
  inv."invoiceNumber", inv.amount AS invoice_amount,
  pa."bankName", pa."isDefault" AS payout_default,
  ti."panLast4"
FROM "Payment" p
LEFT JOIN "DiscountCode" dc ON dc.id = p."discountCodeId"
LEFT JOIN "ConsultantEarnings" ce ON ce."paymentId" = p.id
LEFT JOIN "Invoice" inv ON inv."paymentId" = p.id
LEFT JOIN "PayoutAccount" pa ON pa."consultantProfileId" = 'test_intg_pay_cp'
LEFT JOIN "ConsultantTaxInfo" ti ON ti."consultantProfileId" = 'test_intg_pay_cp'
WHERE p.id = 'test_intg_pay_pmt';
```
**Expected:**
- paid_amount = 80000, originalAmount = 100000, paymentStatus = 'SUCCEEDED'
- discount_code = 'INTGTEST20', currentUses >= 1
- consultantShare = 64000, earning_status = 'PENDING'
- invoiceNumber = 'INV-202603-00001'
- bankName = 'HDFC Bank', payout_default = true
- panLast4 = '678L'

---

## Cleanup

```sql
-- Invoice
DELETE FROM "Invoice" WHERE id = 'test_intg_pay_inv';

-- Earnings
DELETE FROM "ConsultantEarnings" WHERE id = 'test_intg_pay_earn';

-- Payment
DELETE FROM "Payment" WHERE id = 'test_intg_pay_pmt';

-- Tax
DELETE FROM "ConsultantTaxInfo" WHERE "consultantProfileId" = 'test_intg_pay_cp';

-- Payout accounts
DELETE FROM "PayoutAccount" WHERE "consultantProfileId" = 'test_intg_pay_cp';

-- Booking chain
DELETE FROM "SlotOfAppointment" WHERE "appointmentId" = 'test_intg_pay_apt';
DELETE FROM "Appointment" WHERE id = 'test_intg_pay_apt';
DELETE FROM "Consultation" WHERE "consultationPlanId" = 'test_intg_pay_plan';

-- Discount code
DELETE FROM "DiscountCode" WHERE id = 'test_intg_pay_dc';

-- Slots + plans
DELETE FROM "SlotOfAvailabilityWeekly" WHERE id = 'test_intg_pay_slot';
DELETE FROM "ConsultationPlan" WHERE id = 'test_intg_pay_plan';

-- Sessions
DELETE FROM "sessions" WHERE "userId" IN ('test_intg_pay_cnt', 'test_intg_pay_cee');

-- Profiles
DELETE FROM "ConsulteeProfile" WHERE id = 'test_intg_pay_cep';
DELETE FROM "ConsultantProfile" WHERE id = 'test_intg_pay_cp';

-- Prefs
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_intg_pay_cnt', 'test_intg_pay_cee');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_intg_pay_cnt', 'test_intg_pay_cee');

-- Accounts + users
DELETE FROM "accounts" WHERE "userId" IN ('test_intg_pay_cnt', 'test_intg_pay_cee');
DELETE FROM "users" WHERE id IN ('test_intg_pay_cnt', 'test_intg_pay_cee');

-- Domain
DELETE FROM "Domain" WHERE id = 'test_intg_pay_dom';
```
