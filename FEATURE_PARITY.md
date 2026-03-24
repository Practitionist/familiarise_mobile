# Feature Parity: Web App vs Mobile App

> Last updated: 2026-03-24
>
> Legend: ✅ Implemented | ❌ Not Implemented | 🟡 Partial | 🔵 Backend Only (no UI)

---

## Authentication & Sessions

| Feature | Web | Mobile |
|---------|-----|--------|
| Email/password sign-up | ✅ | ✅ |
| Email/password sign-in | ✅ | ✅ |
| Google OAuth | ✅ | ✅ |
| GitHub OAuth | ✅ | ✅ |
| Facebook OAuth | ✅ | ❌ |
| Apple Sign-In | ❌ | ✅ |
| Forgot password | ✅ | ✅ |
| Reset password | ✅ | ✅ |
| Change password | ✅ | ✅ |
| Set password (OAuth users) | ✅ | ✅ |
| Email verification | ✅ | ✅ |
| Session management (list/revoke) | ✅ | ✅ |
| Delete account | ✅ | ✅ |
| Server-side session invalidation on sign-out | ✅ | ✅ |
| CookiePreference creation on signup | ✅ | ✅ |
| NotificationPreference creation on signup | ✅ | ✅ |
| Account linking (trusted providers) | ✅ | ❌ |
| Novu subscriber sync on signup | ✅ | ❌ |

## Onboarding

| Feature | Web | Mobile |
|---------|-----|--------|
| Role selection (Consultant/Consultee) | ✅ | ✅ |
| Staff role onboarding | ✅ | ❌ |
| Personal info (name, phone, DOB, gender, etc.) | ✅ | ✅ |
| Consultant profile (headline, description, domains) | ✅ | ✅ |
| Consultee profile (career stage, preferences) | ✅ | ✅ |
| Professional background — Work experience | ✅ | ✅ |
| Professional background — Education | ✅ | ✅ |
| Professional background — Certifications | ✅ | ✅ |
| Professional background — Achievements | ✅ | ❌ |
| Verification document upload during onboarding | ✅ | ❌ |
| Review step with navigation back to specific steps | ✅ | ❌ |
| Terms & privacy consent | ✅ | ✅ |
| Profile image upload | ✅ | ✅ |
| Profile display image upload | ✅ | ✅ |

## User Profiles

| Feature | Web | Mobile |
|---------|-----|--------|
| View own profile | ✅ | ✅ |
| Edit profile (name, phone, bio, etc.) | ✅ | ✅ |
| GET /api/user/:id route | ✅ | ✅ |
| PUT /api/user/:id route | ✅ | ✅ |
| Profile image upload (dedicated route) | ✅ | ✅ |
| Profile display image upload (dedicated route) | ✅ | ✅ |
| All User fields (termsAcceptedAt, privacyAcceptedAt, etc.) | ✅ | ✅ |

## Explore & Discovery

| Feature | Web | Mobile |
|---------|-----|--------|
| Browse consultants | ✅ | ✅ |
| Consultant profile page | ✅ | ✅ |
| Consultant reviews | ✅ | ✅ |
| Consultant availability | ✅ | ✅ |
| Browse programs (webinars/classes) | ✅ | ✅ |
| Explore activities/hackathons | ✅ | ❌ |
| Community page | ✅ | ❌ |
| Search consultants | ✅ | 🟡 |

## Booking & Scheduling

| Feature | Web | Mobile |
|---------|-----|--------|
| Create consultation booking | ✅ | ✅ |
| View appointments | ✅ | ✅ |
| Cancel appointment | ✅ | ✅ |
| Reschedule appointment | ✅ | ✅ |
| Weekly availability management | ✅ | ✅ |
| Custom availability slots | ✅ | ✅ |
| Subscription booking | ✅ | ✅ |
| Webinar enrollment | ✅ | ✅ |
| Class enrollment | ✅ | ✅ |
| Slot allocation/validation | ✅ | 🟡 |
| Participant management | ✅ | ❌ |
| Schedule type switching check | ✅ | ❌ |
| Approval workflow (request-for-approval) | ✅ | 🟡 |

