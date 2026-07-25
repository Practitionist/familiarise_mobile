-- Generated from prompts/testing/unit/09-checkout.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

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
VALUES ('test_unit_checkout_dom', 'Technology [test_unit_checkout_dom]', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

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

COMMIT;
