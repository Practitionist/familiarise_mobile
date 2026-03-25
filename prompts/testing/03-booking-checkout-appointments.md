# E2E Test: Booking, Checkout & Appointments

> **What this tests:** Consultation booking flow, discount validation, checkout (up to gateway), booking management, document review, trials, waitlist, invoices.
>
> **Tools:** Supabase MCP, Chrome DevTools MCP, GitHub (bug reporting).

---

## Instructions for AI Agent

Same protocol: Seed → Test UI → Verify DB → File bugs → Clean up.

**Important:** Payment gateways (Razorpay/Stripe) won't complete in the Chrome emulator. Test up to the point where the gateway is invoked, then verify the checkout session was created in the database.

---

## 1. Data Seeding

```sql
-- execute_sql

-- Consultant with plan + availability
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_e2e_bk_cnt', 'Booking Consultant', 'test_e2e_bk_cnt@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_e2e_bk_cnt_acc', 'test_e2e_bk_cnt', 'test_e2e_bk_cnt', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_e2e_bk_dom', 'Business', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", headline, experience, "isVerified", "verificationStatus", "scheduleType", "createdAt", "updatedAt")
VALUES ('test_e2e_bk_cp', 'test_e2e_bk_cnt', 'test_e2e_bk_dom', 'Business Coach', 5, true, 'VERIFIED', 'WEEKLY', NOW(), NOW());

UPDATE "users" SET "consultantProfileId" = 'test_e2e_bk_cp' WHERE id = 'test_e2e_bk_cnt';

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_e2e_bk_cnt_cee', 'test_e2e_bk_cnt', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_e2e_bk_cnt_cee' WHERE id = 'test_e2e_bk_cnt';

-- Consultation plan
INSERT INTO "ConsultationPlan" (id, "consultantProfileId", title, "durationInHours", price, "priceCurrency", language, "createdAt", "updatedAt")
VALUES ('test_e2e_bk_plan1', 'test_e2e_bk_cp', '1-on-1 Career Coaching', 1, 500, 'INR', 'English', NOW(), NOW());

-- Subscription plan with free trial
INSERT INTO "SubscriptionPlan" (id, "consultantProfileId", title, "durationInMonths", price, "callsPerWeek", "sessionDurationInHours", "freeTrialEnabled", "freeTrialDurationMinutes", "createdAt", "updatedAt")
VALUES ('test_e2e_bk_subplan', 'test_e2e_bk_cp', 'Monthly Mentorship', 3, 3000, 2, 1, true, 30, NOW(), NOW());

-- Availability slot (Monday 9am-6pm UTC)
INSERT INTO "SlotOfAvailabilityWeekly" (id, "consultantProfileId", "startDay", "endDay", "startTimeUtc", "endTimeUtc", "createdAt", "updatedAt")
VALUES ('test_e2e_bk_slot1', 'test_e2e_bk_cp', 'MONDAY', 'MONDAY', 540, 1080, NOW(), NOW());

-- Consultee user
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_e2e_bk_cee', 'Booking Consultee', 'test_e2e_bk_cee@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_e2e_bk_cee_acc', 'test_e2e_bk_cee', 'test_e2e_bk_cee', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_e2e_bk_cee_p', 'test_e2e_bk_cee', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_e2e_bk_cee_p' WHERE id = 'test_e2e_bk_cee';

-- Discount code
INSERT INTO "DiscountCode" (id, code, "discountType", "discountValue", "isActive", "maxUses", "currentUses", "createdAt", "updatedAt")
VALUES ('test_e2e_bk_disc', 'E2ETEST10', 'PERCENTAGE', 10, true, 100, 0, NOW(), NOW());

-- Preferences
INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES
  ('test_e2e_bk_ck1', 'test_e2e_bk_cnt', true, NOW(), NOW()),
  ('test_e2e_bk_ck2', 'test_e2e_bk_cee', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES
  ('test_e2e_bk_np1', 'test_e2e_bk_cnt'),
  ('test_e2e_bk_np2', 'test_e2e_bk_cee');
```

---

## 2. Test Scenarios

### Scenario 1: View Consultant Profile & Plans (as Consultee)

1. Sign in as consultee (test_e2e_bk_cee@test.com)
2. Navigate to explore
   ```
   navigate_page → url: http://localhost:3000/explore
   wait_for → text: "Explore" OR text: "Experts"
   take_snapshot
   ```
3. Find the test consultant and click their profile
4. Verify plans are displayed with prices

### Scenario 2: Request Consultation Booking

1. From consultant profile, click on the consultation plan
2. Select an available slot
   ```
   -- Look for available time slots
   take_snapshot
   -- Click on a slot
   click → uid: [available slot]
   ```
3. Proceed to booking
   ```
   click → uid: [Book / Request button]
   wait_for → text: "Checkout" OR text: "Payment" OR text: "Confirm"
   take_snapshot
   take_screenshot
   ```

### Scenario 3: Discount Code Validation

1. In checkout, look for discount code field
   ```
   take_snapshot
   fill → uid: [Discount code field], value: "E2ETEST10"
   click → uid: [Apply button]
   wait_for → timeout: 3000
   take_snapshot
   ```
