# Refund Flows

## Overview

This document details the refund processing flows for both Stripe and Razorpay gateways. Currently, refunds are initiated manually through gateway dashboards and processed via webhooks.

---

## End-to-End Refund Lifecycle

```mermaid
flowchart TD
    subgraph Initiation
        A[Payment Completed] --> B{Refund Needed?}
        B -->|Yes| C[Admin opens gateway dashboard]
        C --> D[Admin initiates refund]
    end

    subgraph Processing
        D --> E[Gateway processes refund]
        E --> F[Gateway sends webhook]
    end

    subgraph Backend
        F --> G[Webhook endpoint receives event]
        G --> H[Verify signature]
        H --> I{Signature valid?}
        I -->|No| J[Reject request]
        I -->|Yes| K[WebhookHandlers.handleRefundProcessed]
        K --> L[Find Payment by paymentIntent]
        L --> M{Payment found?}
        M -->|No| N[Log error, return]
        M -->|Yes| O[Create/update Refund record]
    end

    subgraph Completion
        O --> P[Refund record saved]
        P --> Q[User can view refund status]
        Q --> R[TODO: Send notification]
    end

    J --> S[End]
    N --> S
    R --> S
```

---

## Stripe Refund Webhook Flow

### Sequence Diagram

```mermaid
sequenceDiagram
    autonumber
    participant Stripe
    participant Backend as Backend Server
    participant WebhookEndpoint as /api/webhooks/stripe
    participant Handler as WebhookHandlers
    participant DB as Database

    Note over Stripe,Backend: Admin initiates refund in Stripe Dashboard

    Stripe->>WebhookEndpoint: POST /api/webhooks/stripe
    Note right of Stripe: Event: charge.refunded
    Note right of Stripe: Headers: Stripe-Signature

    WebhookEndpoint->>WebhookEndpoint: Extract raw body
    WebhookEndpoint->>WebhookEndpoint: Verify Stripe signature

    alt Signature invalid
        WebhookEndpoint-->>Stripe: 400 Bad Request
    else Signature valid
        WebhookEndpoint->>WebhookEndpoint: Parse event JSON
        WebhookEndpoint->>WebhookEndpoint: Extract refund data from charge.refunds

        loop For each refund in charge.refunds.data
            WebhookEndpoint->>Handler: handleRefundProcessed()
            Note right of WebhookEndpoint: refundId, paymentIntent, amount, currency, status

            Handler->>DB: _findPaymentByIntent(paymentIntent)

            alt Payment not found
                DB-->>Handler: null
                Handler->>Handler: SentryLogger.error()
                Handler-->>WebhookEndpoint: Return (no-op)
            else Payment found
                DB-->>Handler: Payment record
                Handler->>Handler: _mapRefundStatus(status)
                Note right of Handler: succeeded → SUCCEEDED
                Note right of Handler: pending → PENDING
                Note right of Handler: failed → FAILED

                Handler->>DB: db.refunds.createRefund()
                Note right of Handler: refundId, paymentId, amount, currency, status, gateway

                DB-->>Handler: Refund created
                Handler->>Handler: SentryLogger.info()
                Handler-->>WebhookEndpoint: Success
            end
        end

        WebhookEndpoint-->>Stripe: 200 OK
    end
```

### Stripe Event Payload Structure

```
{
  "type": "charge.refunded",
  "data": {
    "object": {
      "id": "ch_xxx",
      "payment_intent": "pi_xxx",
      "refunds": {
        "data": [
          {
            "id": "re_xxx",
            "amount": 5000,
            "currency": "usd",
            "status": "succeeded",
            "reason": "requested_by_customer"
          }
        ]
      }
    }
  }
}
```

---

## Razorpay Refund Webhook Flow

### Sequence Diagram

```mermaid
sequenceDiagram
    autonumber
    participant Razorpay
    participant Backend as Backend Server
    participant WebhookEndpoint as /api/webhooks/razorpay
    participant Handler as WebhookHandlers
    participant DB as Database

    Note over Razorpay,Backend: Admin initiates refund in Razorpay Dashboard

    Razorpay->>WebhookEndpoint: POST /api/webhooks/razorpay
    Note right of Razorpay: Event: refund.processed
    Note right of Razorpay: Headers: X-Razorpay-Signature

    WebhookEndpoint->>WebhookEndpoint: Extract raw body
    WebhookEndpoint->>WebhookEndpoint: Verify Razorpay signature (HMAC SHA256)

    alt Signature invalid
        WebhookEndpoint-->>Razorpay: 400 Bad Request
    else Signature valid
        WebhookEndpoint->>WebhookEndpoint: Parse payload JSON
        WebhookEndpoint->>WebhookEndpoint: Determine event type

        alt Event: refund.processed or refund.created
            WebhookEndpoint->>WebhookEndpoint: Extract refund entity
            Note right of WebhookEndpoint: entity.id, entity.payment_id, entity.amount

            WebhookEndpoint->>Handler: handleRefundProcessed()
            Note right of WebhookEndpoint: refundId, orderId, amount, currency, status

            Handler->>DB: _findPaymentByIntent(orderId)

            alt Payment not found
                DB-->>Handler: null
                Handler->>Handler: SentryLogger.error()
                Handler-->>WebhookEndpoint: Return (no-op)
            else Payment found
                DB-->>Handler: Payment record
                Handler->>Handler: _mapRefundStatus(status)
                Note right of Handler: processed → SUCCEEDED
                Note right of Handler: pending → PENDING
                Note right of Handler: failed → FAILED

                Handler->>DB: db.refunds.createRefund()
                DB-->>Handler: Refund created
                Handler->>Handler: SentryLogger.info()
                Handler-->>WebhookEndpoint: Success
            end
        end

        WebhookEndpoint-->>Razorpay: 200 OK
    end
```

