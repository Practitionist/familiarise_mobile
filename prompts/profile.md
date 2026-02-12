# Feature: Profile Management

> **What this tests:** Profile screen menu, edit profile form (personal info, professional profile, social links), change password, active sessions, and account actions (sign out, delete account).
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

### 2.1 Create a consultant user with full profile

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_profile_domain', 'Technology', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;

INSERT INTO "User" (
  id, name, email, "emailVerified", role, "onboardingCompleted",
  phone, city, country, bio,
  "createdAt", "updatedAt"
)
VALUES (
  'test_profile_user',
  'Profile Test User',
  'test_profile_user@test.com',
  true, 'CONSULTANT', true,
  '+1234567890', 'San Francisco', 'United States', 'Experienced developer',
  NOW(), NOW()
);

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_profile_acc', 'test_profile_user', 'test_profile_user', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating, headline,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  experience, "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_profile_cp',
  'test_profile_user',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY', 4.5, 'Senior Software Engineer',
  80, true, 'VERIFIED',
  8.0, 10, 0, 0, NOW(), NOW()
);

UPDATE "User" SET "consultantProfileId" = 'test_profile_cp' WHERE id = 'test_profile_user';
```

---

## 3. Test Scenario 1: Profile Screen Menu (Chrome DevTools MCP)

### 3.1 Sign in and navigate to profile

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_profile_user@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"

navigate_page → url: {APP_URL}/profile
take_snapshot
```

### 3.2 Verify profile screen elements

The profile screen should show:
- User avatar (CircleAvatar)
- Name: **"Profile Test User"**
- Email: **"test_profile_user@test.com"**

**Menu items (ListTiles):**
- **"Edit Profile"**
- **"My Bookings"**
- **"Notifications"** (Coming soon)
- **"Support Tickets"**
- **"Send Feedback"**
- **"Change Password"**
- **"Active Sessions"**
- **"About"**
- **"Delete Account"** (red text)
- **"Sign Out"** (red text)

```
take_screenshot  -- profile screen with menu
```

---

## 4. Test Scenario 2: Edit Profile (Chrome DevTools MCP)

### 4.1 Navigate to edit profile

```
click → uid: [Edit Profile list tile]
wait_for → text: "Edit Profile"  -- or the form title
take_snapshot
```

### 4.2 Verify edit profile fields

**Personal Information section:**
- **"Full Name"** (pre-filled with "Profile Test User")
- **"Phone Number"** (pre-filled with "+1234567890")
- **"Date of Birth"** (date picker)
- **"Gender"** (dropdown)
- **"City"** (pre-filled with "San Francisco")
- **"Country"** (pre-filled with "United States")
- **"Bio"** (pre-filled, max 160 chars)

**Professional Profile section (consultant):**
- **"Professional Headline"** (pre-filled)
- **"Years of Experience"** (number input)
- **"Languages"** (tag input)
- **"Tools & Technologies"** (tag input)

```
take_screenshot  -- edit profile form
```

### 4.3 Edit a field and save

```
fill → uid: [City input], value: "New York"
take_snapshot
click → uid: [Save button]  -- in AppBar
```

Wait for save to complete, then verify:

```
take_snapshot
-- Verify: success message or profile updated
```

### 4.4 Verify edit was saved in DB

```sql
-- execute_sql
SELECT city FROM "User" WHERE id = 'test_profile_user';
```

**Expected:** `city` = 'New York'.

---

## 5. Test Scenario 3: Change Password (Chrome DevTools MCP)

### 5.1 Navigate to change password

```
navigate_page → url: {APP_URL}/profile
take_snapshot
click → uid: [Change Password list tile]
wait_for → text: "Change Password"
take_snapshot
```

### 5.2 Verify change password form

The form should show:
- **"Current Password"** field
- **"New Password"** field (min 8 chars)
- **"Confirm New Password"** field
- **"Change Password"** button

```
take_screenshot  -- change password screen
```

---

## 6. Test Scenario 4: Active Sessions (Chrome DevTools MCP)

### 6.1 Navigate to active sessions

```
navigate_page → url: {APP_URL}/profile
take_snapshot
click → uid: [Active Sessions list tile]
wait_for → text: "Active Sessions"
take_snapshot
```

### 6.2 Verify active sessions screen

Should show list of active sessions with device info and timestamps.

```
take_screenshot  -- active sessions
```

---

## 7. Test Scenario 5: About Dialog (Chrome DevTools MCP)

```
navigate_page → url: {APP_URL}/profile
take_snapshot
click → uid: [About list tile]
```

A dialog should appear with: **"Familiarise"** and version info.

```
take_snapshot
take_screenshot  -- about dialog
```

---

## 8. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

-- Reset city back to original
UPDATE "User" SET city = 'San Francisco' WHERE id = 'test_profile_user';

UPDATE "User" SET "consultantProfileId" = NULL WHERE id = 'test_profile_user';
DELETE FROM "ConsultantProfile" WHERE id = 'test_profile_cp';
DELETE FROM "sessions" WHERE "userId" = 'test_profile_user';
DELETE FROM "accounts" WHERE "userId" = 'test_profile_user';
DELETE FROM "User" WHERE id = 'test_profile_user';
DELETE FROM "Domain" WHERE id = 'test_profile_domain';
```

---

## 9. Checklist

- [ ] Profile screen shows user avatar, name, and email
- [ ] All menu items are visible (Edit Profile, My Bookings, etc.)
- [ ] Edit Profile shows personal info fields pre-filled
- [ ] Edit Profile shows professional profile fields (consultant only)
- [ ] Field edit + save updates the database
- [ ] Change Password screen shows correct form fields
- [ ] Active Sessions screen lists sessions
- [ ] About dialog shows app name and version
- [ ] Sign Out and Delete Account menu items visible (red text)
- [ ] Test data cleaned up
