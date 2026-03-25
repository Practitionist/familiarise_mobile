# E2E Testing Prompts

Comprehensive end-to-end testing for the Familiarise mobile app before production release.

## Structure

```
testing/
├── unit/                          (one prompt per feature, isolated)
│   ├── 01-auth.md                 Sign up, sign in, passwords, sessions
│   ├── 02-onboarding.md           Consultee + consultant onboarding flows
│   ├── 03-profile.md              Edit profile, image, professional background
│   ├── 04-verification.md         Consultant verification submit/status
│   ├── 05-plans.md                Plan CRUD (all 4 types)
│   ├── 06-slots.md                Weekly + custom availability slots
│   ├── 07-explore.md              Browse consultants, filters, profiles
│   ├── 08-booking.md              Request booking, view list/detail
│   ├── 09-checkout.md             Checkout screen, price display
│   ├── 10-trials.md               Trial eligibility, request, accept/reject
│   ├── 11-waitlist.md             Join, view, leave waitlist
│   ├── 12-documents.md            Appointment document upload/review
│   ├── 13-chat.md                 Chat list page (UI rendering)
│   ├── 14-referrals.md            Code generation, apply, credits
│   ├── 15-reviews.md              Submit/view consultant reviews
│   ├── 16-support.md              Create/view tickets, add responses
│   ├── 17-feedback.md             Submit app feedback
│   ├── 18-payout.md               Payout account CRUD (bank/UPI)
│   ├── 19-tax.md                  Tax info (PAN/GST)
│   ├── 20-staff.md                Staff dashboard, moderation, tickets
│   ├── 21-announcements.md        Announcement banner display
│   ├── 22-collaborations.md       Collaboration invitations
│   └── 23-dashboard.md            Consultee + consultant dashboards
│
├── integration/                   (cross-feature user journeys)
│   ├── 01-consultant-lifecycle.md          Sign up → onboard → plans → slots → trial → payout → tax → verify
│   ├── 02-consultee-booking-journey.md     Sign up → explore → trial → book → pay → review → refer → waitlist
│   ├── 03-staff-moderation-flow.md         Dashboard → verify profile → respond ticket → review feedback
│   ├── 04-payment-payout-flow.md           Book → checkout → discount → pay → earnings → payout → invoice
│   └── 05-edge-cases-regression.md         Invalid inputs, auth guards, role access, duplicates, empty states
│
└── README.md                      (this file)
```

## How to Run

### Prerequisites
1. Flutter web at `http://localhost:3000`
2. Dart Frog backend at `http://localhost:8080`
3. Supabase MCP connected
4. Chrome DevTools MCP connected
5. GitHub CLI authenticated (`gh auth status`)

### Run a single feature test
```
# Tell the AI agent to follow:
prompts/testing/unit/auth.md
```

### Run all unit tests
Run each `unit/*.md` file sequentially or in parallel (each is self-contained).

### Run integration tests
Run `integration/*.md` files sequentially for realistic user journey testing.

### Recommended testing order
1. **Unit tests first** — catch feature-level bugs
2. **Integration tests second** — catch cross-feature interaction bugs
3. **Edge cases last** — catch error handling gaps

## Conventions

| Convention | Value |
|-----------|-------|
| Test ID prefix | `test_unit_` (unit), `test_intg_` (integration) |
| Password | `TestPassword123` |
| APP_URL | `http://localhost:3000` |
| GitHub repo | `Practitionist/familiarise_mobile` |

### Table names (SQL)
- **Lowercase mapped:** `"users"`, `"accounts"`, `"sessions"`, `"support_tickets"`, `"cookie_preferences"`, `"notification_preferences"`, `"feedbacks"`, `"announcements"`
- **PascalCase unmapped:** `"ConsultantProfile"`, `"ConsulteeProfile"`, `"ConsultationPlan"`, `"SubscriptionPlan"`, `"WebinarPlan"`, `"ClassPlan"`, `"Appointment"`, `"TrialSession"`, `"PayoutAccount"`, `"DiscountCode"`, `"Waitlist"`, `"ReferralCode"`, `"ConsultantReview"`, `"ConsultantProfileVerification"`, etc.

## Bug Reporting

When a test fails, the agent creates a GitHub issue:
```bash
gh issue create --repo Practitionist/familiarise_mobile \
  --title "E2E Bug: [description]" \
  --body "[steps to reproduce, expected vs actual, screenshot]" \
  --label "bug,e2e-test"
```

## Coverage

**23 unit prompts** testing every feature in isolation
**5 integration prompts** testing realistic user journeys
**~80+ total test scenarios** covering all 27 features and 122 backend routes
