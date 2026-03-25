# E2E Test: Social, Support, Staff & Misc Features

> **What this tests:** Chat, referrals, reviews, support tickets, feedback, payout accounts, tax info, staff dashboard, announcements, maintenance, collaborations.
>
> **Tools:** Supabase MCP, Chrome DevTools MCP, GitHub (bug reporting).

---

## Instructions for AI Agent

Same protocol: Seed → Test UI → Verify DB → File bugs → Clean up.

**Note:** Stream Chat/Video won't fully work in Chrome emulator. Test that the pages load and render without errors. For chat, verify the UI loads; for meetings, verify the screen renders the expected layout.

---

## 1. Data Seeding

```sql
-- execute_sql

-- Consultant user (for payout, tax, reviews received)
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_e2e_soc_cnt', 'Social Consultant', 'test_e2e_soc_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_e2e_soc_cnt_acc', 'test_e2e_soc_cnt', 'test_e2e_soc_cnt', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_e2e_soc_dom', 'Design', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", headline, experience, "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_e2e_soc_cp', 'test_e2e_soc_cnt', 'test_e2e_soc_dom', 'UX Designer', 6, true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_e2e_soc_cp' WHERE id = 'test_e2e_soc_cnt';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_e2e_soc_cnt_cee', 'test_e2e_soc_cnt', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_e2e_soc_cnt_cee' WHERE id = 'test_e2e_soc_cnt';

-- Consultee user (for reviews, referrals, support)
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_e2e_soc_cee', 'Social Consultee', 'test_e2e_soc_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_e2e_soc_cee_acc', 'test_e2e_soc_cee', 'test_e2e_soc_cee', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_e2e_soc_cee_p', 'test_e2e_soc_cee', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_e2e_soc_cee_p' WHERE id = 'test_e2e_soc_cee';

-- Staff user
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_e2e_soc_staff', 'Staff User', 'test_e2e_soc_staff@test.com', true, 'STAFF', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_e2e_soc_staff_acc', 'test_e2e_soc_staff', 'test_e2e_soc_staff', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

-- Preferences for all users
INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_e2e_soc_ck1', 'test_e2e_soc_cnt', true, NOW(), NOW()),
  ('test_e2e_soc_ck2', 'test_e2e_soc_cee', true, NOW(), NOW()),
  ('test_e2e_soc_ck3', 'test_e2e_soc_staff', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES
  ('test_e2e_soc_np1', 'test_e2e_soc_cnt'),
  ('test_e2e_soc_np2', 'test_e2e_soc_cee'),
  ('test_e2e_soc_np3', 'test_e2e_soc_staff');

-- Support ticket for testing
INSERT INTO "support_tickets" (id, "userId", subject, description, "issueType", status, priority, "createdAt", "updatedAt")
VALUES ('test_e2e_soc_ticket', 'test_e2e_soc_cee', 'Test Ticket', 'E2E test support ticket', 'GENERAL', 'OPEN', 'MEDIUM', NOW(), NOW());

-- Announcement for banner test
INSERT INTO "announcements" (id, title, message, "isActive", "startDate", "createdAt", "updatedAt")
VALUES ('test_e2e_soc_ann', 'Test Announcement', 'This is an E2E test announcement', true, NOW() - INTERVAL '1 hour', NOW(), NOW());

-- Pending verification for staff to review
INSERT INTO "ConsultantProfileVerification" (id, status, "consultantProfileId", "submittedAt", notes, "createdAt", "updatedAt")
VALUES ('test_e2e_soc_verif', 'PENDING', 'test_e2e_soc_cp', NOW(), 'Please verify', NOW(), NOW());
```

---

## 2. Test Scenarios

### Scenario 1: Chat List Page

1. Sign in as consultee
   ```
   -- Sign in as test_e2e_soc_cee@test.com
   navigate_page → url: http://localhost:3000/messages
   wait_for → text: "Messages" OR text: "Chat" OR text: "No conversations"
   take_snapshot
   take_screenshot
   ```
2. **Verify:** Page loads without error. May show empty state if no channels.

### Scenario 2: Referral Code

1. Sign in as consultee
2. Look for referrals in profile or settings
   ```
   -- Try navigating to referrals (may be in profile or dashboard)
   evaluate_script → expression: `
     fetch('/api/referrals/code', {
       method: 'GET',
       headers: {'Authorization': 'Bearer ' + localStorage.getItem('auth_token')}
     }).then(r => r.json()).then(d => JSON.stringify(d))
   `
   ```
3. **Verify:** Referral code returned or created

### Scenario 3: Support Ticket

1. Sign in as consultee
2. Navigate to support
   ```
   navigate_page → url: http://localhost:3000/support
   wait_for → text: "Support" OR text: "Tickets"
   take_snapshot
   take_screenshot
   ```
3. Verify existing ticket is visible

4. Create new ticket
   ```
   navigate_page → url: http://localhost:3000/support/create
   wait_for → text: "Create" OR text: "New Ticket"
   take_snapshot
   fill → uid: [Subject], value: "E2E Test Issue"
   fill → uid: [Description], value: "Testing support ticket creation from E2E"
   click → uid: [Submit button]
   wait_for → timeout: 5000
   take_screenshot
   ```

5. View ticket detail
   ```
   navigate_page → url: http://localhost:3000/support/test_e2e_soc_ticket
   wait_for → text: "Test Ticket"
   take_snapshot
   take_screenshot
   ```

### Scenario 4: Feedback

