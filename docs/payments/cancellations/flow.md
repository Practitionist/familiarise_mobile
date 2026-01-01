# Cancellation Flows

## Overview

This document details the cancellation flows for both unpaid and paid bookings, including the current manual refund process and planned automatic refund implementation.

---

## End-to-End Cancellation Flow

```mermaid
flowchart TD
    subgraph Mobile App
        A[User views booking]
        B{Can cancel?}
        C[Show cancel button]
        D[Hide cancel button]
        E[User taps cancel]
        F[Show cancellation dialog]
        G[User enters reason]
        H[User confirms]
    end

    subgraph Backend
        I[POST /api/appointments/:id/cancel]
        J[Verify authentication]
        K{User owns booking?}
        L[403 Forbidden]
        M[Update status to CANCELLED]
        N[Return success]
    end

    subgraph Post-Cancellation
        O{Was booking paid?}
        P[Done - No refund needed]
        Q[Admin reviews]
        R[Initiate refund in gateway]
        S[Webhook creates refund record]
        T[User sees refund in history]
    end

    A --> B
    B -->|Yes| C --> E --> F --> G --> H --> I
    B -->|No| D
    I --> J --> K
    K -->|No| L
    K -->|Yes| M --> N --> O
    O -->|No| P
    O -->|Yes| Q --> R --> S --> T
```

---

## User Cancellation Flow (Current Implementation)

### Sequence Diagram

```mermaid
sequenceDiagram
    autonumber
    participant User
    participant App as Mobile App
    participant Dialog as Cancel Dialog
    participant Provider as BookingActionsProvider
    participant API as Backend API
    participant DB as Database
    participant Sentry

    User->>App: Tap "Cancel Booking"

    App->>App: Check booking.canCancelNow

    alt Cannot cancel
        App-->>User: Show error message
        Note right of App: "Booking cannot be cancelled"
    else Can cancel
        App->>Dialog: Show cancellation dialog

        Dialog->>Dialog: Display refund message
        Note right of Dialog: "Refund within 5-7 days" (if paid)

        User->>Dialog: Enter reason (optional)
        User->>Dialog: Tap "Confirm Cancellation"

        Dialog->>Provider: cancelBooking(id, type, reason)

        Provider->>API: POST /api/appointments/:id/cancel
        Note right of Provider: Query: ?type=CONSULTATION
        Note right of Provider: Body: { reason: "..." }

        API->>API: getUserIdFromToken(context)

        alt Unauthorized
            API-->>Provider: 401 Unauthorized
            Provider-->>Dialog: Error
            Dialog-->>User: "Please log in"
        else Authorized
            API->>DB: Get booking by ID
            DB-->>API: Booking { userId, requestStatus }

            API->>API: Verify ownership

            alt Not owner
                API-->>Provider: 403 Forbidden
                Provider-->>Dialog: Error
                Dialog-->>User: "Access denied"
            else Owner
                API->>DB: appointmentRepository.cancelBooking()
                Note right of DB: Update requestStatus = 'CANCELLED'

                DB-->>API: Success

                API->>Sentry: info("Booking cancelled")
                API-->>Provider: 200 OK

                Provider->>Provider: Update local state

                Provider-->>Dialog: Success
                Dialog-->>User: "Booking cancelled"
                Dialog->>App: Navigate to bookings list
            end
        end
    end
```

---

## Mobile App Cancellation Dialog

### Dialog Flow

```mermaid
flowchart TD
    subgraph Dialog
        A[Title: Cancel Booking]
        B[Booking details summary]
        C{Booking paid?}
        D[Refund message]
        E[Reason text field]
        F[Cancel button]
        G[Confirm button]
    end

    A --> B --> C
    C -->|Yes| D --> E
    C -->|No| E
    E --> F
    E --> G

    G --> H{Confirmed?}
    H -->|Yes| I[Call API]
    H -->|No| J[Close dialog]
```

### Dialog UI (Pseudo-code)

