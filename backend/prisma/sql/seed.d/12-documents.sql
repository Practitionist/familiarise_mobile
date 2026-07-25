-- Generated from prompts/testing/unit/12-documents.md by scripts/gen-dev-seed.sh.
-- Do not edit directly; edit the prompt and regenerate.

BEGIN;

-- Consultant + consultee with an appointment
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_docs_u1', 'Docs Consultant', 'test_unit_docs_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_unit_docs_u2', 'Docs Consultee', 'test_unit_docs_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_docs_a1', 'test_unit_docs_u1', 'test_unit_docs_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_docs_a2', 'test_unit_docs_u2', 'test_unit_docs_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_docs_dom', 'Technology [test_unit_docs_dom]', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_docs_cp1', 'test_unit_docs_u1', 'test_unit_docs_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_docs_cp1' WHERE id = 'test_unit_docs_u1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_docs_cep1', 'test_unit_docs_u2', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_docs_cep1' WHERE id = 'test_unit_docs_u2';

-- Consultation plan + consultation + appointment
INSERT INTO "ConsultationPlan" (id, title, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_unit_docs_plan1', 'Docs Test Plan', 1, 50000, 'test_unit_docs_cp1', NOW(), NOW());

INSERT INTO "Consultation" (id, "consultationPlanId", "requestStatus", "requestedById", "requestedAt", "createdAt", "updatedAt")
VALUES ('test_unit_docs_con1', 'test_unit_docs_plan1', 'SCHEDULED', 'test_unit_docs_cep1', NOW(), NOW(), NOW());

INSERT INTO "Appointment" (id, "appointmentType", "consultationId", "createdAt", "updatedAt")
VALUES ('test_unit_docs_apt1', 'CONSULTATION', 'test_unit_docs_con1', NOW(), NOW());

-- Seed an existing document
INSERT INTO "AppointmentDocument" (id, "fileName", "originalName", "fileSize", "mimeType", "fileUrl", "storagePath", description, "reviewStatus", "uploadedByRole", "appointmentId", "uploadedAt", "updatedAt")
VALUES ('test_unit_docs_doc1', 'resume.pdf', 'resume.pdf', 102400, 'application/pdf', 'https://example.com/resume.pdf', 'documents/test/resume.pdf', 'My resume for review', 'PENDING', 'CONSULTEE', 'test_unit_docs_apt1', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_unit_docs_ck1', 'test_unit_docs_u1', true, NOW(), NOW()),
  ('test_unit_docs_ck2', 'test_unit_docs_u2', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_docs_np1', 'test_unit_docs_u1'), ('test_unit_docs_np2', 'test_unit_docs_u2');

COMMIT;
