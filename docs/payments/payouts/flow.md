# Payout Flows

> **Status**: NOT IMPLEMENTED
>
> This document describes the planned payout flows. The actual implementation is pending.

## Overview

This document details the planned flows for consultant account onboarding, earnings tracking, payout requests, and payout execution.

---

## End-to-End Payout Lifecycle (Planned)

```mermaid
flowchart TD
    subgraph Onboarding
        A[Consultant signs up]
        B[Consultant links payout account]
        C[KYC verification]
        D[Account verified]
    end

    subgraph Earning
        E[Customer pays for session]
        F[Session completed]
        G[Earnings record created]
        H[Hold period]
        I[Earnings become available]
    end

    subgraph Payout
        J[Consultant requests payout]
        K[Create payout request]
        L[Execute transfer]
        M[Transfer completes]
        N[Generate invoice]
    end

    A --> B --> C --> D
    E --> F --> G --> H --> I
    D --> J
    I --> J --> K --> L --> M --> N
```

---

## Account Onboarding Flow (Planned)

### Stripe Connect Express

```mermaid
sequenceDiagram
    autonumber
    participant Consultant
    participant App as Mobile App
    participant Backend
    participant Stripe

    Consultant->>App: Tap "Setup Payouts"
    App->>Backend: POST /api/payouts/accounts/connect

    Backend->>Stripe: stripe.accountLinks.create()
    Note right of Backend: type: "account_onboarding"
    Note right of Backend: account: new express account

    Stripe-->>Backend: Account link URL

    Backend-->>App: { url, accountId }

    App->>App: Open Stripe hosted onboarding
    Consultant->>Stripe: Complete KYC form
    Note right of Stripe: Identity verification
    Note right of Stripe: Bank account details
    Note right of Stripe: Tax information

    Stripe->>Backend: Webhook: account.updated
    Note right of Backend: Check charges_enabled
    Note right of Backend: Check payouts_enabled

    Backend->>Backend: Update LinkedAccount status

    alt Account verified
        Backend-->>App: Account ready
        App-->>Consultant: "Payouts enabled!"
    else Needs more info
        Backend-->>App: Pending verification
        App-->>Consultant: "Complete verification"
    end
```

### Razorpay Contact + Fund Account

```mermaid
sequenceDiagram
    autonumber
    participant Consultant
    participant App as Mobile App
    participant Backend
    participant Razorpay

    Consultant->>App: Tap "Setup Payouts"
    App-->>Consultant: Show bank details form

    Consultant->>App: Enter bank details
    Note right of Consultant: Account holder name
    Note right of Consultant: Account number
    Note right of Consultant: IFSC code

    App->>Backend: POST /api/payouts/accounts/razorpay
    Note right of App: { name, accountNumber, ifsc }

    Backend->>Razorpay: Create Contact
    Razorpay-->>Backend: { id: "cont_xxx" }

    Backend->>Razorpay: Create Fund Account
    Note right of Backend: contact_id, account_type: "bank_account"
    Razorpay-->>Backend: { id: "fa_xxx" }

    Backend->>Backend: Store LinkedAccount
    Note right of Backend: razorpayContactId, razorpayFundAccountId

    Backend->>Razorpay: Validate fund account
    Note right of Backend: ₹1 penny drop test

    alt Validation successful
        Razorpay-->>Backend: Account valid
        Backend-->>App: Account verified
        App-->>Consultant: "Bank account linked!"
    else Validation failed
        Razorpay-->>Backend: Invalid account
        Backend-->>App: Verification failed
        App-->>Consultant: "Please check details"
    end
```

---

## Earnings Generation Flow (Planned)

### On Payment Success

