# Feature: Consultations

> **What this tests:** Browsing consultation plans, booking a consultation (date/time slot selection), viewing bookings in My Bookings, and booking detail screen.
>
> **Prerequisites:** Flutter web running at `http://localhost:<PORT>`, Supabase project accessible via MCP.

---

## 1. Configuration

```
APP_URL             = http://localhost:<PORT>
SUPABASE_PROJECT_ID = <your-project-id>
```

**Test users:**

| User | Email | Password | Role |
|------|-------|----------|------|
| Consultant | test_consult_expert@test.com | TestPassword123 | CONSULTANT |
| Consultee | test_consult_client@test.com | TestPassword123 | CONSULTEE |

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create consultant with availability and plan

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_consult_domain', 'Technology', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;

-- Consultant user
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_consult_expert_user', 'Expert Consultant', 'test_consult_expert@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_consult_expert_acc', 'test_consult_expert_user', 'test_consult_expert_user', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_consult_cp', 'test_consult_expert_user',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY', 4.7,
  85, true, 'VERIFIED',
  15, 0, 0, NOW(), NOW()
);

UPDATE "User" SET "consultantProfileId" = 'test_consult_cp' WHERE id = 'test_consult_expert_user';

-- Consultation plan
INSERT INTO "ConsultationPlan" (
  id, title, description, price, "priceCurrency",
  "durationInMinutes", "consultantProfileId",
  "createdAt", "updatedAt"
)
VALUES (
  'test_consult_plan_1',
  '1:1 Code Review',
  'Get personalized code review and architecture feedback.',
  1999, 'INR', 60,
  'test_consult_cp',
  NOW(), NOW()
);

-- Client user
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_consult_client_user', 'Client User', 'test_consult_client@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_consult_client_acc', 'test_consult_client_user', 'test_consult_client_user', 'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());
```

---

## 3. Test Scenario 1: Browse and Book a Consultation (Chrome DevTools MCP)

### 3.1 Sign in as client and find the consultant

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_consult_client@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"

navigate_page → url: {APP_URL}/explore
wait_for → text: "Explore"
take_snapshot
```

### 3.2 Navigate to consultant profile

Find the consultant card for "Expert Consultant" and click "View plans":

```
click → uid: [View plans button for Expert Consultant]
wait_for → text: "Expert Consultant"
take_snapshot
```

### 3.3 View consultation plan

The profile should show the **"Consultation Plans"** section with:
- Plan title: **"1:1 Code Review"**
- Price: **"₹1999"**
- Duration info

```
take_screenshot  -- consultant profile with plan
```

### 3.4 Start booking flow

Click on the plan to start booking:

```
click → uid: [1:1 Code Review plan card or Book button]
wait_for → text: "Book Consultation"
take_snapshot
```

### 3.5 Select date and time slot

The booking screen should show:
- AppBar: **"Book Consultation"**
- Consultant info card
- Plan info card
- Date selector (scrollable, next 14 days)
- Time slot grid

```
-- Select a date
click → uid: [a date button in the date selector]
take_snapshot
-- Verify: time slots appear for that date

-- Select a time slot (if available)
click → uid: [an available time slot]
take_snapshot
take_screenshot  -- booking with date and slot selected
```

### 3.6 Add optional message and book

```
fill → uid: [Message/notes input], value: "Looking forward to the code review!"
click → uid: [Book Consultation button]
```

This should navigate to checkout or create a booking request.

```
take_screenshot
```

---

## 4. Test Scenario 2: View My Bookings (Chrome DevTools MCP)

### 4.1 Navigate to My Bookings

```
navigate_page → url: {APP_URL}/my-bookings
wait_for → text: "My Bookings"
take_snapshot
```

### 4.2 Verify booking tabs

The screen should show tabs:
- **"Consultations"** (active)
- **"Subscriptions"**
- **"Webinars"**
- **"Classes"**

And status filter chips: **"All"**, **"Pending"**, **"Approved"**, **"Scheduled"**, **"Completed"**, **"Cancelled"**

```
take_screenshot  -- My Bookings screen
```

### 4.3 Check empty states

Click on each tab to see empty states:

```
click → uid: [Subscriptions tab]
take_snapshot
-- Verify: "No subscriptions" empty state

click → uid: [Webinars tab]
take_snapshot
-- Verify: "No webinars" empty state

click → uid: [Classes tab]
take_snapshot
-- Verify: "No classes" empty state
```

---

## 5. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

DELETE FROM "ConsultationPlan" WHERE id = 'test_consult_plan_1';
UPDATE "User" SET "consultantProfileId" = NULL WHERE id = 'test_consult_expert_user';
DELETE FROM "ConsultantProfile" WHERE id = 'test_consult_cp';
DELETE FROM "sessions" WHERE "userId" IN ('test_consult_expert_user', 'test_consult_client_user');
DELETE FROM "accounts" WHERE "userId" IN ('test_consult_expert_user', 'test_consult_client_user');
DELETE FROM "User" WHERE id IN ('test_consult_expert_user', 'test_consult_client_user');
DELETE FROM "Domain" WHERE id = 'test_consult_domain';
```

---

## 6. Checklist

- [ ] Consultant profile shows consultation plan with title and price
- [ ] Booking screen shows date selector and time slot grid
- [ ] Date selection updates available time slots
- [ ] Optional message field works
- [ ] Book button navigates to checkout/creates request
- [ ] My Bookings shows 4 tabs (Consultations, Subscriptions, Webinars, Classes)
- [ ] Status filter chips are visible
- [ ] Empty states shown for tabs with no bookings
- [ ] Test data cleaned up
