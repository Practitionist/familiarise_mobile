# Integration Test: Consultee Booking Journey

> **Journey:** Full consultee experience from sign-up to booking, reviews, referrals, waitlist, support, and feedback
> **Flow:** Sign up -> onboard -> explore -> trial -> book -> discount -> documents -> review -> referral -> waitlist -> support -> feedback
> **APP_URL:** http://localhost:3000

---

## Data Seeding

```sql
-- Verified consultant with plans, slots, availability, and discount code
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", bio, city, "createdAt", "updatedAt")
VALUES ('test_intg_cbj_cnt', 'Journey Consultant', 'test_intg_cbj_cnt@test.com', true, 'CONSULTANT', true, 'Expert Flutter developer', 'Bangalore', NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_intg_cbj_a_cnt', 'test_intg_cbj_cnt', 'test_intg_cbj_cnt', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_intg_cbj_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", headline, rating, "createdAt", "updatedAt")
VALUES ('test_intg_cbj_cp', 'test_intg_cbj_cnt', 'test_intg_cbj_dom', 'WEEKLY', true, 'VERIFIED', 'Flutter Expert Mentor', 4.5, NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_intg_cbj_cp' WHERE id = 'test_intg_cbj_cnt';

-- Consultation plan
INSERT INTO "ConsultationPlan" (id, title, description, "durationInHours", price, "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_intg_cbj_plan', 'Journey Consultation Plan', '1-hour Flutter consultation', 1, 75000, 'test_intg_cbj_cp', NOW(), NOW());

-- Subscription plan with free trial
INSERT INTO "SubscriptionPlan" (id, title, description, "durationInMonths", price, "callsPerWeek", "sessionDurationInHours", "freeTrialEnabled", "freeTrialDurationMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_intg_cbj_sp', 'Journey Subscription Plan', 'Monthly mentoring with free trial', 1, 200000, 1, 1, true, 30, 'test_intg_cbj_cp', NOW(), NOW());

-- Weekly availability slot (Monday 10:00-11:00 IST)
INSERT INTO "SlotOfAvailabilityWeekly" (id, "startDay", "startTimeUtc", "endDay", "endTimeUtc", "utcOffsetMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_intg_cbj_slot1', 'MONDAY', 270, 'MONDAY', 330, 330, 'test_intg_cbj_cp', NOW(), NOW());

-- Wednesday slot
INSERT INTO "SlotOfAvailabilityWeekly" (id, "startDay", "startTimeUtc", "endDay", "endTimeUtc", "utcOffsetMinutes", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_intg_cbj_slot2', 'WEDNESDAY', 600, 'WEDNESDAY', 660, 330, 'test_intg_cbj_cp', NOW(), NOW());

-- Discount code (20% off, active)
INSERT INTO "DiscountCode" (id, code, description, "discountType", "discountValue", "isActive", "expiresAt", "maxUses", "currentUses", "createdAt", "updatedAt")
VALUES ('test_intg_cbj_dc', 'INTGJOURNEY20', 'Integration test 20% off', 'PERCENTAGE', 20, true, NOW() + INTERVAL '30 days', 10, 0, NOW(), NOW());

-- Webinar plan with maxParticipants=1 (full capacity for waitlist test)
INSERT INTO "WebinarPlan" (id, title, description, price, "durationInHours", "maxParticipants", "consultantProfileId", "createdAt", "updatedAt")
VALUES ('test_intg_cbj_wp', 'Full Journey Webinar', 'A sold-out webinar for waitlist testing', 100000, 2, 1, 'test_intg_cbj_cp', NOW(), NOW());

INSERT INTO "Webinar" (id, status, "webinarPlanId", "createdAt", "updatedAt")
VALUES ('test_intg_cbj_w', 'SCHEDULED', 'test_intg_cbj_wp', NOW(), NOW());

-- Cookie + notification prefs for consultant
INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_intg_cbj_ck_cnt', 'test_intg_cbj_cnt', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId")
VALUES ('test_intg_cbj_np_cnt', 'test_intg_cbj_cnt');
```

---

## Phase 1: Sign Up as Consultee

### 1.1 Navigate to Sign Up
```
navigate_page -> url: http://localhost:3000/auth/sign-up
wait_for -> text: "Create" OR text: "Sign Up"
take_snapshot
```

### 1.2 Fill Sign Up Form
```
fill -> uid: [Name], value: "Journey Consultee"
fill -> uid: [Email], value: "test_intg_cbj_cee@test.com"
fill -> uid: [Password], value: "TestPassword123"
click -> uid: [Sign Up button]
wait_for -> url_change OR timeout: 10000
take_screenshot
```

### 1.3 Verify User Created
```sql
SELECT id, email, role, "onboardingCompleted" FROM "users" WHERE email = 'test_intg_cbj_cee@test.com';
```
**Expected:** User created, onboardingCompleted = false.

