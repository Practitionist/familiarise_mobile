# Unit Test: Feedback

> **Feature:** Submit feedback
> **Route:** `/feedback`
> **Backend:** `/api/feedback`

---

## Data Seeding

```sql
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_feedback_u1', 'Feedback User', 'test_unit_feedback@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_feedback_a1', 'test_unit_feedback_u1', 'test_unit_feedback_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_feedback_cep1', 'test_unit_feedback_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_feedback_cep1' WHERE id = 'test_unit_feedback_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_feedback_ck1', 'test_unit_feedback_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_feedback_np1', 'test_unit_feedback_u1');
```

---

## Scenarios

Sign in as `test_unit_feedback@test.com` / `TestPassword123`.

### 1. View Feedback Page
```
navigate_page → url: http://localhost:3000/feedback
wait_for → text: "Feedback" OR text: "Share"
take_snapshot
take_screenshot
```
**Expected:** Feedback form loads with title, description, rating, and category fields.

### 2. Submit Feedback (via UI)
```
navigate_page → url: http://localhost:3000/feedback
take_snapshot
fill → uid: [Title], value: "Great platform!"
fill → uid: [Description], value: "I really enjoy the booking experience. The UI is smooth and intuitive."
-- Select rating (e.g., 5 stars)
click → uid: [5 stars] OR click → uid: [Star 5]
click → uid: [Submit]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT id, title, description, rating, status FROM "feedbacks" WHERE "userId" = 'test_unit_feedback_u1';`
**Expected:** Feedback created with title = "Great platform!", status = 'PENDING'.

### 3. Submit Feedback (via API)
```
fetch('/api/feedback', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    title: 'API Feedback Test',
    description: 'Testing feedback submission via API',
    rating: 4,
    category: 'general'
  })
}).then(r => r.json())
```
**Verify:** `SELECT count(*) FROM "feedbacks" WHERE "userId" = 'test_unit_feedback_u1';`
**Expected:** Two feedback entries.

### 4. Submit Feedback — Missing Fields
```
navigate_page → url: http://localhost:3000/feedback
take_snapshot
click → uid: [Submit]
take_snapshot
```
**Expected:** Validation errors for required fields (title, description).

---

## Cleanup

```sql
DELETE FROM "feedbacks" WHERE "userId" = 'test_unit_feedback_u1';
DELETE FROM "sessions" WHERE "userId" = 'test_unit_feedback_u1';
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_feedback_cep1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_feedback_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_feedback_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_feedback_u1';
DELETE FROM "users" WHERE id = 'test_unit_feedback_u1';
```
