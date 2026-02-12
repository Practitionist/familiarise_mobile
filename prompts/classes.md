# Feature: Classes

> **What this tests:** Browsing classes in Programs tab, viewing class details (curriculum, enrollment), and enrolling in a class.
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

### 2.1 Create consultant and class plan

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_class_domain', 'Technology', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;

INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_class_instructor', 'Class Instructor', 'test_class_instructor@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_class_instructor_acc', 'test_class_instructor', 'test_class_instructor', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_class_cp', 'test_class_instructor',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY', 4.7, 90, true, 'VERIFIED', 30, 0, 0, NOW(), NOW()
);

UPDATE "User" SET "consultantProfileId" = 'test_class_cp' WHERE id = 'test_class_instructor';

-- Class plan
INSERT INTO "ClassPlan" (
  id, title, description, price, "priceCurrency",
  "durationInMonths", "meetingsPerWeek", "sessionDurationInHours",
  "totalSessions", "totalHours", "maxParticipants",
  language, level, "learningOutcomes",
  "consultantProfileId",
  "createdAt", "updatedAt"
)
VALUES (
  'test_class_plan_1',
  'Full-Stack Development Bootcamp',
  'Comprehensive bootcamp covering frontend, backend, and deployment.',
  14999, 'INR',
  3, 2, 1.5,
  24, 36.0, 25,
  'English', 'Beginner',
  ARRAY['Build full-stack web applications', 'Deploy to production', 'Master modern development tools'],
  'test_class_cp',
  NOW(), NOW()
);

-- Student user
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_class_student', 'Class Student', 'test_class_student@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_class_student_acc', 'test_class_student', 'test_class_student', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());
```

---

## 3. Test Scenario 1: Browse Classes (Chrome DevTools MCP)

### 3.1 Sign in and navigate to Programs > Classes tab

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_class_student@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"

navigate_page → url: {APP_URL}/programs
wait_for → text: "Programs"
take_snapshot

click → uid: [Classes tab]
take_snapshot
```

### 3.2 Verify class cards

Look for class card with:
- Title: **"Full-Stack Development Bootcamp"**
- Instructor info
- Price: **"₹14999"**

```
take_screenshot  -- classes list
```

---

## 4. Test Scenario 2: View Class Detail (Chrome DevTools MCP)

### 4.1 Click on class card

```
click → uid: [Full-Stack Development Bootcamp card]
wait_for → text: "Full-Stack Development Bootcamp"
take_snapshot
```

### 4.2 Verify class detail page

The detail screen should show:
- Title: **"Full-Stack Development Bootcamp"**
- Instructor info: **"Class Instructor"**
- Info chips: **"3 months"**, **"24 sessions"**, **"Max 25"**, **"English"**, **"Beginner"**
- Section: **"About this class"** with description
- Section: **"What you'll learn"** with learning outcomes
- Bottom bar: Price and **"Enroll Now"** button

```
take_screenshot  -- class detail page
```

---

## 5. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

DELETE FROM "ClassPlan" WHERE id = 'test_class_plan_1';
UPDATE "User" SET "consultantProfileId" = NULL WHERE id = 'test_class_instructor';
DELETE FROM "ConsultantProfile" WHERE id = 'test_class_cp';
DELETE FROM "sessions" WHERE "userId" IN ('test_class_instructor', 'test_class_student');
DELETE FROM "accounts" WHERE "userId" IN ('test_class_instructor', 'test_class_student');
DELETE FROM "User" WHERE id IN ('test_class_instructor', 'test_class_student');
DELETE FROM "Domain" WHERE id = 'test_class_domain';
```

---

## 6. Checklist

- [ ] Programs page Classes tab shows class cards
- [ ] Class card shows title, instructor, and price
- [ ] Class detail shows title, instructor, info chips
- [ ] "About this class" section shows description
- [ ] "What you'll learn" section shows learning outcomes
- [ ] "Enroll Now" button visible in bottom bar
- [ ] Test data cleaned up
