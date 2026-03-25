# Feature: Messages / Chat

> **What this tests:** Chat list screen with 1:1 DMs and group event channels, individual chat room with messaging, and chat actions (mute, clear, delete).
>
> **Prerequisites:** Flutter web running at `http://localhost:<PORT>`, Supabase project accessible via MCP. Stream.io chat configured.

---

## 1. Configuration

```
APP_URL             = http://localhost:<PORT>
SUPABASE_PROJECT_ID = <your-project-id>
```

**Note:** Chat functionality relies on Stream.io SDK. The chat channels are created by the backend when appointments are confirmed. To test chat UI, you need existing appointments with chat channels created.

---

## 2. Data Seeding (Supabase MCP)

### 2.1 Create two users (simulating consultant-client pair)

```sql
-- execute_sql
INSERT INTO "User" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_chat_user_1', 'Chat Consultant', 'test_chat_consultant@test.com', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_chat_user_2', 'Chat Client', 'test_chat_client@test.com', true, 'CONSULTEE', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_chat_acc_1', 'test_chat_user_1', 'test_chat_user_1', 'credential',
   '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW()),
  ('test_chat_acc_2', 'test_chat_user_2', 'test_chat_user_2', 'credential',
   '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012', NOW(), NOW());
```

**Note:** Stream.io channels are not stored in the database directly. Chat channels are created via Stream API when appointments are confirmed. Testing the chat UI requires either:
1. Having active appointments that have created Stream channels, OR
2. Verifying the empty state of the messages screen

---

## 3. Test Scenario 1: Messages Screen (Chrome DevTools MCP)

### 3.1 Sign in and navigate to messages

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
fill → uid: [Email input], value: "test_chat_client@test.com"
fill → uid: [Password input], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"

navigate_page → url: {APP_URL}/messages
wait_for → text: "Messages"
take_snapshot
```

### 3.2 Verify messages screen layout

The messages screen should show:
- Header: **"Messages"**
- Subtitle: **"Chat with your consultants"** (for consultee) or **"Chat with your clients"** (for consultant)
- Search bar: **"Search channels..."**
- Two sections: **"CHANNELS"** (1:1 DMs) and **"EVENT CHANNELS"** (group chats)
- If no channels exist, appropriate empty state

```
take_screenshot  -- messages screen
```

### 3.3 Test search functionality

```
fill → uid: [Search channels input], value: "test"
take_snapshot
-- Verify: channels are filtered by search query
click → uid: [Clear search button]
```

---

## 4. Test Scenario 2: Chat Room (Chrome DevTools MCP)

If channels exist, click on one to open the chat room:

```
click → uid: [first channel card]
wait_for → text: [consultant/client name]
take_snapshot
```

The chat room should show:
- AppBar with participant name and online status
- Message list
- Message input bar at bottom
- More options (kebab) menu

```
take_screenshot  -- chat room
```

---

## 5. Cleanup (Supabase MCP)

```sql
-- execute_sql (run sequentially)

DELETE FROM "sessions" WHERE "userId" IN ('test_chat_user_1', 'test_chat_user_2');
DELETE FROM "accounts" WHERE "userId" IN ('test_chat_user_1', 'test_chat_user_2');
DELETE FROM "User" WHERE id IN ('test_chat_user_1', 'test_chat_user_2');
```

---

## 6. Checklist

- [ ] Messages screen loads with correct header and subtitle
- [ ] Search bar is visible with "Search channels..." placeholder
- [ ] CHANNELS and EVENT CHANNELS sections are present
- [ ] Empty state shown when no channels exist
- [ ] Chat room shows message list and input bar (if channels exist)
- [ ] Test data cleaned up
