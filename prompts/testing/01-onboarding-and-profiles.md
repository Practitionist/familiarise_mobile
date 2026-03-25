# E2E Test: Onboarding & Profile Management

> **What this tests:** Full onboarding flows for consultee/consultant, profile editing, professional background, verification.
>
> **Tools:** Supabase MCP, Chrome DevTools MCP, GitHub (bug reporting).

---

## Instructions for AI Agent

You are an E2E testing agent. Follow the same instructions as `00-setup-and-auth.md`:
- Seed data → Test via UI → Verify via SQL → File bugs as GitHub issues → Clean up
- Take snapshots before interacting, screenshots at key moments
- **Create GitHub issues for ANY bug** with steps to reproduce, expected/actual, screenshot

---

## 1. Configuration

```
APP_URL   = http://localhost:3000
REPO      = Practitionist/familiarise_mobile
```

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create a fresh user for onboarding (no profile yet)

```sql
-- execute_sql
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_e2e_onb_user1', 'Onboarding Consultee', 'test_e2e_onb_cee@test.com', true, 'CONSULTEE', false, NOW(), NOW()),
  ('test_e2e_onb_user2', 'Onboarding Consultant', 'test_e2e_onb_cnt@test.com', true, 'CONSULTEE', false, NOW(), NOW()),
  ('test_e2e_onb_user3', 'Profile Edit User', 'test_e2e_profile@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_e2e_onb_acc1', 'test_e2e_onb_user1', 'test_e2e_onb_user1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_e2e_onb_acc2', 'test_e2e_onb_user2', 'test_e2e_onb_user2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_e2e_onb_acc3', 'test_e2e_onb_user3', 'test_e2e_onb_user3', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_e2e_onb_ck1', 'test_e2e_onb_user1', true, NOW(), NOW()),
  ('test_e2e_onb_ck2', 'test_e2e_onb_user2', true, NOW(), NOW()),
  ('test_e2e_onb_ck3', 'test_e2e_onb_user3', true, NOW(), NOW());

INSERT INTO "notification_preferences" (id, "userId")
VALUES
  ('test_e2e_onb_np1', 'test_e2e_onb_user1'),
  ('test_e2e_onb_np2', 'test_e2e_onb_user2'),
  ('test_e2e_onb_np3', 'test_e2e_onb_user3');
```

### 2.2 Create domain data for consultant onboarding

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_e2e_domain1', 'Technology', NOW(), NOW())
ON CONFLICT (id) DO NOTHING;

