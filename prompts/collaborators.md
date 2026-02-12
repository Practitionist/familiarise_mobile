# Feature: Collaborator System

> **What this tests:** Viewing collaboration invitations, accepting/declining collaborations, active collaborations display, and the dashboard collaborations summary card.
>
> **Prerequisites:** Flutter web running at `http://localhost:<PORT>`, Supabase project accessible via MCP.

---

## 1. Configuration

```
APP_URL             = http://localhost:<PORT>
SUPABASE_PROJECT_ID = <your-project-id>
```

**Test users:**

| User | Email | Password | Role | Purpose |
|------|-------|----------|------|---------|
| Host consultant | test_collab_host@test.com | TestPassword123 | CONSULTANT | Owns the webinar + class plans |
| Collaborator consultant | test_collab_invitee@test.com | TestPassword123 | CONSULTANT | Invited to collaborate |

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create test domain

```sql
-- execute_sql
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_collab_domain_1', 'Technology', NOW(), NOW())
ON CONFLICT (name) DO NOTHING;
```

### 2.2 Create host consultant (plan owner)

```sql
-- execute_sql

-- Create host user
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES (
  'test_collab_user_host',
  'Host Consultant',
  'test_collab_host@test.com',
  true, 'CONSULTANT', true,
  NOW(), NOW()
);

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES (
  'test_collab_account_host',
  'test_collab_user_host',
  'test_collab_user_host',
  'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012',
  NOW(), NOW()
);

-- Create host ConsultantProfile
INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_collab_cp_host',
  'test_collab_user_host',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY', 4.8,
  90, true, 'VERIFIED',
  25, 0, 0,
  NOW(), NOW()
);

UPDATE "User"
SET "consultantProfileId" = 'test_collab_cp_host'
WHERE id = 'test_collab_user_host';
```

### 2.3 Create collaborator consultant (invitee)

```sql
-- execute_sql

-- Create invitee user
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES (
  'test_collab_user_invitee',
  'Collaborator User',
  'test_collab_invitee@test.com',
  true, 'CONSULTANT', true,
  NOW(), NOW()
);

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES (
  'test_collab_account_invitee',
  'test_collab_user_invitee',
  'test_collab_user_invitee',
  'credential',
  '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012',
  NOW(), NOW()
);

-- Create invitee ConsultantProfile
INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", "scheduleType", rating,
  "profileCompletionPercentage", "isVerified", "verificationStatus",
  "totalMenteesHelped", "totalRevenue", "pendingRevenue",
  "createdAt", "updatedAt"
)
VALUES (
  'test_collab_cp_invitee',
  'test_collab_user_invitee',
  (SELECT id FROM "Domain" WHERE name = 'Technology' LIMIT 1),
  'WEEKLY', 4.2,
  70, true, 'VERIFIED',
  5, 0, 0,
  NOW(), NOW()
);

UPDATE "User"
SET "consultantProfileId" = 'test_collab_cp_invitee'
WHERE id = 'test_collab_user_invitee';
```

### 2.4 Create a WebinarPlan owned by the host

```sql
-- execute_sql
INSERT INTO "WebinarPlan" (
  id, title, price, "priceCurrency", "durationInHours",
  "maxParticipants", language, level,
  "consultantProfileId",
  "createdAt", "updatedAt"
)
VALUES (
  'test_collab_webinar_plan_1',
  'Advanced Flutter Architecture',
  2999, 'INR', 2.0,
  50, 'English', 'Advanced',
  'test_collab_cp_host',
  NOW(), NOW()
);
```

### 2.5 Create a ClassPlan owned by the host

```sql
-- execute_sql
INSERT INTO "ClassPlan" (
  id, title, description, price, "priceCurrency",
  "durationInMonths", "meetingsPerWeek", "sessionDurationInHours",
  "totalSessions", "totalHours", "maxParticipants",
  language, level,
  "consultantProfileId",
  "createdAt", "updatedAt"
)
VALUES (
  'test_collab_class_plan_1',
  'React Masterclass',
  'Comprehensive React course covering hooks, context, and advanced patterns.',
  9999, 'INR',
  2, 2, 1.5,
  16, 24.0, 20,
  'English', 'Intermediate',
  'test_collab_cp_host',
  NOW(), NOW()
);
```

### 2.6 Create pending collaboration invitations

```sql
-- execute_sql

-- Webinar collaboration: invitee as CO_HOST
INSERT INTO "WebinarCollaborator" (
  id, "consultantProfileId", "webinarPlanId",
  role, "revenueSharePercentage", status, "invitedById",
  "createdAt", "updatedAt"
)
VALUES (
  'test_collab_wc_1',
  'test_collab_cp_invitee',
  'test_collab_webinar_plan_1',
  'CO_HOST', 30.0, 'PENDING', 'test_collab_cp_host',
  NOW(), NOW()
);

-- Class collaboration: invitee as TEACHING_ASSISTANT
INSERT INTO "ClassCollaborator" (
  id, "consultantProfileId", "classPlanId",
  role, "revenueSharePercentage", status, "invitedById",
  "createdAt", "updatedAt"
)
VALUES (
  'test_collab_cc_1',
  'test_collab_cp_invitee',
  'test_collab_class_plan_1',
  'TEACHING_ASSISTANT', 15.0, 'PENDING', 'test_collab_cp_host',
  NOW(), NOW()
);
```

