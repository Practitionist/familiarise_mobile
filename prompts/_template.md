# Feature: [Feature Name]

> **What this tests:** Brief description of the feature being tested.
>
> **Prerequisites:** Flutter web running at `http://localhost:<PORT>`, Supabase project accessible via MCP.

---

## 1. Configuration

```
APP_URL        = http://localhost:<PORT>
SUPABASE_PROJECT_ID = <your-project-id>
```

---

## 2. Data Seeding (Supabase MCP)

> Seed deterministic test data. Use `test_` prefixed IDs for easy identification and cleanup.

### 2.1 Create test users

```sql
-- execute_sql
INSERT INTO "User" (id, name, email, "emailVerified", role, "createdAt", "updatedAt")
VALUES
  ('test_feature_user_1', 'Test User One', 'test_feature_1@test.com', true, 'CONSULTEE', NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_feature_account_1', 'test_feature_user_1', 'test_feature_user_1', 'credential',
   -- bcrypt hash for 'TestPassword123'
   '$2a$10$abcdefghijklmnopqrstuuABCDEFGHIJKLMNOPQRSTUVWXYZ012',
   NOW(), NOW());
```

### 2.2 Create feature-specific data

```sql
-- execute_sql
-- Add feature-specific INSERT statements here
```

---

## 3. Authentication (Chrome DevTools MCP)

### 3.1 Navigate to sign-in

```
navigate_page → url: {APP_URL}/auth/sign-in
wait_for → text: "Welcome back"
take_snapshot
```

### 3.2 Fill credentials and submit

```
fill → uid: [Email field], value: "test_feature_1@test.com"
fill → uid: [Password field], value: "TestPassword123"
click → uid: [Sign In button]
wait_for → text: "Dashboard"  (or expected landing page text)
```

---

## 4. Test Scenarios (Chrome DevTools MCP)

### Scenario 1: [Description]

**Steps:**

1. Navigate to the feature page
   ```
   navigate_page → url: {APP_URL}/feature-route
   wait_for → text: "Expected heading"
   take_snapshot
   ```

2. Interact with UI elements
   ```
   click → uid: [element from snapshot]
   wait_for → text: "Expected result"
   take_screenshot  (visual verification)
   ```

3. Verify expected state
   ```
   take_snapshot
   -- Verify: element with text "expected value" is visible
   ```

### Scenario 2: [Description]

**Steps:**

1. ...

---

## 5. Data Verification (Supabase MCP)

> Verify database state matches expected results after UI actions.

```sql
-- execute_sql
SELECT id, status, "updatedAt"
FROM "FeatureTable"
WHERE id LIKE 'test_feature_%';
```

**Expected:** Describe expected query results.

---

## 6. Cleanup (Supabase MCP)

> Delete test data in reverse FK dependency order.

```sql
-- execute_sql (run each block sequentially)

-- Step 1: Delete dependent records first
DELETE FROM "DependentTable" WHERE id LIKE 'test_feature_%';

-- Step 2: Delete parent records
DELETE FROM "ParentTable" WHERE id LIKE 'test_feature_%';

-- Step 3: Delete auth records
DELETE FROM "sessions" WHERE "userId" LIKE 'test_feature_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_feature_%';

-- Step 4: Delete users last
DELETE FROM "User" WHERE id LIKE 'test_feature_%';
```

---

## 7. Checklist

- [ ] Test data seeded successfully
- [ ] User authenticated via UI
- [ ] Scenario 1: [brief description] verified
- [ ] Scenario 2: [brief description] verified
- [ ] Database state verified via SQL
- [ ] Test data cleaned up
