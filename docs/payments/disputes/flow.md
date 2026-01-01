# Dispute Flows

## Overview

This document details the dispute processing flows for both Stripe and Razorpay gateways. Disputes are received via webhooks and tracked in the database for monitoring and resolution.

---

## End-to-End Dispute Lifecycle

```mermaid
flowchart TD
    subgraph Customer Action
        A[Customer contacts bank] --> B[Claims fraud/issue with charge]
        B --> C[Bank files chargeback]
    end

    subgraph Gateway Processing
        C --> D[Gateway receives dispute]
        D --> E[Gateway sends webhook]
    end

    subgraph Backend Processing
        E --> F[Webhook endpoint receives event]
        F --> G[Verify signature]
        G --> H{Signature valid?}
        H -->|No| I[Reject request]
        H -->|Yes| J[WebhookHandlers.handleDisputeCreated]
        J --> K[Find Payment by paymentIntent]
        K --> L{Payment found?}
        L -->|No| M[Log error, return]
        L -->|Yes| N[Create Dispute record]
    end

    subgraph Response Phase
        N --> O{Evidence deadline?}
        O -->|dueBy set| P[Admin must respond before deadline]
        O -->|No deadline| Q[Monitor status]
        P --> R[Submit evidence via gateway dashboard]
        R --> S[Gateway reviews evidence]
    end

    subgraph Resolution
        S --> T{Outcome?}
        Q --> T
        T -->|Won| U[Funds returned to merchant]
        T -->|Lost| V[Customer keeps refund]
        T -->|Closed| W[Dispute withdrawn]
    end

    I --> X[End]
    M --> X
    U --> X
    V --> X
    W --> X
```

---

## Stripe Dispute Webhook Flow

### Sequence Diagram: charge.dispute.created

```mermaid
sequenceDiagram
    autonumber
    participant Customer
    participant Bank as Customer's Bank
    participant Stripe
    participant Backend as Backend Server
    participant WebhookEndpoint as /api/webhooks/stripe
    participant Handler as WebhookHandlers
    participant DB as Database
    participant Sentry

    Customer->>Bank: Disputes charge
    Bank->>Stripe: Files chargeback
    Stripe->>Stripe: Creates dispute object

    Note over Stripe,Backend: Webhook sent to backend

    Stripe->>WebhookEndpoint: POST /api/webhooks/stripe
    Note right of Stripe: Event: charge.dispute.created
    Note right of Stripe: Headers: Stripe-Signature

    WebhookEndpoint->>WebhookEndpoint: Extract raw body
    WebhookEndpoint->>WebhookEndpoint: Verify Stripe signature

    alt Signature invalid
        WebhookEndpoint-->>Stripe: 400 Bad Request
    else Signature valid
        WebhookEndpoint->>WebhookEndpoint: Parse event JSON
        WebhookEndpoint->>WebhookEndpoint: Extract dispute from data.object

        Note over WebhookEndpoint: dispute.id, dispute.payment_intent
        Note over WebhookEndpoint: dispute.amount, dispute.currency
        Note over WebhookEndpoint: dispute.reason, dispute.status
        Note over WebhookEndpoint: dispute.evidence_details.due_by

        WebhookEndpoint->>Handler: handleDisputeCreated()

        Handler->>DB: _findPaymentByIntent(paymentIntent)

        alt Payment not found
            DB-->>Handler: null
            Handler->>Sentry: error("Payment not found for dispute webhook")
            Handler-->>WebhookEndpoint: Return (no-op)
        else Payment found
            DB-->>Handler: Payment record { id, userId }

            Handler->>Handler: Parse dueBy from evidence_details
            Handler->>Handler: Parse isChargeRefundable

            Handler->>DB: db.disputes.createDispute()
            Note right of Handler: disputeId, paymentId, amount
            Note right of Handler: currency, reason, status
            Note right of Handler: dueBy, isChargeRefundable

            DB-->>Handler: Dispute created

            Handler->>Sentry: info("Dispute created: {disputeId}")
            Handler-->>WebhookEndpoint: Success
        end

        WebhookEndpoint-->>Stripe: 200 OK
    end
```

### Stripe Dispute Event Payload

```
{
  "type": "charge.dispute.created",
  "data": {
    "object": {
      "id": "dp_xxx",
      "object": "dispute",
      "amount": 10000,
      "currency": "usd",
      "payment_intent": "pi_xxx",
      "reason": "fraudulent",
      "status": "needs_response",
      "evidence": { ... },
      "evidence_details": {
        "due_by": 1705363200,
        "has_evidence": false,
        "past_due": false,
        "submission_count": 0
      },
      "is_charge_refundable": true,
      "created": 1704758400
    }
  }
}
```

---

## Razorpay Dispute Webhook Flow

