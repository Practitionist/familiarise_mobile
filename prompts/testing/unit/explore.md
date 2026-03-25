# Unit Test: Explore

> **Feature:** Browse consultants, view consultant profile, check plans/reviews/availability sections
> **Route:** `/explore`, `/explore/consultant/:id`

---

## Data Seeding

```sql
-- Consultant with plan + reviews
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", bio, city, "createdAt", "updatedAt")
VALUES
  ('test_unit_explore_u1', 'Explore Consultant', 'test_unit_explore_cnt@test.com', true, 'CONSULTANT', true, 'Expert Flutter developer', 'Bangalore', NOW(), NOW()),
  ('test_unit_explore_u2', 'Explore Consultee', 'test_unit_explore_cee@test.com', true, 'CONSULTEE', true, NULL, NULL, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_explore_a1', 'test_unit_explore_u1', 'test_unit_explore_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_explore_a2', 'test_unit_explore_u2', 'test_unit_explore_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_explore_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", headline, rating, "createdAt", "updatedAt")
VALUES ('test_unit_explore_cp1', 'test_unit_explore_u1', 'test_unit_explore_dom', 'WEEKLY', true, 'VERIFIED', 'Flutter Expert', 4.5, NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_explore_cp1' WHERE id = 'test_unit_explore_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_explore_cep1', 'test_unit_explore_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_explore_cep1' WHERE id = 'test_unit_explore_u2';

-- Consultation plan
INSERT INTO "ConsultationPlan" (id, title, description, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_explore_plan1', 'Flutter Consultation', 'Learn Flutter basics', 1, 50000, 'test_unit_explore_cp1', NOW(), NOW());

-- Weekly availability slot
INSERT INTO "SlotOfAvailabilityWeekly" (id, "startDay", "startTimeUtc", "endDay", "endTimeUtc", "utcOffsetMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_explore_slot1', 'MONDAY', 600, 'MONDAY', 660, 330, 'test_unit_explore_cp1', NOW(), NOW());

-- Review
INSERT INTO "ConsultantReview" (id, rating, "reviewDescription", "consultantProfileId", "consulteeProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_explore_rev1', 5, 'Excellent mentor, very helpful!', 'test_unit_explore_cp1', 'test_unit_explore_cep1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_explore_ck1', 'test_unit_explore_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_explore_np1', 'test_unit_explore_u2');
```

---

## Scenarios

Sign in as `test_unit_explore_cee@test.com` / `TestPassword123`.

### 1. Browse Explore Page
```
navigate_page → url: http://localhost:3000/explore
wait_for → text: "Explore" OR text: "Consultants" OR text: "Experts"
take_snapshot
take_screenshot
```
**Expected:** List of consultants visible. "Explore Consultant" should appear.

### 2. View Consultant Profile
```
navigate_page → url: http://localhost:3000/explore/consultant/test_unit_explore_cp1
wait_for → text: "Explore Consultant" OR text: "Flutter Expert"
take_snapshot
take_screenshot
```
**Expected:** Consultant name, headline, bio, rating visible.

### 3. Check Plans Section
On consultant profile page:
```
-- Scroll or look for plans section
take_snapshot
```
**Expected:** "Flutter Consultation" plan visible with price (500).

### 4. Check Reviews Section
On consultant profile page:
```
-- Scroll or look for reviews section
take_snapshot
```
**Expected:** Review from "Explore Consultee" with 5-star rating and "Excellent mentor" text.

### 5. Check Availability Section
On consultant profile page:
```
-- Scroll or look for availability section
take_snapshot
```
**Expected:** Monday availability slot visible.

### 6. Search / Filter Consultants
```
navigate_page → url: http://localhost:3000/explore
take_snapshot
fill → uid: [Search], value: "Flutter"
wait_for → timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** Filtered results show "Explore Consultant".

---

## Cleanup

```sql
DELETE FROM "ConsultantReview" WHERE id = 'test_unit_explore_rev1';
DELETE FROM "SlotOfAvailabilityWeekly" WHERE id = 'test_unit_explore_slot1';
DELETE FROM "ConsultationPlan" WHERE id = 'test_unit_explore_plan1';
DELETE FROM "sessions" WHERE "userId" IN ('test_unit_explore_u1', 'test_unit_explore_u2');
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_explore_cep1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_explore_cp1';
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_unit_explore_u1', 'test_unit_explore_u2');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_unit_explore_u1', 'test_unit_explore_u2');
DELETE FROM "accounts" WHERE "userId" IN ('test_unit_explore_u1', 'test_unit_explore_u2');
DELETE FROM "users" WHERE id IN ('test_unit_explore_u1', 'test_unit_explore_u2');
DELETE FROM "Domain" WHERE id = 'test_unit_explore_dom';
```