```mermaid
sequenceDiagram
    autonumber
    participant Webhook as Payment Webhook
    participant Handler as WebhookHandler
    participant EarningsService
    participant DB

    Webhook->>Handler: Payment succeeded
    Note right of Webhook: paymentId, appointmentId

    Handler->>Handler: Confirm booking

    Handler->>EarningsService: createEarnings(paymentId)

    EarningsService->>DB: Get payment details
    DB-->>EarningsService: Payment { amount, currency, appointment }

    EarningsService->>DB: Get consultant from appointment
    DB-->>EarningsService: ConsultantProfile { id }

    EarningsService->>EarningsService: Calculate amounts
    Note right of EarningsService: platformFee = amount * 15%
    Note right of EarningsService: netAmount = amount - platformFee

    EarningsService->>EarningsService: Calculate hold period
    Note right of EarningsService: availableAt = sessionEnd + 24h

    EarningsService->>DB: Create ConsultantEarnings
    Note right of DB: status: PENDING
    Note right of DB: availableAt: calculated

    DB-->>EarningsService: Earnings created
    EarningsService-->>Handler: Success
```

### Earnings Release Cron (Planned)

```mermaid
sequenceDiagram
    autonumber
    participant Cron as Hourly Cron Job
    participant EarningsService
    participant DB

    Cron->>EarningsService: releaseEligibleEarnings()

    EarningsService->>DB: Find PENDING earnings
    Note right of DB: WHERE status = 'PENDING'
    Note right of DB: AND availableAt <= NOW()

    DB-->>EarningsService: Earnings[]

    loop Each earning
        EarningsService->>EarningsService: Check for disputes/refunds
        Note right of EarningsService: Verify payment still valid

        alt Payment still valid
            EarningsService->>DB: Update status = AVAILABLE
            DB-->>EarningsService: Updated
        else Payment refunded/disputed
            EarningsService->>DB: Update status = CANCELLED
            DB-->>EarningsService: Cancelled
        end
    end

    EarningsService-->>Cron: Complete
```

---

## Payout Request Flow (Planned)

### Consultant Requests Payout

```mermaid
sequenceDiagram
    autonumber
    participant Consultant
    participant App as Mobile App
    participant Backend
    participant PayoutService
    participant DB

    Consultant->>App: View earnings dashboard
    App->>Backend: GET /api/payouts/earnings
    Backend->>DB: Get AVAILABLE earnings
    DB-->>Backend: Earnings[] { amount, currency }
    Backend-->>App: { available: 50000, currency: "INR" }

    App-->>Consultant: "₹500 available for payout"

    Consultant->>App: Tap "Request Payout"
    App->>Backend: POST /api/payouts/request
    Note right of App: { amount: 50000 }

    Backend->>PayoutService: createPayoutRequest(consultantId, amount)

    PayoutService->>DB: Get LinkedAccount
    DB-->>PayoutService: LinkedAccount { gateway, accountId }

    alt No linked account
        PayoutService-->>Backend: Error: No payout account
        Backend-->>App: 400 Setup payout account first
    else Account linked
        PayoutService->>DB: Claim available earnings
        Note right of DB: Update status = CLAIMED
        Note right of DB: Set payoutRequestId

        PayoutService->>DB: Create PayoutRequest
        Note right of DB: status: PENDING

        DB-->>PayoutService: PayoutRequest created
        PayoutService-->>Backend: Request created
        Backend-->>App: 201 Payout requested
        App-->>Consultant: "Payout processing..."
    end
```

---

## Payout Execution Flow (Planned)

### Stripe Transfer

