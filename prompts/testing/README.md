# E2E Testing Prompts (`prompts/testing/` & `prompts/mcp-workflows/`)

Comprehensive end-to-end testing suite for the **Familiarise Mobile** Companion Starter app without requiring a heavy Android Emulator or iOS Simulator.

---

## Directory Structure

```
prompts/
├── _template.md                          # Reusable feature test template
├── mcp-workflows/                        # Multi-MCP end-to-end session playbooks (Chrome DevTools + Supabase + Stream.io + Dart MCP)
│   ├── 00-headless-mcp-harness-setup.md
│   ├── 01-auth-session-revocation-and-concurrency.md
│   ├── 02-explore-schedule-and-companion-booking.md
│   ├── 03-stream-video-chat-and-dpdp-consent.md
│   ├── 04-monetization-wallet-referrals-and-collaborators.md
│   └── 05-enterprise-org-seats-notifications-and-support.md
└── testing/
    ├── unit/                             # One prompt per feature, isolated (numbered 01–23 + unnumbered aliases)
    │   ├── 01-auth.md                    Sign up, sign in, passwords, sessions
    │   ├── 02-onboarding.md              Consultee + consultant onboarding flows
    │   ├── 03-profile.md                 Edit profile, image, professional background
    │   ├── 04-verification.md            Consultant verification submit/status
    │   ├── 05-plans.md                   Plan CRUD (all 4 types)
    │   ├── 06-slots.md                   Weekly + custom availability slots
    │   ├── 07-explore.md                 Browse consultants, filters, profiles
    │   ├── 08-booking.md                 Request booking, view list/detail
    │   ├── 09-checkout.md                Checkout screen & Companion Web handoff
    │   ├── 10-trials.md                  Trial eligibility, request, accept/reject
    │   ├── 11-waitlist.md                Join, view, leave waitlist
    │   ├── 12-documents.md               Appointment document upload/review
    │   ├── 13-chat.md                    Chat list page (UI rendering)
    │   ├── 14-referrals.md               Code generation, apply, credits
    │   ├── 15-reviews.md                 Submit/view consultant reviews
    │   ├── 16-support.md                 Create/view tickets, add responses
    │   ├── 17-feedback.md                Submit app feedback
    │   ├── 18-payout.md                  Payout account companion view & history
    │   ├── 19-tax.md                     Tax info (PAN/GST)
    │   ├── 20-staff.md                   [Web-only] Legacy staff moderation reference
    │   ├── 21-announcements.md           Announcement banner display
    │   ├── 22-collaborations.md          Collaboration invitations & accept/decline
    │   └── 23-dashboard.md               Consultee + consultant dashboards
    │
    ├── integration/                      # Cross-feature user journeys
    │   ├── 01-consultant-lifecycle.md    Sign up → onboard → plans → slots → trial → payout → tax → verify
    │   ├── 02-consultee-booking-journey.md Sign up → explore → trial → book → pay/handoff → review → refer → waitlist
    │   ├── 03-staff-moderation-flow.md   [Web-only] Legacy moderation flow reference
    │   ├── 04-payment-payout-flow.md     Book → checkout/handoff → earnings → payout → invoice
    │   └── 05-edge-cases-regression.md   Invalid inputs, auth guards, role access, duplicates, empty states
    │
    └── README.md                         # This file
```

---

## Companion Starter `FeatureFlags` State

Familiarise Mobile ships as a **Companion Starter** app compliant with Apple App Store Guideline `3.1.3(b)` / `3.1.3(d)` and Google Play Payments policy. Both `lib/core/config/feature_flags.dart` and `backend/lib/config/feature_flags.dart` mirror the following state:

| Feature Flag / Area | Companion Starter State | Mobile UX & Backend Behavior |
|---------------------|-------------------------|------------------------------|
| `payouts` | **Enabled (`true`) for Companion View** | Consultants can view earnings summaries, payout history, bank/UPI/Stripe Connect status, and TDS records on mobile; complex account onboarding hands off to Web (`familiarise.com/dashboard/payouts`). |
| `referrals` | **Enabled (`true`) for Companion View** | Users can view/share their referral code, track referral credits and conversions, and apply codes. |
| `collaborations` | **Enabled (`true`) for Companion View** | Consultants can view incoming/outgoing webinar & class co-host invitations, inspect revenue splits, and accept/decline invitations on mobile. |
| `wallet` | **Enabled (`true`) Read-Only Companion View** | Users and org members can inspect credit balances and ledger history (`CreditTransaction` / `Wallet`); top-ups hand off to Web. |
| `payments` / `programCheckout` | **Disabled (`false`) — Hands off to Web** | Direct in-app payment collection for 1:many programs (webinars/classes) and paid checkout hands off to `familiarise.com` via `WebHandoffDialog` / deep-link session token (`WebHandoffTarget`), while free trials and pre-paid/credit bookings complete natively. |
| `staff` / `staffTools` | **Removed (Web-Only)** | Staff/Admin moderation dashboards (`/staff/*`) are removed from the mobile app and exclusively served by `familiarise_web`. |

---

## Headless Flutter Web Server + Chrome DevTools MCP Workflow (No Heavy Emulator Needed)

