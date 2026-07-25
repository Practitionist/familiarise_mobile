-- Generated from prompts/testing/unit/21-announcements.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

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

COMMIT;
