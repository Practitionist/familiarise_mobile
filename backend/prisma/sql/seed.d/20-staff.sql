-- Generated from prompts/testing/unit/20-staff.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

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
VALUES ('test_unit_staff_dom', 'Technology [test_unit_staff_dom]', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

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

COMMIT;