2. **Verify:** Discount amount shown (10% off)

3. Test invalid code
   ```
   fill → uid: [Discount code field], value: "INVALIDCODE"
   click → uid: [Apply]
   wait_for → timeout: 3000
   take_snapshot
   ```
4. **Verify:** Error message "Code not found" or similar

### Scenario 4: Trial Session Request

1. Sign in as consultee
2. Navigate to trial request
   ```
   navigate_page → url: http://localhost:3000/trials/request?consultantProfileId=test_e2e_bk_cp&subscriptionPlanId=test_e2e_bk_subplan
   wait_for → text: "Trial" OR text: "Free"
   take_snapshot
   take_screenshot
   ```
3. Fill notes and request
   ```
   fill → uid: [Notes], value: "I'd like to discuss career transition"
   click → uid: [Request Trial button]
   wait_for → timeout: 5000
   take_snapshot
   ```
4. **Verify:**
   ```sql
   SELECT id, status, notes FROM "TrialSession"
   WHERE "consulteeProfileId" = 'test_e2e_bk_cee_p'
   AND "consultantProfileId" = 'test_e2e_bk_cp';
   ```

### Scenario 5: Trials List

```
navigate_page → url: http://localhost:3000/trials
wait_for → text: "Trial" OR text: "Sessions"
take_snapshot
take_screenshot
```

### Scenario 6: My Bookings

```
navigate_page → url: http://localhost:3000/my-bookings
wait_for → text: "Bookings" OR text: "My Bookings"
take_snapshot
take_screenshot
```

### Scenario 7: Waitlist Join

1. Create a full webinar (for waitlist testing)
   ```sql
   -- execute_sql
   INSERT INTO "WebinarPlan" (id, "consultantProfileId", title, "durationInHours", price, "maxParticipants", "createdAt", "updatedAt")
   VALUES ('test_e2e_bk_wp', 'test_e2e_bk_cp', 'Full Webinar', 2, 1000, 1, NOW(), NOW());
   ```

2. Navigate to waitlist
   ```
   navigate_page → url: http://localhost:3000/waitlist
   wait_for → text: "Waitlist"
   take_snapshot
   take_screenshot
   ```

### Scenario 8: Appointment Documents

1. Create a mock appointment for testing
   ```sql
   INSERT INTO "Appointment" (id, "appointmentType", "consultantProfileId", "consulteeProfileId", "createdAt", "updatedAt")
   VALUES ('test_e2e_bk_appt', 'CONSULTATION', 'test_e2e_bk_cp', 'test_e2e_bk_cee_p', NOW(), NOW());
   ```

2. Navigate to documents
   ```
   navigate_page → url: http://localhost:3000/bookings/test_e2e_bk_appt/documents?appointmentId=test_e2e_bk_appt
   wait_for → text: "Documents" OR text: "No documents"
   take_snapshot
   take_screenshot
   ```

---

## 3. Cleanup

```sql
-- execute_sql
DELETE FROM "AppointmentDocument" WHERE "appointmentId" LIKE 'test_e2e_bk%';
DELETE FROM "TrialSession" WHERE "consulteeProfileId" LIKE 'test_e2e_bk%';
DELETE FROM "Waitlist" WHERE "userId" LIKE 'test_e2e_bk%';
DELETE FROM "SlotOfAppointment" WHERE "appointmentId" LIKE 'test_e2e_bk%';
DELETE FROM "Appointment" WHERE id LIKE 'test_e2e_bk%';
DELETE FROM "Payment" WHERE "userId" LIKE 'test_e2e_bk%';
DELETE FROM "Consultation" WHERE "consultationPlanId" LIKE 'test_e2e_bk%';
DELETE FROM "WebinarPlan" WHERE id LIKE 'test_e2e_bk%';
DELETE FROM "SubscriptionPlan" WHERE id LIKE 'test_e2e_bk%';
DELETE FROM "ConsultationPlan" WHERE id LIKE 'test_e2e_bk%';
DELETE FROM "SlotOfAvailabilityWeekly" WHERE id LIKE 'test_e2e_bk%';
DELETE FROM "DiscountCode" WHERE id LIKE 'test_e2e_bk%';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_e2e_bk%';
DELETE FROM "ConsultantProfile" WHERE id LIKE 'test_e2e_bk%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_e2e_bk%';
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_e2e_bk%';
DELETE FROM "cookie_preferences" WHERE "userId" LIKE 'test_e2e_bk%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_e2e_bk%';
DELETE FROM "users" WHERE id LIKE 'test_e2e_bk%';
DELETE FROM "Domain" WHERE id LIKE 'test_e2e_bk%';
```

---

## 4. Checklist

- [ ] Consultant profile + plans visible from explore
- [ ] Booking flow reaches checkout
- [ ] Discount code validates (valid + invalid)
- [ ] Trial request created
- [ ] Trials list loads
- [ ] My bookings page loads
- [ ] Waitlist page loads
- [ ] Documents page loads
- [ ] All bugs filed
- [ ] Cleaned up
