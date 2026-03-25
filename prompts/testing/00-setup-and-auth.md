# E2E Test: Setup & Authentication

> **What this tests:** User registration, sign in/out, password flows, session management.
>
> **Tools:** Supabase MCP (data seeding/verification), Chrome DevTools MCP (UI interaction), GitHub (bug reporting).
>
> **Prerequisites:** Flutter web running at `http://localhost:3000`, Supabase project accessible, GitHub CLI authenticated.

---

## Instructions for AI Agent

You are an E2E testing agent. Your job is to:
1. Seed test data via Supabase MCP SQL
2. Test each scenario by interacting with the app via Chrome DevTools MCP
3. After each step, take a snapshot to identify UI elements, then interact with them
4. Take screenshots at key moments for visual verification
5. **When you encounter a bug** (unexpected behavior, error, missing element, crash):
   - Take a screenshot
   - Create a GitHub issue in `Practitionist/familiarise_mobile` with: title, description (steps to reproduce, expected vs actual), screenshot, and label `bug`
   - Continue testing — don't stop
6. After all tests, verify database state via SQL and clean up

---

## 1. Configuration

```
APP_URL             = http://localhost:3000
SUPABASE_PROJECT_ID = <read from environment or .env>
GITHUB_REPO         = Practitionist/familiarise_mobile
```

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create test users for auth tests

```sql
-- execute_sql
-- Existing user for sign-in tests
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES (
  'test_e2e_auth_user1',
  'Auth Test User',
  'test_e2e_auth@test.com',
  true, 'CONSULTEE', true,
  NOW(), NOW()
);

-- Create credential account (bcrypt hash of 'TestPassword123')
-- Generate a real hash: dart -e "import 'package:bcrypt/bcrypt.dart'; print(BCrypt.hashpw('TestPassword123', BCrypt.gensalt(logRounds: 12)));"
INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES (
  'test_e2e_auth_account1',
  'test_e2e_auth_user1',
  'test_e2e_auth_user1',
  'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z',
  NOW(), NOW()
);

-- Create consultee profile
INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_e2e_auth_cee1', 'test_e2e_auth_user1', NOW(), NOW());

UPDATE "users" SET "consulteeProfileId" = 'test_e2e_auth_cee1' WHERE id = 'test_e2e_auth_user1';

-- Cookie + notification preferences
INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_e2e_auth_cookie1', 'test_e2e_auth_user1', true, NOW(), NOW());

INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_e2e_auth_notif1', 'test_e2e_auth_user1');
```

---

## 3. Test Scenarios (Chrome DevTools MCP)

### Scenario 1: Sign Up — New User

**Steps:**

1. Navigate to sign-up page
   ```
   navigate_page → url: http://localhost:3000/auth/sign-up
   wait_for → text: "Create" (or "Sign Up" or "Get Started")
   take_snapshot
   ```

2. Verify the sign-up form is visible. Look for:
   - Name field
   - Email field
   - Password field
   - Sign Up button
   - Link to sign in

3. Fill the form
   ```
   fill → uid: [Name field], value: "E2E Test Signup"
   fill → uid: [Email field], value: "test_e2e_signup@test.com"
   fill → uid: [Password field], value: "TestPassword123"
   click → uid: [Sign Up button]
   ```

4. Wait for result — should redirect to onboarding or dashboard
   ```
   wait_for → url_change OR text: "Complete Your Profile" OR text: "Dashboard"
   take_screenshot
   ```

5. **Verify:** User was created in the database
   ```sql
   -- execute_sql
   SELECT id, name, email, role, "onboardingCompleted"
   FROM "users" WHERE email = 'test_e2e_signup@test.com';
   ```

### Scenario 2: Sign In — Valid Credentials

**Steps:**

1. Navigate to sign-in page
   ```
   navigate_page → url: http://localhost:3000/auth/sign-in
   wait_for → text: "Welcome" OR text: "Sign In"
   take_snapshot
   ```

2. Fill credentials
   ```
   fill → uid: [Email field], value: "test_e2e_auth@test.com"
   fill → uid: [Password field], value: "TestPassword123"
   click → uid: [Sign In button]
   ```

3. Wait for dashboard
   ```
   wait_for → text: "Dashboard" OR url_contains: "/dashboard" OR url_contains: "/explore"
   take_screenshot
   ```

4. **Verify:** Session created
   ```sql
   -- execute_sql
   SELECT id, "userId", "expiresAt"
   FROM "sessions" WHERE "userId" = 'test_e2e_auth_user1'
   ORDER BY "createdAt" DESC LIMIT 1;
   ```

### Scenario 3: Sign In — Invalid Credentials

**Steps:**

1. Navigate to sign-in
   ```
   navigate_page → url: http://localhost:3000/auth/sign-in
   wait_for → text: "Welcome" OR text: "Sign In"
   take_snapshot
   ```