```
navigate_page → url: http://localhost:3000/feedback
wait_for → text: "Feedback"
take_snapshot
fill → uid: [Title/Subject], value: "E2E Feedback"
fill → uid: [Description], value: "Testing feedback submission"
click → uid: [Submit]
wait_for → timeout: 5000
take_screenshot
```

### Scenario 5: Payout Accounts (Consultant)

1. Sign in as consultant (test_e2e_soc_cnt@test.com)
2. Navigate to payouts
   ```
   navigate_page → url: http://localhost:3000/payout-accounts
   wait_for → text: "Payout" OR text: "No payout"
   take_snapshot
   take_screenshot
   ```

3. Add a bank account
   ```
   navigate_page → url: http://localhost:3000/payout-accounts/add
   wait_for → text: "Add" OR text: "Bank"
   take_snapshot
   -- Select Bank tab
   fill → uid: [Account Holder], value: "E2E Test Account"
   fill → uid: [Bank Name], value: "Test Bank"
   fill → uid: [Last 4 digits], value: "1234"
   fill → uid: [IFSC], value: "TEST0001234"
   click → uid: [Add Account button]
   wait_for → timeout: 5000
   take_screenshot
   ```

4. **Verify:**
   ```sql
   SELECT * FROM "PayoutAccount" WHERE "consultantProfileId" = 'test_e2e_soc_cp';
   ```

### Scenario 6: Tax Info (Consultant)

```
navigate_page → url: http://localhost:3000/tax-info
wait_for → text: "Tax" OR text: "PAN"
take_snapshot
fill → uid: [PAN Number], value: "ABCDE1234F"
fill → uid: [GST Number], value: "22AAAAA0000A1Z5"
click → uid: [Save]
wait_for → timeout: 5000
take_screenshot
```

**Verify:**
```sql
SELECT * FROM "ConsultantTaxInfo" WHERE "consultantProfileId" = 'test_e2e_soc_cp';
```

### Scenario 7: Staff Dashboard

1. Sign in as staff (test_e2e_soc_staff@test.com)
2. Navigate to staff dashboard
   ```
   navigate_page → url: http://localhost:3000/staff
   wait_for → text: "Staff" OR text: "Dashboard"
   take_snapshot
   take_screenshot
   ```
3. Verify stat cards are visible (open tickets, pending verifications, feedback)
4. Verify pending verifications list shows the test verification
5. Verify support tickets list

### Scenario 8: Announcement Banner

1. Sign in as any user
2. Navigate to main app
   ```
   navigate_page → url: http://localhost:3000/explore
   wait_for → text: "Explore"
   take_snapshot
   ```
3. **Verify:** Look for announcement banner at top with text "This is an E2E test announcement"
4. If banner exists, try dismissing it
   ```
   take_screenshot
   ```

### Scenario 9: Maintenance Mode Screen

```
navigate_page → url: http://localhost:3000/maintenance
wait_for → text: "Maintenance" OR text: "Under Maintenance"
take_snapshot
take_screenshot
```

### Scenario 10: Collaborations Page

1. Sign in as consultant
   ```
   navigate_page → url: http://localhost:3000/collaborations
   wait_for → text: "Collaborations" OR text: "No collaborations"
   take_snapshot
   take_screenshot
   ```

### Scenario 11: Dashboard

1. Sign in as consultee, check dashboard
   ```
   navigate_page → url: http://localhost:3000/dashboard
   wait_for → text: "Dashboard"
   take_snapshot
   take_screenshot
   ```

2. Sign in as consultant, check dashboard
   ```
   -- Sign out, sign in as consultant
   navigate_page → url: http://localhost:3000/dashboard
   wait_for → text: "Dashboard"
   take_snapshot
   take_screenshot
   ```

---

## 3. Cleanup

```sql
-- execute_sql
DELETE FROM "ConsultantTaxInfo" WHERE "consultantProfileId" LIKE 'test_e2e_soc%';
DELETE FROM "PayoutAccount" WHERE "consultantProfileId" LIKE 'test_e2e_soc%';
DELETE FROM "ConsultantProfileVerification" WHERE id LIKE 'test_e2e_soc%';
DELETE FROM "SupportResponse" WHERE "supportTicketId" LIKE 'test_e2e_soc%';
DELETE FROM "support_tickets" WHERE id LIKE 'test_e2e_soc%';
DELETE FROM "support_tickets" WHERE "userId" LIKE 'test_e2e_soc%';
DELETE FROM "feedbacks" WHERE "userId" LIKE 'test_e2e_soc%';
DELETE FROM "ReferralCode" WHERE "userId" LIKE 'test_e2e_soc%';
DELETE FROM "announcements" WHERE id LIKE 'test_e2e_soc%';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_e2e_soc%';
DELETE FROM "ConsultantProfile" WHERE id LIKE 'test_e2e_soc%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_e2e_soc%';
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_e2e_soc%';
DELETE FROM "cookie_preferences" WHERE "userId" LIKE 'test_e2e_soc%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_e2e_soc%';
DELETE FROM "users" WHERE id LIKE 'test_e2e_soc%';
DELETE FROM "Domain" WHERE id LIKE 'test_e2e_soc%';
```

---

## 4. Checklist

- [ ] Chat page loads
- [ ] Referral code generation works
- [ ] Support ticket list loads
- [ ] New support ticket created
- [ ] Ticket detail page loads
- [ ] Feedback submitted
- [ ] Payout account added
- [ ] Tax info saved
- [ ] Staff dashboard loads with stats
- [ ] Announcement banner appears (or not — check)
- [ ] Maintenance screen renders
- [ ] Collaborations page loads
- [ ] Dashboards load for both roles
- [ ] All bugs filed
- [ ] Cleaned up
