# Unit Test: Referrals

> **Feature:** Generate referral code, check code, apply during signup, view credits
> **Backend:** `/api/referrals/code`, `/api/referrals/apply`, `/api/referrals/credits/available`

---

## Data Seeding

```sql
-- User with referral code
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_referrals_u1', 'Referrals User', 'test_unit_referrals@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_referrals_a1', 'test_unit_referrals_u1', 'test_unit_referrals_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_referrals_cep1', 'test_unit_referrals_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_referrals_cep1' WHERE id = 'test_unit_referrals_u1';

-- Pre-existing referral code
INSERT INTO "ReferralCode" (id, "userId", code, "referrerReward", "refereeReward", "isActive", "createdAt", "updatedAt")
VALUES ('test_unit_referrals_rc1', 'test_unit_referrals_u1', 'TESTREF123', 10000, 5000, true, NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_referrals_ck1', 'test_unit_referrals_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_referrals_np1', 'test_unit_referrals_u1');
```

---

## Scenarios

### 1. Get Referral Code
Sign in as `test_unit_referrals@test.com` / `TestPassword123`.
```
fetch('/api/referrals/code', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Response contains code = 'TESTREF123', isActive = true.

### 2. Check Referral Code Validity
```
fetch('/api/referrals/check?code=TESTREF123', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Response indicates code is valid with refereeReward = 5000.

### 3. Check Invalid Code
```
fetch('/api/referrals/check?code=INVALIDCODE', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Error response indicating code not found.

### 4. Apply Referral During Signup
Sign out first, then:
```
navigate_page → url: http://localhost:3000/auth/sign-up?ref=TESTREF123
wait_for → text: "Create" OR text: "Sign Up"
take_snapshot
fill → uid: [Name], value: "Referred User"
fill → uid: [Email], value: "test_unit_referrals_new@test.com"
fill → uid: [Password], value: "TestPassword123"
-- Referral code field may be pre-filled from URL
take_snapshot
click → uid: [Sign Up]
wait_for → url_change OR timeout: 10000
take_screenshot
```
**Verify:**
```sql
SELECT id FROM "users" WHERE email = 'test_unit_referrals_new@test.com';
SELECT status FROM "Referral" WHERE "referralCodeId" = 'test_unit_referrals_rc1';
```
**Expected:** New user created. Referral record with status = 'SIGNED_UP'.

### 5. View Available Credits
Sign in as `test_unit_referrals@test.com`:
```
fetch('/api/referrals/credits/available', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Response shows available credits (may be 0 if referral not yet qualified, or reward amount if qualified).

### 6. View Referral Stats
```
fetch('/api/referrals/code', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** totalReferrals incremented after signup in Scenario 4.

---

## Cleanup

```sql
DELETE FROM "ReferralCredit" WHERE "userId" = 'test_unit_referrals_u1';
DELETE FROM "Referral" WHERE "referralCodeId" = 'test_unit_referrals_rc1';
DELETE FROM "ReferralCode" WHERE id = 'test_unit_referrals_rc1';
DELETE FROM "sessions" WHERE "userId" = 'test_unit_referrals_u1';
DELETE FROM "sessions" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_unit_referrals_new@test.com');
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_referrals_cep1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_referrals_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_referrals_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_referrals_u1';
DELETE FROM "accounts" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_unit_referrals_new@test.com');
DELETE FROM "users" WHERE id = 'test_unit_referrals_u1';
DELETE FROM "users" WHERE email = 'test_unit_referrals_new@test.com';
```
