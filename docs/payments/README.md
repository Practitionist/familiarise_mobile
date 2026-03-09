# Payments Documentation

This folder contains all checkout and payment documentation for the Familiarise mobile app — from checkout flows and gateway integration to post-payment operations (cancellations, refunds, disputes, payouts).

## Reading Order

```
docs/payments/
├── 01-checkout-flow-architecture.md    # Start here — frontend state machine, component architecture
├── 02-payment-processing.md           # Backend payment flow, webhooks, verification
├── 03-gateway-configuration.md        # Razorpay & Stripe setup
├── 04-testing-guide.md                # Test cards and testing strategies
│
├── cancellations/                     # Post-payment operations
│   ├── architecture.md
│   └── flow.md
├── refunds/
│   ├── api-reference.md
│   ├── architecture.md
│   └── flow.md
├── disputes/
│   ├── api-reference.md
│   ├── architecture.md
│   └── flow.md
└── payouts/
    ├── architecture.md
    └── flow.md
```

## Quick Links

| Topic | Document |
|-------|----------|
| Checkout Flow Architecture | [01-checkout-flow-architecture.md](./01-checkout-flow-architecture.md) |
| Payment Processing | [02-payment-processing.md](./02-payment-processing.md) |
| Gateway Configuration | [03-gateway-configuration.md](./03-gateway-configuration.md) |
| Testing Guide | [04-testing-guide.md](./04-testing-guide.md) |
| Cancellations | [cancellations/flow.md](./cancellations/flow.md) |
| Refunds | [refunds/flow.md](./refunds/flow.md) |
| Disputes | [disputes/flow.md](./disputes/flow.md) |
| Payouts | [payouts/flow.md](./payouts/flow.md) |

## Key Concepts

### Checkout Flows

The system supports two checkout flows:

1. **Request-then-Pay Flow**: User requests a booking -> Consultant approves -> User pays
2. **Direct Checkout Flow**: User pays directly (for plans with auto-approval)

### Payment Gateways

- **Razorpay** - Primary gateway for India (INR transactions)
- **Stripe** - International gateway (USD, EUR, GBP, etc.)

The app automatically selects the appropriate gateway based on currency.

### State Machine

```
initial -> loading -> sessionCreated -> processing -> verifying -> success/failure/cancelled
```

## Related Source Files

### Presentation Layer
- `lib/features/checkout/screens/checkout_screen.dart` - Main checkout UI
- `lib/features/checkout/screens/payment_success_screen.dart` - Success UI
- `lib/features/checkout/screens/payment_failure_screen.dart` - Failure UI
- `lib/features/checkout/widgets/` - Reusable checkout widgets

### State Management
- `lib/features/checkout/providers/checkout_flow_provider.dart` - Checkout state machine
- `lib/features/checkout/providers/stripe_service_provider.dart` - Stripe integration
- `lib/features/checkout/providers/razorpay_service_provider.dart` - Razorpay integration

### Data Layer
- `lib/data/datasources/remote/checkout_remote_source.dart` - API calls
- `lib/data/repositories/checkout_repository_impl.dart` - Repository implementation

### Domain Layer
- `lib/domain/entities/checkout/checkout_entities.dart` - Domain entities
- `lib/domain/repositories/checkout_repository.dart` - Repository interface

## Architecture Decision Records

1. **Multi-gateway support**: Selected Razorpay for Indian payments (better UPI support) and Stripe for international (wider card acceptance)
2. **Stripe Payment Sheet**: Uses native Payment Sheet for in-app experience vs hosted checkout fallback
3. **Currency-based routing**: Gateway selection based on currency prevents failed transactions
4. **Session-based checkout**: Server creates payment session to ensure data integrity
