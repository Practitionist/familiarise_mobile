# 01 — Auth, Session Revocation & Concurrency Hardening (Multi-MCP E2E)

> **What this tests:** BetterAuth-compatible email/password sign-in, automatic `CookiePreference` + `NotificationPreference` provisioning, active session listing (`GET /api/auth/sessions`), remote session revocation (`POST /api/auth/revoke-session`), server-side session invalidation on sign-out, and concurrent token/session refresh race conditions (`#59`, `#60`, `#124`).
>
> **MCP Servers Used:**
> - **Supabase MCP** (`execute_sql` for deterministic seeding and session state verification)
> - **Chrome DevTools MCP** (`navigate_page`, `evaluate_script`, `take_snapshot`, `click`, `type_text`, `list_network_requests`, `list_console_messages`)
> - **Dart MCP** (`analyze_files`, `get_runtime_errors`)

---

## 1. Seed Deterministic Auth & Multi-Session Data (Supabase MCP)

Run the following SQL via `mcp:supabase:execute_sql` to create a test consultee with two active device sessions (one primary mobile session, one secondary stale device session to revoke):

```sql
-- Tool: mcp:supabase:execute_sql
BEGIN;

-- Cleanup any prior run
DELETE FROM "cookie_preferences" WHERE "userId" LIKE 'test_mcp_auth_%';
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_mcp_auth_%';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_mcp_auth_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_mcp_auth_%';
DELETE FROM "ConsulteeProfile" WHERE "userId" LIKE 'test_mcp_auth_%';
DELETE FROM "users" WHERE id LIKE 'test_mcp_auth_%';

-- 1. Create test user
INSERT INTO "users" (
  id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_auth_u1',
  'Aarav Mehta (MCP Auth)',
  'test_mcp_auth_u1@familiarise.test',
  true,
  'CONSULTEE',
  true,
  NOW(),
  NOW()
);

-- 2. Create credential account (Password: TestPassword123)
INSERT INTO "accounts" (
  id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt"
) VALUES (
  'test_mcp_auth_acc1',
  'test_mcp_auth_u1',
  'test_mcp_auth_u1',
  'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.XzoCvKkqWyYZaFphvixFFncWVsC4W4O',
  NOW(),
  NOW()
);

-- 3. Create ConsulteeProfile & default preferences
INSERT INTO "ConsulteeProfile" (
  id, "userId", "careerStage", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_auth_cee1',
  'test_mcp_auth_u1',
  'MID_CAREER',
  NOW(),
  NOW()
);

INSERT INTO "cookie_preferences" (id, "userId", essential, analytics, marketing, "updatedAt")
VALUES ('test_mcp_auth_cp1', 'test_mcp_auth_u1', true, true, false, NOW());

INSERT INTO "notification_preferences" (
  id, "userId", "allNotifications", "emailNotifications", "pushNotifications", "inAppNotifications", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_auth_np1', 'test_mcp_auth_u1', true, true, true, true, NOW(), NOW()
);

-- 4. Seed a secondary active session on another device to test remote revocation
INSERT INTO "sessions" (
  id, "userId", token, "expiresAt", "ipAddress", "userAgent", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_auth_sess_secondary',
  'test_mcp_auth_u1',
  'tok_secondary_device_test_mcp_auth_1',
  NOW() + INTERVAL '7 days',
  '203.0.113.42',
  'Mozilla/5.0 (Linux; Android 15; Pixel 9 Pro)',
  NOW() - INTERVAL '2 hours',
  NOW() - INTERVAL '2 hours'
);

COMMIT;
```

---

## 2. Sign In & Activate Semantics (Chrome DevTools MCP)

### 2.1 Navigate, Reload (`#125`), and Enable Semantics

```json
// Tool: mcp:chrome-devtools:navigate_page
{ "type": "url", "url": "http://localhost:8080/#/auth/sign-in" }
```

```json
// Tool: mcp:chrome-devtools:navigate_page
{ "type": "reload" }
```

```json
// Tool: mcp:chrome-devtools:evaluate_script
{
  "function": "() => {\n  const host = document.querySelector('flutter-view') || document.body;\n  const p = document.querySelector('flt-semantics-placeholder') || host.shadowRoot?.querySelector('flt-semantics-placeholder');\n  if (p) { p.focus(); p.click(); return { activated: true }; }\n  return { activated: false };\n}"
}
```

### 2.2 Authenticate via UI

