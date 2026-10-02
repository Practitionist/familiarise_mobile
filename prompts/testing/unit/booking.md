# Unit Test: Booking

> **Feature:** View consultant, select plan, select slot, request booking, view bookings list, booking detail
> **Route:** `/booking/:cid/:planId`, `/my-bookings`, `/booking-details/:id`
> **Backend:** `/api/bookings/*`

---

## Data Seeding

```sql
-- Consultant with plan + slots
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_booking_u1', 'Booking Consultant', 'test_unit_booking_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_booking_u2', 'Booking Consultee', 'test_unit_booking_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_booking_a1', 'test_unit_booking_u1', 'test_unit_booking_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_booking_a2', 'test_unit_booking_u2', 'test_unit_booking_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_booking_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_booking_cp1', 'test_unit_booking_u1', 'test_unit_booking_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_booking_cp1' WHERE id = 'test_unit_booking_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_booking_cep1', 'test_unit_booking_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_booking_cep1' WHERE id = 'test_unit_booking_u2';

-- Consultation plan
INSERT INTO "ConsultationPlan" (id, title, description, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_booking_plan1', 'Booking Test Plan', '1-hour consultation', 1, 50000, 'test_unit_booking_cp1', NOW(), NOW());

-- Weekly availability slot (Monday 10:00-11:00 IST)
INSERT INTO "SlotOfAvailabilityWeekly" (id, "startDay", "startTimeUtc", "endDay", "endTimeUtc", "utcOffsetMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_booking_slot1', 'MONDAY', 270, 'MONDAY', 330, 330, 'test_unit_booking_cp1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_booking_ck1', 'test_unit_booking_u1', true, NOW(), NOW()),
  ('test_unit_booking_ck2', 'test_unit_booking_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_booking_np1', 'test_unit_booking_u1'), ('test_unit_booking_np2', 'test_unit_booking_u2');
```

---

## Scenarios

Sign in as `test_unit_booking_cee@test.com` / `TestPassword123`.

### 1. View Booking Page for Plan
```
navigate_page → url: http://localhost:3000/booking/test_unit_booking_cp1/test_unit_booking_plan1
wait_for → text: "Booking Test Plan" OR text: "Book"
take_snapshot
take_screenshot
```
**Expected:** Plan details visible with slot selection options.

### 2. Select Slot
```
-- On booking page, select a time slot
click → uid: [Monday slot] OR click → uid: [10:00]
wait_for → timeout: 3000
take_snapshot
```
**Expected:** Slot highlighted/selected.

### 3. Request Booking
```
fill → uid: [Notes], value: "Looking forward to this consultation"
click → uid: [Request / Book / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, "requestStatus" FROM "Consultation" WHERE "requestedById" = 'test_unit_booking_cep1' AND "consultationPlanId" = 'test_unit_booking_plan1';`
**Expected:** Consultation created with requestStatus = 'PENDING'.

### 4. View Bookings List
```
navigate_page → url: http://localhost:3000/my-bookings
wait_for → text: "Bookings" OR text: "My Bookings"
take_snapshot
take_screenshot
```
**Expected:** "Booking Test Plan" appears in the list with PENDING status.

### 5. View Booking Detail
```
-- Click on the booking entry or navigate directly
navigate_page → url: http://localhost:3000/booking-details/{consultationId}
wait_for → text: "Booking Test Plan" OR text: "Details"
take_snapshot
take_screenshot
```
**Expected:** Booking details page shows plan name, consultant name, status, and requested time.

### 6. Consultant Approves Booking
Sign in as `test_unit_booking_cnt@test.com` / `TestPassword123`:
```
navigate_page → url: http://localhost:3000/my-bookings
wait_for → text: "Bookings" OR text: "Requests"
take_snapshot
click → uid: [Approve] OR click → uid: [Accept]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT "requestStatus" FROM "Consultation" WHERE "requestedById" = 'test_unit_booking_cep1';`
**Expected:** requestStatus = 'APPROVED' or 'APPROVED_PENDING_PAYMENT'.

---

## Cleanup

```sql
DELETE FROM "SlotOfAppointment" WHERE "appointmentId" IN (SELECT id FROM "Appointment" WHERE "consultationId" IN (SELECT id FROM "Consultation" WHERE "requestedById" = 'test_unit_booking_cep1'));
DELETE FROM "Appointment" WHERE "consultationId" IN (SELECT id FROM "Consultation" WHERE "requestedById" = 'test_unit_booking_cep1');
DELETE FROM "Consultation" WHERE "requestedById" = 'test_unit_booking_cep1';
DELETE FROM "SlotOfAvailabilityWeekly" WHERE id = 'test_unit_booking_slot1';
DELETE FROM "ConsultationPlan" WHERE id = 'test_unit_booking_plan1';
DELETE FROM "sessions" WHERE "userId" IN ('test_unit_booking_u1', 'test_unit_booking_u2');
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_booking_cep1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_booking_cp1';
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_unit_booking_u1', 'test_unit_booking_u2');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_unit_booking_u1', 'test_unit_booking_u2');
DELETE FROM "accounts" WHERE "userId" IN ('test_unit_booking_u1', 'test_unit_booking_u2');
DELETE FROM "users" WHERE id IN ('test_unit_booking_u1', 'test_unit_booking_u2');
DELETE FROM "Domain" WHERE id = 'test_unit_booking_dom';
```
