# 00 — Headless MCP E2E Harness Setup (Flutter Web Server + Chrome DevTools + Supabase + Stream.io + Dart MCP)

> **Purpose:** Copy-pasteable agent session prompt to bootstrap, connect, and verify the entire headless E2E testing harness for `familiarise_mobile` without launching a heavy Android Emulator or iOS Simulator.
>
> **MCP Servers Used:**
> - **Dart MCP** (`analyze_files`, `dtd`, `get_runtime_errors`, `hot_reload`, `widget_inspector`)
> - **Supabase MCP** (`list_tables`, `execute_sql`)
> - **Stream.io MCP** (`app_get_settings`, `users_query`)
> - **Chrome DevTools MCP** (`navigate_page`, `evaluate_script`, `take_snapshot`, `take_screenshot`, `list_network_requests`, `list_console_messages`)

---

## 1. Pre-Flight Code Generation & Dart MCP Static Verification

Before starting the servers, ensure the 93-model Prisma schema and Freezed/Riverpod outputs are generated and clean:

```bash
export PATH="$HOME/.local/bin:$PATH"
command -v flutter && command -v dart

# Ensure root .env points API_BASE_URL at the backend port (8081) before Envied codegen runs
grep -q '^API_BASE_URL=' .env && sed -i 's|^API_BASE_URL=.*|API_BASE_URL=http://localhost:8081|' .env || echo 'API_BASE_URL=http://localhost:8081' >> .env

# Sync 93-model schema from familiarise_web (if needed) and regenerate backend + frontend
./scripts/regenerate-build.sh
```

### 1.1 Verify Zero Static Analysis Errors via Dart MCP

Call **Dart MCP** `analyze_files`:

```json
// Tool: mcp:dart:analyze_files
{}
```

**Expected:** Zero errors across both `lib/` (Flutter app) and `backend/lib/` (Dart Frog server, 0 `JsonQueryBuilder` usages, `prisma_flutter_connector` v1.0.0 typed delegates).

---

## 2. Verify 93-Model Database Schema via Supabase MCP

Verify that the target Supabase PostgreSQL database has all 93 synced models from `familiarise_web` and that zero expected Companion Starter model tables are missing:

```sql
-- Tool: mcp:supabase:execute_sql
WITH expected_tables(table_name) AS (
  VALUES
    ('users'), ('sessions'), ('accounts'), ('verification'),
    ('ConsultantProfile'), ('ConsulteeProfile'), ('StaffProfile'),
    ('ConsultationPlan'), ('SubscriptionPlan'), ('WebinarPlan'), ('ClassPlan'),
    ('Consultation'), ('Subscription'), ('Webinar'), ('Class'),
    ('Appointment'), ('SlotOfAppointment'), ('SlotOfWeeklyAvailability'), ('SlotOfCustomAvailability'),
    ('TrialSession'), ('Waitlist'), ('AppointmentDocument'),
    ('Payment'), ('Earning'), ('Payout'), ('PayoutAccount'), ('ConsultantTaxInfo'), ('Invoice'),
    ('DiscountCode'), ('ReferralCode'), ('Referral'), ('ReferralCredit'),
    ('Wallet'), ('CreditTransaction'), ('Collaborator'),
    ('organizations'), ('members'), ('invitations'),
    ('ConsentRecord'), ('MeetingSession'), ('Recording'),
    ('support_tickets'), ('SupportTicketResponse'), ('feedbacks'),
    ('ConsultantReview'), ('ConsultantProfileVerification'),
    ('cookie_preferences'), ('notification_preferences'),
    ('announcements'), ('maintenance_windows'), ('Domain'), ('SubDomain'), ('Tag')
)
SELECT
  (SELECT COUNT(*)::int FROM information_schema.tables WHERE table_schema = 'public' AND table_type = 'BASE TABLE') AS total_public_tables,
  ARRAY(
    SELECT e.table_name
    FROM expected_tables e
    LEFT JOIN information_schema.tables t
      ON t.table_schema = 'public' AND t.table_type = 'BASE TABLE' AND t.table_name = e.table_name
    WHERE t.table_name IS NULL
    ORDER BY e.table_name
  ) AS missing_expected_tables;
```

**Expected:** `total_public_tables >= 93` and `missing_expected_tables = {}` (empty array — all expected tables present).

---

## 3. Verify Stream.io App Connectivity via Stream.io MCP

Confirm Stream Video & Chat credentials are active before testing calls or channels:

```json
// Tool: mcp:stream-io:app_get_settings
{}
```

