/// Payment gateway types supported by the app
enum PaymentGatewayType {
  razorpay('razorpay'),
  stripe('stripe');

  final String value;
  const PaymentGatewayType(this.value);

  factory PaymentGatewayType.fromString(String value) {
    return PaymentGatewayType.values.firstWhere(
      (e) => e.value == value.toLowerCase(),
      orElse: () => PaymentGatewayType.razorpay,
    );
  }

  String get displayName {
    switch (this) {
      case PaymentGatewayType.razorpay:
        return 'Razorpay';
      case PaymentGatewayType.stripe:
        return 'Stripe';
    }
  }

  String get description {
    switch (this) {
      case PaymentGatewayType.razorpay:
        return 'UPI, Cards, Netbanking, Wallets';
      case PaymentGatewayType.stripe:
        return 'Credit/Debit Cards';
    }
  }
}

/// Payment status types
enum PaymentStatusType {
  pending('PENDING'),
  succeeded('SUCCEEDED'),
  failed('FAILED');

  final String value;
  const PaymentStatusType(this.value);

  factory PaymentStatusType.fromString(String value) {
    return PaymentStatusType.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => PaymentStatusType.pending,
    );
  }

  bool get isSuccessful => this == PaymentStatusType.succeeded;
  bool get isFailed => this == PaymentStatusType.failed;
  bool get isPending => this == PaymentStatusType.pending;
}

/// Booking source types
enum BookingSourceType {
  directCheckout('DIRECT_CHECKOUT'),
  requestSubmitted('REQUEST_SUBMITTED');

  final String value;
  const BookingSourceType(this.value);

  factory BookingSourceType.fromString(String value) {
    return BookingSourceType.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => BookingSourceType.requestSubmitted,
    );
  }

  bool get isDirectCheckout => this == BookingSourceType.directCheckout;
}