### Sequence Diagram: payment.dispute.created

```mermaid
sequenceDiagram
    autonumber
    participant Customer
    participant Bank as Customer's Bank
    participant Razorpay
    participant Backend as Backend Server
    participant WebhookEndpoint as /api/webhooks/razorpay
    participant Handler as WebhookHandlers
    participant DB as Database
    participant Sentry

    Customer->>Bank: Disputes charge
    Bank->>Razorpay: Files chargeback
    Razorpay->>Razorpay: Creates dispute object

    Razorpay->>WebhookEndpoint: POST /api/webhooks/razorpay
    Note right of Razorpay: Event: payment.dispute.created
    Note right of Razorpay: Headers: X-Razorpay-Signature

    WebhookEndpoint->>WebhookEndpoint: Extract raw body
    WebhookEndpoint->>WebhookEndpoint: Verify HMAC SHA256 signature

    alt Signature invalid
        WebhookEndpoint-->>Razorpay: 400 Bad Request
    else Signature valid
        WebhookEndpoint->>WebhookEndpoint: Parse payload JSON
        WebhookEndpoint->>WebhookEndpoint: Extract dispute entity

        Note over WebhookEndpoint: payload.dispute.entity
        Note over WebhookEndpoint: id, payment_id, amount
        Note over WebhookEndpoint: reason_code, status

        WebhookEndpoint->>WebhookEndpoint: Lookup order_id from payment

        WebhookEndpoint->>Handler: handleDisputeCreated()

        Handler->>DB: _findPaymentByIntent(orderId)

        alt Payment not found
            DB-->>Handler: null
            Handler->>Sentry: error("Payment not found")
            Handler-->>WebhookEndpoint: Return
        else Payment found
            DB-->>Handler: Payment record

            Handler->>DB: db.disputes.createDispute()
            Note right of Handler: No dueBy available from Razorpay
            Note right of Handler: Must check dashboard for deadline

            DB-->>Handler: Dispute created
            Handler->>Sentry: info("Dispute created")
            Handler-->>WebhookEndpoint: Success
        end

        WebhookEndpoint-->>Razorpay: 200 OK
    end
```

### Razorpay Dispute Event Payload

```
{
  "event": "payment.dispute.created",
  "payload": {
    "dispute": {
      "entity": {
        "id": "disp_xxx",
        "payment_id": "pay_xxx",
        "amount": 100000,
        "currency": "INR",
        "amount_deducted": 100000,
        "reason_code": "chargeback",
        "status": "open",
        "phase": "chargeback",
        "created_at": 1704758400
      }
    },
    "payment": {
      "entity": {
        "id": "pay_xxx",
        "order_id": "order_xxx"
      }
    }
  }
}
```

---

## Dispute Status Updates

### Sequence Diagram: Dispute Updated

```mermaid
sequenceDiagram
    autonumber
    participant Gateway as Stripe/Razorpay
    participant WebhookEndpoint as Webhook Endpoint
    participant Handler as WebhookHandlers
    participant DB as Database

    Gateway->>WebhookEndpoint: Dispute status changed
    Note right of Gateway: Event: charge.dispute.updated (Stripe)
    Note right of Gateway: Event: payment.dispute.action_required (Razorpay)

    WebhookEndpoint->>WebhookEndpoint: Verify signature
    WebhookEndpoint->>Handler: Process dispute update

    Handler->>DB: Find dispute by disputeId

    alt Dispute found
        DB-->>Handler: Existing dispute record

        Handler->>Handler: Map new status

        Handler->>DB: Update dispute status
        Note right of Handler: status, evidence (if submitted)

        DB-->>Handler: Updated

        alt Status is terminal (WON/LOST)
            Handler->>Handler: Log final outcome
            Note right of Handler: Financial impact recorded
        end
    else Dispute not found
        Handler->>Handler: Create new dispute record
        Note right of Handler: Handles out-of-order webhooks
    end

    Handler-->>WebhookEndpoint: Success
    WebhookEndpoint-->>Gateway: 200 OK
```

---

## Status Mapping

```mermaid
flowchart LR
    subgraph Stripe Statuses
        S1[warning_needs_response]
        S2[warning_under_review]
        S3[warning_closed]
        S4[needs_response]
        S5[under_review]
        S6[charge_refunded]
        S7[won]
        S8[lost]
    end

    subgraph Internal Statuses
        I1[WARNING_NEEDS_RESPONSE]
        I2[WARNING_UNDER_REVIEW]
        I3[WARNING_CLOSED]
        I4[NEEDS_RESPONSE]
        I5[UNDER_REVIEW]
        I6[CHARGE_REFUNDED]
        I7[WON]
        I8[LOST]
    end

    S1 --> I1
    S2 --> I2
    S3 --> I3
    S4 --> I4
    S5 --> I5
    S6 --> I6
    S7 --> I7
    S8 --> I8

    subgraph Razorpay Statuses
        R1[open]
        R2[under_review]
        R3[won]
        R4[lost]
        R5[closed]
    end

    R1 --> I4
    R2 --> I5
    R3 --> I7
    R4 --> I8
    R5 --> I3
```