**Expected:** Returns application settings with valid webhook/push/recording configuration.

---

## 4. Start Dart Frog Backend & Headless Flutter Web Server

Run the Dart Frog API server on port `8081` and Flutter `web-server` on port `8080` (with `API_BASE_URL=http://localhost:8081` already generated into `EnvConfig` in Step 1):

```bash
# 1. Start Dart Frog backend on port 8081
cd backend && PORT=8081 dart build/bin/server.dart &

# Verify backend healthcheck
curl -s http://localhost:8081/api/health
# Expected: {"status":"ok","timestamp":"..."}

# 2. Start headless Flutter Web Server on port 8080
# Pass --print-dtd so Dart MCP can connect to the Dart Tooling Daemon URI
flutter run -d web-server --web-port 8080 --web-hostname 127.0.0.1 --print-dtd
```

### 4.1 Connect Dart MCP to Dart Tooling Daemon (`dtd`)

Copy the `ws://127.0.0.1:<port>/<secret>` DTD URI printed by `flutter run --print-dtd` and connect:

```json
// Tool: mcp:dart:dtd
{
  "uri": "ws://127.0.0.1:<DTD_PORT>/<DTD_SECRET>"
}
```

Once connected, you can inspect the live widget tree (`mcp:dart:widget_inspector`), check runtime exceptions (`mcp:dart:get_runtime_errors`), and trigger `mcp:dart:hot_reload` at any point during the session.

---

## 5. Bootstrap Chrome DevTools MCP & Work Around DWDS Blank Screen (`#125`)

### 5.1 Initial Navigation + Single Reload (`#125` Workaround)

When `flutter run -d web-server` serves its first connection, DWDS (Dart Web Development Service) can hang on a blank white page while initializing its hot-restart WebSocket (`#125`).
**Always follow the initial `navigate_page` with a single `reload`:**

```json
// Step 1: Navigate to the headless Flutter web server
// Tool: mcp:chrome-devtools:navigate_page
{
  "type": "url",
  "url": "http://localhost:8080"
}
```

```json
// Step 2: Reload once to resolve DWDS initial blank screen (#125)
// Tool: mcp:chrome-devtools:navigate_page
{
  "type": "reload"
}
```

```json
// Step 3: Emulate mobile viewport (390x844 iPhone 15 Pro dimensions)
// Tool: mcp:chrome-devtools:resize_page
{
  "width": 390,
  "height": 844
}
```

### 5.2 Activate CanvasKit Accessibility Semantics (`<flt-semantics-placeholder>`)

By default, Flutter Web renders into an opaque `<canvas>` inside `<flutter-view>`, so `take_snapshot` cannot see individual buttons or text fields until accessibility semantics are enabled.
**Execute this script to click `<flt-semantics-placeholder>` and materialize the full Flutter semantics tree in the DOM:**

```json
// Tool: mcp:chrome-devtools:evaluate_script
{
  "function": "() => {\n  const host = document.querySelector('flutter-view') || document.body;\n  const placeholder =\n    document.querySelector('flt-semantics-placeholder') ||\n    host.shadowRoot?.querySelector('flt-semantics-placeholder');\n  if (placeholder) {\n    placeholder.focus();\n    placeholder.click();\n    return { semanticsActivated: true };\n  }\n  return { semanticsActivated: false, error: 'flt-semantics-placeholder not found' };\n}"
}
```

### 5.3 Verify Accessibility Tree & Console Health

```json
// Tool: mcp:chrome-devtools:take_snapshot
{}
```

```json
// Tool: mcp:chrome-devtools:list_console_messages
{
  "types": ["error"]
}
```

```json
// Tool: mcp:chrome-devtools:take_screenshot
{}
```

**Expected:**
- `take_snapshot` returns structured accessibility nodes (`heading`, `textbox`, `button`) for the Sign-In / Onboarding screen.
- `list_console_messages` shows `0` uncaught JS/Dart runtime errors.
- `mcp:dart:get_runtime_errors` returns `0` Flutter framework exceptions.

---

## 6. Harness Readiness Checklist

- [ ] `mcp:dart:analyze_files` reports 0 errors
- [ ] `mcp:supabase:execute_sql` confirms 93 public tables in Postgres
- [ ] `mcp:stream-io:app_get_settings` responds with app configuration
- [ ] Backend `/api/health` returns `200 OK`
- [ ] DWDS blank screen `#125` cleared via single `navigate_page` reload
- [ ] `<flt-semantics-placeholder>` clicked and `take_snapshot` shows full Flutter widget tree
