-- Generated from prompts/testing/unit/11-waitlist.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

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
VALUES ('test_unit_waitlist_dom', 'Technology [test_unit_waitlist_dom]', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

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

COMMIT;
