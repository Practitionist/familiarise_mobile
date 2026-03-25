# E2E Test: Plans, Slots & Explore

> **What this tests:** Consultant plan CRUD (all 4 types), availability slot management, explore page, consultant profiles.
>
> **Tools:** Supabase MCP, Chrome DevTools MCP, GitHub (bug reporting).

---

## Instructions for AI Agent

Same protocol: Seed → Test UI → Verify DB → File bugs → Clean up. Take snapshots before interactions, screenshots at key moments. Create GitHub issues for bugs.

---

## 1. Data Seeding

```sql
-- execute_sql
-- Verified consultant user
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_e2e_plan_user1', 'Plan Test Consultant', 'test_e2e_plan@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_e2e_plan_acc1', 'test_e2e_plan_user1', 'test_e2e_plan_user1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_e2e_plan_domain', 'Engineering', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", headline, description, experience, "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_e2e_plan_cp1', 'test_e2e_plan_user1', 'test_e2e_plan_domain', 'Flutter Expert', 'Mobile development specialist', 8.0, true, 'VERIFIED', NOW(), NOW());

UPDATE "users" SET "consultantProfileId" = 'test_e2e_plan_cp1' WHERE id = 'test_e2e_plan_user1';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_e2e_plan_cee1', 'test_e2e_plan_user1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_e2e_plan_cee1' WHERE id = 'test_e2e_plan_user1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_e2e_plan_ck1', 'test_e2e_plan_user1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_e2e_plan_np1', 'test_e2e_plan_user1');

-- Consultee user for explore tests
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_e2e_exp_user1', 'Explore Test User', 'test_e2e_explore@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_e2e_exp_acc1', 'test_e2e_exp_user1', 'test_e2e_exp_user1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_e2e_exp_cee1', 'test_e2e_exp_user1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_e2e_exp_cee1' WHERE id = 'test_e2e_exp_user1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_e2e_exp_ck1', 'test_e2e_exp_user1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_e2e_exp_np1', 'test_e2e_exp_user1');
```

---

## 2. Test Scenarios

### Scenario 1: Create Consultation Plan

1. Sign in as consultant (test_e2e_plan@test.com)
2. Navigate to plans (look for "Plans" in navigation or dashboard)
   ```
   -- Try dashboard first, look for plan management link
   navigate_page → url: http://localhost:3000/dashboard
   take_snapshot
   -- Look for any "Create Plan" or "My Plans" or settings icon
   ```

   **Note:** If there's no direct UI for plan creation on mobile yet, test via the API route instead:
   ```
   -- Verify the API endpoint works
   -- Use evaluate_script to make a fetch call:
   evaluate_script → expression: `
     fetch('/api/plans/consultations', {
       method: 'POST',
       headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ' + localStorage.getItem('auth_token')},
       body: JSON.stringify({title: 'E2E Test Consultation', durationInHours: 1, price: 500, language: 'English'})
     }).then(r => r.json()).then(d => JSON.stringify(d))
   `
   ```

3. **Verify:**
   ```sql
   SELECT id, title, price, "durationInHours" FROM "ConsultationPlan"
   WHERE "consultantProfileId" = 'test_e2e_plan_cp1';
   ```

### Scenario 2: Create Subscription Plan

```
evaluate_script → expression: `
  fetch('/api/plans/subscriptions', {
    method: 'POST',
    headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ' + localStorage.getItem('auth_token')},
    body: JSON.stringify({title: 'E2E Monthly Sub', durationInMonths: 3, price: 3000, callsPerWeek: 2, sessionDurationInHours: 1, freeTrialEnabled: true})
  }).then(r => r.json()).then(d => JSON.stringify(d))
`
```

### Scenario 3: Create Weekly Availability Slot

1. Navigate to schedule page
   ```
   navigate_page → url: http://localhost:3000/schedule
   wait_for → text: "Schedule" OR text: "Availability"
   take_snapshot
   take_screenshot
   ```

2. Look for "Add Slot" or availability management UI
   ```
   take_snapshot
   -- If there's an add button, click it and fill the form
   -- Otherwise test via API
   ```

3. **API fallback:**
   ```
   evaluate_script → expression: `
     fetch('/api/slots/availability/weekly', {
       method: 'POST',
       headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ' + localStorage.getItem('auth_token')},
       body: JSON.stringify({startDay: 'MONDAY', endDay: 'MONDAY', startTimeUtc: 540, endTimeUtc: 1080})
     }).then(r => r.json()).then(d => JSON.stringify(d))
   `
   ```

4. **Verify:**
   ```sql
   SELECT * FROM "SlotOfAvailabilityWeekly" WHERE "consultantProfileId" = 'test_e2e_plan_cp1';
   ```

### Scenario 4: Explore Page

1. Sign in as consultee (test_e2e_explore@test.com)
2. Navigate to explore
   ```
   navigate_page → url: http://localhost:3000/explore
   wait_for → text: "Explore" OR text: "Experts" OR text: "Find"
   take_snapshot
   take_screenshot
   ```

3. Verify consultant cards are displayed
   - Look for consultant names, ratings, domains
   - Try search/filter if available

4. Click on a consultant profile
   ```
   -- Click on a consultant card
   click → uid: [consultant card]
   wait_for → text: "About" OR text: "Plans" OR text: "Reviews"
   take_snapshot
   take_screenshot
   ```

5. Verify profile sections: about, plans, reviews, availability

### Scenario 5: Programs Page (Webinars & Classes)

1. Navigate to programs
   ```
   navigate_page → url: http://localhost:3000/programs
   wait_for → text: "Programs" OR text: "Webinars" OR text: "Classes"
   take_snapshot
   take_screenshot
   ```

2. Check that webinar/class listings display correctly

---

## 3. Cleanup

```sql
-- execute_sql
DELETE FROM "SlotOfAvailabilityWeekly" WHERE "consultantProfileId" LIKE 'test_e2e_plan%';
DELETE FROM "SlotOfAvailabilityCustom" WHERE "consultantProfileId" LIKE 'test_e2e_plan%';
DELETE FROM "ConsultationPlan" WHERE "consultantProfileId" LIKE 'test_e2e_plan%';
DELETE FROM "SubscriptionPlan" WHERE "consultantProfileId" LIKE 'test_e2e_plan%';
DELETE FROM "WebinarPlan" WHERE "consultantProfileId" LIKE 'test_e2e_plan%';
DELETE FROM "ClassPlan" WHERE "consultantProfileId" LIKE 'test_e2e_plan%';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_e2e_plan%' OR "userId" LIKE 'test_e2e_exp%';
DELETE FROM "ConsultantProfile" WHERE id LIKE 'test_e2e_plan%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_e2e_plan%' OR id LIKE 'test_e2e_exp%';
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_e2e_plan%' OR "userId" LIKE 'test_e2e_exp%';
DELETE FROM "cookie_preferences" WHERE "userId" LIKE 'test_e2e_plan%' OR "userId" LIKE 'test_e2e_exp%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_e2e_plan%' OR "userId" LIKE 'test_e2e_exp%';
DELETE FROM "users" WHERE id LIKE 'test_e2e_plan%' OR id LIKE 'test_e2e_exp%';
DELETE FROM "Domain" WHERE id LIKE 'test_e2e_plan%';
```

---

## 4. Checklist

- [ ] Consultation plan created (UI or API)
- [ ] Subscription plan created with free trial
- [ ] Weekly slot created
- [ ] Explore page loads with consultant cards
- [ ] Consultant profile page shows sections
- [ ] Programs page loads
- [ ] All bugs filed
- [ ] Cleaned up
