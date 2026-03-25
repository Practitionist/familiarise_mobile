# Feature: Explore / Discovery

> **What this tests:** Browsing consultants, searching, filtering, viewing consultant profiles, and navigating to booking.
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

### 2.1 Create test consultants

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES
  ('test_explore_domain_1', 'Technology', NOW(), NOW()),
  ('test_explore_domain_2', 'Business', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;

-- Consultant 1
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_explore_user_1', 'Alice Engineer', 'test_explore_1@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_explore_acc_1', 'test_explore_user_1', 'test_explore_user_1', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating, headline,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  experience, "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_explore_cp_1', 'test_explore_user_1',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY', 4.8, 'Senior Flutter Developer at Google',
  90, true, 'VERIFIED',
  8.0, 25, 0, 0, NOW(), NOW()
);

UPDATE "User" SET "consultantProfileId" = 'test_explore_cp_1' WHERE id = 'test_explore_user_1';

-- Consultant 2
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_explore_user_2', 'Bob Startup', 'test_explore_2@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_explore_acc_2', 'test_explore_user_2', 'test_explore_user_2', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating, headline,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  experience, "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_explore_cp_2', 'test_explore_user_2',
  (SELECT id FROM "Domain" WHERE name = 'Business' LIMIT 1),
  'WEEKLY', 4.2, 'Startup Mentor & Investor',
  12.0, 40, 0, 0, NOW(), NOW()
);

UPDATE "User" SET "consultantProfileId" = 'test_explore_cp_2' WHERE id = 'test_explore_user_2';

-- Browsing user (consultee)
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_explore_user_browse', 'Browse User', 'test_explore_browse@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_explore_acc_browse', 'test_explore_user_browse', 'test_explore_user_browse', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());
```

### 2.2 Create consultation plans for consultants

```sql
-- execute_sql
INSERT INTO "ConsultationPlan" (id, title, description, price, "priceCurrency", "durationInMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES
  ('test_explore_plan_1', 'Flutter Code Review', 'Get your Flutter code reviewed by an expert.', 1999, 'INR', 60, 'test_explore_cp_1', NOW(), NOW()),
  ('test_explore_plan_2', 'Startup Strategy Session', 'One-on-one startup mentoring.', 4999, 'INR', 45, 'test_explore_cp_2', NOW(), NOW());
```

---

## 3. Test Scenario 1: Browse Consultants (Chrome DevTools MCP)

### 3.1 Sign in and navigate to explore

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_explore_browse@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"

navigate_page → url: {APP_URL}/explore
wait_for → text: "Explore"
take_snapshot
```

### 3.2 Verify consultant cards

The explore page should show consultant cards with:
- Profile image
- Name (e.g., **"Alice Engineer"**)
- Headline (e.g., **"Senior Flutter Developer at Google"**)
- Rating stars
- **"View plans"** button

```
take_screenshot  -- consultant list view
```

---

## 4. Test Scenario 2: Search Consultants (Chrome DevTools MCP)

### 4.1 Search for a consultant

```
take_snapshot
fill → uid: [Search bar], value: "Flutter"
```

Wait for debounced search (300ms):

```
take_snapshot
-- Verify: Only "Alice Engineer" card is shown (matches "Flutter" in headline)
take_screenshot
```

### 4.2 Clear search

```
click → uid: [Clear search button]
take_snapshot
-- Verify: Both consultant cards are visible again
```

---

## 5. Test Scenario 3: View Consultant Profile (Chrome DevTools MCP)

### 5.1 Click on a consultant card

```
take_snapshot
click → uid: [View plans button on Alice Engineer card]
wait_for → text: "Alice Engineer"
take_snapshot
```

The profile should show:
- Name: **"Alice Engineer"**
- Headline: **"Senior Flutter Developer at Google"**
- Rating stars
- Section: **"Consultation Plans"** with the "Flutter Code Review" plan
- Price shown

```
take_screenshot  -- consultant profile view
```

---

## 6. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

DELETE FROM "ConsultationPlan" WHERE id IN ('test_explore_plan_1', 'test_explore_plan_2');
UPDATE "User" SET "consultantProfileId" = NULL WHERE id IN ('test_explore_user_1', 'test_explore_user_2');
DELETE FROM "ConsultantProfile" WHERE id IN ('test_explore_cp_1', 'test_explore_cp_2');
DELETE FROM "sessions" WHERE "userId" IN ('test_explore_user_1', 'test_explore_user_2', 'test_explore_user_browse');
DELETE FROM "accounts" WHERE "userId" IN ('test_explore_user_1', 'test_explore_user_2', 'test_explore_user_browse');
DELETE FROM "User" WHERE id IN ('test_explore_user_1', 'test_explore_user_2', 'test_explore_user_browse');
DELETE FROM "Domain" WHERE id IN ('test_explore_domain_1', 'test_explore_domain_2');
```

---

## 7. Checklist

- [ ] Explore page loads with consultant cards
- [ ] Cards show name, headline, rating, and "View plans" button
- [ ] Search filters consultants by name/headline
- [ ] Clear search restores full list
- [ ] Clicking consultant navigates to profile page
- [ ] Profile shows name, headline, rating, and consultation plans
- [ ] Test data cleaned up