INSERT INTO "SubDomain" (id, name, "domainId", "createdAt", "updatedAt")
VALUES ('test_e2e_subdomain1', 'Software Engineering', 'test_e2e_domain1', NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
```

### 2.3 Create consultant profile for profile-edit user

```sql
-- execute_sql
INSERT INTO "ConsultantProfile" (id, "userId", "domainId", headline, description, experience, "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_e2e_onb_cp3', 'test_e2e_onb_user3', 'test_e2e_domain1', 'Senior Engineer', 'Expert in Flutter', 5.0, 'PENDING_VERIFICATION', NOW(), NOW());

UPDATE "users" SET "consultantProfileId" = 'test_e2e_onb_cp3' WHERE id = 'test_e2e_onb_user3';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_e2e_onb_cee3', 'test_e2e_onb_user3', NOW(), NOW());

UPDATE "users" SET "consulteeProfileId" = 'test_e2e_onb_cee3' WHERE id = 'test_e2e_onb_user3';
```

---

## 3. Test Scenarios

### Scenario 1: Consultee Onboarding (6 Steps)

1. Sign in as onboarding consultee user
   ```
   navigate_page → url: http://localhost:3000/auth/sign-in
   wait_for → text: "Welcome" OR text: "Sign In"
   take_snapshot
   fill → uid: [Email], value: "test_e2e_onb_cee@test.com"
   fill → uid: [Password], value: "TestPassword123"
   click → uid: [Sign In]
   wait_for → text: "Complete Your Profile" OR text: "Role"
   take_screenshot
   ```

2. **Step 0 — Role Selection:** Select "Consultee"
   ```
   take_snapshot
   -- Look for role selection cards (Consultee / Consultant)
   click → uid: [Consultee card/option]
   click → uid: [Continue / Next button]
   wait_for → text: "Personal"
   take_snapshot
   ```

3. **Step 1 — Personal Info:** Fill name, phone, etc.
   ```
   fill → uid: [Name], value: "E2E Consultee Test"
   fill → uid: [Phone], value: "+919876543210"
   -- Select timezone if dropdown exists
   -- Fill city, country if visible
   click → uid: [Continue]
   wait_for → text: "Profile" OR text: "Your Profile"
   take_snapshot
   ```

4. **Step 2 — Consultee Profile:** Fill occupation, career stage
   ```
   fill → uid: [Occupation], value: "Software Engineer"
   -- Select career stage if dropdown
   -- Fill skills if chips/tags
   click → uid: [Continue]
   ```

5. **Step 3 — Preferences:** Budget, communication, language
   ```
   take_snapshot
   -- Select budget preference if available
   -- Select communication method
   click → uid: [Continue]
   ```

6. **Step 4 — Agreement:** Accept terms
   ```
   take_snapshot
   click → uid: [Terms checkbox]
   click → uid: [Privacy checkbox]
   click → uid: [Continue]
   ```

7. **Step 5 — Review:** Check all data and submit
   ```
   take_snapshot
   take_screenshot
   click → uid: [Submit button]
   wait_for → text: "Dashboard" OR url_change
   take_screenshot
   ```

8. **Verify:** Database updated
   ```sql
   SELECT "onboardingCompleted", role FROM "users" WHERE id = 'test_e2e_onb_user1';
   SELECT id FROM "ConsulteeProfile" WHERE "userId" = 'test_e2e_onb_user1';
   ```

### Scenario 2: Consultant Onboarding (7 Steps)

1. Sign in as consultant onboarding user
   ```
   navigate_page → url: http://localhost:3000/auth/sign-in
   -- (fill test_e2e_onb_cnt@test.com / TestPassword123, sign in)
   ```

2. **Step 0 — Role:** Select "Consultant"
3. **Step 1 — Personal Info:** Fill name, phone, bio
4. **Step 2 — Professional Profile:**
   ```
   fill → uid: [Headline], value: "Flutter Expert"
   fill → uid: [Description], value: "10 years of mobile development"
   fill → uid: [Experience], value: "10"
   -- Select domain (Technology)
   -- Select subdomains
   -- Add languages
   click → uid: [Continue]
   ```

5. **Step 3 — Professional Background:**
   ```
   take_snapshot
   -- Click "Add" for Work Experience
   -- Fill company, title, dates
   -- Click "Add" for Education
   -- Fill institution, degree
   click → uid: [Continue]
   ```

6. **Step 4 — Availability Info:**
   ```
   take_snapshot
   click → uid: [Continue]
   ```

7. **Step 5 — Agreement:** Accept terms + privacy
8. **Step 6 — Review:** Submit

9. **Verify:** Consultant profile created
   ```sql
   SELECT cp.id, cp.headline, cp."domainId"
   FROM "ConsultantProfile" cp
   JOIN "users" u ON cp."userId" = u.id
   WHERE u.id = 'test_e2e_onb_user2';
   ```

### Scenario 3: Profile Editing

1. Sign in as profile-edit user (test_e2e_profile@test.com)

2. Navigate to edit profile
   ```
   navigate_page → url: http://localhost:3000/profile/edit
   wait_for → text: "Edit" OR text: "Profile"
   take_snapshot
   ```

3. Update fields
   ```
   -- Clear and re-fill name
   fill → uid: [Name], value: "Updated E2E Name"
   fill → uid: [Bio], value: "Updated bio for testing"
   fill → uid: [City], value: "Mumbai"
   click → uid: [Save / Update button]
   wait_for → text: "saved" OR text: "updated" OR timeout: 5000
   take_screenshot
   ```

4. **Verify:**
   ```sql
   SELECT name, bio, city FROM "users" WHERE id = 'test_e2e_onb_user3';
   ```

### Scenario 4: Consultant Verification Submit

1. Sign in as consultant user (test_e2e_profile@test.com)

2. Navigate to verification
   ```
   navigate_page → url: http://localhost:3000/verification
   wait_for → text: "Verification" OR text: "Submit"
   take_snapshot
   take_screenshot
   ```

3. If "Submit Verification" button exists, click it
   ```
   navigate_page → url: http://localhost:3000/verification/submit
   wait_for → text: "Submit" OR text: "Upload"
   take_snapshot
   ```

4. Fill notes and submit (skip document upload for Chrome emulator)
   ```
   fill → uid: [Notes field], value: "E2E test verification"
   click → uid: [Submit button]
   wait_for → timeout: 5000
   take_screenshot
   ```

5. **Verify:**
   ```sql
   SELECT id, status, notes FROM "ConsultantProfileVerification"
   WHERE "consultantProfileId" = 'test_e2e_onb_cp3';
   ```

---

## 4. Cleanup

```sql
-- execute_sql
DELETE FROM "ConsultantProfileVerification" WHERE "consultantProfileId" LIKE 'test_e2e_onb%';
DELETE FROM "WorkExperience" WHERE "userId" LIKE 'test_e2e_onb%';
DELETE FROM "Education" WHERE "userId" LIKE 'test_e2e_onb%';
DELETE FROM "Certification" WHERE "userId" LIKE 'test_e2e_onb%';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_e2e_onb%';
DELETE FROM "ConsultantProfile" WHERE id LIKE 'test_e2e_onb%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_e2e_onb%';
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_e2e_onb%';
DELETE FROM "cookie_preferences" WHERE "userId" LIKE 'test_e2e_onb%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_e2e_onb%';
DELETE FROM "users" WHERE id LIKE 'test_e2e_onb%';
DELETE FROM "SubDomain" WHERE id LIKE 'test_e2e_%';
DELETE FROM "Domain" WHERE id LIKE 'test_e2e_%';
```

---

## 5. Checklist

- [ ] Consultee onboarding completes all 6 steps
- [ ] Consultant onboarding completes all 7 steps (including background)
- [ ] Profile editing saves changes
- [ ] Verification submission works
- [ ] All bugs filed as GitHub issues
- [ ] Test data cleaned up
