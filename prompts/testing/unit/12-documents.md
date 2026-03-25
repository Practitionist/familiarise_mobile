# Unit Test: Documents

> **Feature:** View appointment documents, upload document (via API)
> **Route:** `/bookings/:id/documents`
> **Backend:** `/api/appointments/:id/documents`

---

## Data Seeding

```sql
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
VALUES ('test_unit_docs_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

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
```

---

## Scenarios

### 1. View Appointment Documents (as Consultee)
Sign in as `test_unit_docs_cee@test.com` / `TestPassword123`.
```
navigate_page → url: http://localhost:3000/bookings/test_unit_docs_apt1/documents
wait_for → text: "Documents" OR text: "resume.pdf"
take_snapshot
take_screenshot
```
**Expected:** Document "resume.pdf" visible with PENDING review status.

### 2. View Appointment Documents (via API)
```
fetch('/api/appointments/test_unit_docs_apt1/documents', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Response contains document with fileName = "resume.pdf", reviewStatus = "PENDING".

### 3. Upload Document (via API)
```
-- Create FormData with file upload
const formData = new FormData();
formData.append('file', new Blob(['test content'], { type: 'application/pdf' }), 'test-doc.pdf');
formData.append('description', 'Tax return document');

fetch('/api/appointments/test_unit_docs_apt1/documents', {
  method: 'POST',
  credentials: 'include',
  body: formData
}).then(r => r.json())
```
**Verify:** `SELECT id, "fileName", description FROM "AppointmentDocument" WHERE "appointmentId" = 'test_unit_docs_apt1' ORDER BY "uploadedAt" DESC;`
**Expected:** New document entry created.

### 4. View Documents (as Consultant)
Sign in as `test_unit_docs_cnt@test.com` / `TestPassword123`.
```
navigate_page → url: http://localhost:3000/bookings/test_unit_docs_apt1/documents
wait_for → text: "Documents" OR text: "resume.pdf"
take_snapshot
take_screenshot
```
**Expected:** Same documents visible. Consultant may see review options.

---

## Cleanup

```sql
DELETE FROM "AppointmentDocument" WHERE "appointmentId" = 'test_unit_docs_apt1';
DELETE FROM "SlotOfAppointment" WHERE "appointmentId" = 'test_unit_docs_apt1';
DELETE FROM "Appointment" WHERE id = 'test_unit_docs_apt1';
DELETE FROM "Consultation" WHERE id = 'test_unit_docs_con1';
DELETE FROM "ConsultationPlan" WHERE id = 'test_unit_docs_plan1';
DELETE FROM "sessions" WHERE "userId" IN ('test_unit_docs_u1', 'test_unit_docs_u2');
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_docs_cep1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_docs_cp1';
DELETE FROM "notification_preferences" WHERE "userId" IN ('test_unit_docs_u1', 'test_unit_docs_u2');
DELETE FROM "cookie_preferences" WHERE "userId" IN ('test_unit_docs_u1', 'test_unit_docs_u2');
DELETE FROM "accounts" WHERE "userId" IN ('test_unit_docs_u1', 'test_unit_docs_u2');
DELETE FROM "users" WHERE id IN ('test_unit_docs_u1', 'test_unit_docs_u2');
DELETE FROM "Domain" WHERE id = 'test_unit_docs_dom';
```