## Plans & Pricing

| Feature | Web | Mobile |
|---------|-----|--------|
| Consultation plans (CRUD) | ✅ | 🟡 |
| Subscription plans (CRUD) | ✅ | 🟡 |
| Webinar plans (CRUD + materials) | ✅ | 🟡 |
| Class plans (CRUD + materials + contents) | ✅ | 🟡 |
| Plan materials upload | ✅ | ❌ |
| Plan image upload | ✅ | ❌ |
| Plan recordings management | ✅ | ❌ |

## Checkout & Payments

| Feature | Web | Mobile |
|---------|-----|--------|
| Checkout flow (create session) | ✅ | ✅ |
| Payment verification | ✅ | ✅ |
| Stripe integration | ✅ | ✅ |
| Razorpay integration | ✅ | ✅ |
| Lemon Squeezy integration | ✅ | ❌ |
| Xflow integration | ✅ | ❌ |
| Discount code validation | ✅ | 🟡 |
| Payment recovery/retry | ✅ | ❌ |
| Stripe webhooks | ✅ | ✅ |
| Razorpay webhooks | ✅ | ✅ |
| Lemon Squeezy webhooks | ✅ | ❌ |
| Refund management | ✅ | ✅ |
| Dispute management | ✅ | ✅ |
| Invoice generation | ✅ | 🔵 |

## Payouts & Earnings

| Feature | Web | Mobile |
|---------|-----|--------|
| Consultant earnings dashboard | ✅ | 🟡 |
| Payout account management (CRUD) | ✅ | ❌ |
| Payout account types (Bank, UPI, Stripe Connect) | ✅ | ❌ |
| Set default payout account | ✅ | ❌ |
| Payout processing | ✅ | ❌ |
| Payout batch creation | ✅ | ❌ |
| Consultant tax info (PAN, GSTIN) | ✅ | ❌ |
| TDS records | ✅ | ❌ |
| Earnings release workflow | ✅ | ❌ |
| Revenue split tracking | ✅ | ❌ |

## Stream / Meetings

| Feature | Web | Mobile |
|---------|-----|--------|
| Video meetings (Stream SDK) | ✅ | ✅ |
| Start/end meeting | ✅ | ✅ |
| Get meeting details | ✅ | ✅ |
| Stream token generation | ✅ | ✅ |
| Recording — start/stop | ✅ | ❌ |
| Recording — view/manage | ✅ | ❌ |
| Recording — transfer (Stream → Supabase) | ✅ | ❌ |
| Recording — sync metadata | ✅ | ❌ |
| Recording expiration tracking | ✅ | ❌ |
| Meeting access validation | ✅ | ❌ |

## Chat & Messaging

| Feature | Web | Mobile |
|---------|-----|--------|
| Stream Chat integration | ✅ | ✅ |
| Chat token generation | ✅ | ✅ |
| Create group channels | ✅ | ✅ |
| Add/remove members | ✅ | ✅ |
| Set member roles | ✅ | ✅ |
| Archive/unarchive channels | ✅ | ✅ |
| Block users | ✅ | ❌ |
| Search consultees in chat | ✅ | ❌ |

## Trials

| Feature | Web | Mobile |
|---------|-----|--------|
| Request trial session | ✅ | ❌ |
| Accept/reject trial | ✅ | ❌ |
| Check trial eligibility | ✅ | ❌ |
| Trial statistics | ✅ | ❌ |
| Trial → subscription conversion | ✅ | ❌ |

## Waitlist

| Feature | Web | Mobile |
|---------|-----|--------|
| Join waitlist | ✅ | ❌ |
| Leave waitlist | ✅ | ❌ |
| Respond to waitlist notification | ✅ | ❌ |
| Waitlist statistics | ✅ | ❌ |
| Waitlist position tracking | ✅ | ❌ |

