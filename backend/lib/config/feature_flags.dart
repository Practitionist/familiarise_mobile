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
  /// Razorpay/Stripe checkout, payment webhooks, refunds, disputes (delegated to web).
  static const payments = false;

  /// Read-only consultant earnings & payouts wallet summary (mutations hand off to web).
  static const payouts = true;

  /// Lightweight referral code & native share-sheet card.
  static const referrals = true;

  /// Collaborator invitee inbox to view & accept/decline webinar/class invites.
  static const collaborations = true;

  /// Event waitlists (delegated to web).
  static const waitlist = false;

  /// Staff/admin backoffice moderation, ticket triage, and verification review (web-only).
  static const staffTools = false;

  /// Enterprise wallet & billing writes (top-ups, invoices — web-only).
  static const wallet = false;

  // TODO(programCheckout): add this flag when the webinar/class checkout
  //  backend route is implemented — frontend-only today (Apple IAP, #114).
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
