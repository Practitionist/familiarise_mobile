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
  /// Razorpay/Stripe checkout (delegated to web in Companion Starter).
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

  /// Webinar/class purchase (delegated to web).
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