2. Enter wrong password
   ```
   fill → uid: [Email field], value: "test_e2e_auth@test.com"
   fill → uid: [Password field], value: "WrongPassword999"
   click → uid: [Sign In button]
   ```

3. Verify error message appears
   ```
   wait_for → timeout: 5000
   take_snapshot
   ```
   **Expected:** An error message like "Invalid email or password" should be visible.

4. Take screenshot of error state
   ```
   take_screenshot
   ```

### Scenario 4: Sign In — Empty Fields

**Steps:**

1. Navigate to sign-in
   ```
   navigate_page → url: http://localhost:3000/auth/sign-in
   wait_for → text: "Welcome" OR text: "Sign In"
   take_snapshot
   ```

2. Click sign in without filling anything
   ```
   click → uid: [Sign In button]
   ```

3. Verify validation messages
   ```
   take_snapshot
   ```
   **Expected:** Form validation errors ("Email is required", "Password is required" or similar).

### Scenario 5: Forgot Password Flow

**Steps:**

1. From sign-in page, click "Forgot password?"
   ```
   navigate_page → url: http://localhost:3000/auth/sign-in
   wait_for → text: "Welcome"
   take_snapshot
   click → uid: [Forgot password link]
   wait_for → text: "Reset" OR text: "Forgot"
   take_snapshot
   ```

2. Enter email
   ```
   fill → uid: [Email field], value: "test_e2e_auth@test.com"
   click → uid: [Submit / Send Reset Link button]
   ```

3. Verify success message
   ```
   wait_for → timeout: 5000
   take_snapshot
   take_screenshot
   ```
   **Expected:** Success message about reset email being sent.

### Scenario 6: Sign Out

**Steps:**

1. Sign in first (use Scenario 2 steps)

2. Navigate to profile
   ```
   navigate_page → url: http://localhost:3000/profile
   wait_for → text: "Profile" OR text: "Account"
   take_snapshot
   ```

3. Find and click sign out
   ```
   click → uid: [Sign Out button / menu item]
   ```

4. Verify redirect to sign-in
   ```
   wait_for → text: "Welcome" OR text: "Sign In" OR url_contains: "/auth"
   take_screenshot
   ```

### Scenario 7: Session Management

**Steps:**

1. Sign in first

2. Navigate to active sessions
   ```
   navigate_page → url: http://localhost:3000/profile/sessions
   wait_for → text: "Sessions" OR text: "Active"
   take_snapshot
   take_screenshot
   ```

3. **Verify:** Current session is listed

4. If a "Revoke" button exists for other sessions, test revoking

### Scenario 8: Change Password

**Steps:**

1. Sign in first

2. Navigate to change password
   ```
   navigate_page → url: http://localhost:3000/profile/change-password
   wait_for → text: "Change Password" OR text: "Password"
   take_snapshot
   ```

3. Fill the form
   ```
   fill → uid: [Current password field], value: "TestPassword123"
   fill → uid: [New password field], value: "NewTestPassword456"
   fill → uid: [Confirm password field], value: "NewTestPassword456"
   click → uid: [Submit / Save button]
   ```

4. Verify success
   ```
   wait_for → timeout: 5000
   take_snapshot
   take_screenshot
   ```

---

## 4. Bug Reporting

When any scenario fails (unexpected error, missing UI element, wrong behavior), create a GitHub issue:

```
gh issue create \
  --repo Practitionist/familiarise_mobile \
  --title "E2E Bug: [brief description]" \
  --body "## Steps to Reproduce
1. [step 1]
2. [step 2]

## Expected
[what should happen]

## Actual
[what actually happened]

## Screenshot
[attach screenshot]

## Environment
- Flutter Web Chrome Emulator
- Port 3000
- Test run: $(date)" \
  --label "bug,e2e-test"
```

---

## 5. Cleanup (Supabase MCP)

```sql
-- execute_sql (run in order)
DELETE FROM "sessions" WHERE "userId" LIKE 'test_e2e_auth%';
DELETE FROM "sessions" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_e2e_signup@test.com');
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_e2e_auth%';
DELETE FROM "cookie_preferences" WHERE "userId" LIKE 'test_e2e_auth%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_e2e_auth%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_e2e_auth%';
DELETE FROM "accounts" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_e2e_signup@test.com');
DELETE FROM "users" WHERE id LIKE 'test_e2e_auth%';
DELETE FROM "users" WHERE email = 'test_e2e_signup@test.com';
```

---

## 6. Checklist

- [ ] Test data seeded
- [ ] Scenario 1: Sign up creates user + redirects
- [ ] Scenario 2: Valid sign in reaches dashboard
- [ ] Scenario 3: Invalid credentials shows error
- [ ] Scenario 4: Empty fields shows validation
- [ ] Scenario 5: Forgot password shows success
- [ ] Scenario 6: Sign out redirects to auth
- [ ] Scenario 7: Sessions page loads
- [ ] Scenario 8: Change password works
- [ ] All bugs filed as GitHub issues
- [ ] Test data cleaned up