---

## Phase 2: Consultee Onboarding (6 Steps)

### 2.1 Step 0 -- Role Selection
```
wait_for -> text: "Role" OR text: "Consultee"
take_snapshot
click -> uid: [Consultee]
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.2 Step 1 -- Personal Info
```
fill -> uid: [Name], value: "Journey Consultee"
fill -> uid: [Phone], value: "+919876543211"
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.3 Step 2 -- Profile
```
fill -> uid: [Occupation], value: "Software Developer"
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.4 Step 3 -- Preferences
```
take_snapshot
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.5 Step 4 -- Agreement
```
click -> uid: [Terms] OR click -> uid: [I agree to the Terms]
click -> uid: [Privacy] OR click -> uid: [I agree to the Privacy Policy]
click -> uid: [Continue / Next]
wait_for -> timeout: 3000
take_snapshot
```

### 2.6 Step 5 -- Review & Submit
```
take_snapshot
click -> uid: [Submit / Complete]
wait_for -> text: "Dashboard" OR url_contains: "/dashboard" OR url_contains: "/explore" OR timeout: 10000
take_screenshot
```

### 2.7 Verify Onboarding
```sql
SELECT u.id, u.role, u."onboardingCompleted", u."consulteeProfileId"
FROM "users" u WHERE u.email = 'test_intg_cbj_cee@test.com';
```
**Expected:** role = 'CONSULTEE', onboardingCompleted = true. Save IDs for subsequent queries.

---

## Phase 3: Explore Consultants

### 3.1 Browse Explore Page
```
navigate_page -> url: http://localhost:3000/explore
wait_for -> text: "Explore" OR text: "Consultants"
take_snapshot
take_screenshot
```
**Expected:** "Journey Consultant" visible in the consultant list.

### 3.2 View Consultant Profile
```
navigate_page -> url: http://localhost:3000/explore/consultant/test_intg_cbj_cp
wait_for -> text: "Journey Consultant" OR text: "Flutter Expert Mentor"
take_snapshot
take_screenshot
```
**Expected:** Consultant name, headline, bio, rating, plans, and availability sections visible.

---

## Phase 4: Request Trial

### 4.1 Check Eligibility
```
fetch('/api/trials/check-eligibility?consultantProfileId=test_intg_cbj_cp&subscriptionPlanId=test_intg_cbj_sp', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Eligible (no prior trial with this consultant).

### 4.2 Request Trial
```
fetch('/api/trials', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    consultantProfileId: 'test_intg_cbj_cp',
    subscriptionPlanId: 'test_intg_cbj_sp',
    notes: 'I want to explore Flutter mentoring before committing'
  })
}).then(r => r.json())
```
**Verify:**
```sql
SELECT id, status, notes FROM "TrialSession"
WHERE "consultantProfileId" = 'test_intg_cbj_cp';
```
**Expected:** TrialSession with status = 'PENDING'.

### 4.3 View Trials List
```
navigate_page -> url: http://localhost:3000/trials
wait_for -> text: "Trials" OR text: "Trial Sessions"
take_snapshot
take_screenshot
```
**Expected:** Trial with "Journey Subscription Plan" visible with PENDING status.

---

## Phase 5: Browse Plans & Book Consultation

### 5.1 Navigate to Booking Page
```
navigate_page -> url: http://localhost:3000/booking/test_intg_cbj_cp/test_intg_cbj_plan
wait_for -> text: "Journey Consultation Plan" OR text: "Book"
take_snapshot
take_screenshot
```
**Expected:** Plan details visible with slot selection options.

### 5.2 Select Slot
```
click -> uid: [Monday slot] OR click -> uid: [10:00]
wait_for -> timeout: 3000
take_snapshot
```
**Expected:** Slot highlighted/selected.

### 5.3 Request Booking
```
fill -> uid: [Notes], value: "Looking forward to learning Flutter"
click -> uid: [Request / Book / Submit]
wait_for -> timeout: 5000
take_screenshot
```
**Verify:**
```sql
SELECT id, "requestStatus" FROM "Consultation"
WHERE "consultationPlanId" = 'test_intg_cbj_plan';
```
**Expected:** Consultation created with requestStatus = 'PENDING'.

---

## Phase 6: Checkout with Discount Code

First, simulate consultant approval of the booking:
```sql
UPDATE "Consultation" SET "requestStatus" = 'APPROVED_PENDING_PAYMENT'
WHERE "consultationPlanId" = 'test_intg_cbj_plan';

