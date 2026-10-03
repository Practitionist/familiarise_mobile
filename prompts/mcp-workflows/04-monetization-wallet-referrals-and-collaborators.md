# 04 — Monetization Companion View: Wallet, Payouts, Referrals & Collaborators (Multi-MCP E2E)

> **What this tests:** Companion Starter monetization & partner surfaces enabled by `FeatureFlags.payouts = true`, `FeatureFlags.referrals = true`, and `FeatureFlags.collaborations = true` (`#53`):
> 1. **Consultant Earnings & Payouts Companion View** (`/payout-accounts`, `/earnings` — viewing `Earning`, `Payout`, `PayoutAccount`, and web handoff for complex KYC/Stripe Connect setup)
> 2. **Wallet & Referral Credits** (`/referrals` — viewing `ReferralCode`, credit ledger, applying referral code)
> 3. **Co-Host Collaborations** (`/collaborations` — viewing incoming webinar/class `Collaborator` invitations with revenue split % and accepting/declining on mobile)
>
> **MCP Servers Used:**
> - **Supabase MCP** (`execute_sql` for seeding `Earning`, `PayoutAccount`, `ReferralCode`, `Referral`, `WebinarPlan`, `Collaborator`, and verifying state transitions)
> - **Chrome DevTools MCP** (`navigate_page`, `evaluate_script`, `take_snapshot`, `take_screenshot`, `click`, `type_text`, `list_network_requests`, `list_console_messages`)
> - **Dart MCP** (`analyze_files`, `get_runtime_errors`)

---

## 1. Seed Earnings, Payout Account, Referral Code & Collaboration Invite (Supabase MCP)