1. Call `mcp:chrome-devtools:take_snapshot` to locate the Email textbox `uid`, Password textbox `uid`, and Sign In button `uid`.
2. Click the Email textbox and type `test_mcp_auth_u1@familiarise.test` using `mcp:chrome-devtools:type_text`.
3. Click the Password textbox and type `TestPassword123` using `mcp:chrome-devtools:type_text`.
4. Click the **Sign In** button and wait for navigation to the Dashboard (`wait_for` text `"Dashboard"` or `"Explore"`).

### 2.3 Verify Session Row Created in Postgres (Supabase MCP)

```sql
-- Tool: mcp:supabase:execute_sql
SELECT id, "userId", "ipAddress", "userAgent", "expiresAt" > NOW() AS is_valid
FROM "sessions"
WHERE "userId" = 'test_mcp_auth_u1'
ORDER BY "createdAt" DESC;
```

**Expected:** `2` rows (`test_mcp_auth_sess_secondary` plus the newly created session from sign-in), both with `is_valid = true`.

---

## 3. Scenario A — Active Sessions Listing & Remote Session Revocation (`#59`)

1. Navigate to **Profile → Security / Active Sessions**:
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/profile/sessions" }
   ```
2. Call `mcp:chrome-devtools:take_snapshot` and verify both sessions appear:
   - Current session badge (`This device`)
   - Secondary session (`Pixel 9 Pro` / `203.0.113.42`)
3. Click **Revoke** on the secondary session (`test_mcp_auth_sess_secondary`).
4. Inspect the network call via `mcp:chrome-devtools:list_network_requests`:
   - Confirm `POST /api/auth/revoke-session` with `{"sessionId":"test_mcp_auth_sess_secondary"}` returned `200 OK`.
5. Verify deletion in Postgres via **Supabase MCP**:
   ```sql
   -- Tool: mcp:supabase:execute_sql
   SELECT COUNT(*)::int AS remaining_secondary
   FROM "sessions"
   WHERE id = 'test_mcp_auth_sess_secondary';
   ```
   **Expected:** `remaining_secondary = 0`, while the current session remains active.

---

## 4. Scenario B — Concurrent API Requests & Token Refresh Race (`#60`, `#124`)

Verify that firing 10 concurrent authenticated requests and simultaneous session checks does not trigger duplicate refresh token invalidation or unhandled 500s:

```json
// Tool: mcp:chrome-devtools:evaluate_script
{
  "function": "async () => {\n  const endpoints = [\n    '/api/auth/session',\n    '/api/user/test_mcp_auth_u1',\n    '/api/notifications',\n    '/api/support/tickets',\n    '/api/referrals/code'\n  ];\n  const bursts = [...endpoints, ...endpoints].map((ep) =>\n    fetch('http://localhost:8081' + ep, { credentials: 'include' })\n      .then((r) => ({ ep, status: r.status }))\n      .catch((e) => ({ ep, error: String(e) }))\n  );\n  return await Promise.all(bursts);\n}"
}
```

**Expected:**
- Zero `500` responses across all 10 concurrent requests.
- `mcp:dart:get_runtime_errors` reports `0` unhandled exceptions.
- `mcp:chrome-devtools:list_console_messages` with `types: ["error"]` shows no race condition failures.

---

## 5. Scenario C — Sign Out & Server-Side Session Invalidation

1. Navigate to Profile (`/profile`), call `take_snapshot`, and click **Sign Out**.
2. Confirm redirect to `/auth/sign-in`.
3. Verify in Postgres via **Supabase MCP** that the primary session has been invalidated/deleted on the server:
   ```sql
   -- Tool: mcp:supabase:execute_sql
   SELECT COUNT(*)::int AS active_sessions
   FROM "sessions"
   WHERE "userId" = 'test_mcp_auth_u1'
     AND "expiresAt" > NOW();
   ```
   **Expected:** `active_sessions = 0`.

---

## 6. Cleanup (Supabase MCP)

```sql
-- Tool: mcp:supabase:execute_sql
BEGIN;
DELETE FROM "cookie_preferences" WHERE "userId" LIKE 'test_mcp_auth_%';
DELETE FROM "notification_preferences" WHERE "userId" LIKE 'test_mcp_auth_%';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_mcp_auth_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_mcp_auth_%';
DELETE FROM "ConsulteeProfile" WHERE "userId" LIKE 'test_mcp_auth_%';
DELETE FROM "users" WHERE id LIKE 'test_mcp_auth_%';
COMMIT;
```

---

## 7. Verification Checklist

- [ ] Sign-in creates a valid session in `"sessions"`
- [ ] Active Sessions screen lists device metadata and revokes secondary session cleanly
- [ ] 10-way concurrent request burst completes with zero 500s or token race errors
- [ ] Sign-out invalidates the server-side session row in Postgres
- [ ] Test records cleaned up via Supabase MCP
