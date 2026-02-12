# Feature: Subscriptions

> **What this tests:** Viewing subscription plans on consultant profiles, starting a subscription (period selection), and managing subscriptions in My Bookings.
>
> **Prerequisites:** Flutter web running at `http://localhost:<PORT>`, Supabase project accessible via MCP.

---

## 1. Configuration

```
APP_URL             = http://localhost:<PORT>
SUPABASE_PROJECT_ID = <your-project-id>
```

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create consultant with subscription plan

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_sub_domain', 'Technology', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;

INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_sub_expert', 'Subscription Expert', 'test_sub_expert@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_sub_expert_acc', 'test_sub_expert', 'test_sub_expert', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_sub_cp', 'test_sub_expert',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY', 4.6, 85, true, 'VERIFIED', 20, 0, 0, NOW(), NOW()
);

UPDATE "User" SET "consultantProfileId" = 'test_sub_cp' WHERE id = 'test_sub_expert';

-- Subscription plan
INSERT INTO "SubscriptionPlan" (
  id, title, description, price, "priceCurrency",
  "durationInMonths", "meetingsPerWeek", "sessionDurationInMinutes",
  "consultantProfileId",
  "createdAt", "updatedAt"
)
VALUES (
  'test_sub_plan_1',
  'Monthly Mentorship',
  'Weekly 1:1 mentorship sessions with ongoing support.',
  9999, 'INR',
  1, 1, 60,
  'test_sub_cp',
  NOW(), NOW()
);

-- Client user
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_sub_client', 'Sub Client', 'test_sub_client@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_sub_client_acc', 'test_sub_client', 'test_sub_client', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());
```

---

## 3. Test Scenario 1: View Subscription Plan (Chrome DevTools MCP)

### 3.1 Sign in and navigate to consultant profile

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_sub_client@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"

navigate_page → url: {APP_URL}/explore
wait_for → text: "Explore"
take_snapshot
```

### 3.2 Find and view consultant

```
click → uid: [View plans for Subscription Expert]
wait_for → text: "Subscription Expert"
take_snapshot
```

### 3.3 Verify subscription plan is shown

Look for the **"Subscription Plans"** section with:
- Plan title: **"Monthly Mentorship"**
- Price: **"₹9999"**
- Duration: 1 month
- Meetings per week: 1

```
take_screenshot  -- subscription plan on profile
```

### 3.4 Start subscription booking

```
click → uid: [Monthly Mentorship plan card or Subscribe button]
wait_for → text: "Request Subscription"
take_snapshot
```

The booking screen should show:
- Info about selecting start date
- Start date picker
- Auto-calculated end date
- Message input
- **"Request Subscription"** button

```
take_screenshot  -- subscription booking screen
```

---

## 4. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

DELETE FROM "SubscriptionPlan" WHERE id = 'test_sub_plan_1';
UPDATE "User" SET "consultantProfileId" = NULL WHERE id = 'test_sub_expert';
DELETE FROM "ConsultantProfile" WHERE id = 'test_sub_cp';
DELETE FROM "sessions" WHERE "userId" IN ('test_sub_expert', 'test_sub_client');
DELETE FROM "accounts" WHERE "userId" IN ('test_sub_expert', 'test_sub_client');
DELETE FROM "User" WHERE id IN ('test_sub_expert', 'test_sub_client');
DELETE FROM "Domain" WHERE id = 'test_sub_domain';
```

---

## 5. Checklist

- [ ] Consultant profile shows "Subscription Plans" section
- [ ] Plan shows title, price, duration, and meetings per week
- [ ] Booking screen shows start date picker and end date calculation
- [ ] "Request Subscription" button is visible
- [ ] Test data cleaned up
