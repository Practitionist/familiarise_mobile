# Unit Test: Dashboard

> **Feature:** Consultee dashboard loads with bookings. Consultant dashboard loads with stats, earnings, pending requests.
> **Route:** `/dashboard`

---

## Data Seeding

```sql
-- Consultant with stats/earnings/pending requests
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_dash_u1', 'Dash Consultant', 'test_unit_dash_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_dash_u2', 'Dash Consultee', 'test_unit_dash_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_dash_a1', 'test_unit_dash_u1', 'test_unit_dash_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_dash_a2', 'test_unit_dash_u2', 'test_unit_dash_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_dash_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "totalRevenue", "pendingRevenue", rating, "createdAt", "updatedAt")
VALUES ('test_unit_dash_cp1', 'test_unit_dash_u1', 'test_unit_dash_dom', 'WEEKLY', true, 'VERIFIED', 500000, 100000, 4.5, NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_dash_cp1' WHERE id = 'test_unit_dash_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_dash_cep1', 'test_unit_dash_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_dash_cep1' WHERE id = 'test_unit_dash_u2';

-- Consultation plan
INSERT INTO "ConsultationPlan" (id, title, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_dash_plan1', 'Dashboard Plan', 1, 50000, 'test_unit_dash_cp1', NOW(), NOW());

-- Pending consultation (shows as pending request for consultant)
INSERT INTO "Consultation" (id, "consultationPlanId", "requestStatus", "requestedById", "requestedAt", "createdAt", "updatedAt")
VALUES ('test_unit_dash_con1', 'test_unit_dash_plan1', 'PENDING', 'test_unit_dash_cep1', NOW(), NOW(), NOW());

-- Scheduled consultation (shows as upcoming for both)
INSERT INTO "Consultation" (id, "consultationPlanId", "requestStatus", "requestedById", "requestedAt", "createdAt", "updatedAt")
VALUES ('test_unit_dash_con2', 'test_unit_dash_plan1', 'SCHEDULED', 'test_unit_dash_cep1', NOW(), NOW(), NOW());

INSERT INTO "Appointment" (id, "appointmentType", "consultationId", "createdAt", "updatedAt")
VALUES ('test_unit_dash_apt1', 'CONSULTATION', 'test_unit_dash_con2', NOW(), NOW());

-- Upcoming slot
INSERT INTO "SlotOfAppointment" (id, "startsAt", "endsAt", "appointmentId", "createdAt", "updatedAt")
VALUES ('test_unit_dash_soa1', NOW() + INTERVAL '2 days', NOW() + INTERVAL '2 days' + INTERVAL '1 hour', 'test_unit_dash_apt1', NOW(), NOW());

-- Activity log
INSERT INTO "ActivityLog" (id, "activityType", description, "actorId", "actorName", "consultantProfileId", "createdAt")
VALUES ('test_unit_dash_al1', 'CONSULTATION_BOOKED', 'Dash Consultee booked a consultation', 'test_unit_dash_u2', 'Dash Consultee', 'test_unit_dash_cp1', NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_dash_ck1', 'test_unit_dash_u1', true, NOW(), NOW()),
  ('test_unit_dash_ck2', 'test_unit_dash_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_dash_np1', 'test_unit_dash_u1'), ('test_unit_dash_np2', 'test_unit_dash_u2');
```

---

## Scenarios

### 1. Consultee Dashboard
Sign in as `test_unit_dash_cee@test.com` / `TestPassword123`.
```
navigate_page → url: http://localhost:3000/dashboard
wait_for → text: "Dashboard" OR text: "Bookings" OR text: "Upcoming"
take_snapshot
take_screenshot
```
**Expected:** Dashboard loads showing:
- Upcoming booking with "Dashboard Plan"
- Pending booking request

### 2. Consultee — Upcoming Bookings Section
```
take_snapshot
```
**Expected:** Scheduled consultation visible with date/time and consultant name "Dash Consultant".

### 3. Consultant Dashboard
Sign in as `test_unit_dash_cnt@test.com` / `TestPassword123`.
```
navigate_page → url: http://localhost:3000/dashboard
wait_for → text: "Dashboard" OR text: "Earnings" OR text: "Stats"
take_snapshot
take_screenshot
```
**Expected:** Dashboard loads showing:
- Total revenue stats (5,000 INR)
- Pending revenue (1,000 INR)
- Rating (4.5)
- Pending requests count

### 4. Consultant — Pending Requests
```
take_snapshot
```
**Expected:** Pending consultation request from "Dash Consultee" visible.

### 5. Consultant — Activity Feed
```
take_snapshot
```
**Expected:** Activity log entry "Dash Consultee booked a consultation" visible.

### 6. Consultant — Earnings Overview
```
take_snapshot
```
**Expected:** Revenue figures visible. Total revenue and pending revenue displayed.

---

## Cleanup

```sql
DELETE FROM "ActivityLog" WHERE id = 'test_unit_dash_al1';
DELETE FROM "SlotOfAppointment" WHERE id = 'test_unit_dash_soa1';
DELETE FROM "Appointment" WHERE id = 'test_unit_dash_apt1';
DELETE FROM "Consultation" WHERE id IN ('test_unit_dash_con1', 'test_unit_dash_con2');
DELETE FROM "ConsultationPlan" WHERE id = 'test_unit_dash_plan1';
DELETE FROM "sessions" WHERE "userId" IN ('test_unit_dash_u1', 'test_unit_dash_u2');
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_dash_cep1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_dash_cp1';
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_unit_dash_u1', 'test_unit_dash_u2');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_unit_dash_u1', 'test_unit_dash_u2');
DELETE FROM "accounts" WHERE "userId" IN ('test_unit_dash_u1', 'test_unit_dash_u2');
DELETE FROM "users" WHERE id IN ('test_unit_dash_u1', 'test_unit_dash_u2');
DELETE FROM "Domain" WHERE id = 'test_unit_dash_dom';
```