```mermaid
sequenceDiagram
    autonumber
    participant Job as Payout Job
    participant PayoutService
    participant Stripe
    participant DB

    Job->>PayoutService: processPendingPayouts()

    PayoutService->>DB: Get PENDING payout requests
    DB-->>PayoutService: PayoutRequest[]

    loop Each request
        PayoutService->>DB: Get LinkedAccount
        DB-->>PayoutService: { stripeAccountId }

        PayoutService->>DB: Create Payout record
        Note right of DB: status: PENDING

        PayoutService->>Stripe: stripe.transfers.create()
        Note right of Stripe: amount, currency
        Note right of Stripe: destination: stripeAccountId

        alt Transfer success
            Stripe-->>PayoutService: Transfer { id }
            PayoutService->>DB: Update Payout
            Note right of DB: payoutId: tr_xxx
            Note right of DB: status: IN_TRANSIT
            PayoutService->>DB: Update PayoutRequest
            Note right of DB: status: PROCESSING
        else Transfer failed
            Stripe-->>PayoutService: Error
            PayoutService->>DB: Update Payout
            Note right of DB: status: FAILED
            Note right of DB: failureReason: error message
            PayoutService->>DB: Release earnings
            Note right of DB: status: AVAILABLE (revert)
        end
    end

    PayoutService-->>Job: Complete
```

### Stripe Payout Webhook

```mermaid
sequenceDiagram
    autonumber
    participant Stripe
    participant Webhook as /api/webhooks/stripe-connect
    participant PayoutService
    participant InvoiceService
    participant DB

    Stripe->>Webhook: transfer.paid
    Note right of Stripe: transfer { id, amount, destination }

    Webhook->>PayoutService: handleTransferPaid(transferId)

    PayoutService->>DB: Find Payout by transferId
    DB-->>PayoutService: Payout { id, payoutRequestId }

    PayoutService->>DB: Update Payout status = PAID

    PayoutService->>DB: Update PayoutRequest status = COMPLETED

    PayoutService->>DB: Update earnings status = PAID

    PayoutService->>InvoiceService: generateInvoice(payoutId)

    InvoiceService->>DB: Get payout details
    InvoiceService->>InvoiceService: Generate PDF
    InvoiceService->>DB: Store Invoice record
    InvoiceService-->>PayoutService: Invoice generated

    PayoutService-->>Webhook: Success
    Webhook-->>Stripe: 200 OK
```

### Razorpay Payout

```mermaid
sequenceDiagram
    autonumber
    participant Job as Payout Job
    participant PayoutService
    participant Razorpay
    participant DB

    Job->>PayoutService: processPendingPayouts()

    PayoutService->>DB: Get PENDING request with Razorpay account
    DB-->>PayoutService: PayoutRequest, LinkedAccount

    PayoutService->>DB: Create Payout record
    Note right of DB: status: PENDING

    PayoutService->>Razorpay: razorpay.payouts.create()
    Note right of Razorpay: fund_account_id: fa_xxx
    Note right of Razorpay: amount: in paise
    Note right of Razorpay: mode: "IMPS" | "NEFT"

    alt Payout queued
        Razorpay-->>PayoutService: Payout { id, status: "queued" }
        PayoutService->>DB: Update Payout
        Note right of DB: payoutId: pout_xxx
        Note right of DB: status: IN_TRANSIT
    else Payout failed
        Razorpay-->>PayoutService: Error
        PayoutService->>DB: Mark failed, release earnings
    end

    Razorpay->>PayoutService: Webhook: payout.processed
    Note right of Razorpay: status: "processed"

    PayoutService->>DB: Update Payout status = PAID
    PayoutService->>DB: Complete PayoutRequest
    PayoutService->>DB: Update earnings status = PAID
```

---

## Invoice Generation Flow (Planned)

```mermaid
flowchart TD
    subgraph Trigger
        A[Payout completed]
    end

    subgraph Data Collection
        B[Get payout details]
        C[Get consultant profile]
        D[Get earnings breakdown]
    end

    subgraph Generation
        E[Generate invoice number]
        F[Calculate totals]
        G[Apply tax rules]
        H[Render PDF template]
    end

    subgraph Storage
        I[Upload PDF to storage]
        J[Create Invoice record]
        K[Link to Payout]
    end

    subgraph Notification
        L[Email invoice to consultant]
    end

    A --> B --> C --> D
    D --> E --> F --> G --> H
    H --> I --> J --> K --> L
```

### Invoice Template (Planned)