---

## Error Handling

### Payment Not Found

```mermaid
sequenceDiagram
    participant Gateway
    participant Handler as WebhookHandlers
    participant DB as Database
    participant Sentry

    Gateway->>Handler: handleDisputeCreated(paymentIntent: "unknown")
    Handler->>DB: _findPaymentByIntent("unknown")
    DB-->>Handler: null

    Handler->>Sentry: error("Payment not found for dispute webhook")
    Note right of Sentry: Logged with paymentIntent, disputeId

    Handler-->>Gateway: Return (webhook returns 200)
    Note right of Handler: 200 prevents retry loops
    Note right of Handler: Error is logged for investigation
```

### Duplicate Dispute Webhook

```mermaid
sequenceDiagram
    participant Gateway
    participant Handler as WebhookHandlers
    participant DB as Database

    Gateway->>Handler: handleDisputeCreated(disputeId: "dp_123")
    Handler->>DB: db.disputes.createDispute(disputeId: "dp_123")

    alt Dispute already exists
        DB-->>Handler: Unique constraint violation
        Handler->>Handler: Check if update needed
        alt Status changed
            Handler->>DB: Update dispute status
        else No change
            Handler->>Handler: Skip (idempotent)
        end
    else New dispute
        DB-->>Handler: Dispute created
    end

    Handler-->>Gateway: Success
```

---

## Evidence Submission Flow (TODO)

### Planned Implementation

```mermaid
sequenceDiagram
    autonumber
    participant Admin
    participant Backend as Backend API
    participant DisputeService
    participant Stripe
    participant DB as Database

    Admin->>Backend: POST /api/disputes/:disputeId/evidence
    Note right of Admin: { customerName, receiptUrl, ... }

    Backend->>DisputeService: submitEvidence(disputeId, evidence)

    DisputeService->>DB: Get dispute record
    DB-->>DisputeService: Dispute { disputeId, gateway }

    alt Gateway is RAZORPAY
        DisputeService-->>Backend: Error: Evidence API not available
        Backend-->>Admin: 400 Use Razorpay Dashboard
    else Gateway is STRIPE
        DisputeService->>Stripe: stripe.disputes.update()
        Note right of Stripe: evidence: { ... }, submit: true

        alt Stripe success
            Stripe-->>DisputeService: Updated dispute
            DisputeService->>DB: Update status to UNDER_REVIEW
            DisputeService->>DB: Store submitted evidence
            DisputeService-->>Backend: Success
            Backend-->>Admin: 200 Evidence submitted
        else Stripe error
            Stripe-->>DisputeService: Error
            DisputeService-->>Backend: Error
            Backend-->>Admin: 502 Gateway error
        end
    end
```

### Evidence Fields

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `customer_name` | string | Yes | Customer's full name |
| `customer_email` | string | Yes | Customer's email address |
| `service_date` | string | Recommended | When service was provided |
| `receipt` | file | Recommended | Receipt or invoice |
| `service_documentation` | file | Recommended | Proof of delivery/completion |
| `customer_communication` | file | Optional | Relevant correspondence |

---

## Dispute Monitoring

### Dashboard Checklist

Since disputes require manual intervention via gateway dashboards, the team should:

1. **Daily Check**: Review open disputes in Stripe/Razorpay dashboards
2. **Deadline Tracking**: Note evidence deadlines (dueBy)
3. **Evidence Preparation**: Gather service documentation
4. **Response Submission**: Submit evidence before deadline
5. **Outcome Monitoring**: Track final resolution

### Future: Automated Alerts (TODO)

```mermaid
flowchart TD
    A[New Dispute Created] --> B{dueBy within 48 hours?}
    B -->|Yes| C[Send urgent Slack alert]
    B -->|No| D[Send standard email alert]
    C --> E[Daily reminder until resolved]
    D --> E
    E --> F{Dispute resolved?}
    F -->|Yes| G[Send outcome summary]
    F -->|No| H{24 hours until deadline?}
    H -->|Yes| I[Send final warning]
    H -->|No| E
```

---

## Key Files

| File | Purpose |
|------|---------|
| `backend/routes/api/webhooks/stripe.dart` | Stripe webhook endpoint |
| `backend/routes/api/webhooks/razorpay.dart` | Razorpay webhook endpoint |
| `backend/lib/services/webhook_handlers.dart` | Dispute handling logic |
| `backend/lib/database/repositories/dispute_repository.dart` | Dispute database operations |
