# Unit Test: Collaborations

> **Feature:** View collaborations page
> **Route:** `/collaborations`

---

## Data Seeding

```sql
-- Two consultants: one invites the other to collaborate on a webinar
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_collab_u1', 'Collab Host', 'test_unit_collab_host@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_collab_u2', 'Collab Invited', 'test_unit_collab_inv@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_collab_a1', 'test_unit_collab_u1', 'test_unit_collab_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_collab_a2', 'test_unit_collab_u2', 'test_unit_collab_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_collab_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES
  ('test_unit_collab_cp1', 'test_unit_collab_u1', 'test_unit_collab_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW()),
  ('test_unit_collab_cp2', 'test_unit_collab_u2', 'test_unit_collab_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_collab_cp1' WHERE id = 'test_unit_collab_u1';
UPDATE "users" SET "consultantProfileId" = 'test_unit_collab_cp2' WHERE id = 'test_unit_collab_u2';

-- Webinar plan owned by host
INSERT INTO "WebinarPlan" (id, title, description, price, "durationInHours", "maxParticipants", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_collab_wp1', 'Collab Webinar', 'A joint webinar on Flutter', 100000, 2, 50, 'test_unit_collab_cp1', NOW(), NOW());

-- Collaboration invitation (PENDING)
INSERT INTO "WebinarCollaborator" (id, "consultantProfileId", "webinarPlanId", role, "revenueSharePercentage", status, "invitedById", "createdAt", "updatedAt")
VALUES ('test_unit_collab_wc1', 'test_unit_collab_cp2', 'test_unit_collab_wp1', 'CO_HOST', 30.0, 'PENDING', 'test_unit_collab_cp1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_collab_ck1', 'test_unit_collab_u1', true, NOW(), NOW()),
  ('test_unit_collab_ck2', 'test_unit_collab_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_collab_np1', 'test_unit_collab_u1'), ('test_unit_collab_np2', 'test_unit_collab_u2');
```

---

## Scenarios

### 1. View Collaborations Page (as Invited Consultant)
Sign in as `test_unit_collab_inv@test.com` / `TestPassword123`.
```
navigate_page → url: http://localhost:3000/collaborations
wait_for → text: "Collaborations" OR text: "Collab Webinar"
take_snapshot
take_screenshot
```
**Expected:** "Collab Webinar" collaboration invitation visible with PENDING status. Shows host name "Collab Host", role "CO_HOST", and revenue share 30%.

### 2. View Collaboration Details
```
-- Click on the collaboration entry
click → uid: [Collab Webinar]
wait_for → timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** Collaboration detail shows webinar title, host, role, revenue share percentage.

### 3. Accept Collaboration
```
click → uid: [Accept / Approve]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT status FROM "WebinarCollaborator" WHERE id = 'test_unit_collab_wc1';`
**Expected:** status = 'ACCEPTED'.

### 4. View Collaborations Page (as Host)
Sign in as `test_unit_collab_host@test.com` / `TestPassword123`.
```
navigate_page → url: http://localhost:3000/collaborations
wait_for → text: "Collaborations" OR text: "Collab Webinar"
take_snapshot
take_screenshot
```
**Expected:** "Collab Webinar" visible with collaboration status showing "Collab Invited" as accepted co-host.

---

## Cleanup

```sql
DELETE FROM "WebinarCollaborator" WHERE id = 'test_unit_collab_wc1';
DELETE FROM "WebinarPlan" WHERE id = 'test_unit_collab_wp1';
DELETE FROM "sessions" WHERE "userId" IN ('test_unit_collab_u1', 'test_unit_collab_u2');
DELETE FROM "ConsultantProfile" WHERE id IN ('test_unit_collab_cp1', 'test_unit_collab_cp2');
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_unit_collab_u1', 'test_unit_collab_u2');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_unit_collab_u1', 'test_unit_collab_u2');
DELETE FROM "accounts" WHERE "userId" IN ('test_unit_collab_u1', 'test_unit_collab_u2');
DELETE FROM "users" WHERE id IN ('test_unit_collab_u1', 'test_unit_collab_u2');
DELETE FROM "Domain" WHERE id = 'test_unit_collab_dom';
```
