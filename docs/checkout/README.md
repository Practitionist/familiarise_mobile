# Checkout & Payments Documentation

This folder contains comprehensive documentation for the checkout and payment system in the Familiarise mobile app.

## Reading Order

Read the docs in this order for the best understanding:

```
docs/checkout/
├── 01-architecture/           # Start here - understand the system
│   └── 01-checkout-flow-architecture.md
│
├── 02-setup/                  # Then configure payment gateways
│   └── 01-payment-gateway-configuration.md
│
└── 03-testing/                # Reference for testing payments
    └── 01-payment-testing-guide.md
```

## Quick Links

| Topic | Document |
|-------|----------|
| System Overview | [Checkout Flow Architecture](./01-architecture/01-checkout-flow-architecture.md) |
| Gateway Setup | [Payment Gateway Configuration](./02-setup/01-payment-gateway-configuration.md) |
| Testing Guide | [Payment Testing Guide](./03-testing/01-payment-testing-guide.md) |

## Key Concepts

### Checkout Flows

The system supports two checkout flows:

1. **Request-then-Pay Flow**: User requests a booking → Consultant approves → User pays
2. **Direct Checkout Flow**: User pays directly (for plans with auto-approval)

### Payment Gateways

- **Razorpay** - Primary gateway for India (INR transactions)
- **Stripe** - International gateway (USD, EUR, GBP, etc.)

The app automatically selects the appropriate gateway based on currency.

### State Machine

```
initial → loading → sessionCreated → processing → verifying → success/failure/cancelled
```

## Related Files

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
