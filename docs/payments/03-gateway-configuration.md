# Payment Gateway Configuration

This guide covers setting up Razorpay and Stripe payment gateways for the Familiarise app.

## Prerequisites

- Access to Razorpay Dashboard (for Indian payments)
- Access to Stripe Dashboard (for international payments)
- Backend server configured with payment webhook endpoints

## Environment Variables

Add these to your `.env` file:

```env
# Razorpay
RAZORPAY_KEY_ID=rzp_test_xxxxx
RAZORPAY_KEY_SECRET=xxxx  # Backend only

# Stripe
STRIPE_PUBLISHABLE_KEY=pk_test_xxxxx
STRIPE_SECRET_KEY=sk_test_xxxxx  # Backend only
```

## Razorpay Setup

### 1. Create Razorpay Account

1. Go to [Razorpay Dashboard](https://dashboard.razorpay.com)
2. Sign up with business details
3. Complete KYC verification

### 2. Get API Keys

1. Navigate to **Settings → API Keys**
2. Generate new key pair
3. Copy **Key ID** (starts with `rzp_test_` or `rzp_live_`)
4. Copy **Key Secret** (for backend)

### 3. Configure Android

Add to `android/app/src/main/AndroidManifest.xml`:

```xml
<manifest>
    <application>
        <!-- Razorpay Activity -->
        <activity
            android:name="com.razorpay.CheckoutActivity"
            android:configChanges="keyboard|keyboardHidden|orientation|screenSize"
            android:theme="@style/Theme.AppCompat.Light.NoActionBar" />
    </application>
</manifest>
```

### 4. Configure iOS

Add to `ios/Runner/Info.plist`:

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>upi</string>
</array>
```

### 5. ProGuard Rules (Android Release)

Add to `android/app/proguard-rules.pro`:

```proguard
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keepattributes JavascriptInterface
-keepattributes *Annotation*
-dontwarn com.razorpay.**
-keep class com.razorpay.** {*;}
-optimizations !method/inlining/*
-keepclasseswithmembers class * {
  public void onPayment*(...);
}
```

## Stripe Setup

### 1. Create Stripe Account

1. Go to [Stripe Dashboard](https://dashboard.stripe.com)
2. Sign up and verify email
3. Activate account with business details

### 2. Get API Keys

1. Navigate to **Developers → API Keys**
2. Copy **Publishable key** (starts with `pk_test_` or `pk_live_`)
3. Copy **Secret key** (for backend)

### 3. Configure Android

Add to `android/app/build.gradle`:

```gradle
android {
    defaultConfig {
        minSdkVersion 21
    }
}
```

Add to `android/app/src/main/res/values/strings.xml`:

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Stripe Configuration -->
    <string name="stripe_publishable_key" translatable="false">pk_test_xxxxx</string>
</resources>
```

### 4. Configure iOS

Add to `ios/Runner/Info.plist`:

```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleTypeRole</key>
        <string>Editor</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>familiarise</string>
        </array>
    </dict>
</array>
```

### 5. Apple Pay Configuration (iOS)

1. In Xcode, enable **Apple Pay** capability
2. Add merchant ID: `merchant.com.familiarise.app`
3. Configure in Stripe Dashboard under **Settings → Payment Methods → Apple Pay**

### 6. Google Pay Configuration (Android)

1. Stripe SDK handles most configuration automatically
2. For production, register merchant in Google Pay Console
3. Update `testEnv: false` for release builds (handled automatically via `kDebugMode`)

## Backend Webhook Configuration

### Stripe Webhooks

1. Go to **Developers → Webhooks** in Stripe Dashboard
2. Add endpoint: `https://your-api.com/api/webhooks/stripe`
3. Select events:
   - `payment_intent.succeeded`
   - `payment_intent.payment_failed`
   - `checkout.session.completed`
4. Copy webhook signing secret to backend env

### Razorpay Webhooks

1. Go to **Settings → Webhooks** in Razorpay Dashboard
2. Add endpoint: `https://your-api.com/api/webhooks/razorpay`
3. Select events:
   - `payment.authorized`
   - `payment.captured`
   - `payment.failed`
4. Copy webhook secret to backend env

## Currency Support

### Razorpay Currencies

- Primary: INR
- Limited international support (requires approval)

### Stripe Currencies

Full support for 135+ currencies including:
- USD, EUR, GBP, AUD, CAD
- INR (for international cards)
- JPY, SGD, AED

## Testing Configuration

### Test Mode vs Live Mode

| Environment | Razorpay Key | Stripe Key |
|-------------|--------------|------------|
| Development | `rzp_test_*` | `pk_test_*` |
| Staging | `rzp_test_*` | `pk_test_*` |
| Production | `rzp_live_*` | `pk_live_*` |

### Automatic Test Mode

The app automatically uses test mode for Google Pay when in debug:

```dart
googlePay: PaymentSheetGooglePay(
  merchantCountryCode: merchantCountry,
  testEnv: kDebugMode, // true in debug, false in release
),
```

## Troubleshooting

### Razorpay Issues

| Issue | Solution |
|-------|----------|
| "Invalid API Key" | Check key matches environment |
| UPI not showing | Ensure LSApplicationQueriesSchemes configured |
| Payment stuck | Check network and retry |

### Stripe Issues

| Issue | Solution |
|-------|----------|
| "No such payment intent" | Session may have expired, create new |
| Apple Pay not appearing | Check merchant ID and entitlements |
| Google Pay declined | Ensure correct merchantCountryCode |
| 3DS failure | User must complete verification |

## Production Checklist

- [ ] Replace test keys with live keys
- [ ] Verify webhook endpoints are HTTPS
- [ ] Complete KYC on both platforms
- [ ] Test with real (small) payments
- [ ] Configure fraud detection rules
- [ ] Set up payment alerts
- [ ] Review refund policies
- [ ] Document support procedures
