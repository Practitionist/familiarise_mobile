# Feature Parity: Familiarise Web vs Mobile Companion Starter

> **Last updated:** 2026-10-02
> **Architecture:** Flutter `3.47.6` + Dart Frog Backend + `prisma_flutter_connector` `v1.0.0` (`0` `JsonQueryBuilder`, **93 / 93 Prisma models synced** with `familiarise_web`)
>
> **Legend:**
> - ✅ **Implemented Natively** (Mobile UI + Dart Frog API)
> - 🌐 **Companion Web Handoff** (Mobile Companion view + seamless deep-link handoff to `familiarise.com` for App Store `3.1.3(b)`/`3.1.3(d)` & Google Play compliance)
> - 🖥️ **Web-Only by Design** (Back-office Admin/Staff moderation, background cron jobs, marketing SEO pages)

---

## 1. Database & ORM Foundation

| Capability | Web (`familiarise_web`) | Mobile (`familiarise_mobile`) | Status |
|------------|-------------------------|-------------------------------|--------|
| Prisma Schema Models | 93 models | **93 models** (`scripts/sync-schema.sh`) | ✅ 100% Parity |
| Type-Safe ORM Delegates | Prisma Client TS | `prisma_flutter_connector` **v1.0.0** (`0` `JsonQueryBuilder`) | ✅ 100% Migrated |
| Client DB Decoupling | Next.js API Routes | 100% HTTP REST via `ApiClient` (`USE_PRISMA=false`) | ✅ Complete |

---

## 2. Authentication, Sessions & Concurrency (`#59`, `#60`, `#124`)

| Feature | Web | Mobile |
|---------|-----|--------|
| Email/password sign-up & sign-in | ✅ | ✅ |
| Google OAuth | ✅ | ✅ |
| GitHub OAuth | ✅ | ✅ |
| Apple Sign-In | ❌ | ✅ |
| Forgot / reset / change / set password | ✅ | ✅ |
| Email verification | ✅ | ✅ |
| Active device sessions list (`GET /api/auth/sessions`) | ✅ | ✅ |
| Remote session revocation (`DELETE /api/auth/sessions/:id`) | ✅ | ✅ |
| Server-side session invalidation on sign-out | ✅ | ✅ |
| Concurrent session/token refresh race protection | ✅ | ✅ |
| `CookiePreference` & `NotificationPreference` auto-creation on signup | ✅ | ✅ |
| Delete account | ✅ | ✅ |

---

## 3. Onboarding & User Profiles

| Feature | Web | Mobile |
|---------|-----|--------|
| Role selection (Consultant / Consultee) | ✅ | ✅ |
| Personal info (name, phone, DOB, gender, bio) | ✅ | ✅ |
| Consultant profile (headline, description, domain, subdomains, tags) | ✅ | ✅ |
| Consultee profile (career stage, goals, skills, budget, language) | ✅ | ✅ |
| Professional background — Work experience, Education, Certifications | ✅ | ✅ |
| Terms, privacy & DPDP consent capture (`ConsentRecord`) | ✅ | ✅ |
| Profile & display image upload | ✅ | ✅ |
| Consultant verification submission & document upload | ✅ | ✅ |

---

## 4. Explore, Discovery & Content Taxonomy

| Feature | Web | Mobile |
|---------|-----|--------|
| Browse & search consultants | ✅ | ✅ |
| Filter by domain, subdomain, tags, price, rating, availability | ✅ | ✅ |
| Consultant profile detail, reviews, plans & availability calendar | ✅ | ✅ |
| Browse programs (webinars & classes) | ✅ | ✅ |
| Domains, Subdomains, Tags & Topics taxonomy API | ✅ | ✅ |

---

## 5. Booking, Schedule Allocation & Companion Checkout (`#53`)

