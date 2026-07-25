-- Generated from prompts/testing/unit/08-booking.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

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
VALUES ('test_unit_booking_dom', 'Technology [test_unit_booking_dom]', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

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

COMMIT;
