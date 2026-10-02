-- Generated from prompts/testing/unit/15-reviews.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

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
VALUES ('test_unit_reviews_dom', 'Technology [test_unit_reviews_dom]', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

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

COMMIT;
