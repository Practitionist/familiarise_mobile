# Feature: Checkout / Payments

> **What this tests:** Checkout flow with payment method selection (Razorpay/Stripe), discount code application, price summary, and payment processing.
>
> **Prerequisites:** Flutter web running at `http://localhost:<PORT>`, Supabase project accessible via MCP. Payment gateway test keys configured.

---

## 1. Configuration

```
APP_URL             = http://localhost:<PORT>
SUPABASE_PROJECT_ID = <your-project-id>
```

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create consultant with plan and a client with referral credit

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_checkout_domain', 'Technology', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;

-- Consultant
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_checkout_consultant', 'Checkout Consultant', 'test_checkout_consultant@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_checkout_cons_acc', 'test_checkout_consultant', 'test_checkout_consultant', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_checkout_cp', 'test_checkout_consultant',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY', 4.5, 80, true, 'VERIFIED', 10, 0, 0, NOW(), NOW()
);

UPDATE "User" SET "consultantProfileId" = 'test_checkout_cp' WHERE id = 'test_checkout_consultant';

INSERT INTO "ConsultationPlan" (id, title, description, price, "priceCurrency", "durationInMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_checkout_plan', 'Checkout Test Session', 'Test consultation for checkout flow.', 2999, 'INR', 60, 'test_checkout_cp', NOW(), NOW());

-- Client with referral credit
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_checkout_client', 'Checkout Client', 'test_checkout_client@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_checkout_client_acc', 'test_checkout_client', 'test_checkout_client', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());

-- Give client some referral credit
INSERT INTO "ReferralCredit" (id, "userId", amount, currency, source, "usedAmount", "remainingAmount", "expiresAt", "createdAt")
VALUES (
  'test_checkout_credit',
  'test_checkout_client',
  20000, 'INR', 'REFEREE_BONUS', 0, 20000,
  NOW() + INTERVAL '6 months',
  NOW()
);
```

---

## 3. Test Scenario 1: Checkout Screen Elements (Chrome DevTools MCP)

### 3.1 Navigate to checkout

The checkout screen is typically reached via the booking flow. For direct testing, you can navigate through the booking flow:

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_checkout_client@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"
```

Navigate to explore, find the consultant, book a plan, and reach checkout.

### 3.2 Verify checkout screen elements

The checkout screen should show:

**Booking Summary Card:**
- Consultant avatar + name: **"Checkout Consultant"**
- Badge: **"CONSULTATION"**
- Plan title: **"Checkout Test Session"**
- Date and time (if applicable)

**Discount Code Section:**
- Text field: **"Enter discount code"**
- Button: **"Apply"**

**Payment Method Selector:**
- **Razorpay**: "UPI, Cards, Netbanking, Wallets" (for INR)
- **Stripe**: "Credit/Debit Cards" (all currencies)
- Radio button selection

**Price Summary:**
- Original price
- Discount (if applied)
- Final total

**Bottom Bar:**
- Button: **"Proceed to Payment"** with final price

```
take_snapshot
take_screenshot  -- checkout screen
```

### 3.3 Apply a discount code

```
fill → uid: [Enter discount code field], value: "TESTCODE"
click → uid: [Apply button]
take_snapshot
-- Verify: either success message (green) or error message (red) appears
```

### 3.4 Select payment method

```
click → uid: [Razorpay radio button]
take_snapshot
-- Verify: Razorpay option is selected (highlighted)

click → uid: [Stripe radio button]
take_snapshot
-- Verify: Stripe option is selected (highlighted)
```

---

## 4. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

DELETE FROM "ReferralCredit" WHERE id = 'test_checkout_credit';
DELETE FROM "ConsultationPlan" WHERE id = 'test_checkout_plan';
UPDATE "User" SET "consultantProfileId" = NULL WHERE id = 'test_checkout_consultant';
DELETE FROM "ConsultantProfile" WHERE id = 'test_checkout_cp';
DELETE FROM "sessions" WHERE "userId" IN ('test_checkout_consultant', 'test_checkout_client');
DELETE FROM "accounts" WHERE "userId" IN ('test_checkout_consultant', 'test_checkout_client');
DELETE FROM "User" WHERE id IN ('test_checkout_consultant', 'test_checkout_client');
DELETE FROM "Domain" WHERE id = 'test_checkout_domain';
```

---

## 5. Checklist

- [ ] Checkout screen shows booking summary with consultant and plan info
- [ ] Discount code field accepts input with "Apply" button
- [ ] Payment method selector shows Razorpay and Stripe options
- [ ] Radio buttons toggle between payment methods
- [ ] Price summary shows original and final price
- [ ] "Proceed to Payment" button visible at bottom
- [ ] Test data cleaned up
