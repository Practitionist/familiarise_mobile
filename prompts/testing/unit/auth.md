# Unit Test: Authentication

> **Feature:** Sign up, sign in, password management, sessions
> **Route:** `/auth/sign-in`, `/auth/sign-up`, `/auth/forgot-password`
> **Backend:** `/api/auth/*`

---

## Data Seeding

```sql
-- execute_sql
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_auth_u1', 'Auth Unit User', 'test_unit_auth@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_auth_a1', 'test_unit_auth_u1', 'test_unit_auth_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_auth_cp1', 'test_unit_auth_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_auth_cp1' WHERE id = 'test_unit_auth_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_auth_ck1', 'test_unit_auth_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_auth_np1', 'test_unit_auth_u1');
```

---

## Scenarios

### 1. Sign Up
```
navigate_page → url: http://localhost:3000/auth/sign-up
wait_for → text: "Create" OR text: "Sign Up"
take_snapshot
fill → uid: [Name], value: "Unit Test Signup"
fill → uid: [Email], value: "test_unit_auth_new@test.com"
fill → uid: [Password], value: "TestPassword123"
click → uid: [Sign Up button]
wait_for → url_change OR timeout: 10000
take_screenshot
```
**Verify:** `SELECT id, email FROM "users" WHERE email = 'test_unit_auth_new@test.com';`

### 2. Sign In — Valid
```
navigate_page → url: http://localhost:3000/auth/sign-in
wait_for → text: "Welcome" OR text: "Sign In"
take_snapshot
fill → uid: [Email], value: "test_unit_auth@test.com"
fill → uid: [Password], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard" OR url_contains: "/dashboard" OR url_contains: "/explore"
take_screenshot
```

### 3. Sign In — Invalid Password
```
navigate_page → url: http://localhost:3000/auth/sign-in
take_snapshot
fill → uid: [Email], value: "test_unit_auth@test.com"
fill → uid: [Password], value: "WrongPassword"
click → uid: [Sign In]
wait_for → timeout: 5000
take_snapshot
```
**Expected:** Error message visible.

### 4. Sign In — Empty Fields
```
navigate_page → url: http://localhost:3000/auth/sign-in
take_snapshot
click → uid: [Sign In button]
take_snapshot
```
**Expected:** Validation errors visible.

### 5. Forgot Password
```
navigate_page → url: http://localhost:3000/auth/forgot-password
wait_for → text: "Reset" OR text: "Forgot"
take_snapshot
fill → uid: [Email], value: "test_unit_auth@test.com"
click → uid: [Submit]
wait_for → timeout: 5000
take_snapshot
take_screenshot
```
**Expected:** Success message.

### 6. Sign Out
Sign in first, then:
```
navigate_page → url: http://localhost:3000/profile
take_snapshot
click → uid: [Sign Out]
wait_for → url_contains: "/auth"
take_screenshot
```

### 7. Active Sessions
Sign in first, then:
```
navigate_page → url: http://localhost:3000/profile/sessions
wait_for → text: "Sessions" OR text: "Active"
take_snapshot
take_screenshot
```

### 8. Change Password
Sign in first, then:
```
navigate_page → url: http://localhost:3000/profile/change-password
take_snapshot
fill → uid: [Current password], value: "TestPassword123"
fill → uid: [New password], value: "NewPassword456"
fill → uid: [Confirm], value: "NewPassword456"
click → uid: [Save / Submit]
wait_for → timeout: 5000
take_screenshot
```

---

## Cleanup

```sql
DELETE FROM "sessions" WHERE "userId" LIKE 'test_unit_auth%';
DELETE FROM "sessions" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_unit_auth_new@test.com');
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_unit_auth%';
DELETE FROM "cookie_preferences" WHERE "userId" LIKE 'test_unit_auth%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_unit_auth%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_unit_auth%';
DELETE FROM "accounts" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_unit_auth_new@test.com');
DELETE FROM "users" WHERE id LIKE 'test_unit_auth%';
DELETE FROM "users" WHERE email = 'test_unit_auth_new@test.com';
```