### Razorpay Event Payload Structure

```
{
  "event": "refund.processed",
  "payload": {
    "refund": {
      "entity": {
        "id": "rfnd_xxx",
        "payment_id": "pay_xxx",
        "amount": 50000,
        "currency": "INR",
        "status": "processed",
        "notes": {}
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

## Status Mapping Logic

```mermaid
flowchart LR
    subgraph Stripe
        S1[succeeded] --> M1[SUCCEEDED]
        S2[pending] --> M2[PENDING]
        S3[failed] --> M3[FAILED]
        S4[canceled] --> M4[CANCELLED]
    end

    subgraph Razorpay
        R1[processed] --> M1
        R2[pending] --> M2
        R3[failed] --> M3
    end

    subgraph Internal
        M1[SUCCEEDED]
        M2[PENDING]
        M3[FAILED]
        M4[CANCELLED]
    end
```

### Mapping Function (Pseudo-code)

```
_mapRefundStatus(gatewayStatus):
  switch gatewayStatus.toLowerCase():
    case 'succeeded':
    case 'processed':
      return 'SUCCEEDED'
    case 'pending':
      return 'PENDING'
    case 'failed':
      return 'FAILED'
    case 'cancelled':
    case 'canceled':
      return 'CANCELLED'
    default:
      return 'PENDING'  // Safe default
```

---

## Error Handling

### Scenario: Payment Not Found

```mermaid
sequenceDiagram
    participant Gateway
    participant Handler as WebhookHandlers
    participant DB as Database
    participant Sentry

    Gateway->>Handler: handleRefundProcessed(paymentIntent: "pi_unknown")
    Handler->>DB: _findPaymentByIntent("pi_unknown")
    DB-->>Handler: null

    Handler->>Sentry: error("Payment not found for refund webhook")
    Note right of Sentry: Logged with paymentIntent

    Handler-->>Gateway: Return (no exception)
    Note right of Handler: Webhook returns 200 to prevent retries
```

### Scenario: Duplicate Refund Webhook

```mermaid
sequenceDiagram
    participant Gateway
    participant Handler as WebhookHandlers
    participant DB as Database

    Gateway->>Handler: handleRefundProcessed(refundId: "re_123")
    Handler->>DB: db.refunds.createRefund(refundId: "re_123")

    alt Refund already exists (unique constraint)
        DB-->>Handler: Conflict/Skip
        Note right of Handler: Idempotent - no duplicate created
    else New refund
        DB-->>Handler: Refund created
    end

    Handler-->>Gateway: Success
```

---

## Future Implementation: Programmatic Refunds

### Planned Flow (TODO)

```mermaid
sequenceDiagram
    autonumber
    participant User
    participant Backend as Backend API
    participant RefundService
    participant Gateway as Payment Gateway
    participant DB as Database

    User->>Backend: POST /api/refunds
    Note right of User: { paymentId, amount, reason }

    Backend->>RefundService: initiateRefund()

    RefundService->>DB: Validate payment exists
    DB-->>RefundService: Payment record

    RefundService->>RefundService: Validate refund amount
    Note right of RefundService: amount <= (payment.amount - totalRefunded)

    RefundService->>DB: Create PENDING refund record
    Note right of RefundService: Pre-claim the refund amount

    RefundService->>Gateway: Create refund via API
    Note right of Gateway: Stripe: stripe.refunds.create()
    Note right of Gateway: Razorpay: razorpay.refunds.create()

    alt Gateway success
        Gateway-->>RefundService: Refund object
        RefundService->>DB: Update refund with gateway ID
        RefundService-->>Backend: Success
        Backend-->>User: 201 Created
    else Gateway failure
        Gateway-->>RefundService: Error
        RefundService->>DB: Update refund status to FAILED
        RefundService-->>Backend: Failure
        Backend-->>User: 400 Bad Request
    end
```

---

## Key Files

| File | Purpose |
|------|---------|
| `backend/routes/api/webhooks/stripe.dart` | Stripe webhook endpoint |
| `backend/routes/api/webhooks/razorpay.dart` | Razorpay webhook endpoint |
| `backend/lib/services/webhook_handlers.dart` | Shared webhook processing logic |
| `backend/lib/database/repositories/refund_repository.dart` | Refund database operations |
