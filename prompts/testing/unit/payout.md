# Unit Test: Payout

> **Feature:** View payout accounts, add bank account, add UPI account, set default, delete
> **Route:** `/payout-accounts`, `/payout-accounts/add`
> **Backend:** `/api/payout-accounts/*`

---

## Data Seeding

```sql
-- Verified consultant
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_payout_u1', 'Payout Consultant', 'test_unit_payout@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_payout_a1', 'test_unit_payout_u1', 'test_unit_payout_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_payout_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_payout_cp1', 'test_unit_payout_u1', 'test_unit_payout_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_payout_cp1' WHERE id = 'test_unit_payout_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_payout_ck1', 'test_unit_payout_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_payout_np1', 'test_unit_payout_u1');
```

---

## Scenarios

Sign in as `test_unit_payout@test.com` / `TestPassword123`.

### 1. View Payout Accounts — Empty
```
navigate_page → url: http://localhost:3000/payout-accounts
wait_for → text: "Payout" OR text: "Accounts"
take_snapshot
take_screenshot
```
**Expected:** Empty state or "No payout accounts" message.

### 2. Add Bank Account
```
navigate_page → url: http://localhost:3000/payout-accounts/add
wait_for → text: "Add" OR text: "Bank"
take_snapshot
fill → uid: [Account Holder Name], value: "Payout Consultant"
fill → uid: [Bank Name], value: "State Bank of India"
fill → uid: [Account Number], value: "12345678901234"
fill → uid: [IFSC Code], value: "SBIN0001234"
click → uid: [Save / Submit / Add]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, "accountType", "bankName", "accountNumberLast4", "ifscCode" FROM "PayoutAccount" WHERE "consultantProfileId" = 'test_unit_payout_cp1';`
**Expected:** Account created with accountType = 'BANK_ACCOUNT', accountNumberLast4 = '1234'.

### 3. Add UPI Account
```
navigate_page → url: http://localhost:3000/payout-accounts/add
take_snapshot
-- Select UPI option
click → uid: [UPI]
fill → uid: [UPI ID], value: "payout@upi"
click → uid: [Save / Submit / Add]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, "accountType", "upiId" FROM "PayoutAccount" WHERE "consultantProfileId" = 'test_unit_payout_cp1' AND "accountType" = 'UPI';`
**Expected:** Account created with accountType = 'UPI', upiId = 'payout@upi'.

### 4. View Payout Accounts List
```
navigate_page → url: http://localhost:3000/payout-accounts
take_snapshot
take_screenshot
```
**Expected:** Both bank and UPI accounts visible in list.

### 5. Set Default Account
```
navigate_page → url: http://localhost:3000/payout-accounts
take_snapshot
click → uid: [Set Default] (on UPI account)
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, "isDefault" FROM "PayoutAccount" WHERE "consultantProfileId" = 'test_unit_payout_cp1';`
**Expected:** UPI account has isDefault = true, bank account has isDefault = false.

### 6. Delete Payout Account
```
navigate_page → url: http://localhost:3000/payout-accounts
take_snapshot
click → uid: [Delete] (on bank account)
wait_for → timeout: 3000
-- Confirm delete if dialog appears
click → uid: [Confirm / Yes]
wait_for → timeout: 3000
take_screenshot
```
**Verify:** `SELECT count(*) FROM "PayoutAccount" WHERE "consultantProfileId" = 'test_unit_payout_cp1';`
**Expected:** Count = 1 (only UPI remains).

---

## Cleanup

```sql
DELETE FROM "PayoutAccount" WHERE "consultantProfileId" = 'test_unit_payout_cp1';
DELETE FROM "sessions" WHERE "userId" = 'test_unit_payout_u1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_payout_cp1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_payout_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_payout_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_payout_u1';
DELETE FROM "users" WHERE id = 'test_unit_payout_u1';
DELETE FROM "Domain" WHERE id = 'test_unit_payout_dom';
```