-- Create appointment for the consultation
INSERT INTO "Appointment" (id, "appointmentType", "consultationId", "createdAt", "updatedAt")
SELECT 'test_intg_cbj_apt', 'CONSULTATION', id, NOW(), NOW()
FROM "Consultation" WHERE "consultationPlanId" = 'test_intg_cbj_plan' LIMIT 1;
```

### 6.1 View Checkout Page
```
navigate_page -> url: http://localhost:3000/checkout?appointmentId=test_intg_cbj_apt
wait_for -> text: "Checkout" OR text: "Payment" OR text: "Pay"
take_snapshot
take_screenshot
```
**Expected:** Checkout page with plan name and original price (750 INR / 75000 paise).

### 6.2 Apply Discount Code
```
fill -> uid: [Discount Code] OR uid: [Promo Code], value: "INTGJOURNEY20"
click -> uid: [Apply]
wait_for -> timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** 20% discount applied. Discounted price visible (600 INR from 750 INR).

---

## Phase 7: View Bookings

### 7.1 View Bookings List
```
navigate_page -> url: http://localhost:3000/my-bookings
wait_for -> text: "Bookings" OR text: "My Bookings"
take_snapshot
take_screenshot
```
**Expected:** "Journey Consultation Plan" appears in the list.

### 7.2 View Booking Detail
```
-- Navigate to booking detail (use consultation ID from Phase 5.3 or click the entry)
take_snapshot
click -> uid: [Journey Consultation Plan]
wait_for -> timeout: 3000
take_snapshot
take_screenshot
```
**Expected:** Booking details page shows plan name, consultant name, status, and requested time.

---

## Phase 8: Upload Document for Appointment

### 8.1 Upload via API
```
const formData = new FormData();
formData.append('file', new Blob(['test document content'], { type: 'application/pdf' }), 'my-resume.pdf');
formData.append('description', 'Resume for review');

fetch('/api/appointments/test_intg_cbj_apt/documents', {
  method: 'POST',
  credentials: 'include',
  body: formData
}).then(r => r.json())
```
**Verify:**
```sql
SELECT id, "fileName", description, "reviewStatus"
FROM "AppointmentDocument" WHERE "appointmentId" = 'test_intg_cbj_apt';
```
**Expected:** Document created with reviewStatus = 'PENDING'.

---

## Phase 9: Leave Review After Completion

Simulate completed consultation:
```sql
UPDATE "Consultation" SET "requestStatus" = 'COMPLETED'
WHERE "consultationPlanId" = 'test_intg_cbj_plan';
```

### 9.1 Submit Review
```
fetch('/api/reviews', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    consultantProfileId: 'test_intg_cbj_cp',
    rating: 5,
    reviewDescription: 'Excellent Flutter mentor! Learned so much in one session.'
  })
}).then(r => r.json())
```
**Verify:**
```sql
SELECT id, rating, "reviewDescription" FROM "ConsultantReview"
WHERE "consultantProfileId" = 'test_intg_cbj_cp';
```
**Expected:** Review created with rating = 5.

---

## Phase 10: Referral Code

### 10.1 Generate Referral Code
```
fetch('/api/referrals/code', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Referral code generated or existing code returned.

### 10.2 View Referral Credits
```
fetch('/api/referrals/credits/available', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json())
```
**Expected:** Response shows available credits (may be 0 for new user).

---

## Phase 11: Join Waitlist for Full Webinar

### 11.1 Join Waitlist
```
fetch('/api/waitlist', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    webinarId: 'test_intg_cbj_w'
  })
}).then(r => r.json())
```
**Verify:**
```sql
SELECT id, status FROM "Waitlist"
WHERE "webinarId" = 'test_intg_cbj_w';
```
**Expected:** Waitlist entry created with status = 'WAITING'.

### 11.2 View Waitlist
```
navigate_page -> url: http://localhost:3000/waitlist
wait_for -> text: "Waitlist" OR text: "Waiting"
take_snapshot
take_screenshot
```
**Expected:** "Full Journey Webinar" appears in waitlist entries.

---

## Phase 12: Create Support Ticket

### 12.1 Navigate to Create Support Ticket
```
navigate_page -> url: http://localhost:3000/support/create
wait_for -> text: "Create" OR text: "New Ticket"
take_snapshot
```

### 12.2 Submit Support Ticket
```
fill -> uid: [Title], value: "Booking confirmation issue"
fill -> uid: [Description], value: "I completed a booking but did not receive a confirmation email"
click -> uid: [Submit / Create]
wait_for -> timeout: 5000
take_screenshot
```
**Verify:**
```sql
SELECT id, title, status FROM "support_tickets"
WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com')
AND title = 'Booking confirmation issue';
```
**Expected:** Ticket created with status = 'OPEN'.

---

## Phase 13: Submit Feedback

### 13.1 Navigate to Feedback
```
navigate_page -> url: http://localhost:3000/feedback
wait_for -> text: "Feedback" OR text: "Share"
take_snapshot
```

### 13.2 Submit Feedback
```
fill -> uid: [Title], value: "Great platform experience!"
fill -> uid: [Description], value: "The booking and consultation experience was smooth and professional."
click -> uid: [5 stars] OR click -> uid: [Star 5]
click -> uid: [Submit]
wait_for -> timeout: 5000
take_screenshot
```
**Verify:**
```sql
SELECT id, title, rating, status FROM "feedbacks"
WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com');
```
**Expected:** Feedback with status = 'PENDING', rating = 5.

---

## Final Verification -- Complete Consultee State

```sql
SELECT
  u.id, u.name, u.role, u."onboardingCompleted",
  (SELECT count(*) FROM "Consultation" WHERE "requestedById" = u."consulteeProfileId") AS consultations,
  (SELECT count(*) FROM "TrialSession" WHERE "consulteeProfileId" = u."consulteeProfileId") AS trials,
  (SELECT count(*) FROM "ConsultantReview" WHERE "consulteeProfileId" = u."consulteeProfileId") AS reviews,
  (SELECT count(*) FROM "Waitlist" WHERE "userId" = u.id) AS waitlist_entries,
  (SELECT count(*) FROM "support_tickets" WHERE "userId" = u.id) AS support_tickets,
  (SELECT count(*) FROM "feedbacks" WHERE "userId" = u.id) AS feedbacks
