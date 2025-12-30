# Payment Testing Guide

This guide covers testing payment flows in development and staging environments.

## Test Credentials

### Razorpay Test Cards

| Scenario | Card Number | CVV | Expiry |
|----------|-------------|-----|--------|
| Success | 4111 1111 1111 1111 | Any 3 digits | Any future date |
| Decline | 4000 0000 0000 0002 | Any 3 digits | Any future date |
| 3DS Required | 4000 0000 0000 3220 | Any 3 digits | Any future date |

### Razorpay Test UPI

| Scenario | UPI ID |
|----------|--------|
| Success | success@razorpay |
| Failure | failure@razorpay |

### Razorpay Test Net Banking

Any bank can be selected - transactions auto-succeed/fail based on test mode.

### Stripe Test Cards

| Scenario | Card Number | CVV | Expiry |
|----------|-------------|-----|--------|
| Success | 4242 4242 4242 4242 | Any 3 digits | Any future date |
| Decline | 4000 0000 0000 0002 | Any 3 digits | Any future date |
| 3DS Required | 4000 0027 6000 3184 | Any 3 digits | Any future date |
| Insufficient Funds | 4000 0000 0000 9995 | Any 3 digits | Any future date |
| Expired Card | 4000 0000 0000 0069 | Any 3 digits | Any future date |
| Processing Error | 4000 0000 0000 0119 | Any 3 digits | Any future date |

### Stripe International Cards

| Country | Card Number |
|---------|-------------|
| US | 4242 4242 4242 4242 |
| UK | 4000 0082 6000 0000 |
| Germany | 4000 0027 6000 0000 |
| India | 4000 0035 6000 0008 |
| Australia | 4000 0003 6000 0006 |

## Testing Flows

### Test 1: Successful Payment (Razorpay)

1. Create a booking for INR currency
2. Open checkout screen
3. Verify Razorpay is auto-selected
4. Enter test card: `4111 1111 1111 1111`
5. Complete payment
6. Verify redirect to success screen
7. Check booking status is `SCHEDULED`

### Test 2: Successful Payment (Stripe)

1. Create a booking for USD currency
2. Open checkout screen
3. Verify Stripe is auto-selected
4. Enter test card: `4242 4242 4242 4242`
5. Complete Payment Sheet
6. Verify redirect to success screen
7. Check booking status is `SCHEDULED`

### Test 3: Failed Payment

1. Open checkout for any booking
2. Use decline card: `4000 0000 0000 0002`
3. Verify failure screen appears
4. Verify "Try Again" option works
5. Complete with success card
6. Verify booking confirmed

### Test 4: 3DS Verification

1. Open checkout
2. Use 3DS card: `4000 0000 0000 3220` (Razorpay) or `4000 0027 6000 3184` (Stripe)
3. Complete 3DS verification popup
4. Verify payment succeeds

### Test 5: Payment Cancellation

1. Open checkout
2. Start payment process
3. Cancel/dismiss payment sheet
4. Verify return to checkout screen
5. Verify "Payment cancelled" message
6. Verify can retry payment

### Test 6: Discount Code

1. Open checkout
2. Enter valid discount code
3. Verify price updates
4. Complete payment with discounted price
5. Verify booking shows correct amount

### Test 7: Invalid Discount Code

1. Open checkout
2. Enter invalid code (e.g., "INVALID123")
3. Verify error message appears
4. Verify can still complete payment at full price

### Test 8: Gateway Switching

1. Open checkout
2. Select Razorpay
3. Switch to Stripe
4. Verify session resets (no stale data)
5. Complete payment with Stripe
6. Verify success

### Test 9: Direct Checkout Flow

1. Go to consultant profile
2. Select available slot
3. Choose direct checkout option
4. Verify checkout opens with slot details
5. Complete payment
6. Verify booking created and scheduled

### Test 10: Network Error Recovery

1. Open checkout
2. Enable airplane mode
3. Attempt payment
4. Verify network error message
5. Disable airplane mode
6. Retry payment
7. Verify success

## Debugging

### Enable Debug Logging

```dart
// In checkout_flow_provider.dart
debugPrint('Checkout state: $state');
debugPrint('Session: ${_currentSession?.toJson()}');
```

### Check Stripe Logs

1. Go to Stripe Dashboard → Developers → Logs
2. Filter by payment intent ID
3. Review request/response details

### Check Razorpay Logs

1. Go to Razorpay Dashboard → Transactions
2. Filter by order ID
3. Review payment details and errors

## Common Test Scenarios

### Scenario: Amount Mismatch

**Symptom**: Payment fails with "amount mismatch"

**Cause**: Client showing different amount than server session

**Test**: 
1. Apply discount
2. Change gateway
3. Verify session recreated with correct amount

### Scenario: Session Expired

**Symptom**: "Session expired" or "Invalid session"

**Cause**: Payment session has time limit (usually 30 mins)

**Test**:
1. Create checkout session
2. Wait > 30 minutes
3. Attempt payment
4. Verify new session created automatically

### Scenario: Currency Mismatch

**Symptom**: Razorpay fails for USD booking

**Cause**: Wrong gateway for currency

**Test**:
1. Create USD booking
2. Force Razorpay selection (if possible)
3. Verify error or fallback to Stripe

## Automated Testing

### Unit Tests

```dart
// test/features/checkout/providers/checkout_flow_provider_test.dart

test('should select Razorpay for INR', () {
  final gateway = selectGatewayForCurrency('INR');
  expect(gateway, PaymentGatewayType.razorpay);
});

test('should select Stripe for USD', () {
  final gateway = selectGatewayForCurrency('USD');
  expect(gateway, PaymentGatewayType.stripe);
});

test('should calculate discount correctly', () {
  final discount = DiscountInfo(
    code: 'TEST10',
    isValid: true,
    discountType: DiscountType.percentage,
    discountPercentage: 10,
  );
  
  expect(discount.calculateDiscount(1000), 100);
});
```

### Integration Tests

```dart
// integration_test/checkout_test.dart

testWidgets('complete checkout flow', (tester) async {
  // Navigate to checkout
  await tester.pumpWidget(app);
  await tester.tap(find.text('Checkout'));
  await tester.pumpAndSettle();
  
  // Verify screen elements
  expect(find.text('Price Summary'), findsOneWidget);
  expect(find.text('Payment Method'), findsOneWidget);
  
  // Note: Actual payment testing requires mocking
});
```

## Checklist Before Production

- [ ] All test card scenarios pass
- [ ] 3DS verification works on both platforms
- [ ] Discount codes apply correctly
- [ ] Network errors handled gracefully
- [ ] Session refresh works
- [ ] Both checkout flows complete successfully
- [ ] Payment verification with backend works
- [ ] Webhook events processed correctly
- [ ] Success/failure screens display correctly
- [ ] Booking status updates after payment