### 2.7 Verify seed data

```sql
-- execute_sql
SELECT wc.id, wc.role, wc.status, wc."revenueSharePercentage",
       wp.title AS "planTitle"
FROM "WebinarCollaborator" wc
JOIN "WebinarPlan" wp ON wp.id = wc."webinarPlanId"
WHERE wc.id = 'test_collab_wc_1';

SELECT cc.id, cc.role, cc.status, cc."revenueSharePercentage",
       cp.title AS "planTitle"
FROM "ClassCollaborator" cc
JOIN "ClassPlan" cp ON cp.id = cc."classPlanId"
WHERE cc.id = 'test_collab_cc_1';
```

**Expected:**
- WebinarCollaborator: role = CO_HOST, status = PENDING, 30% share, plan = "Advanced Flutter Architecture"
- ClassCollaborator: role = TEACHING_ASSISTANT, status = PENDING, 15% share, plan = "React Masterclass"

---

## 3. Test Scenario 1: View Pending Invitations (Chrome DevTools MCP)

### 3.1 Sign in as the collaborator (invitee)

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_collab_invitee@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"
```

### 3.2 Check dashboard collaborations summary card

```
take_snapshot
```

Look for the `CollaborationsSummaryCard` which displays:
- Text: **"Collaborations"**
- Text: **"0 active"** (no accepted collaborations yet)
- Text with **"2 pending"** indicator
- A red badge showing **"2"**

```
take_screenshot  -- visual verification of dashboard card
```

### 3.3 Navigate to collaborations page

```
click → uid: [Collaborations card]  (the entire card is tappable)
wait_for → text: "Pending Invitations"
take_snapshot
```

Or navigate directly:

```
navigate_page → url: {APP_URL}/collaborations
wait_for → text: "Pending Invitations"
take_snapshot
```

### 3.4 Verify pending invitations section

The collaborations screen should show:

**"Pending Invitations"** section header with red badge **"2"**

Two collaboration cards, each showing:

**Card 1 (Webinar):**
- Plan title: **"Advanced Flutter Architecture"**
- Type badge: **"Webinar"** (purple)
- Role badge: **"Co-Host"**
- Revenue share: **"30% share"**
- Host info: **"Host: Host Consultant"**
- Buttons: **"Decline"** (outlined) and **"Accept"** (filled)

**Card 2 (Class):**
- Plan title: **"React Masterclass"**
- Type badge: **"Class"** (blue)
- Role badge: **"TA"** (Teaching Assistant)
- Revenue share: **"15% share"**
- Host info: **"Host: Host Consultant"**
- Buttons: **"Decline"** (outlined) and **"Accept"** (filled)

```
take_screenshot  -- visual verification of pending invitations
```

---

## 4. Test Scenario 2: Accept a Webinar Collaboration (Chrome DevTools MCP)

### 4.1 Click Accept on the webinar collaboration card

```
take_snapshot
click → uid: [Accept button on "Advanced Flutter Architecture" card]
wait_for → text: "Accept Invitation?"
take_snapshot
```

The confirmation bottom sheet should show:
- Title: **"Accept Invitation?"**
- Text: **'You will join "Advanced Flutter Architecture" as a collaborator with 30% revenue share.'**
- Buttons: **"Cancel"** and **"Accept"**

### 4.2 Confirm acceptance

```
click → uid: [Accept button in bottom sheet]
wait_for → text: "Collaboration accepted!"
```

A snackbar should appear: **"Collaboration accepted!"**

### 4.3 Verify the card moved to Active Collaborations

```
take_snapshot
```

The page should now show:
- **"Pending Invitations"** section with badge **"1"** (only the class collaboration remains)
- **"Active Collaborations"** section header (newly appeared)
- The webinar card under Active Collaborations, showing:
  - Plan title: **"Advanced Flutter Architecture"**
  - Status badge: **"Active"** (green)
  - No Accept/Decline buttons

```
take_screenshot  -- visual verification after accepting
```

---

## 5. Test Scenario 3: Decline a Class Collaboration (Chrome DevTools MCP)

### 5.1 Click Decline on the class collaboration card

```
take_snapshot
click → uid: [Decline button on "React Masterclass" card]
wait_for → text: "Decline Invitation?"
take_snapshot
```

The confirmation bottom sheet should show:
- Title: **"Decline Invitation?"**
- Text: **'Are you sure you want to decline the invitation to "React Masterclass"?'**
- Buttons: **"Cancel"** and **"Decline"** (red)

### 5.2 Confirm decline

```
click → uid: [Decline button in bottom sheet]
wait_for → text: "Invitation declined"
```

A snackbar should appear: **"Invitation declined"**

### 5.3 Verify the card was removed from pending

```
take_snapshot
```

The page should now show:
- **"Pending Invitations"** section is gone (no more pending items)
- **"Active Collaborations"** section with the accepted webinar card
- Only 1 card total visible

```
take_screenshot  -- visual verification after declining
```

---

## 6. Test Scenario 4: Verify Dashboard Card Updated (Chrome DevTools MCP)

### 6.1 Navigate back to dashboard

```
navigate_page → url: {APP_URL}/dashboard
wait_for → text: "Dashboard"
take_snapshot
```

### 6.2 Verify collaborations summary card

The `CollaborationsSummaryCard` should now show:
- Text: **"Collaborations"**
- Text: **"1 active"** (the accepted webinar)
- No pending badge (0 pending)

```
take_screenshot  -- visual verification of updated dashboard card
```

---

## 7. Data Verification (Supabase MCP)

### 7.1 Verify WebinarCollaborator was accepted

```sql
-- execute_sql
SELECT id, status, "respondedAt"
FROM "WebinarCollaborator"
WHERE id = 'test_collab_wc_1';
```

**Expected:** `status` = 'ACCEPTED', `respondedAt` is not null.

### 7.2 Verify ClassCollaborator was declined

```sql
-- execute_sql
SELECT id, status, "respondedAt"
FROM "ClassCollaborator"
WHERE id = 'test_collab_cc_1';
```

**Expected:** `status` = 'DECLINED', `respondedAt` is not null.

### 7.3 Verify counts match

```sql
-- execute_sql
SELECT
  (SELECT COUNT(*) FROM "WebinarCollaborator"
   WHERE "consultantProfileId" = 'test_collab_cp_invitee' AND status = 'ACCEPTED') AS "webinarAccepted",
  (SELECT COUNT(*) FROM "WebinarCollaborator"
   WHERE "consultantProfileId" = 'test_collab_cp_invitee' AND status = 'PENDING') AS "webinarPending",
  (SELECT COUNT(*) FROM "ClassCollaborator"
   WHERE "consultantProfileId" = 'test_collab_cp_invitee' AND status = 'ACCEPTED') AS "classAccepted",
  (SELECT COUNT(*) FROM "ClassCollaborator"
   WHERE "consultantProfileId" = 'test_collab_cp_invitee' AND status = 'PENDING') AS "classPending";
