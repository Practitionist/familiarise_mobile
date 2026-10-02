-- Generated from prompts/testing/unit/03-profile.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

-- Verified consultant user
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", bio, city, phone, "createdAt", "updatedAt")
VALUES ('test_unit_profile_u1', 'Profile Test User', 'test_unit_profile@test.com', true, 'CONSULTANT', true, 'Original bio', 'Mumbai', '+919000000001', NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_profile_a1', 'test_unit_profile_u1', 'test_unit_profile_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_profile_dom', 'Technology [test_unit_profile_dom]', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_profile_cp1', 'test_unit_profile_u1', 'test_unit_profile_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_profile_cp1' WHERE id = 'test_unit_profile_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_profile_ck1', 'test_unit_profile_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_profile_np1', 'test_unit_profile_u1');

COMMIT;