```dart
CancelDialog(booking):
  Column(
    Header("Cancel Booking"),

    // Booking summary
    Text("Consultant: ${booking.consultantName}"),
    Text("Date: ${booking.scheduledAt}"),

    // Refund notice (if paid)
    if (booking.isPaid):
      InfoCard(
        icon: Icons.info,
        text: "Refund will be processed within 5-7 business days"
      ),

    // Reason input
    TextField(
      label: "Reason for cancellation (optional)",
      maxLines: 3,
      onChanged: (value) => reason = value
    ),

    // Actions
    Row(
      TextButton("Cancel", onPressed: close),
      ElevatedButton(
        "Confirm Cancellation",
        style: dangerStyle,
        onPressed: () => confirmCancellation(reason)
      )
    )
  )
```

---

## Backend Cancellation Logic

### Current Implementation

```mermaid
sequenceDiagram
    participant Route as Cancel Route
    participant Auth as Auth Utils
    participant Repo as AppointmentRepository
    participant DB as Database

    Route->>Auth: getUserIdFromToken(context)
    Auth-->>Route: userId

    Route->>Route: Parse query params
    Note right of Route: type: CONSULTATION | SUBSCRIPTION

    Route->>Route: Parse body
    Note right of Route: reason: optional string

    Route->>Repo: cancelBooking(bookingId, type, userId)

    Repo->>DB: Get consultee profile by userId
    DB-->>Repo: ConsulteeProfile { id }

    Repo->>DB: Get booking by ID
    DB-->>Repo: Booking { requesterId }

    Repo->>Repo: Verify requester ownership

    alt Not owner
        Repo-->>Route: throw UnauthorizedException
    else Owner
        Repo->>DB: Update booking
        Note right of DB: requestStatus = 'CANCELLED'
        Note right of DB: updatedAt = now()

        DB-->>Repo: Success
        Repo-->>Route: void
    end

    Route-->>Route: Return 200 OK
```

### What's NOT Saved (Current Limitation)

```mermaid
flowchart LR
    subgraph Collected
        A[cancellationReason]
        B[cancellationNotes]
    end

    subgraph Saved
        C[requestStatus = CANCELLED]
        D[updatedAt = now]
    end

    subgraph Not Saved
        E[cancellationReason]
        F[cancellationNotes]
        G[cancelledAt]
        H[cancelledBy]
    end

    A --> E
    B --> F

    style E fill:#fbb
    style F fill:#fbb
    style G fill:#fbb
    style H fill:#fbb
```

---

## Full Cancellation with Refund Flow

### Current Manual Process

```mermaid
flowchart TD
    subgraph User Action
        A[User cancels booking]
    end

    subgraph Backend
        B[Status → CANCELLED]
    end

    subgraph Manual Admin Process
        C[Admin notified of cancellation]
        D[Admin opens payment gateway dashboard]
        E[Admin locates payment]
        F[Admin initiates refund]
    end

    subgraph Automated Webhook
        G[Gateway sends refund webhook]
        H[Backend creates Refund record]
    end

    subgraph User Visibility
        I[User checks payment history]
        J[User sees refund record]
    end

    A --> B --> C --> D --> E --> F --> G --> H --> I --> J

    style C fill:#fbb,stroke:#333
    style D fill:#fbb,stroke:#333
    style E fill:#fbb,stroke:#333
    style F fill:#fbb,stroke:#333
```

### Planned Automatic Process (TODO)