## Document Review

| Feature | Web | Mobile |
|---------|-----|--------|
| Upload appointment documents | ✅ | ❌ |
| Download documents | ✅ | ❌ |
| Consultant review (approve/reject) | ✅ | ❌ |
| Consultant response document | ✅ | ❌ |
| Document review status tracking | ✅ | ❌ |

## Consultant Verification

| Feature | Web | Mobile |
|---------|-----|--------|
| Submit verification | ✅ | ✅ |
| Check verification status | ✅ | ✅ |
| Upload verification documents | ✅ | ✅ |
| Resubmit after rejection | ✅ | ✅ |
| Staff verification review | ✅ | ❌ |

## Collaborations

| Feature | Web | Mobile |
|---------|-----|--------|
| Create collaboration invitation | ✅ | ✅ |
| Respond to collaboration | ✅ | ✅ |
| Per-plan collaborator management (webinar) | ✅ | ❌ |
| Per-plan collaborator management (class) | ✅ | ❌ |
| Revenue split configuration | ✅ | ❌ |
| Collaborator availability check | ✅ | ❌ |

## Referrals & Credits

| Feature | Web | Mobile |
|---------|-----|--------|
| Get/generate referral code | ✅ | ✅ |
| Apply referral code | ✅ | ✅ |
| Get available credits | ✅ | ✅ |
| Customize referral code | ✅ | ❌ |
| Check code validity | ✅ | ❌ |
| Referral landing page (/r/code) | ✅ | ❌ |
| Credit usage tracking | ✅ | ❌ |

## Support & Feedback

| Feature | Web | Mobile |
|---------|-----|--------|
| Create support ticket | ✅ | ✅ |
| List support tickets | ✅ | ✅ |
| Ticket detail with responses | ✅ | ✅ |
| Add response to ticket | ✅ | ✅ |
| Ticket attachments | ✅ | ❌ |
| Submit feedback | ✅ | ✅ |
| Submit review | ✅ | ✅ |

## Announcements

| Feature | Web | Mobile |
|---------|-----|--------|
| View active announcements | ✅ | ❌ |
| Dismissible announcement banner | ✅ | ❌ |
| Admin: create/manage announcements | ✅ | ❌ |

## Maintenance Mode

| Feature | Web | Mobile |
|---------|-----|--------|
| Maintenance status check | ✅ | ❌ |
| Maintenance mode screen | ✅ | ❌ |
| Admin: toggle maintenance | ✅ | ❌ |
| Maintenance bypass (VIP secret) | ✅ | ❌ |

## Notifications

| Feature | Web | Mobile |
|---------|-----|--------|
| Notification preferences (channel/category) | ✅ | 🔵 |
| Quiet hours | ✅ | 🔵 |
| Novu integration (multi-channel) | ✅ | ❌ |
| Push notifications (Firebase) | ✅ | 🟡 |
| Email notifications (Resend) | ✅ | ❌ |
| Newsletter subscribe/unsubscribe | ✅ | ❌ |

## Content Management

| Feature | Web | Mobile |
|---------|-----|--------|
| Domains (read) | ✅ | ✅ |
| Subdomains (read) | ✅ | ❌ |
| Tags (read) | ✅ | ❌ |
| Topics (read) | ✅ | ❌ |

## Admin Dashboard

| Feature | Web | Mobile |
|---------|-----|--------|
| Analytics & statistics | ✅ | ❌ |
| User management (CRUD) | ✅ | ❌ |
| Payment management | ✅ | ❌ |
| Payout management | ✅ | ❌ |
| Dispute management | ✅ | ❌ |
| Refund management | ✅ | ❌ |
| Invoice management | ✅ | ❌ |
| Subscription management | ✅ | ❌ |
| Waitlist management | ✅ | ❌ |
| Verification review | ✅ | ❌ |
| Announcement management | ✅ | ❌ |
| Maintenance toggle | ✅ | ❌ |
| System jobs | ✅ | ❌ |
| Newsletter sending | ✅ | ❌ |
| TDS management | ✅ | ❌ |
| Approval payments | ✅ | ❌ |
| Cancellation analytics | ✅ | ❌ |