Instead of booting a resource-heavy Android Emulator or Xcode Simulator, run E2E tests against Flutter's headless `web-server` target combined with **Chrome DevTools MCP**, **Supabase MCP**, **Stream.io MCP**, and **Dart MCP**:

### 1. Launch the Dart Frog Backend & Flutter Web Server

```bash
# Terminal 1: Start Dart Frog API server (port 8080 or 3001 if sharing port)
cd backend && dart build/bin/server.dart

# Terminal 2: Start headless Flutter Web Server
flutter run -d web-server --web-port 8080 --web-hostname 127.0.0.1
```
*(Note: If the Dart Frog backend is bound to port `8080`, pass `--web-port 3000` to Flutter or run the backend on port `8081` with `API_BASE_URL=http://localhost:8081` — see `prompts/mcp-workflows/00-headless-mcp-harness-setup.md` for full port configuration.)*

### 2. Fix DWDS Initial Blank Screen (`#125`) via Single Reload

When Chrome DevTools MCP first navigates to a `flutter run -d web-server` URL (`navigate_page` with `type: "url"`), Dart Web Development Service (DWDS) may leave the initial page blank while establishing its WebSocket bootstrap (`#125`).
**Always execute a single reload after the initial navigation:**

```json
// Step 1: Open the Flutter web-server URL
mcp:chrome-devtools:navigate_page({ "type": "url", "url": "http://localhost:8080" })

// Step 2: Reload once to clear the DWDS initial blank screen (#125)
mcp:chrome-devtools:navigate_page({ "type": "reload" })
```

### 3. Activate CanvasKit Accessibility Semantics (`<flt-semantics-placeholder>`)

Flutter Web renders into a `<canvas>` / `<flutter-view>` element, so `take_snapshot` only sees an empty canvas until Flutter's accessibility semantics tree is enabled.
**Run this `evaluate_script` call once after page load so `take_snapshot` exposes the full Flutter widget tree:**

```json
mcp:chrome-devtools:evaluate_script({
  "function": "() => {\n  const host = document.querySelector('flutter-view') || document.body;\n  const placeholder =\n    document.querySelector('flt-semantics-placeholder') ||\n    host.shadowRoot?.querySelector('flt-semantics-placeholder');\n  if (placeholder) {\n    placeholder.focus();\n    placeholder.click();\n    return { activated: true, tag: placeholder.tagName };\n  }\n  return { activated: false, reason: 'flt-semantics-placeholder not found yet' };\n}"
})
```

Once `<flt-semantics-placeholder>` is clicked, `mcp:chrome-devtools:take_snapshot({})` returns every `button`, `textbox`, `checkbox`, `heading`, and semantic label in the Flutter widget tree!

---

## Known MCP Friction & Best Practices

- **Text Input on Flutter CanvasKit**: Standard `fill` / `fill_form` can drop leading characters on Flutter `<flt-semantics>` text inputs. Prefer `click` on the field's `uid` followed by `type_text` (or `press_key`).
- **Button Clicks**: If a standard `click` on a Flutter semantic node does not trigger navigation, verify with `take_screenshot` that no modal or snackbar is obscuring it, then re-snapshot (`take_snapshot`) to get the fresh `uid`.
- **Network & Console Audits**: After every critical mutation, call `list_network_requests` (filtering `xhr`/`fetch`) and `list_console_messages` (filtering `error`) to catch silent 4xx/5xx responses or unhandled Dart exceptions.

---

## Conventions

| Convention | Value |
|-----------|-------|
| Test ID prefix | `test_unit_` (unit), `test_intg_` (integration), `test_mcp_` (MCP workflows) |
| Default Test Password | `TestPassword123` |
| Schema Size | **93 Prisma models** synced with `familiarise_web` via `scripts/sync-schema.sh` |
| GitHub Repo | `Practitionist/familiarise_mobile` |

### Table Names in Supabase SQL (`execute_sql`)
- **Lowercase `@map(...)` tables:** `"users"`, `"accounts"`, `"sessions"`, `"verification"`, `"support_tickets"`, `"cookie_preferences"`, `"notification_preferences"`, `"feedbacks"`, `"announcements"`, `"maintenance_windows"`, `"organizations"`, `"members"`, `"invitations"`
- **PascalCase unmapped tables:** `"ConsultantProfile"`, `"ConsulteeProfile"`, `"ConsultationPlan"`, `"SubscriptionPlan"`, `"WebinarPlan"`, `"ClassPlan"`, `"Appointment"`, `"SlotOfAppointment"`, `"TrialSession"`, `"PayoutAccount"`, `"DiscountCode"`, `"Waitlist"`, `"ReferralCode"`, `"Referral"`, `"ConsultantReview"`, `"ConsultantProfileVerification"`, `"Collaborator"`, `"Payment"`, `"Earning"`, `"Wallet"`, `"CreditTransaction"`, `"ConsentRecord"`, etc.

## Bug Reporting

When an E2E test uncovers a bug, file a reproducible issue via GitHub CLI:
```bash
gh issue create --repo Practitionist/familiarise_mobile \
  --title "E2E Bug: [concise description]" \
  --body "[steps to reproduce, expected vs actual, SQL state, network trace]" \
  --label "bug,e2e-test"
```
