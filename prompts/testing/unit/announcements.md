# Unit Test: Announcements

> **Feature:** Announcement banner appears on main screens when active announcement exists
> **Route:** `/explore` or `/dashboard`

---

## Data Seeding

```sql
-- Active announcement
INSERT INTO "announcements" (id, title, content, "isActive", "startDate", "endDate", "backgroundColor", "textColor", "linkUrl", "linkText", "createdBy", "createdAt", "updatedAt")
VALUES ('test_unit_announce_1', 'Platform Update', 'We are rolling out new features this week! Check out the new booking flow.', true, NOW() - INTERVAL '1 day', NOW() + INTERVAL '7 days', '#1E40AF', '#FFFFFF', 'https://familiarise.com/updates', 'Learn More', 'system', NOW(), NOW());

-- User to view the announcement
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_announce_u1', 'Announce User', 'test_unit_announce@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_announce_a1', 'test_unit_announce_u1', 'test_unit_announce_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_announce_cep1', 'test_unit_announce_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_announce_cep1' WHERE id = 'test_unit_announce_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_announce_ck1', 'test_unit_announce_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_announce_np1', 'test_unit_announce_u1');
```

---

## Scenarios

Sign in as `test_unit_announce@test.com` / `TestPassword123`.

### 1. Banner on Explore Page
```
navigate_page → url: http://localhost:3000/explore
wait_for → text: "Platform Update" OR text: "new features" OR timeout: 5000
take_snapshot
take_screenshot
```
**Expected:** Announcement banner visible at top of page with title "Platform Update" and "Learn More" link.

### 2. Banner on Dashboard
```
navigate_page → url: http://localhost:3000/dashboard
wait_for → text: "Platform Update" OR timeout: 5000
take_snapshot
take_screenshot
```
**Expected:** Same announcement banner visible on dashboard.

### 3. Banner Styling
```
take_snapshot
```
**Expected:** Banner has blue background (#1E40AF) and white text (#FFFFFF).

### 4. Banner Link
```
-- Check that the "Learn More" link exists
take_snapshot
```
**Expected:** "Learn More" link points to the correct URL.

### 5. No Banner When Inactive
Deactivate the announcement:
```sql
UPDATE "announcements" SET "isActive" = false WHERE id = 'test_unit_announce_1';
```
```
navigate_page → url: http://localhost:3000/explore
wait_for → timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** No announcement banner visible.

### 6. No Banner When Expired
```sql
UPDATE "announcements" SET "isActive" = true, "endDate" = NOW() - INTERVAL '1 day' WHERE id = 'test_unit_announce_1';
```
```
navigate_page → url: http://localhost:3000/explore
wait_for → timeout: 3000
take_snapshot
```
**Expected:** No announcement banner (end date has passed).

---

## Cleanup

```sql
DELETE FROM "announcements" WHERE id = 'test_unit_announce_1';
DELETE FROM "sessions" WHERE "userId" = 'test_unit_announce_u1';
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_announce_cep1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_announce_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_announce_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_announce_u1';
DELETE FROM "users" WHERE id = 'test_unit_announce_u1';
```