```

**Expected:** webinarAccepted = 1, webinarPending = 0, classAccepted = 0, classPending = 0.

---

## 8. Cleanup (Supabase MCP)

> Delete test data in reverse FK dependency order.

```sql
-- execute_sql (run each block sequentially)

-- Step 1: Delete collaborator records
DELETE FROM "ClassCollaborator" WHERE id = 'test_collab_cc_1';
DELETE FROM "WebinarCollaborator" WHERE id = 'test_collab_wc_1';

-- Step 2: Delete plans
DELETE FROM "ClassPlan" WHERE id = 'test_collab_class_plan_1';
DELETE FROM "WebinarPlan" WHERE id = 'test_collab_webinar_plan_1';

-- Step 3: Unlink consultant profiles from users
UPDATE "User" SET "consultantProfileId" = NULL
WHERE id IN ('test_collab_user_host', 'test_collab_user_invitee');

-- Step 4: Delete consultant profiles
DELETE FROM "ConsultantProfile" WHERE id IN ('test_collab_cp_host', 'test_collab_cp_invitee');

-- Step 5: Delete auth records
DELETE FROM "sessions" WHERE "userId" IN ('test_collab_user_host', 'test_collab_user_invitee');
DELETE FROM "accounts" WHERE "userId" IN ('test_collab_user_host', 'test_collab_user_invitee');

-- Step 6: Delete users
DELETE FROM "User" WHERE id IN ('test_collab_user_host', 'test_collab_user_invitee');

-- Step 7: Clean up test domain (only if we created it)
DELETE FROM "Domain" WHERE id = 'test_collab_domain_1';
```

---

## 9. Checklist

- [ ] Host and invitee users seeded with ConsultantProfiles
- [ ] WebinarPlan and ClassPlan created for host
- [ ] 2 pending collaboration invitations seeded (WebinarCollaborator + ClassCollaborator)
- [ ] Signed in as collaborator (invitee) via UI
- [ ] Dashboard card shows "0 active" and "2 pending" with red badge
- [ ] Collaborations page shows "Pending Invitations" section with 2 cards
- [ ] Webinar card shows correct plan title, role (Co-Host), revenue share (30%), host name
- [ ] Class card shows correct plan title, role (TA), revenue share (15%), host name
- [ ] Accepted webinar collaboration via UI (confirmation sheet shown)
- [ ] Snackbar: "Collaboration accepted!" appeared
- [ ] Webinar card moved to "Active Collaborations" section with "Active" badge
- [ ] Declined class collaboration via UI (confirmation sheet shown)
- [ ] Snackbar: "Invitation declined" appeared
- [ ] Class card removed from pending section
- [ ] Dashboard card updated to "1 active" with no pending badge
- [ ] DB: WebinarCollaborator status = ACCEPTED with respondedAt set
- [ ] DB: ClassCollaborator status = DECLINED with respondedAt set
- [ ] Test data cleaned up successfully
