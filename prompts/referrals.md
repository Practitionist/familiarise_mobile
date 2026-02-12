# Feature: Referral System

> **What this tests:** Referral code generation, applying referral codes during signup, referral credit awarding, and dashboard referral summary card.
>
> **Prerequisites:** Flutter web running at `http://localhost:<PORT>`, Supabase project accessible via MCP.

---

## 1. Configuration

```
APP_URL             = http://localhost:<PORT>
SUPABASE_PROJECT_ID = <your-project-id>
```

**Test credentials:**

| User | Email | Password | Role |
|------|-------|----------|------|
| Referrer (consultant) | test_referrer@test.com | TestPassword123 | CONSULTANT |
| Referee (new signup) | test_referee@test.com | TestPassword123 | CONSULTEE |

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create the referrer user (existing consultant)

```sql
-- execute_sql
-- Create a Domain first (ConsultantProfile requires it)
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_ref_domain_1', 'Technology', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;

-- Create referrer user
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES (
  'test_ref_user_referrer',
  'Test Referrer',
  'test_referrer@test.com',
  true,
  'CONSULTANT',
  true,
  NOW(), NOW()
);

-- Create credential account for referrer (bcrypt hash of 'TestPassword123')
INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES (
  'test_ref_account_referrer',
  'test_ref_user_referrer',
  'test_ref_user_referrer',
  'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012',
  NOW(), NOW()
);

-- Create ConsultantProfile for the referrer
INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_ref_consultant_1',
  'test_ref_user_referrer',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY',
  4.5,
  80, true, 'VERIFIED',
  10, 0, 0,
  NOW(), NOW()
);

-- Link consultant profile to user
UPDATE "User"
SET "consultantProfileId" = 'test_ref_consultant_1'
WHERE id = 'test_ref_user_referrer';
```

### 2.2 Verify seed data

```sql
-- execute_sql
SELECT u.id, u.name, u.email, u.role, u."consultantProfileId"
FROM "User" u
WHERE u.id = 'test_ref_user_referrer';
```

**Expected:** 1 row with role = 'CONSULTANT' and consultantProfileId set.

---

## 3. Test Scenario 1: Generate Referral Code (Chrome DevTools MCP)

### 3.1 Sign in as referrer

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
```

Find the email and password fields in the snapshot, then:

```
fill → uid: [Email input], value: "test_referrer@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"
```

### 3.2 Locate the referral summary card on the dashboard

```
take_snapshot
```

Look for the `ReferralSummaryCard` in the snapshot. It should show:
- Text: **"Referrals"** (card header)
- Text: **"Share your referral code and earn credits!"** (no code generated yet)
- Button: **"Generate Referral Code"**

### 3.3 Generate referral code

```
click → uid: [Generate Referral Code button]
wait_for → text: "Your Code"
take_snapshot
```

After clicking, the card should now show:
- Text: **"Your Code"** label
- The generated code (alphanumeric, e.g., "TESTREF42")
- Text: **"0 referrals"**
- Copy and Share icon buttons

```
take_screenshot  -- visual verification of the referral code card
```

### 3.4 Verify referral code was created in DB

```sql
-- execute_sql
SELECT id, "userId", code, "customCode", "referrerReward", "refereeReward",
       "totalReferrals", "successfulReferrals", "isActive", "maxReferrals"
FROM "ReferralCode"
WHERE "userId" = 'test_ref_user_referrer';
```

**Expected:** 1 row with:
- `code`: non-null alphanumeric string
- `totalReferrals`: 0
- `isActive`: true
- `referrerReward`: 50000 (500 INR in paise)
- `refereeReward`: 20000 (200 INR in paise)

**Save the `code` value** — you'll need it for the next scenario.

---

## 4. Test Scenario 2: Apply Referral Code During Signup (Chrome DevTools MCP)

### 4.1 Sign out the referrer

Navigate away or clear the session to sign out.

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
```

### 4.2 Navigate to sign-up

```
take_snapshot
click → uid: [Sign Up text button]
wait_for → text: "Create account"
take_snapshot
```

The sign-up form should show these fields:
- **Full Name** (label: "Full Name", hint: "Enter your full name")
- **Email** (label: "Email", hint: "Enter your email")
- **Password** (label: "Password", hint: "Create a password")
- **Confirm Password** (label: "Confirm Password", hint: "Confirm your password")
- **Referral Code (optional)** (label: "Referral Code (optional)", hint: "Enter referral code")
- **Terms checkbox** ("I agree to the Terms of Service and Privacy Policy")
- **Create Account** button

### 4.3 Fill sign-up form with referral code

```
fill → uid: [Full Name input], value: "Test Referee"
fill → uid: [Email input], value: "test_referee@test.com"
fill → uid: [Password input], value: "TestPassword123"
fill → uid: [Confirm Password input], value: "TestPassword123"
fill → uid: [Referral Code input], value: "<CODE_FROM_STEP_3.4>"
click → uid: [Terms checkbox]
```

