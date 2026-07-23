/// Compile-time feature flags for the read-first MVP.
///
/// Complex write surfaces (payments, payouts, enterprise billing, …) are
/// deferred until after the schema-synced MVP ships. Each flag has a
/// corresponding GitHub issue tracking the full implementation; flip the
/// flag only when that work lands.
///
/// The backend mirrors these in backend/lib/config/feature_flags.dart —
/// keep the two files in sync so gated UI never calls a 403 endpoint.
abstract final class FeatureFlags {
  /// Razorpay/Stripe checkout. 1:1 consultations may use external payments
  /// on iOS (App Review 3.1.3(d)); webinars/classes need Apple IAP.
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

  /// Webinar/class purchase (one-to-many ⇒ Apple IAP required on iOS).
  static const programCheckout = false;

  /// Returns the human-readable feature name when [location] belongs to a
  /// gated route, or null when the route is available.
  static String? gatedRouteFeature(String location) {
    if (!payments &&
        (location.startsWith('/checkout') || location.startsWith('/payment'))) {
      return 'Payments';
    }
    if (!payouts &&
        (location.startsWith('/payout-accounts') ||
            location.startsWith('/tax-info'))) {
      return 'Payouts';
    }
    if (!referrals && location.startsWith('/referrals')) {
      return 'Referrals';
    }
    if (!collaborations && location.startsWith('/collaborations')) {
      return 'Collaborations';
    }
    if (!waitlist && location.startsWith('/waitlist')) {
      return 'Waitlist';
    }
    if (!staffTools && location.startsWith('/staff')) {
      return 'Staff tools';
    }
    return null;
  }
}
