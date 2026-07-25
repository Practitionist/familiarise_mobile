-- Generated from prompts/testing/unit/22-collaborations.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

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
VALUES ('test_unit_collab_dom', 'Technology [test_unit_collab_dom]', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

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

COMMIT;
