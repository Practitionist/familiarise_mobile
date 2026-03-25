# E2E Testing Prompts

Comprehensive end-to-end testing for the Familiarise mobile app before production release.

## How to Use

Each prompt file is **self-contained** — it seeds its own test data, runs tests, files bugs, and cleans up. Run them independently or sequentially.

### Prerequisites

1. Flutter web running at `http://localhost:3000`
2. Dart Frog backend running at `http://localhost:8080`
3. Supabase MCP connected to the project
4. Chrome DevTools MCP connected to port 3000
5. GitHub CLI authenticated (`gh auth status`)

### Prompt Files

| # | File | Scope | Est. Time |
|---|------|-------|-----------|
| 0 | `00-setup-and-auth.md` | Sign up, sign in, password flows, sessions | 10 min |
| 1 | `01-onboarding-and-profiles.md` | Onboarding (consultee + consultant), profile editing, verification | 15 min |
| 2 | `02-plans-slots-explore.md` | Plan CRUD, slot management, explore page, consultant profiles | 15 min |
| 3 | `03-booking-checkout-appointments.md` | Booking flow, discounts, checkout, trials, waitlist, documents | 20 min |
| 4 | `04-social-support-staff.md` | Chat, referrals, support, feedback, payouts, tax, staff dashboard | 15 min |

### Running Order

**Recommended:** Run sequentially (0 → 1 → 2 → 3 → 4) for the most realistic user journey.

**Parallel:** Files 2, 3, 4 can run in parallel if using different test user prefixes (they already do).

### Test Data Conventions

- All test IDs prefixed with `test_e2e_` for easy identification
- Each file uses a unique sub-prefix: `test_e2e_auth_`, `test_e2e_onb_`, `test_e2e_plan_`, `test_e2e_bk_`, `test_e2e_soc_`
- Password for all test users: `TestPassword123`
- Cleanup SQL deletes everything with the matching prefix

### Bug Reporting

When any test fails, the agent creates a GitHub issue:
```
gh issue create --repo Practitionist/familiarise_mobile \
  --title "E2E Bug: [description]" \
  --body "[steps, expected, actual, screenshot]" \
  --label "bug,e2e-test"
```

### Coverage Summary

| Feature | Auth | Onboard | Plans | Booking | Social |
|---------|------|---------|-------|---------|--------|
| Sign up/in | x | | | | |
| Onboarding | | x | | | |
| Profile edit | | x | | | |
| Verification | | x | | | |
| Plan CRUD | | | x | | |
| Slots CRUD | | | x | | |
| Explore | | | x | | |
| Programs | | | x | | |
| Booking | | | | x | |
| Checkout | | | | x | |
| Discounts | | | | x | |
| Trials | | | | x | |
| Waitlist | | | | x | |
| Documents | | | | x | |
| Chat | | | | | x |
| Referrals | | | | | x |
| Support | | | | | x |
| Feedback | | | | | x |
| Payouts | | | | | x |
| Tax info | | | | | x |
| Staff dash | | | | | x |
| Announcements | | | | | x |
| Maintenance | | | | | x |
| Collaborations | | | | | x |
| Dashboard | | | | | x |
