# Feature: Dashboard

> **What this tests:** Role-specific dashboards (Consultant vs Consultee), stats cards, summary widgets, quick actions, and navigation from dashboard to other features.
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
| Consultant | test_dash_consultant@test.com | TestPassword123 | CONSULTANT |
| Consultee | test_dash_consultee@test.com | TestPassword123 | CONSULTEE |

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create consultant user with profile

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_dash_domain_1', 'Technology', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;

INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES (
  'test_dash_consultant_user',
  'Dashboard Consultant',
  'test_dash_consultant@test.com',
  true, 'CONSULTANT', true,
  NOW(), NOW()
);

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES (
  'test_dash_account_consultant',
  'test_dash_consultant_user',
  'test_dash_consultant_user',
  'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012',
  NOW(), NOW()
);

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_dash_cp_1',
  'test_dash_consultant_user',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY', 4.5,
  80, true, 'VERIFIED',
  10, 150000, 25000,
  NOW(), NOW()
);

UPDATE "User"
SET "consultantProfileId" = 'test_dash_cp_1'
WHERE id = 'test_dash_consultant_user';
```

### 2.2 Create consultee user

```sql
-- execute_sql
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES (
  'test_dash_consultee_user',
  'Dashboard Consultee',
  'test_dash_consultee@test.com',
  true, 'CONSULTEE', true,
  NOW(), NOW()
);

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES (
  'test_dash_account_consultee',
  'test_dash_consultee_user',
  'test_dash_consultee_user',
  'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012',
  NOW(), NOW()
);
```

---

## 3. Test Scenario 1: Consultant Dashboard (Chrome DevTools MCP)

### 3.1 Sign in as consultant

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_dash_consultant@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Welcome back, Dashboard Consultant!"
take_snapshot
```

### 3.2 Verify consultant dashboard elements

The consultant dashboard should show:

**Header:**
- Title: **"Welcome back, Dashboard Consultant!"**
- Subtitle: **"Here's what needs your attention"**

**Stats Overview Card (4 stats):**
- **"Total Clients"** with count
- **"Sessions"** with count
- **"Avg Rating"** with rating (e.g., "4.5")
- **"Earnings"** with amount in INR

**Web App Banner** (dismissible):
- Title: **"Manage on Web"**
- Button: **"Open Web App"**

**Referral Summary Card:**
- Text: **"Referrals"** header
- Either referral code display or **"Generate Referral Code"** button

```
take_screenshot  -- full dashboard view
```

### 3.3 Dismiss web app banner (if visible)

```
take_snapshot
click → uid: [Close button on web app banner]
take_snapshot
-- Verify: banner is no longer visible
```

---

## 4. Test Scenario 2: Consultee Dashboard (Chrome DevTools MCP)

### 4.1 Sign in as consultee

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_dash_consultee@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Welcome back, Dashboard Consultee!"
take_snapshot
```

### 4.2 Verify consultee dashboard elements

The consultee dashboard should show:

**Header:**
- Title: **"Welcome back, Dashboard Consultee!"**
- Subtitle: **"Your consultation dashboard"**

**Stats Overview Card (4 stats):**
- **"Upcoming"** with session count
- **"Completed"** with session count
- **"Subscriptions"** with count
- **"Total Spent"** with amount

**Quick Actions Row (3 buttons):**
- **"Find Expert"** → navigates to `/explore`
- **"My Bookings"** → navigates to `/my-bookings`
- **"Messages"** → navigates to `/messages`

**Upcoming Sessions (empty state):**
- Icon: calendar
- Text: **"No upcoming sessions"**
- Text: **"Find an expert and book your first consultation"**
- Button: **"Explore Experts"**

```
take_screenshot  -- consultee dashboard
```

### 4.3 Test quick action navigation

```
take_snapshot
click → uid: [Find Expert button]
wait_for → text: "Explore"
take_screenshot

navigate_page → type: back
wait_for → text: "Dashboard"
```

---

## 5. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

UPDATE "User" SET "consultantProfileId" = NULL WHERE id = 'test_dash_consultant_user';
DELETE FROM "ConsultantProfile" WHERE id = 'test_dash_cp_1';
DELETE FROM "sessions" WHERE "userId" IN ('test_dash_consultant_user', 'test_dash_consultee_user');
DELETE FROM "accounts" WHERE "userId" IN ('test_dash_consultant_user', 'test_dash_consultee_user');
DELETE FROM "User" WHERE id IN ('test_dash_consultant_user', 'test_dash_consultee_user');
DELETE FROM "Domain" WHERE id = 'test_dash_domain_1';
```

---

## 6. Checklist

- [ ] Consultant dashboard shows personalized welcome with name
- [ ] Stats overview shows 4 metrics (clients, sessions, rating, earnings)
- [ ] Web app banner is dismissible
- [ ] Referral summary card is visible
- [ ] Consultee dashboard shows different stats (upcoming, completed, subscriptions, spent)
- [ ] Quick actions row shows 3 buttons (Find Expert, My Bookings, Messages)
- [ ] Empty state for upcoming sessions shows "Explore Experts" button
- [ ] Quick action buttons navigate to correct routes
- [ ] Test data cleaned up