```sql
-- Tool: mcp:supabase:execute_sql
BEGIN;

DELETE FROM "Collaborator" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "WebinarPlan" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "Referral" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "ReferralCode" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "Earning" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "Payout" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "Payment" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "PayoutAccount" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "ConsultantProfile" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "ConsulteeProfile" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "Domain" WHERE id = 'test_mcp_mon_dom1';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_mcp_mon_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_mcp_mon_%';
DELETE FROM "users" WHERE id LIKE 'test_mcp_mon_%';

-- 1. Domain & Users (Host Consultant + Co-Host Consultant/Consultee)
INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_mcp_mon_dom1', 'Product Management & Growth', NOW(), NOW());

INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES
  ('test_mcp_mon_u1', 'Meera Krishnan', 'test_mcp_mon_u1@familiarise.test', true, 'CONSULTANT', true, NOW(), NOW()),
  ('test_mcp_mon_u2', 'Siddharth Joshi', 'test_mcp_mon_u2@familiarise.test', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES
  ('test_mcp_mon_acc1', 'test_mcp_mon_u1', 'test_mcp_mon_u1', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.XzoCvKkqWyYZaFphvixFFncWVsC4W4O', NOW(), NOW()),
  ('test_mcp_mon_acc2', 'test_mcp_mon_u2', 'test_mcp_mon_u2', 'credential', '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.XzoCvKkqWyYZaFphvixFFncWVsC4W4O', NOW(), NOW());

INSERT INTO "ConsultantProfile" (
  id, "userId", "domainId", headline, description, experience, rating, "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt"
) VALUES
  ('test_mcp_mon_cp1', 'test_mcp_mon_u1', 'test_mcp_mon_dom1', 'VP of Product', 'Growth & PLG advisor.', 11, 4.9, 'WEEKLY', true, 'VERIFIED', NOW(), NOW()),
  ('test_mcp_mon_cp2', 'test_mcp_mon_u2', 'test_mcp_mon_dom1', 'Staff Product Designer', 'Design systems & UX strategy.', 9, 4.8, 'WEEKLY', true, 'VERIFIED', NOW(), NOW());

-- 2. PayoutAccount, Payout & Earning for Meera (Consultant 1)
INSERT INTO "PayoutAccount" (
  id, "consultantProfileId", "accountType", "accountHolderName", "bankName", "accountNumberLast4", "ifscCode", "isDefault", "isVerified", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_mon_pa1',
  'test_mcp_mon_cp1',
  'BANK_ACCOUNT',
  'Meera Krishnan',
  'HDFC Bank',
  '4821',
  'HDFC0001234',
  true,
  true,
  NOW(),
  NOW()
);

INSERT INTO "Payout" (
  id, "consultantProfileId", "payoutAccountId", amount, currency, status, method, "processedAt", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_mon_payout1',
  'test_mcp_mon_cp1',
  'test_mcp_mon_pa1',
  120000,
  'INR',
  'COMPLETED',
  'BANK_TRANSFER',
  NOW() - INTERVAL '1 day',
  NOW() - INTERVAL '2 days',
  NOW() - INTERVAL '1 day'
);

INSERT INTO "Payment" (
  id, amount, "originalAmount", "taxAmount", currency, "paymentMethod", "paymentIntent", "paymentGateway", "paymentStatus", "isMockPayment", "userId", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_mon_pmt1',
  150000,
  150000,
  0,
  'INR',
  'card',
  'pi_test_mcp_mon_1',
  'RAZORPAY',
  'SUCCEEDED',
  true,
  'test_mcp_mon_u2',
  NOW() - INTERVAL '3 days',
  NOW() - INTERVAL '3 days'
);

INSERT INTO "Earning" (
  id, "consultantProfileId", "paymentId", "payoutId", "grossAmount", "platformFee", "consultantShare", role, "sharePercentage", status, "holdUntil", currency, "createdAt", "updatedAt"
) VALUES (
  'test_mcp_mon_earn1',
  'test_mcp_mon_cp1',
  'test_mcp_mon_pmt1',
  'test_mcp_mon_payout1',
  150000,
  30000,
  120000,
  'OWNER',
  100.0,
  'PAID',
  NOW() - INTERVAL '1 day',
  'INR',
  NOW() - INTERVAL '3 days',
  NOW() - INTERVAL '1 day'
);

-- 3. ReferralCode for Meera
INSERT INTO "ReferralCode" (
  id, "userId", code, "rewardAmount", "refereeDiscount", "maxUses", "usedCount", "isActive", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_mon_ref1',
  'test_mcp_mon_u1',
  'MEERA2026',
  50000,
  50000,
  100,
  4,
  true,
  NOW(),
  NOW()
);

-- 4. WebinarPlan owned by Siddharth (cp2) + Collaborator invitation for Meera (cp1)
INSERT INTO "WebinarPlan" (
  id, "consultantProfileId", title, description, "durationInHours", price, "priceCurrency", "maxParticipants", "language", "level", "prerequisites", "materialProvided", "learningOutcomes", "createdAt", "updatedAt"
) VALUES (
  'test_mcp_mon_wplan1',
  'test_mcp_mon_cp2',
  'AI-Native Product Discovery Masterclass',
  'Co-hosted live workshop on AI product workflows.',
  2,
  199900,
  'INR',
  50,
  'English',
  'Intermediate',
  'Product experience',
  'Playbook PDF',
  ARRAY['AI prototyping', 'Metrics framework'],
  NOW(),
  NOW()
);

INSERT INTO "Collaborator" (
  id, "webinarPlanId", "consultantProfileId", role, "revenueSharePercentage", status, "invitedAt", "updatedAt"
) VALUES (
  'test_mcp_mon_collab1',
  'test_mcp_mon_wplan1',
  'test_mcp_mon_cp1',
  'CO_HOST',
  35.0,
  'PENDING',
  NOW(),
  NOW()
);

COMMIT;
```

---

## 2. Scenario A — Payouts & Earnings Companion View (`/payout-accounts` & `/earnings`)

