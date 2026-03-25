# Feature: Webinars

> **What this tests:** Browsing webinars in Programs tab, viewing webinar details, upcoming sessions, and booking/registering for a webinar.
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

### 2.1 Create consultant and webinar plan with a session

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_webinar_domain', 'Technology', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;

INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_webinar_host', 'Webinar Host', 'test_webinar_host@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_webinar_host_acc', 'test_webinar_host', 'test_webinar_host', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_webinar_cp', 'test_webinar_host',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY', 4.9, 95, true, 'VERIFIED', 50, 0, 0, NOW(), NOW()
);

UPDATE "User" SET "consultantProfileId" = 'test_webinar_cp' WHERE id = 'test_webinar_host';

-- Webinar plan
INSERT INTO "WebinarPlan" (
  id, title, description, price, "priceCurrency",
  "durationInHours", "maxParticipants", language, level,
  "learningOutcomes",
  "consultantProfileId",
  "createdAt", "updatedAt"
)
VALUES (
  'test_webinar_plan_1',
  'Flutter State Management Deep Dive',
  'Master Riverpod, BLoC, and other state management solutions in Flutter.',
  499, 'INR', 2.0, 100, 'English', 'Intermediate',
  ARRAY['Understand reactive programming', 'Master Riverpod providers', 'Build scalable state architecture'],
  'test_webinar_cp',
  NOW(), NOW()
);

-- Upcoming webinar session
INSERT INTO "Webinar" (
  id, "webinarPlanId", "scheduledAt", "durationInHours",
  status, "maxParticipants", "currentParticipants",
  "createdAt", "updatedAt"
)
VALUES (
  'test_webinar_session_1',
  'test_webinar_plan_1',
  NOW() + INTERVAL '7 days',
  2.0,
  'SCHEDULED', 100, 5,
  NOW(), NOW()
);

-- Attendee user
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_webinar_attendee', 'Webinar Attendee', 'test_webinar_attendee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_webinar_attendee_acc', 'test_webinar_attendee', 'test_webinar_attendee', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());
```

---

## 3. Test Scenario 1: Browse Webinars in Programs (Chrome DevTools MCP)

### 3.1 Sign in and navigate to Programs

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_webinar_attendee@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"

navigate_page → url: {APP_URL}/programs
wait_for → text: "Programs"
take_snapshot
```

### 3.2 Verify Webinars tab

The Programs screen should show 2 tabs: **"Webinars"** and **"Classes"**

On the Webinars tab, verify webinar cards with:
- Title: **"Flutter State Management Deep Dive"**
- Host info
- Price

```
take_screenshot  -- webinars list
```

---

## 4. Test Scenario 2: View Webinar Detail (Chrome DevTools MCP)

### 4.1 Click on webinar card

```
click → uid: [Flutter State Management Deep Dive card]
wait_for → text: "Flutter State Management Deep Dive"
take_snapshot
```

### 4.2 Verify webinar detail page

The detail screen should show:
- Title: **"Flutter State Management Deep Dive"**
- Consultant info card with **"Webinar Host"**
- Info chips: **"2 hours"**, **"Max 100"**, **"English"**, **"Intermediate"**
- Section: **"About this webinar"** with description
- Section: **"What you'll learn"** with learning outcomes list
- Section: **"Upcoming Sessions"** with session card showing date and **"Available"** badge
- Bottom bar: Price **"From ₹499"** and **"Book Now"** button

```
take_screenshot  -- webinar detail page
```

---

## 5. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

DELETE FROM "Webinar" WHERE id = 'test_webinar_session_1';
DELETE FROM "WebinarPlan" WHERE id = 'test_webinar_plan_1';
UPDATE "User" SET "consultantProfileId" = NULL WHERE id = 'test_webinar_host';
DELETE FROM "ConsultantProfile" WHERE id = 'test_webinar_cp';
DELETE FROM "sessions" WHERE "userId" IN ('test_webinar_host', 'test_webinar_attendee');
DELETE FROM "accounts" WHERE "userId" IN ('test_webinar_host', 'test_webinar_attendee');
DELETE FROM "User" WHERE id IN ('test_webinar_host', 'test_webinar_attendee');
DELETE FROM "Domain" WHERE id = 'test_webinar_domain';
```

---

## 6. Checklist

- [ ] Programs page loads with Webinars and Classes tabs
- [ ] Webinars tab shows webinar cards
- [ ] Webinar detail shows title, host, info chips, description
- [ ] "What you'll learn" section shows learning outcomes
- [ ] "Upcoming Sessions" shows session with "Available" badge
- [ ] Bottom bar shows price and "Book Now" button
- [ ] Test data cleaned up
