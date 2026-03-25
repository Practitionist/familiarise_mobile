# Feature: Authentication

> **What this tests:** Sign up, sign in, forgot password, reset password, sign out, and error handling.
>
> **Prerequisites:** Flutter web running at `http://localhost:<PORT>`, Supabase project accessible via MCP.

---

## 1. Configuration

```
APP_URL             = http://localhost:<PORT>
SUPABASE_PROJECT_ID = <your-project-id>
```

**Test credentials:**

| User | Email | Password | Purpose |
|------|-------|----------|---------|
| Existing user | test_auth_user@test.com | TestPassword123 | Sign in, forgot password |
| New signup | test_auth_new@test.com | TestPassword123 | Sign up flow |

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create an existing user for sign-in tests

```sql
-- execute_sql
INSERT INTO "User" (id, name, email, "emailVerified", role, "createdAt", "updatedAt")
VALUES (
  'test_auth_user_1',
  'Auth Test User',
  'test_auth_user@test.com',
  true, 'CONSULTEE',
  NOW(), NOW()
);

-- Create credential account (bcrypt hash of 'TestPassword123')
INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES (
  'test_auth_account_1',
  'test_auth_user_1',
  'test_auth_user_1',
  'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012',
  NOW(), NOW()
);
```

---

## 3. Test Scenario 1: Sign In (Chrome DevTools MCP)

### 3.1 Navigate to sign-in page

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
```

Verify the page shows:
- Header: **"Welcome back"**
- Subheader: **"Sign in to continue to Familiarise"**
- Fields: **"Email"** and **"Password"**
- Button: **"Sign In"**
- Link: **"Forgot password?"**
- Link: **"Don't have an account?"** + **"Sign Up"**

### 3.2 Fill credentials and sign in

```
fill → uid: [Email input], value: "test_auth_user@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"
take_screenshot
```

### 3.3 Test invalid credentials

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_auth_user@test.com"
fill → uid: [Password input], value: "WrongPassword"
click → uid: [Sign In button]
```

Wait for error message to appear, then:

```
take_snapshot
-- Verify: error message is visible (red container with error text)
take_screenshot
```

---

## 4. Test Scenario 2: Sign Up (Chrome DevTools MCP)

### 4.1 Navigate to sign-up

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
click → uid: [Sign Up text button]
wait_for → text: "Create account"
take_snapshot
```

### 4.2 Verify sign-up form

The form should show:
- Header: **"Create account"**
- Subheader: **"Sign up to get started with Familiarise"**
- Fields: **"Full Name"**, **"Email"**, **"Password"**, **"Confirm Password"**, **"Referral Code (optional)"**
- Checkbox: **"I agree to the Terms of Service and Privacy Policy"**
- Button: **"Create Account"** (disabled until terms accepted)

### 4.3 Test validation errors

```
click → uid: [Create Account button]
take_snapshot
-- Verify: validation messages like "Please enter your name", "Please enter your email"
```

### 4.4 Fill form and sign up

```
fill → uid: [Full Name input], value: "Auth New User"
fill → uid: [Email input], value: "test_auth_new@test.com"
fill → uid: [Password input], value: "TestPassword123"
fill → uid: [Confirm Password input], value: "TestPassword123"
click → uid: [Terms checkbox]
click → uid: [Create Account button]
wait_for → text: "Dashboard"  -- or onboarding screen
take_screenshot
```

### 4.5 Verify user created in DB

```sql
-- execute_sql
SELECT id, name, email, role, "emailVerified"
FROM "User"
WHERE email = 'test_auth_new@test.com';
```

**Expected:** 1 row with name = 'Auth New User'.

---

## 5. Test Scenario 3: Forgot Password (Chrome DevTools MCP)

### 5.1 Navigate to forgot password

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
click → uid: [Forgot password? text button]
wait_for → text: "Reset password"
take_snapshot
```

### 5.2 Verify forgot password form

The page should show:
- Header: **"Reset password"**
- Subheader: **"Enter your email and we'll send you a link to reset your password."**
- Field: **"Email"**
- Button: **"Send Reset Link"**
- Link: **"Back to Sign In"**

### 5.3 Submit email

```
fill → uid: [Email input], value: "test_auth_user@test.com"
click → uid: [Send Reset Link button]
wait_for → text: "Check your email"
take_snapshot
```

After submission, verify:
- Text: **"Check your email"**
- Text: **"We sent a password reset link to:"** followed by the email
- Button: **"Try Another Email"**
- Button: **"Back to Sign In"**

```
take_screenshot
```

---

## 6. Test Scenario 4: Sign Out (Chrome DevTools MCP)

### 6.1 Sign in first

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_auth_user@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"
```

### 6.2 Navigate to profile and sign out

```
navigate_page → url: {APP_URL}/profile
wait_for → text: "Sign Out"
take_snapshot
click → uid: [Sign Out list tile]
```

A confirmation dialog should appear. Confirm sign out:

```
wait_for → text: "Sign Out"  -- dialog title
take_snapshot
click → uid: [Sign Out / confirm button in dialog]
wait_for → text: "Welcome back"  -- redirected to sign-in
take_screenshot
```

---

## 7. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

-- Delete sessions
DELETE FROM "sessions" WHERE "userId" IN (
  SELECT id FROM "User" WHERE email IN ('test_auth_user@test.com', 'test_auth_new@test.com')
);

-- Delete accounts
DELETE FROM "accounts" WHERE "userId" IN (
  SELECT id FROM "User" WHERE email IN ('test_auth_user@test.com', 'test_auth_new@test.com')
);

-- Delete users
DELETE FROM "User" WHERE email IN ('test_auth_user@test.com', 'test_auth_new@test.com');
```

---

## 8. Checklist

- [ ] Sign-in page loads with correct fields and labels
- [ ] Successful sign-in redirects to dashboard
- [ ] Invalid credentials show error message
- [ ] Sign-up page shows all fields including optional referral code
- [ ] Form validation shows error messages for empty/invalid fields
- [ ] Successful sign-up creates user in DB
- [ ] Forgot password shows email form
- [ ] Submit email shows "Check your email" success state
- [ ] Sign out from profile shows confirmation dialog
- [ ] After sign out, user is redirected to sign-in page
- [ ] Test data cleaned up
