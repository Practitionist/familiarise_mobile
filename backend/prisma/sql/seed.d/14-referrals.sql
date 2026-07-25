-- Generated from prompts/testing/unit/14-referrals.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

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

COMMIT;
