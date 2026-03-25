# Unit Test: Profile

> **Feature:** Edit profile (name, bio, city, phone), profile image upload, professional background CRUD (work experience, education, certifications)
> **Route:** `/profile`, `/profile/edit`
> **Backend:** `/api/profile/*`, `/api/profile/background/*`

---

## Data Seeding

```sql
-- Verified consultant user
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", bio, city, phone, "createdAt", "updatedAt")
VALUES ('test_unit_profile_u1', 'Profile Test User', 'test_unit_profile@test.com', true, 'CONSULTANT', true, 'Original bio', 'Mumbai', '+919000000001', NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_profile_a1', 'test_unit_profile_u1', 'test_unit_profile_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_profile_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_profile_cp1', 'test_unit_profile_u1', 'test_unit_profile_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_profile_cp1' WHERE id = 'test_unit_profile_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_profile_ck1', 'test_unit_profile_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_profile_np1', 'test_unit_profile_u1');
```

---

## Scenarios

### 1. View Profile Page
```
navigate_page → url: http://localhost:3000/profile
wait_for → text: "Profile" OR text: "Profile Test User"
take_snapshot
take_screenshot
```
**Verify:** Name, bio, city visible on profile page.

### 2. Edit Profile — Name, Bio, City, Phone
```
navigate_page → url: http://localhost:3000/profile/edit
wait_for → text: "Edit" OR text: "Profile"
take_snapshot
fill → uid: [Name], value: "Updated Profile User"
fill → uid: [Bio], value: "Updated bio text"
fill → uid: [City], value: "Bangalore"
fill → uid: [Phone], value: "+919000000002"
click → uid: [Save / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT name, bio, city, phone FROM "users" WHERE id = 'test_unit_profile_u1';`
**Expected:** name = "Updated Profile User", bio = "Updated bio text", city = "Bangalore".

### 3. Profile Image Upload Screen
```
navigate_page → url: http://localhost:3000/profile/edit
take_snapshot
-- Look for image upload area / avatar section
take_screenshot
```
**Expected:** Profile image upload widget is visible. (Actual upload requires file picker interaction.)

### 4. Add Work Experience
```
navigate_page → url: http://localhost:3000/profile
take_snapshot
-- Navigate to professional background / work experience section
click → uid: [Add Work Experience] OR click → uid: [Add Experience]
wait_for → timeout: 3000
take_snapshot
fill → uid: [Company], value: "Test Corp"
fill → uid: [Title], value: "Senior Engineer"
fill → uid: [Start Date], value: "2020-01-01"
fill → uid: [End Date], value: "2023-12-31"
click → uid: [Save / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, company, title FROM "WorkExperience" WHERE "userId" = 'test_unit_profile_u1';`

### 5. Add Education
```
navigate_page → url: http://localhost:3000/profile
take_snapshot
click → uid: [Add Education]
wait_for → timeout: 3000
take_snapshot
fill → uid: [Institution], value: "IIT Bombay"
fill → uid: [Degree], value: "B.Tech"
fill → uid: [Field of Study], value: "Computer Science"
fill → uid: [Start Year], value: "2016"
fill → uid: [End Year], value: "2020"
click → uid: [Save / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, institution, degree FROM "Education" WHERE "userId" = 'test_unit_profile_u1';`

### 6. Add Certification
```
navigate_page → url: http://localhost:3000/profile
take_snapshot
click → uid: [Add Certification]
wait_for → timeout: 3000
take_snapshot
fill → uid: [Name], value: "AWS Solutions Architect"
fill → uid: [Issuing Organization], value: "Amazon Web Services"
fill → uid: [Issue Date], value: "2022-06-15"
click → uid: [Save / Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, name, "issuingOrganization" FROM "Certification" WHERE "userId" = 'test_unit_profile_u1';`

### 7. Delete Work Experience
After adding work experience (Scenario 4):
```
navigate_page → url: http://localhost:3000/profile
take_snapshot
click → uid: [Delete] (on work experience entry)
wait_for → timeout: 3000
take_screenshot
```
**Verify:** `SELECT count(*) FROM "WorkExperience" WHERE "userId" = 'test_unit_profile_u1';`

---

## Cleanup

```sql
DELETE FROM "WorkExperience" WHERE "userId" = 'test_unit_profile_u1';
DELETE FROM "Education" WHERE "userId" = 'test_unit_profile_u1';
DELETE FROM "Certification" WHERE "userId" = 'test_unit_profile_u1';
DELETE FROM "sessions" WHERE "userId" = 'test_unit_profile_u1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_profile_cp1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_profile_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_profile_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_profile_u1';
DELETE FROM "users" WHERE id = 'test_unit_profile_u1';
DELETE FROM "Domain" WHERE id = 'test_unit_profile_dom';
```
