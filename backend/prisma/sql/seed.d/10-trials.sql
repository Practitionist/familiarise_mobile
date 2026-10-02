-- Generated from prompts/testing/unit/10-trials.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

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
VALUES ('test_unit_trials_dom', 'Technology [test_unit_trials_dom]', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

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

COMMIT;
