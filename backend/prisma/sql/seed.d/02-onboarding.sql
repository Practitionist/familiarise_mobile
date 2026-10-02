-- Generated from prompts/testing/unit/02-onboarding.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

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
VALUES ('test_unit_onb_dom', 'Technology [test_unit_onb_dom]', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;
INSERT INTO "SubDomain" (id, name, "domainId", "createdAt", "updatedAt")
VALUES ('test_unit_onb_sub', 'Flutter Dev', 'test_unit_onb_dom', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

COMMIT;