## Staff Dashboard

| Feature | Web | Mobile |
|---------|-----|--------|
| Metrics & statistics | ✅ | ❌ |
| Support ticket management | ✅ | ❌ |
| Moderation — reports | ✅ | ❌ |
| Moderation — report actions | ✅ | ❌ |
| Moderation — review moderation | ✅ | ❌ |
| Moderation — profile verification | ✅ | ❌ |
| Moderation — statistics | ✅ | ❌ |
| Feedback review | ✅ | ❌ |
| Invoice management | ✅ | ❌ |
| Payout tracking | ✅ | ❌ |
| System jobs | ✅ | ❌ |
| Appointment management | ✅ | ❌ |

## Cleanup / Cron Jobs (Web-only by design)

| Feature | Web | Mobile |
|---------|-----|--------|
| Abandoned payment recovery | ✅ | N/A |
| Stale request expiry | ✅ | N/A |
| Recording transfer/expiry | ✅ | N/A |
| Payout batch creation/processing | ✅ | N/A |
| Earnings release | ✅ | N/A |
| Dispute reconciliation | ✅ | N/A |
| Payment/refund reconciliation | ✅ | N/A |
| Session reconciliation | ✅ | N/A |
| Document storage reconciliation | ✅ | N/A |
| Auth token cleanup | ✅ | N/A |
| Auto-complete appointments | ✅ | N/A |
| Slot availability reconciliation | ✅ | N/A |
| Stream sync | ✅ | N/A |
| Deactivate expired discounts | ✅ | N/A |

## Static / Marketing Pages

| Feature | Web | Mobile |
|---------|-----|--------|
| Homepage | ✅ | N/A |
| About page | ✅ | N/A |
| Contact page | ✅ | N/A |
| Pricing page | ✅ | N/A |
| Privacy policy | ✅ | N/A |
| Terms of service | ✅ | N/A |
| Refund policy | ✅ | N/A |
| Blog | ✅ | N/A |
| Use case pages | ✅ | N/A |

---

## Summary

| Category | Web | Mobile | Gap |
|----------|-----|--------|-----|
| Auth & Sessions | 18 | 16 | 2 missing |
| Onboarding | 14 | 8 | 6 missing |
| Profiles | 7 | 7 | Parity ✅ |
| Explore | 6 | 4 | 2 missing |
| Booking & Scheduling | 13 | 9 | 4 missing |
| Plans & Pricing | 7 | 0 full | 7 partial/missing |
| Checkout & Payments | 14 | 9 | 5 missing |
| Payouts & Earnings | 10 | 0 | **10 missing** |
| Stream / Meetings | 10 | 4 | 6 missing |
| Chat | 8 | 6 | 2 missing |
| Trials | 5 | 0 | **5 missing** |
| Waitlist | 5 | 0 | **5 missing** |
| Document Review | 5 | 0 | **5 missing** |
| Verification | 5 | 4 | 1 missing |
| Collaborations | 6 | 2 | 4 missing |
| Referrals | 7 | 3 | 4 missing |
| Support & Feedback | 7 | 6 | 1 missing |
| Announcements | 3 | 0 | **3 missing** |
| Maintenance | 4 | 0 | **4 missing** |
| Notifications | 6 | 1 | 5 missing |
| Content Management | 4 | 1 | 3 missing |
| Admin Dashboard | 17 | 0 | **N/A (web-only)** |
| Staff Dashboard | 12 | 0 | **12 missing** |

**Total features: ~186 (web) vs ~80 (mobile) — ~57% gap**
