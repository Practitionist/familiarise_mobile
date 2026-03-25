# Unit Test: Tax

> **Feature:** View/save tax info (PAN, GST)
> **Route:** `/tax-info`
> **Backend:** `/api/tax-info/*`

---

## Data Seeding

```sql
-- Verified consultant
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_tax_u1', 'Tax Consultant', 'test_unit_tax@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_tax_a1', 'test_unit_tax_u1', 'test_unit_tax_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_tax_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_tax_cp1', 'test_unit_tax_u1', 'test_unit_tax_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_tax_cp1' WHERE id = 'test_unit_tax_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_tax_ck1', 'test_unit_tax_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_tax_np1', 'test_unit_tax_u1');
```

---

## Scenarios

Sign in as `test_unit_tax@test.com` / `TestPassword123`.

### 1. View Tax Info — Empty
```
navigate_page → url: http://localhost:3000/tax-info
wait_for → text: "Tax" OR text: "PAN"
take_snapshot
take_screenshot
```
**Expected:** Tax info page loads. Fields empty or placeholder text shown.

### 2. Save PAN
```
navigate_page → url: http://localhost:3000/tax-info
take_snapshot
fill → uid: [PAN], value: "ABCDE1234F"
click → uid: [Save / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT "panLast4", "panVerified" FROM "ConsultantTaxInfo" WHERE "consultantProfileId" = 'test_unit_tax_cp1';`
**Expected:** panLast4 = '234F', panVerified = false (verification is async).

### 3. Save GST
```
navigate_page → url: http://localhost:3000/tax-info
take_snapshot
fill → uid: [GSTIN], value: "29ABCDE1234F1Z5"
click → uid: [Save / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT gstin, "gstinVerified" FROM "ConsultantTaxInfo" WHERE "consultantProfileId" = 'test_unit_tax_cp1';`
**Expected:** gstin = '29ABCDE1234F1Z5'.

### 4. View Saved Tax Info
```
navigate_page → url: http://localhost:3000/tax-info
wait_for → text: "Tax" OR text: "PAN"
take_snapshot
take_screenshot
```
**Expected:** PAN masked (showing last 4: ****234F) and GST number visible.

### 5. Update PAN
```
navigate_page → url: http://localhost:3000/tax-info
take_snapshot
fill → uid: [PAN], value: "XYZAB5678G"
click → uid: [Save / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT "panLast4" FROM "ConsultantTaxInfo" WHERE "consultantProfileId" = 'test_unit_tax_cp1';`
**Expected:** panLast4 = '678G'.

---

## Cleanup

```sql
DELETE FROM "ConsultantTaxInfo" WHERE "consultantProfileId" = 'test_unit_tax_cp1';
DELETE FROM "sessions" WHERE "userId" = 'test_unit_tax_u1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_tax_cp1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_tax_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_tax_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_tax_u1';
DELETE FROM "users" WHERE id = 'test_unit_tax_u1';
DELETE FROM "Domain" WHERE id = 'test_unit_tax_dom';
```