1. Sign in as `test_mcp_mon_u1@familiarise.test` (`TestPassword123`).
2. Navigate to `/payout-accounts`:
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/payout-accounts" }
   ```
3. Call `mcp:chrome-devtools:take_snapshot` and verify:
   - The screen is **accessible** (`FeatureFlags.payouts == true` — NOT blocked by a gated-feature redirect).
   - Default payout account `"HDFC Bank •••• 4821"` (`Verified`, `Default`) is displayed.
   - Companion action to manage Stripe Connect / tax compliance links cleanly to Web handoff.
4. Navigate to `/earnings` (or verify `GET /api/earnings` and `GET /api/payouts` via `evaluate_script` / `list_network_requests`):
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/earnings" }
   ```
   - Call `mcp:chrome-devtools:take_snapshot` and verify the seeded `Earning` (`1,200 INR` / `120000` paise `consultantShare`, `PAID`) and `Payout` (`test_mcp_mon_payout1`, `COMPLETED`) are displayed.

---

## 3. Scenario B — Referrals & Credits Companion View (`/referrals`)

1. Navigate to `/referrals`:
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/referrals" }
   ```
2. Call `mcp:chrome-devtools:take_snapshot` and verify:
   - Referral code `"MEERA2026"` is visible with share/copy action and usage count (`4` uses).
3. Inspect network requests via `mcp:chrome-devtools:list_network_requests`:
   - Confirm `GET /api/referrals/code` and `GET /api/referrals/credits` returned `200 OK`.

---

## 4. Scenario C — Accept Co-Host Collaboration Invitation (`/collaborations`)

1. Navigate to `/collaborations`:
   ```json
   // Tool: mcp:chrome-devtools:navigate_page
   { "type": "url", "url": "http://localhost:8080/#/collaborations" }
   ```
2. Call `mcp:chrome-devtools:take_snapshot` and verify the pending invitation appears:
   - Webinar: `"AI-Native Product Discovery Masterclass"`
   - Role: `"CO_HOST"`
   - Revenue Split: `"35%"`
   - Status: `"PENDING"`
3. Click **Accept** on the collaboration invitation (`test_mcp_mon_collab1`).
4. Confirm network request `PATCH` / `PUT /api/collaborations/test_mcp_mon_collab1` returns `200 OK`.
5. Verify in Postgres via **Supabase MCP**:
   ```sql
   -- Tool: mcp:supabase:execute_sql
   SELECT id, status, "revenueSharePercentage", "respondedAt" IS NOT NULL AS has_responded_timestamp
   FROM "Collaborator"
   WHERE id = 'test_mcp_mon_collab1';
   ```
   **Expected:** `status = 'ACCEPTED'` and `has_responded_timestamp = true`.

---

## 5. Cleanup (Supabase MCP)

```sql
-- Tool: mcp:supabase:execute_sql
BEGIN;
DELETE FROM "Collaborator" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "WebinarPlan" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "Referral" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "ReferralCode" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "Earning" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "Payout" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "Payment" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "PayoutAccount" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "ConsultantProfile" WHERE id LIKE 'test_mcp_mon_%';
DELETE FROM "Domain" WHERE id = 'test_mcp_mon_dom1';
DELETE FROM "sessions" WHERE "userId" LIKE 'test_mcp_mon_%';
DELETE FROM "accounts" WHERE "userId" LIKE 'test_mcp_mon_%';
DELETE FROM "users" WHERE id LIKE 'test_mcp_mon_%';
COMMIT;
```

---

## 6. Verification Checklist

- [ ] `/payout-accounts` renders verified bank account in Companion mode without gated-route block
- [ ] `/referrals` displays `MEERA2026` referral code and credit metrics
- [ ] `/collaborations` displays pending `CO_HOST` invitation with `35%` split and updates `Collaborator.status` to `'ACCEPTED'` in Postgres
- [ ] Cleanup SQL removes all `test_mcp_mon_%` rows
