# Unit Test: Onboarding

> **Feature:** Multi-step onboarding for consultee (6 steps) and consultant (7 steps)
> **Route:** `/onboarding`
> **Backend:** `POST /api/onboarding/submit`

---

## Data Seeding

```sql
-- Fresh users with onboardingCompleted = false
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_unit_onb_cee', 'Onb Consultee', 'test_unit_onb_cee@test.com', true, 'CONSULTEE', false, NOW(), NOW()),
  ('test_unit_onb_cnt', 'Onb Consultant', 'test_unit_onb_cnt@test.com', true, 'CONSULTEE', false, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_unit_onb_a1', 'test_unit_onb_cee', 'test_unit_onb_cee', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW()),
  ('test_unit_onb_a2', 'test_unit_onb_cnt', 'test_unit_onb_cnt', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_onb_ck1', 'test_unit_onb_cee', true, NOW(), NOW()),
       ('test_unit_onb_ck2', 'test_unit_onb_cnt', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_unit_onb_np1', 'test_unit_onb_cee'), ('test_unit_onb_np2', 'test_unit_onb_cnt');

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_onb_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;
INSERT INTO "SubDomain" (id, name, "domainId", "createdAt", "updatedAt")
VALUES ('test_unit_onb_sub', 'Flutter Dev', 'test_unit_onb_dom', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;
```

---

## Scenarios

### 1. Consultee Onboarding (6 steps)
Sign in as `test_unit_onb_cee@test.com`. Should redirect to onboarding.

**Step 0 — Role:** Select Consultee → Continue
**Step 1 — Personal Info:** Fill name, phone → Continue
**Step 2 — Profile:** Fill occupation, career stage → Continue
**Step 3 — Preferences:** Select budget, communication → Continue
**Step 4 — Agreement:** Check terms + privacy → Continue
**Step 5 — Review:** Verify all data → Submit

```
-- After each step:
take_snapshot → verify step title → fill fields → click Continue → take_snapshot
-- After submit:
wait_for → text: "Dashboard" OR url_change
take_screenshot
```

**Verify:** `SELECT "onboardingCompleted", role FROM "users" WHERE id = 'test_unit_onb_cee';`

### 2. Consultant Onboarding (7 steps)
Sign in as `test_unit_onb_cnt@test.com`.

**Step 0 — Role:** Select Consultant
**Step 1 — Personal Info:** Name, phone, bio
**Step 2 — Professional:** Headline ("Flutter Expert"), description, experience (10), domain (Technology)
**Step 3 — Background:** Add work experience (company, title, dates), education (institution, degree)
**Step 4 — Availability:** Info screen → Continue
**Step 5 — Agreement:** Terms + privacy
**Step 6 — Review:** Submit

**Verify:** `SELECT id, headline FROM "ConsultantProfile" WHERE "userId" = 'test_unit_onb_cnt';`

---

## Cleanup

```sql
DELETE FROM "WorkExperience" WHERE "userId" LIKE 'test_unit_onb%';
DELETE FROM "Education" WHERE "userId" LIKE 'test_unit_onb%';
DELETE FROM "Certification" WHERE "userId" LIKE 'test_unit_onb%';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_unit_onb%';
DELETE FROM "ConsultantProfile" WHERE "userId" LIKE 'test_unit_onb%';
DELETE FROM "ConsulteeProfile" WHERE "userId" LIKE 'test_unit_onb%';
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_unit_onb%';
DELETE FROM "cookie_preferences" WHERE "userId" LIKE 'test_unit_onb%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_unit_onb%';
DELETE FROM "users" WHERE id LIKE 'test_unit_onb%';
DELETE FROM "SubDomain" WHERE id LIKE 'test_unit_onb%';
DELETE FROM "Domain" WHERE id LIKE 'test_unit_onb%';
```
