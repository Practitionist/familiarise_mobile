import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

/// Compile-time feature flags for the read-first MVP.
///
/// Mirrors lib/core/config/feature_flags.dart in the Flutter app — keep the
/// two files in sync so gated UI never calls a 403 endpoint. Each flag has
/// a GitHub issue tracking the full implementation.
///
/// The app additionally defines `programCheckout`, which is intentionally
/// frontend-only: it gates a purchase CTA whose backend route does not
/// exist yet (webinar/class checkout requires Apple IAP — see the IAP
/// issue), so there is nothing to gate server-side.
abstract final class FeatureFlags {
  /// Razorpay/Stripe checkout, payment webhooks, refunds, disputes.
  static const payments = false;

  /// Consultant payout accounts, TDS records, and tax info editing.
  static const payouts = false;

  /// Referral codes and credits.
  static const referrals = false;

  /// Webinar/class co-host collaborations.
  static const collaborations = false;

  /// Event waitlists.
  static const waitlist = false;

  /// Staff/admin moderation, ticket triage, and verification review.
  static const staffTools = false;

  /// Enterprise wallet & billing writes (top-ups, invoices).
  static const wallet = false;
}

/// Dart Frog middleware that rejects requests when [enabled] is false.
///
/// Usage in a route group's `_middleware.dart`:
/// ```dart
/// Handler middleware(Handler handler) =>
///     handler.use(featureGate(enabled: FeatureFlags.payments));
/// ```
Middleware featureGate({required bool enabled}) {
  return (handler) {
    return (context) {
      if (!enabled) {
        return Response.json(
          statusCode: HttpStatus.forbidden,
          body: {
            'error': {
              'code': 'feature_disabled',
              'message':
                  'This feature is not available in this version of the app',
            },
          },
        );
      }
      return handler(context);
    };
  };
}