```mermaid
sequenceDiagram
    autonumber
    participant User
    participant Backend
    participant Policy as RefundPolicyService
    participant Payment as PaymentService
    participant Gateway
    participant DB

    User->>Backend: Cancel booking

    Backend->>DB: Update status to CANCELLED
    Backend->>DB: Get associated payment
    DB-->>Backend: Payment { id, gateway, amount }

    Backend->>Policy: checkRefundEligibility(booking, payment)

    Policy->>Policy: Check cancellation window
    Policy->>Policy: Calculate refund amount

    alt Full refund eligible
        Policy-->>Backend: { eligible: true, amount: 100% }
    else Partial refund
        Policy-->>Backend: { eligible: true, amount: 50% }
    else No refund
        Policy-->>Backend: { eligible: false }
        Backend-->>User: Cancelled (no refund)
    end

    alt Refund eligible
        Backend->>Payment: initiateRefund(payment, amount)

        Payment->>DB: Create PENDING refund record
        DB-->>Payment: Refund record created

        Payment->>Gateway: Create refund via API

        alt Gateway success
            Gateway-->>Payment: Refund object
            Payment->>DB: Update refund with gateway ID
            Payment-->>Backend: Refund initiated
        else Gateway failure
            Gateway-->>Payment: Error
            Payment->>DB: Update refund status to FAILED
            Payment-->>Backend: Refund failed (manual required)
        end
    end

    Backend-->>User: Cancellation confirmed
```

---

## Cancellation Policy Rules (Planned)

### Policy Decision Matrix

```mermaid
flowchart TD
    A[Cancellation Request] --> B{Hours until session?}

    B -->|> 48 hours| C[100% refund]
    B -->|24-48 hours| D[50% refund]
    B -->|< 24 hours| E[No refund]
    B -->|After session start| F[No refund]

    C --> G[Auto-refund]
    D --> H[Auto-refund with deduction]
    E --> I[Manual review option]
    F --> J[Rejected]
```

### Policy Configuration (Planned)

```dart
class RefundPolicy {
  // Full refund window
  static const fullRefundHours = 48;

  // Partial refund window
  static const partialRefundHours = 24;
  static const partialRefundPercent = 50;

  // No refund after session starts
  static const noRefundAfterStart = true;

  RefundDecision evaluate(Booking booking) {
    final hoursUntil = booking.scheduledAt.difference(DateTime.now()).inHours;

    if (hoursUntil > fullRefundHours) {
      return RefundDecision.full();
    } else if (hoursUntil > partialRefundHours) {
      return RefundDecision.partial(partialRefundPercent);
    } else {
      return RefundDecision.none();
    }
  }
}
```

---

## Error Handling

### Common Error Scenarios

```mermaid
flowchart TD
    A[Cancel Request] --> B{Error Type?}

    B -->|401 Unauthorized| C[Session expired]
    B -->|403 Forbidden| D[Not booking owner]
    B -->|404 Not Found| E[Booking doesn't exist]
    B -->|409 Conflict| F[Already cancelled]
    B -->|500 Server Error| G[Database issue]

    C --> H[Redirect to login]
    D --> I[Show access denied]
    E --> J[Show not found]
    F --> K[Refresh booking state]
    G --> L[Show retry option]
```

### Mobile App Error Handling

```dart
Future<void> cancelBooking() async {
  try {
    await repository.cancelBooking(booking.id, booking.type);
    // Success
  } on UnauthorizedException {
    // Navigate to login
  } on ForbiddenException {
    showError("You don't have permission to cancel this booking");
  } on NotFoundException {
    showError("Booking not found");
  } on ConflictException {
    showError("Booking is already cancelled");
    refreshBooking();
  } catch (e) {
    showError("Failed to cancel booking. Please try again.");
  }
}
```

---

## Business Rules Summary

| Rule | Current | Enforced By |
|------|---------|-------------|
| 24-hour minimum notice | Yes | Frontend only |
| Only owner can cancel | Yes | Backend |
| Refund for paid bookings | Manual | Admin dashboard |
| Cancellation reason required | No | Optional field |
| Session-in-progress protection | No | Not implemented |

---

## Key Files

| File | Purpose |
|------|---------|
| `backend/routes/api/appointments/[id]/cancel.dart` | Cancel endpoint |
| `backend/lib/database/repositories/appointment_repository.dart` | `cancelBooking()` method |
| `lib/features/booking/widgets/cancel_dialog.dart` | Cancellation UI |
| `lib/features/booking/providers/booking_actions_provider.dart` | Cancellation state management |
| `lib/data/datasources/remote/booking_remote_source.dart` | API client |
| `lib/domain/entities/booking/booking.dart` | `canCancel` and `canCancelNow` properties |