### 4.4 Submit signup

```
click → uid: [Create Account button]
wait_for → text: "Dashboard"  -- or onboarding screen
take_screenshot
```

### 4.5 Verify referral was applied in DB

```sql
-- execute_sql

-- Check the Referral record was created
SELECT r.id, r."referralCodeId", r."referredUserId", r.status, r."signedUpAt"
FROM "Referral" r
JOIN "User" u ON u.id = r."referredUserId"
WHERE u.email = 'test_referee@test.com';
```

**Expected:** 1 row with `status` = 'SIGNED_UP'.

```sql
-- execute_sql

-- Check ReferralCode counter was incremented
SELECT code, "totalReferrals", "successfulReferrals"
FROM "ReferralCode"
WHERE "userId" = 'test_ref_user_referrer';
```

**Expected:** `totalReferrals` = 1.

```sql
-- execute_sql

-- Check ReferralCredit was created for the referee
SELECT rc.id, rc."userId", rc.amount, rc."remainingAmount", rc.source, rc.currency, rc."expiresAt"
FROM "ReferralCredit" rc
JOIN "User" u ON u.id = rc."userId"
WHERE u.email = 'test_referee@test.com';
```

**Expected:** 1 row with:
- `amount`: 20000 (200 INR in paise)
- `remainingAmount`: 20000
- `source`: 'REFEREE_BONUS'
- `currency`: 'INR'
- `expiresAt`: ~6 months from now

---

## 5. Test Scenario 3: Verify Referral Stats on Dashboard (Chrome DevTools MCP)

### 5.1 Sign in as the referrer again

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_referrer@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"
```

### 5.2 Verify referral summary card shows updated stats

```
take_snapshot
```

The `ReferralSummaryCard` should now show:
- Text: **"Your Code"** with the code displayed
- Text: **"1 referrals"** (previously was "0 referrals")
- No credits shown for the referrer yet (referrer credits are awarded on qualification, not signup)

```
take_screenshot  -- visual verification of updated referral stats
```

---

## 6. Test Scenario 4: Edge Cases (Supabase MCP + Chrome DevTools MCP)

### 6.1 Verify self-referral is blocked

```sql
-- execute_sql

-- Try to see what happens if referrer tries their own code
-- (This would be tested via UI by signing up with the referrer's own code)
-- The backend should throw: "Cannot use your own referral code"
```

### 6.2 Verify duplicate referral is blocked

If the referee tries to apply another referral code, the backend should throw: "You have already used a referral code" (because `referredUserId` is `@unique` in the Referral model).

### 6.3 Verify invalid code is rejected

On the sign-up page, entering an invalid code like "INVALIDCODE999" should not block signup but the referral application will silently fail (fire-and-forget in the frontend).

---

## 7. Cleanup (Supabase MCP)

> Delete all test data in reverse FK dependency order.

```sql
-- execute_sql (run each block sequentially)

-- Step 1: Delete referral credits
DELETE FROM "ReferralCredit" WHERE "userId" IN (
  SELECT id FROM "User" WHERE email IN ('test_referrer@test.com', 'test_referee@test.com')
);

-- Step 2: Delete referrals
DELETE FROM "Referral" WHERE "referredUserId" IN (
  SELECT id FROM "User" WHERE email IN ('test_referrer@test.com', 'test_referee@test.com')
);

-- Step 3: Delete referral codes
DELETE FROM "ReferralCode" WHERE "userId" IN (
  SELECT id FROM "User" WHERE email IN ('test_referrer@test.com', 'test_referee@test.com')
);

-- Step 4: Delete consultant profile
DELETE FROM "ConsultantProfile" WHERE id = 'test_ref_consultant_1';

-- Step 5: Delete auth records
DELETE FROM "sessions" WHERE "userId" IN (
  SELECT id FROM "User" WHERE email IN ('test_referrer@test.com', 'test_referee@test.com')
);
DELETE FROM "accounts" WHERE "userId" IN (
  SELECT id FROM "User" WHERE email IN ('test_referrer@test.com', 'test_referee@test.com')
);

-- Step 6: Delete users
DELETE FROM "User" WHERE email IN ('test_referrer@test.com', 'test_referee@test.com');

-- Step 7: Clean up test domain (only if we created it)
DELETE FROM "Domain" WHERE id = 'test_ref_domain_1';
```

---

## 8. Checklist

- [ ] Referrer user seeded with ConsultantProfile
- [ ] Signed in as referrer via UI
- [ ] "Generate Referral Code" button visible on dashboard
- [ ] Referral code generated and displayed with "Your Code" label
- [ ] DB: ReferralCode record created with correct rewards
- [ ] Signed up as referee with referral code in optional field
- [ ] DB: Referral record created with status = SIGNED_UP
- [ ] DB: ReferralCode.totalReferrals incremented to 1
- [ ] DB: ReferralCredit created with 20000 paise (200 INR)
- [ ] Referrer dashboard shows "1 referrals" after referee signup
- [ ] Test data cleaned up successfully
