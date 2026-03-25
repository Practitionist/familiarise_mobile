# Unit Test: Chat

> **Feature:** Chat list page loads, empty state
> **Route:** `/messages`
> **Note:** Stream SDK requires live channels -- test UI rendering only

---

## Data Seeding

```sql
-- Simple user for chat UI test
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_chat_u1', 'Chat Test User', 'test_unit_chat@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_chat_a1', 'test_unit_chat_u1', 'test_unit_chat_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.q5Y6oN5K6YKD3lVz8mG0V5Z8Z8Z8Z', NOW(), NOW());

INSERT INTO "ConsulteeProfile" (id, "userId", "createdAt", "updatedAt")
VALUES ('test_unit_chat_cep1', 'test_unit_chat_u1', NOW(), NOW());
UPDATE "users" SET "consulteeProfileId" = 'test_unit_chat_cep1' WHERE id = 'test_unit_chat_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_chat_ck1', 'test_unit_chat_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_chat_np1', 'test_unit_chat_u1');
```

---

## Scenarios

Sign in as `test_unit_chat@test.com` / `TestPassword123`.

### 1. Chat List Page Loads
```
navigate_page → url: http://localhost:3000/messages
wait_for → text: "Messages" OR text: "Chat" OR timeout: 10000
take_snapshot
take_screenshot
```
**Expected:** Messages page renders without crashing. May show loading state or Stream SDK initialization.

### 2. Empty State
```
navigate_page → url: http://localhost:3000/messages
wait_for → timeout: 5000
take_snapshot
take_screenshot
```
**Expected:** Empty state UI visible (e.g., "No conversations yet" or similar message). No error screens.

### 3. Check Console for Errors
```
list_console_messages
```
**Expected:** No critical JavaScript errors. Stream SDK may log warnings about missing channels -- that is acceptable. Fatal errors or uncaught exceptions are NOT acceptable.

---

## Cleanup

```sql
DELETE FROM "sessions" WHERE "userId" = 'test_unit_chat_u1';
DELETE FROM "ConsulteeProfile" WHERE id = 'test_unit_chat_cep1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_chat_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_chat_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_chat_u1';
DELETE FROM "users" WHERE id = 'test_unit_chat_u1';
```