FROM "users" u
WHERE u.email = 'test_intg_cbj_cee@test.com';
```
**Expected:** consultations = 1, trials = 1, reviews = 1, waitlist_entries = 1, support_tickets = 1, feedbacks = 1.

---

## Cleanup

```sql
-- Feedback
DELETE FROM "feedbacks" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com');

-- Support
DELETE FROM "SupportResponse" WHERE "supportTicketId" IN (
  SELECT id FROM "support_tickets" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com')
);
DELETE FROM "SupportTicketAttachment" WHERE "ticketId" IN (
  SELECT id FROM "support_tickets" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com')
);
DELETE FROM "support_tickets" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com');

-- Waitlist
DELETE FROM "Waitlist" WHERE "webinarId" = 'test_intg_cbj_w';

-- Referral
DELETE FROM "ReferralCredit" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com');
DELETE FROM "Referral" WHERE "referralCodeId" IN (
  SELECT id FROM "ReferralCode" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com')
);
DELETE FROM "ReferralCode" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com');

-- Reviews
DELETE FROM "ConsultantReview" WHERE "consultantProfileId" = 'test_intg_cbj_cp';

-- Documents
DELETE FROM "AppointmentDocument" WHERE "appointmentId" = 'test_intg_cbj_apt';

-- Payment (if any checkout attempt created one)
DELETE FROM "Payment" WHERE "appointmentId" = 'test_intg_cbj_apt';

-- Booking chain
DELETE FROM "SlotOfAppointment" WHERE "appointmentId" = 'test_intg_cbj_apt';
DELETE FROM "Appointment" WHERE id = 'test_intg_cbj_apt';
DELETE FROM "Consultation" WHERE "consultationPlanId" = 'test_intg_cbj_plan';

-- Trial sessions
DELETE FROM "TrialSession" WHERE "consultantProfileId" = 'test_intg_cbj_cp';

-- Webinar + plan
DELETE FROM "Webinar" WHERE id = 'test_intg_cbj_w';
DELETE FROM "WebinarPlan" WHERE id = 'test_intg_cbj_wp';

-- Discount code
DELETE FROM "DiscountCode" WHERE id = 'test_intg_cbj_dc';

-- Slots
DELETE FROM "SlotOfAvailabilityWeekly" WHERE id IN ('test_intg_cbj_slot1', 'test_intg_cbj_slot2');

-- Plans
DELETE FROM "SubscriptionPlan" WHERE id = 'test_intg_cbj_sp';
DELETE FROM "ConsultationPlan" WHERE id = 'test_intg_cbj_plan';

-- Sessions + profiles for consultee (created via sign up)
DELETE FROM "sessions" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com');
DELETE FROM "ConsulteeProfile" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com');
DELETE FROM "notification_preferences" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com');
DELETE FROM "cookie_preferences" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com');
DELETE FROM "accounts" WHERE "userId" IN (SELECT id FROM "users" WHERE email = 'test_intg_cbj_cee@test.com');
DELETE FROM "users" WHERE email = 'test_intg_cbj_cee@test.com';

-- Consultant seeded data
DELETE FROM "sessions" WHERE "userId" = 'test_intg_cbj_cnt';
DELETE FROM "ConsultantProfile" WHERE id = 'test_intg_cbj_cp';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_intg_cbj_cnt';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_intg_cbj_cnt';
DELETE FROM "accounts" WHERE "userId" = 'test_intg_cbj_cnt';
DELETE FROM "users" WHERE id = 'test_intg_cbj_cnt';

-- Domain
DELETE FROM "Domain" WHERE id = 'test_intg_cbj_dom';
```
