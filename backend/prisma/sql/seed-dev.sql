-- ─────────────────────────────────────────────────────────────
-- Local development seed.
--
-- HARVESTED from the `## Data Seeding` blocks of prompts/testing/unit/*.md,
-- which are the fixtures the E2E/agent test prompts already assume exist.
-- Regenerate with: ./scripts/gen-dev-seed.sh
--
-- Each source file uses its own `test_unit_<area>_*` id prefix, so the blocks
-- are self-contained and safe to concatenate in file order.
--
-- NOT idempotent on its own — docker/db-init/entrypoint.sh guards it with a
-- marker-row check so a re-run of `docker compose up` does not re-insert.
-- ─────────────────────────────────────────────────────────────

BEGIN;

-- ===== 01-auth.md =====
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_auth_u1', 'Auth Unit User', 'test_unit_auth@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_auth_a1', 'test_unit_auth_u1', 'test_unit_auth_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_auth_cp1', 'test_unit_auth_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_auth_cp1' WHERE id = 'test_unit_auth_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_auth_ck1', 'test_unit_auth_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_auth_np1', 'test_unit_auth_u1');

-- ===== 02-onboarding.md =====
-- Fresh users with onboardingCompleted = false
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_onb_cee', 'Onb Consultee', 'test_unit_onb_cee@test.com', true, 'CONSULTEE', false, NOW(), NOW()),
  ('test_unit_onb_cnt', 'Onb Consultant', 'test_unit_onb_cnt@test.com', true, 'CONSULTEE', false, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_onb_a1', 'test_unit_onb_cee', 'test_unit_onb_cee', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_onb_a2', 'test_unit_onb_cnt', 'test_unit_onb_cnt', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_onb_ck1', 'test_unit_onb_cee', true, NOW(), NOW()),
       ('test_unit_onb_ck2', 'test_unit_onb_cnt', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_onb_np1', 'test_unit_onb_cee'), ('test_unit_onb_np2', 'test_unit_onb_cnt');

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_onb_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;
INSERT INTO "SubDomain" (id, name, "domainId", "createdAt", "updatedAt")
VALUES ('test_unit_onb_sub', 'Flutter Dev', 'test_unit_onb_dom', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

-- ===== 03-profile.md =====
-- Verified consultant user
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", bio, city, phone, "createdAt", "updatedAt")
VALUES ('test_unit_profile_u1', 'Profile Test User', 'test_unit_profile@test.com', true, 'CONSULTANT', true, 'Original bio', 'Mumbai', '+919000000001', NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_profile_a1', 'test_unit_profile_u1', 'test_unit_profile_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_profile_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_profile_cp1', 'test_unit_profile_u1', 'test_unit_profile_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_profile_cp1' WHERE id = 'test_unit_profile_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_profile_ck1', 'test_unit_profile_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_profile_np1', 'test_unit_profile_u1');

-- ===== 04-verification.md =====
-- Consultant with PENDING_VERIFICATION status
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_verif_u1', 'Verif Test User', 'test_unit_verif@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_verif_a1', 'test_unit_verif_u1', 'test_unit_verif_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_verif_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_verif_cp1', 'test_unit_verif_u1', 'test_unit_verif_dom', 'WEEKLY', false, 'PENDING_VERIFICATION', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_verif_cp1' WHERE id = 'test_unit_verif_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_verif_ck1', 'test_unit_verif_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_verif_np1', 'test_unit_verif_u1');

-- ===== 05-plans.md =====
-- Verified consultant
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_plans_u1', 'Plans Test Consultant', 'test_unit_plans@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_plans_a1', 'test_unit_plans_u1', 'test_unit_plans_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_plans_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_plans_cp1', 'test_unit_plans_u1', 'test_unit_plans_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_plans_cp1' WHERE id = 'test_unit_plans_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_plans_ck1', 'test_unit_plans_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_plans_np1', 'test_unit_plans_u1');

-- ===== 06-slots.md =====
-- Verified consultant
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_slots_u1', 'Slots Test Consultant', 'test_unit_slots@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_slots_a1', 'test_unit_slots_u1', 'test_unit_slots_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_slots_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_slots_cp1', 'test_unit_slots_u1', 'test_unit_slots_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_slots_cp1' WHERE id = 'test_unit_slots_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_slots_ck1', 'test_unit_slots_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_slots_np1', 'test_unit_slots_u1');

-- ===== 07-explore.md =====
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

-- ===== 08-booking.md =====
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

-- ===== 09-checkout.md =====
-- Consultant + consultee + booking in APPROVED_PENDING_PAYMENT state
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_checkout_u1', 'Checkout Consultant', 'test_unit_checkout_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_checkout_u2', 'Checkout Consultee', 'test_unit_checkout_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_checkout_a1', 'test_unit_checkout_u1', 'test_unit_checkout_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_checkout_a2', 'test_unit_checkout_u2', 'test_unit_checkout_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_checkout_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_checkout_cp1', 'test_unit_checkout_u1', 'test_unit_checkout_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_checkout_cp1' WHERE id = 'test_unit_checkout_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_checkout_cep1', 'test_unit_checkout_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_checkout_cep1' WHERE id = 'test_unit_checkout_u2';

-- Consultation plan
INSERT INTO "ConsultationPlan" (id, title, description, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_checkout_plan1', 'Checkout Test Plan', '1-hour session', 1, 75000, 'test_unit_checkout_cp1', NOW(), NOW());

-- Consultation in APPROVED_PENDING_PAYMENT status
INSERT INTO "Consultation" (id, "consultationPlanId", "requestStatus", "requestedById", "requestedAt", "createdAt", "updatedAt")
VALUES ('test_unit_checkout_con1', 'test_unit_checkout_plan1', 'APPROVED_PENDING_PAYMENT', 'test_unit_checkout_cep1', NOW(), NOW(), NOW());

-- Appointment for the consultation
INSERT INTO "Appointment" (id, "appointmentType", "consultationId", "createdAt", "updatedAt")
VALUES ('test_unit_checkout_apt1', 'CONSULTATION', 'test_unit_checkout_con1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_checkout_ck1', 'test_unit_checkout_u1', true, NOW(), NOW()),
  ('test_unit_checkout_ck2', 'test_unit_checkout_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_checkout_np1', 'test_unit_checkout_u1'), ('test_unit_checkout_np2', 'test_unit_checkout_u2');

-- ===== 10-trials.md =====
-- Consultant with subscription plan (freeTrialEnabled) + consultee
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_trials_u1', 'Trials Consultant', 'test_unit_trials_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_trials_u2', 'Trials Consultee', 'test_unit_trials_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_trials_a1', 'test_unit_trials_u1', 'test_unit_trials_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_trials_a2', 'test_unit_trials_u2', 'test_unit_trials_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_trials_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_trials_cp1', 'test_unit_trials_u1', 'test_unit_trials_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_trials_cp1' WHERE id = 'test_unit_trials_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_trials_cep1', 'test_unit_trials_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_trials_cep1' WHERE id = 'test_unit_trials_u2';

-- Subscription plan with free trial enabled
INSERT INTO "SubscriptionPlan" (id, title, description, "durationInMonths", price, "callsPerWeek", "sessionDurationInHours", "freeTrialEnabled", "freeTrialDurationMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_trials_sp1', 'Trial Subscription Plan', 'Monthly mentoring with free trial', 1, 200000, 1, 1, true, 30, 'test_unit_trials_cp1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_trials_ck1', 'test_unit_trials_u1', true, NOW(), NOW()),
  ('test_unit_trials_ck2', 'test_unit_trials_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_trials_np1', 'test_unit_trials_u1'), ('test_unit_trials_np2', 'test_unit_trials_u2');

-- ===== 11-waitlist.md =====
-- Consultant + consultee + full webinar (maxParticipants=1, 1 enrolled)
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_waitlist_u1', 'Waitlist Consultant', 'test_unit_waitlist_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_waitlist_u2', 'Waitlist Consultee', 'test_unit_waitlist_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW()),
  ('test_unit_waitlist_u3', 'Waitlist Enrolled', 'test_unit_waitlist_enr@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_waitlist_a1', 'test_unit_waitlist_u1', 'test_unit_waitlist_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_waitlist_a2', 'test_unit_waitlist_u2', 'test_unit_waitlist_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_waitlist_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_waitlist_cp1', 'test_unit_waitlist_u1', 'test_unit_waitlist_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_waitlist_cp1' WHERE id = 'test_unit_waitlist_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_waitlist_cep1', 'test_unit_waitlist_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_waitlist_cep1' WHERE id = 'test_unit_waitlist_u2';

-- Webinar plan with maxParticipants=1 (full capacity)
INSERT INTO "WebinarPlan" (id, title, description, price, "durationInHours", "maxParticipants", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_waitlist_wp1', 'Full Webinar', 'A sold-out webinar', 100000, 2, 1, 'test_unit_waitlist_cp1', NOW(), NOW());

-- Webinar instance
INSERT INTO "Webinar" (id, status, "webinarPlanId", "createdAt", "updatedAt")
VALUES ('test_unit_waitlist_w1', 'SCHEDULED', 'test_unit_waitlist_wp1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_waitlist_ck1', 'test_unit_waitlist_u1', true, NOW(), NOW()),
  ('test_unit_waitlist_ck2', 'test_unit_waitlist_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_waitlist_np1', 'test_unit_waitlist_u1'), ('test_unit_waitlist_np2', 'test_unit_waitlist_u2');

-- ===== 12-documents.md =====
-- Consultant + consultee with an appointment
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_docs_u1', 'Docs Consultant', 'test_unit_docs_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_docs_u2', 'Docs Consultee', 'test_unit_docs_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_docs_a1', 'test_unit_docs_u1', 'test_unit_docs_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_docs_a2', 'test_unit_docs_u2', 'test_unit_docs_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_docs_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_docs_cp1', 'test_unit_docs_u1', 'test_unit_docs_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_docs_cp1' WHERE id = 'test_unit_docs_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_docs_cep1', 'test_unit_docs_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_docs_cep1' WHERE id = 'test_unit_docs_u2';

-- Consultation plan + consultation + appointment
INSERT INTO "ConsultationPlan" (id, title, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_docs_plan1', 'Docs Test Plan', 1, 50000, 'test_unit_docs_cp1', NOW(), NOW());

INSERT INTO "Consultation" (id, "consultationPlanId", "requestStatus", "requestedById", "requestedAt", "createdAt", "updatedAt")
VALUES ('test_unit_docs_con1', 'test_unit_docs_plan1', 'SCHEDULED', 'test_unit_docs_cep1', NOW(), NOW(), NOW());

INSERT INTO "Appointment" (id, "appointmentType", "consultationId", "createdAt", "updatedAt")
VALUES ('test_unit_docs_apt1', 'CONSULTATION', 'test_unit_docs_con1', NOW(), NOW());

-- Seed an existing document
INSERT INTO "AppointmentDocument" (id, "fileName", "originalName", "fileSize", "mimeType", "fileUrl", "storagePath", description, "reviewStatus", "uploadedByRole", "appointmentId", "uploadedAt", "updatedAt")
VALUES ('test_unit_docs_doc1', 'resume.pdf', 'resume.pdf', 102400, 'application/pdf', 'https://example.com/resume.pdf', 'documents/test/resume.pdf', 'My resume for review', 'PENDING', 'CONSULTEE', 'test_unit_docs_apt1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_docs_ck1', 'test_unit_docs_u1', true, NOW(), NOW()),
  ('test_unit_docs_ck2', 'test_unit_docs_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_docs_np1', 'test_unit_docs_u1'), ('test_unit_docs_np2', 'test_unit_docs_u2');

-- ===== 13-chat.md =====
-- Simple user for chat UI test
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_chat_u1', 'Chat Test User', 'test_unit_chat@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_chat_a1', 'test_unit_chat_u1', 'test_unit_chat_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_chat_cep1', 'test_unit_chat_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_chat_cep1' WHERE id = 'test_unit_chat_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_chat_ck1', 'test_unit_chat_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_chat_np1', 'test_unit_chat_u1');

-- ===== 14-referrals.md =====
-- User with referral code
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_referrals_u1', 'Referrals User', 'test_unit_referrals@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_referrals_a1', 'test_unit_referrals_u1', 'test_unit_referrals_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_referrals_cep1', 'test_unit_referrals_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_referrals_cep1' WHERE id = 'test_unit_referrals_u1';

-- Pre-existing referral code
INSERT INTO "ReferralCode" (id, "userId", code, "referrerReward", "refereeReward", "isActive", "createdAt", "updatedAt")
VALUES ('test_unit_referrals_rc1', 'test_unit_referrals_u1', 'TESTREF123', 10000, 5000, true, NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_referrals_ck1', 'test_unit_referrals_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_referrals_np1', 'test_unit_referrals_u1');

-- ===== 15-reviews.md =====
-- Consultant + consultee with completed appointment
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_reviews_u1', 'Reviews Consultant', 'test_unit_reviews_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_reviews_u2', 'Reviews Consultee', 'test_unit_reviews_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_reviews_a1', 'test_unit_reviews_u1', 'test_unit_reviews_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_reviews_a2', 'test_unit_reviews_u2', 'test_unit_reviews_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_reviews_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", rating, "createdAt", "updatedAt")
VALUES ('test_unit_reviews_cp1', 'test_unit_reviews_u1', 'test_unit_reviews_dom', 'WEEKLY', true, 'VERIFIED', 0, NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_reviews_cp1' WHERE id = 'test_unit_reviews_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_reviews_cep1', 'test_unit_reviews_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_reviews_cep1' WHERE id = 'test_unit_reviews_u2';

-- Completed consultation + appointment
INSERT INTO "ConsultationPlan" (id, title, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_reviews_plan1', 'Review Test Plan', 1, 50000, 'test_unit_reviews_cp1', NOW(), NOW());

INSERT INTO "Consultation" (id, "consultationPlanId", "requestStatus", "requestedById", "requestedAt", "createdAt", "updatedAt")
VALUES ('test_unit_reviews_con1', 'test_unit_reviews_plan1', 'COMPLETED', 'test_unit_reviews_cep1', NOW(), NOW(), NOW());

INSERT INTO "Appointment" (id, "appointmentType", "consultationId", "createdAt", "updatedAt")
VALUES ('test_unit_reviews_apt1', 'CONSULTATION', 'test_unit_reviews_con1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_reviews_ck1', 'test_unit_reviews_u1', true, NOW(), NOW()),
  ('test_unit_reviews_ck2', 'test_unit_reviews_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_reviews_np1', 'test_unit_reviews_u1'), ('test_unit_reviews_np2', 'test_unit_reviews_u2');

-- ===== 16-support.md =====
-- User with existing ticket
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_support_u1', 'Support User', 'test_unit_support@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_support_a1', 'test_unit_support_u1', 'test_unit_support_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_support_cep1', 'test_unit_support_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_support_cep1' WHERE id = 'test_unit_support_u1';

-- Existing support ticket
INSERT INTO "support_tickets" (id, title, description, priority, status, category, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_support_t1', 'Payment not received', 'I completed payment but status still shows pending', 'HIGH', 'OPEN', 'PAYMENT_FAILED', 'test_unit_support_u1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_support_ck1', 'test_unit_support_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_support_np1', 'test_unit_support_u1');

-- ===== 17-feedback.md =====
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_feedback_u1', 'Feedback User', 'test_unit_feedback@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_feedback_a1', 'test_unit_feedback_u1', 'test_unit_feedback_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_feedback_cep1', 'test_unit_feedback_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_feedback_cep1' WHERE id = 'test_unit_feedback_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_feedback_ck1', 'test_unit_feedback_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_feedback_np1', 'test_unit_feedback_u1');

-- ===== 18-payout.md =====
-- Verified consultant
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_payout_u1', 'Payout Consultant', 'test_unit_payout@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_payout_a1', 'test_unit_payout_u1', 'test_unit_payout_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_payout_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_payout_cp1', 'test_unit_payout_u1', 'test_unit_payout_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_payout_cp1' WHERE id = 'test_unit_payout_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_payout_ck1', 'test_unit_payout_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_payout_np1', 'test_unit_payout_u1');

-- ===== 19-tax.md =====
-- Verified consultant
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_tax_u1', 'Tax Consultant', 'test_unit_tax@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_tax_a1', 'test_unit_tax_u1', 'test_unit_tax_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_tax_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_tax_cp1', 'test_unit_tax_u1', 'test_unit_tax_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_tax_cp1' WHERE id = 'test_unit_tax_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_tax_ck1', 'test_unit_tax_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_tax_np1', 'test_unit_tax_u1');

-- ===== 20-staff.md =====
-- Staff user
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_staff_u1', 'Staff User', 'test_unit_staff@test.com', true, 'STAFF', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_staff_a1', 'test_unit_staff_u1', 'test_unit_staff_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "StaffProfile" (id, "userId", department, position, "createdAt", "updatedAt")
VALUES ('test_unit_staff_sp1', 'test_unit_staff_u1', 'Support', 'Manager', NOW(), NOW());
UPDATE "users" SET "staffProfileId" = 'test_unit_staff_sp1' WHERE id = 'test_unit_staff_u1';

-- Consultant with pending verification
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_staff_u2', 'Pending Consultant', 'test_unit_staff_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_staff_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_staff_cp1', 'test_unit_staff_u2', 'test_unit_staff_dom', 'WEEKLY', false, 'PENDING_VERIFICATION', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_staff_cp1' WHERE id = 'test_unit_staff_u2';

-- Pending verification request
INSERT INTO "ConsultantProfileVerification" (id, status, "consultantProfileId", "submittedAt", notes, "createdAt", "updatedAt")
VALUES ('test_unit_staff_pv1', 'PENDING', 'test_unit_staff_cp1', NOW(), 'Please verify my credentials', NOW(), NOW());

-- User with open support ticket
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_staff_u3', 'Ticket User', 'test_unit_staff_tkt@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_staff_cep1', 'test_unit_staff_u3', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_staff_cep1' WHERE id = 'test_unit_staff_u3';

INSERT INTO "support_tickets" (id, title, description, priority, status, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_staff_t1', 'Staff Test Ticket', 'Need help with booking issue', 'HIGH', 'OPEN', 'test_unit_staff_u3', NOW(), NOW());

-- Pending feedback
INSERT INTO "feedbacks" (id, title, description, rating, status, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_staff_fb1', 'Staff Test Feedback', 'Great platform but needs improvement', 4, 'PENDING', 'test_unit_staff_u3', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_staff_ck1', 'test_unit_staff_u1', true, NOW(), NOW()),
  ('test_unit_staff_ck2', 'test_unit_staff_u2', true, NOW(), NOW()),
  ('test_unit_staff_ck3', 'test_unit_staff_u3', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_staff_np1', 'test_unit_staff_u1'), ('test_unit_staff_np2', 'test_unit_staff_u2'), ('test_unit_staff_np3', 'test_unit_staff_u3');

-- ===== 21-announcements.md =====
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

-- ===== 22-collaborations.md =====
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

-- ===== 23-dashboard.md =====
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

COMMIT;