```
╔════════════════════════════════════════════════════════════╗
║                       PAYOUT INVOICE                        ║
║                                                             ║
║  Invoice #: FAM-2024-00042                                  ║
║  Date: January 15, 2024                                     ║
║                                                             ║
╠═════════════════════════════════════════════════════════════╣
║  Consultant: Dr. Jane Smith                                 ║
║  PAN: ABCDE1234F                                            ║
║  Bank: HDFC ****1234                                        ║
╠═════════════════════════════════════════════════════════════╣
║                                                             ║
║  EARNINGS SUMMARY                                           ║
║  ─────────────────────────────────────────────────────────  ║
║  Consultations (5)              ₹10,000.00                  ║
║  Subscriptions (2)               ₹5,000.00                  ║
║                                 ───────────                  ║
║  Gross Earnings                 ₹15,000.00                  ║
║                                                             ║
║  DEDUCTIONS                                                  ║
║  ─────────────────────────────────────────────────────────  ║
║  Platform Fee (15%)             -₹2,250.00                  ║
║  TDS (10%)                      -₹1,275.00                  ║
║                                 ───────────                  ║
║  Total Deductions               -₹3,525.00                  ║
║                                                             ║
║  NET PAYOUT                     ₹11,475.00                  ║
║                                                             ║
╠═════════════════════════════════════════════════════════════╣
║  Transfer ID: pout_H2xWz3abc123def                          ║
║  Transfer Date: January 15, 2024 14:30 IST                  ║
║  Mode: IMPS                                                  ║
╚═════════════════════════════════════════════════════════════╝
```

---

## Error Handling (Planned)

### Payout Failure Recovery

```mermaid
flowchart TD
    A[Payout fails] --> B{Failure type?}

    B -->|Insufficient balance| C[Alert admin]
    B -->|Invalid account| D[Notify consultant]
    B -->|Temporary error| E[Retry with backoff]
    B -->|Permanent error| F[Manual intervention]

    C --> G[Admin adds funds]
    G --> H[Retry payout]

    D --> I[Consultant updates bank]
    I --> J[Re-verify account]
    J --> H

    E --> K{Retry successful?}
    K -->|Yes| L[Complete payout]
    K -->|No, max retries| F

    F --> M[Support ticket created]
```

---

## Implementation Checklist

### Phase 1: Account Linking
- [ ] POST /api/payouts/accounts/connect (Stripe)
- [ ] POST /api/payouts/accounts/razorpay
- [ ] GET /api/payouts/accounts
- [ ] Stripe Connect webhook handling
- [ ] Account verification status tracking

### Phase 2: Earnings
- [ ] Earnings creation in payment webhook
- [ ] Platform fee calculation
- [ ] Hold period logic
- [ ] Earnings release cron job
- [ ] GET /api/payouts/earnings

### Phase 3: Payouts
- [ ] POST /api/payouts/request
- [ ] Payout execution job
- [ ] Stripe Transfer integration
- [ ] Razorpay Payout integration
- [ ] Payout webhooks

### Phase 4: Invoicing
- [ ] Invoice number generation
- [ ] PDF template
- [ ] Invoice storage
- [ ] Email delivery

### Phase 5: Dashboard
- [ ] Earnings overview UI
- [ ] Payout request UI
- [ ] Payout history
- [ ] Invoice downloads

---

## Key Files (To Be Created)

| File | Purpose |
|------|---------|
| `backend/lib/services/payout_service.dart` | Payout orchestration |
| `backend/lib/services/earnings_service.dart` | Earnings tracking |
| `backend/lib/services/invoice_service.dart` | Invoice generation |
| `backend/routes/api/payouts/accounts.dart` | Account linking endpoints |
| `backend/routes/api/payouts/request.dart` | Payout request endpoint |
| `backend/routes/api/payouts/earnings.dart` | Earnings endpoint |
| `backend/routes/api/webhooks/stripe-connect.dart` | Connect webhooks |
| `lib/features/payouts/` | Mobile payout UI |
