# Unit Test: Reviews

> **Feature:** Submit review for consultant, view reviews on consultant profile
> **Route:** Consultant profile page
> **Backend:** `/api/reviews`

---

## Data Seeding

```sql
-- Consultant + two consultees with completed appointments
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_reviews_u1', 'Reviews Consultant', 'test_unit_reviews_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_reviews_u2', 'Reviews Consultee', 'test_unit_reviews_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW()),
  ('test_unit_reviews_u3', 'Reviews Consultee 2', 'test_unit_reviews_cee2@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_reviews_a1', 'test_unit_reviews_u1', 'test_unit_reviews_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.XzoCvKkqWyYZaFphvixFFncWVsC4W4O', NOW(), NOW()),
  ('test_unit_reviews_a2', 'test_unit_reviews_u2', 'test_unit_reviews_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.XzoCvKkqWyYZaFphvixFFncWVsC4W4O', NOW(), NOW()),
  ('test_unit_reviews_a3', 'test_unit_reviews_u3', 'test_unit_reviews_u3', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.XzoCvKkqWyYZaFphvixFFncWVsC4W4O', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_reviews_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", rating, "createdAt", "updatedAt")
VALUES ('test_unit_reviews_cp1', 'test_unit_reviews_u1', 'test_unit_reviews_dom', 'WEEKLY', true, 'VERIFIED', 0, NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_reviews_cp1' WHERE id = 'test_unit_reviews_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES
  ('test_unit_reviews_cep1', 'test_unit_reviews_u2', NOW(), NOW()),
  ('test_unit_reviews_cep2', 'test_unit_reviews_u3', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_reviews_cep1' WHERE id = 'test_unit_reviews_u2';
UPDATE "users" SET "consulteeProfileId" = 'test_unit_reviews_cep2' WHERE id = 'test_unit_reviews_u3';

-- Completed consultations + appointments
INSERT INTO "ConsultationPlan" (id, title, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_reviews_plan1', 'Review Test Plan', 1, 50000, 'test_unit_reviews_cp1', NOW(), NOW());

INSERT INTO "Consultation" (id, "consultationPlanId", "requestStatus", "requestedById", "requestedAt", "createdAt", "updatedAt")
VALUES
  ('test_unit_reviews_con1', 'test_unit_reviews_plan1', 'COMPLETED', 'test_unit_reviews_cep1', NOW(), NOW(), NOW()),
  ('test_unit_reviews_con2', 'test_unit_reviews_plan1', 'COMPLETED', 'test_unit_reviews_cep2', NOW(), NOW(), NOW());

INSERT INTO "Appointment" (id, "appointmentType", "consultationId", "createdAt", "updatedAt")
VALUES
  ('test_unit_reviews_apt1', 'CONSULTATION', 'test_unit_reviews_con1', NOW(), NOW()),
  ('test_unit_reviews_apt2', 'CONSULTATION', 'test_unit_reviews_con2', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_reviews_ck1', 'test_unit_reviews_u1', true, NOW(), NOW()),
  ('test_unit_reviews_ck2', 'test_unit_reviews_u2', true, NOW(), NOW()),
  ('test_unit_reviews_ck3', 'test_unit_reviews_u3', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES
  ('test_unit_reviews_np1', 'test_unit_reviews_u1'),
  ('test_unit_reviews_np2', 'test_unit_reviews_u2'),
  ('test_unit_reviews_np3', 'test_unit_reviews_u3');
```

---

## Scenarios

### 1. Submit Review (via API)
Sign in as `test_unit_reviews_cee@test.com` / `TestPassword123`.
```
fetch('/api/reviews', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    consultantProfileId: 'test_unit_reviews_cp1',
    rating: 5,
    reviewDescription: 'Excellent session, very helpful mentor!'
  })
}).then(r => r.json())
```
**Verify:** `SELECT id, rating, "reviewDescription" FROM "ConsultantReview" WHERE "consultantProfileId" = 'test_unit_reviews_cp1' AND "consulteeProfileId" = 'test_unit_reviews_cep1';`
**Expected:** Review created with rating = 5.

### 2. Submit Review (via UI)
Sign in as the second consultee (`test_unit_reviews_cee2@test.com` / `TestPassword123`) so this submission does not conflict with Scenario 1's review, then visit the consultant profile page:
```
navigate_page → url: http://localhost:3000/explore/consultant/test_unit_reviews_cp1
wait_for → text: "Reviews Consultant"
take_snapshot
-- Look for review form or "Write a Review" button
click → uid: [Write Review] OR click → uid: [Leave Review]
wait_for → timeout: 3000
take_snapshot
-- Select star rating
click → uid: [5 stars] OR click → uid: [Star 5]
fill → uid: [Review], value: "Great consultation session!"
click → uid: [Submit]
wait_for → timeout: 5000
take_screenshot
```

### 3. View Reviews on Consultant Profile
```
navigate_page → url: http://localhost:3000/explore/consultant/test_unit_reviews_cp1
wait_for → text: "Reviews Consultant"
take_snapshot
-- Scroll to reviews section
take_screenshot
```
**Expected:** Review from "Reviews Consultee" visible with 5-star rating and review text.

### 4. Check Updated Rating
**Verify:** `SELECT rating FROM "ConsultantProfile" WHERE id = 'test_unit_reviews_cp1';`
**Expected:** Rating updated (e.g., 5.0 or recalculated average).

---

## Cleanup

```sql
DELETE FROM "ConsultantReview" WHERE "consultantProfileId" = 'test_unit_reviews_cp1';
DELETE FROM "SlotOfAppointment" WHERE "appointmentId" IN ('test_unit_reviews_apt1', 'test_unit_reviews_apt2');
DELETE FROM "Appointment" WHERE id IN ('test_unit_reviews_apt1', 'test_unit_reviews_apt2');
DELETE FROM "Consultation" WHERE id IN ('test_unit_reviews_con1', 'test_unit_reviews_con2');
DELETE FROM "ConsultationPlan" WHERE id = 'test_unit_reviews_plan1';
DELETE FROM "sessions" WHERE "userId" IN ('test_unit_reviews_u1', 'test_unit_reviews_u2', 'test_unit_reviews_u3');
DELETE FROM "ConsulteeProfile" WHERE id IN ('test_unit_reviews_cep1', 'test_unit_reviews_cep2');
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_reviews_cp1';
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_unit_reviews_u1', 'test_unit_reviews_u2', 'test_unit_reviews_u3');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_unit_reviews_u1', 'test_unit_reviews_u2', 'test_unit_reviews_u3');
DELETE FROM "accounts" WHERE "userId" IN ('test_unit_reviews_u1', 'test_unit_reviews_u2', 'test_unit_reviews_u3');
DELETE FROM "users" WHERE id IN ('test_unit_reviews_u1', 'test_unit_reviews_u2', 'test_unit_reviews_u3');
DELETE FROM "Domain" WHERE id = 'test_unit_reviews_dom';
```