| Feature | Web | Mobile |
|---------|-----|--------|
| Request 1:1 consultation / subscription booking | ✅ | ✅ |
| Free trial session eligibility check & booking (`TrialSession`) | ✅ | ✅ |
| View upcoming & past appointments (`Appointment` / `SlotOfAppointment`) | ✅ | ✅ |
| Cancel & reschedule appointments | ✅ | ✅ |
| Weekly & custom availability slot management (with ownership guards) | ✅ | ✅ |
| Concurrent slot double-booking prevention | ✅ | ✅ |
| Event waitlist join / leave / position tracking (`Waitlist`) | ✅ | ✅ |
| Paid plan checkout & 1:many program purchase (`FeatureFlags.payments = false`) | ✅ | 🌐 Companion Web Handoff (`WebHandoffDialog`) |
| Stripe & Razorpay webhook processing & invoice generation | ✅ | ✅ (Backend) / 🌐 (Web Checkout) |

---

## 6. Stream Video, Stream Chat & DPDP Consent

| Feature | Web | Mobile |
|---------|-----|--------|
| Live video meetings (`stream_video_flutter`) | ✅ | ✅ |
| Stream Video & Chat token provisioning | ✅ | ✅ |
| DPDP explicit recording & data processing consent gate (`ConsentRecord`) | ✅ | ✅ |
| Recording start/stop & metadata sync | ✅ | ✅ |
| Real-time 1:1 & group messaging (`stream_chat_flutter`) | ✅ | ✅ |
| Channel member management & archiving | ✅ | ✅ |

---

## 7. Monetization Companion Views: Payouts, Wallet, Referrals & Collaborations (`#53`)

| Feature | Web | Mobile (`FeatureFlags` Companion View) |
|---------|-----|----------------------------------------|
| Consultant earnings summary & ledger (`Earning`) | ✅ | ✅ (`FeatureFlags.payouts = true`) |
| Payout accounts view (Bank, UPI, Stripe Connect status) & payout history | ✅ | ✅ (Companion View + 🌐 Web Handoff for KYC onboarding) |
| Tax info (PAN, GSTIN) & TDS records view | ✅ | ✅ |
| Wallet & `CreditTransaction` balance view | ✅ | ✅ (`FeatureFlags.wallet = true`, 🌐 Web Handoff for top-ups) |
| Referral code generation, sharing, apply & credit tracking (`ReferralCode`) | ✅ | ✅ (`FeatureFlags.referrals = true`) |
| Webinar & class co-host collaboration invitations & accept/decline (`Collaborator`) | ✅ | ✅ (`FeatureFlags.collaborations = true`) |

---

## 8. Enterprise Organization Seats, Notifications & Support (`#55`, `#61`)

| Feature | Web | Mobile |
|---------|-----|--------|
| Enterprise organization context (`organizations`) | ✅ | ✅ |
| Active organization seat members & roles (`members`) | ✅ | ✅ |
| Pending seat invitations (`invitations`) & seat utilization | ✅ | ✅ (Companion View + 🌐 Web Handoff for seat billing) |
| In-app notification center & unread badges | ✅ | ✅ |
| Granular notification preferences & Quiet Hours (`notification_preferences`) | ✅ | ✅ |
| Push notifications (Firebase Cloud Messaging) | ✅ | ✅ |
| Support tickets CRUD & threaded replies (`support_tickets`, `SupportTicketResponse`) | ✅ | ✅ |
| App feedback & consultant reviews (`feedbacks`, `ConsultantReview`) | ✅ | ✅ |
| Active announcements banner (`announcements`) | ✅ | ✅ |
| Maintenance window status check (`maintenance_windows`) | ✅ | ✅ |

---

## 9. Web-Only Surfaces by Design

| Surface | Web | Mobile | Rationale |
|---------|-----|--------|-----------|
| **Staff & Admin Dashboards** (`/staff/*`, `/admin/*`) | ✅ | 🖥️ Web-Only | Back-office moderation, KYC review, dispute resolution, and batch payout runs are desktop workflows (`FeatureFlags.staff` removed on mobile). |
| **Background Cron Jobs** (reconciliation, abandoned payment cleanup) | ✅ | 🖥️ Web-Only | Executed by server/GitHub Actions cron schedules. |
| **Marketing & Legal Pages** (blog, SEO landing pages) | ✅ | 🖥️ Web-Only | Linked from mobile via `url_launcher`. |
