# Feature: Onboarding

> **What this tests:** Multi-step onboarding flow with role selection (Consultant vs Consultee), personal info, professional profile setup, and completion.
>
> **Prerequisites:** Flutter web running at `http://localhost:<PORT>`, Supabase project accessible via MCP.

---

## 1. Configuration

```
APP_URL             = http://localhost:<PORT>
SUPABASE_PROJECT_ID = <your-project-id>
```

**Test user:**

| User | Email | Password | Purpose |
|------|-------|----------|---------|
| New user (not onboarded) | test_onboard_user@test.com | TestPassword123 | Onboarding flow |

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create a user who hasn't completed onboarding

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_onboard_domain_1', 'Technology', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;

INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES (
  'test_onboard_user_1',
  'Onboard Test User',
  'test_onboard_user@test.com',
  true, 'CONSULTEE', false,
  NOW(), NOW()
);

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES (
  'test_onboard_account_1',
  'test_onboard_user_1',
  'test_onboard_user_1',
  'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012',
  NOW(), NOW()
);
```

---

## 3. Test Scenario 1: Consultant Onboarding Flow (Chrome DevTools MCP)

### 3.1 Sign in and reach onboarding

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_onboard_user@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Complete Your Profile"  -- onboarding shell header
take_snapshot
```

### 3.2 Step 1: Role Selection

The screen should show:
- Title: **"Welcome! Let's get started"**
- Subtitle: **"Tell us how you'd like to use Familiarise."**
- Role cards: **"Consultant"** and **"Consultee"**

```
click → uid: [Consultant role card]
take_snapshot
click → uid: [Continue/Next button]
wait_for → text: "Personal Information"
```

### 3.3 Step 2: Personal Information

The screen should show:
- Title: **"Personal Information"**
- Fields: **"Full Name"**, **"Phone Number"**, **"Date of Birth"**, **"Gender"**, **"City"**, **"Country"**, **"LinkedIn Profile"**, **"Bio"**

```
take_snapshot
fill → uid: [Phone Number input], value: "+1234567890"
fill → uid: [City input], value: "San Francisco"
fill → uid: [Country input], value: "United States"
fill → uid: [Bio input], value: "Test consultant for onboarding"
click → uid: [Next button]
wait_for → text: "Professional Profile"
```

### 3.4 Step 3: Consultant Professional Profile

The screen should show:
- Title: **"Professional Profile"**
- Fields: **"Professional Headline"**, **"Years of Experience"**, **"Domain"**, etc.

```
take_snapshot
fill → uid: [Professional Headline input], value: "Senior Software Engineer"
fill → uid: [Years of Experience input], value: "5"
-- Select domain from dropdown
click → uid: [Domain dropdown]
-- Select "Technology" or first available option
take_snapshot
click → uid: [Next button]
```

### 3.5 Step 4: Availability Info

```
wait_for → text: "Availability Setup"
take_snapshot
```

The screen shows informational content about setting up availability on web. Just proceed:

```
click → uid: [Next button]
```

### 3.6 Steps 5-6: Agreement and Review

Continue through remaining steps:

```
-- Agreement step
take_snapshot
click → uid: [Next/Continue button]

-- Review step
take_snapshot
click → uid: [Submit button]
wait_for → text: "Dashboard"
take_screenshot
```

### 3.7 Verify onboarding completed in DB

```sql
-- execute_sql
SELECT id, name, "onboardingCompleted", role, "consultantProfileId"
FROM "User"
WHERE id = 'test_onboard_user_1';
```

**Expected:** `onboardingCompleted` = true, role = 'CONSULTANT', `consultantProfileId` is set.

---

## 4. Test Scenario 2: Save & Exit (Chrome DevTools MCP)

### 4.1 Reset user for another test

```sql
-- execute_sql
UPDATE "User"
SET "onboardingCompleted" = false, role = 'CONSULTEE', "consultantProfileId" = NULL
WHERE id = 'test_onboard_user_1';

DELETE FROM "ConsultantProfile" WHERE "userId" = 'test_onboard_user_1';
```

### 4.2 Sign in and start onboarding

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_onboard_user@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Complete Your Profile"
```

### 4.3 Click Save & Exit

```
take_snapshot
click → uid: [Save & Exit action button]  -- in AppBar
```

A dialog should appear with: **"Your progress has been saved. You can continue later from where you left off."**

```
take_snapshot
click → uid: [Exit / confirm button in dialog]
wait_for → text: "Welcome back"  -- redirected to sign-in
take_screenshot
```

---

## 5. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

DELETE FROM "ConsultantProfile" WHERE "userId" = 'test_onboard_user_1';
DELETE FROM "ConsulteeProfile" WHERE "userId" = 'test_onboard_user_1';
DELETE FROM "sessions" WHERE "userId" = 'test_onboard_user_1';
DELETE FROM "accounts" WHERE "userId" = 'test_onboard_user_1';
DELETE FROM "User" WHERE id = 'test_onboard_user_1';
DELETE FROM "Domain" WHERE id = 'test_onboard_domain_1';
```

---

## 6. Checklist

- [ ] User with onboardingCompleted=false redirected to onboarding
- [ ] Role selection step shows Consultant and Consultee options
- [ ] Personal information step shows correct fields
- [ ] Consultant profile step shows professional fields with domain dropdown
- [ ] Availability step shows informational content
- [ ] Successfully completed onboarding and reached dashboard
- [ ] DB: onboardingCompleted = true, consultantProfileId set
- [ ] Save & Exit shows confirmation dialog and redirects to sign-in
- [ ] Test data cleaned up
