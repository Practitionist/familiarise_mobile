import 'package:familiarise_mobile/core/config/feature_flags.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FeatureFlags (Companion Starter Architecture)', () {
    test('enables Companion Starter read/lightweight flags', () {
      expect(FeatureFlags.payouts, isTrue);
      expect(FeatureFlags.referrals, isTrue);
      expect(FeatureFlags.collaborations, isTrue);
    });

    test('keeps high-contention checkout and web-only flags disabled', () {
      expect(FeatureFlags.payments, isFalse);
      expect(FeatureFlags.programCheckout, isFalse);
      expect(FeatureFlags.wallet, isFalse);
      expect(FeatureFlags.waitlist, isFalse);
      expect(FeatureFlags.staffTools, isFalse);
    });

    group('gatedRouteFeature', () {
      test('allows Companion Starter routes when flags are enabled', () {
        expect(FeatureFlags.gatedRouteFeature('/payouts'), isNull);
        expect(FeatureFlags.gatedRouteFeature('/payout-accounts'), isNull);
        expect(FeatureFlags.gatedRouteFeature('/tax-info'), isNull);
        expect(FeatureFlags.gatedRouteFeature('/referrals'), isNull);
        expect(FeatureFlags.gatedRouteFeature('/collaborations'), isNull);
        expect(FeatureFlags.gatedRouteFeature('/dashboard'), isNull);
        expect(FeatureFlags.gatedRouteFeature('/explore'), isNull);
      });

      test('keeps payout mutation routes gated to web handoff', () {
        expect(FeatureFlags.payoutMutations, isFalse);
        expect(
          FeatureFlags.gatedRouteFeature('/payout-accounts/add'),
          'Payouts',
        );
      });

      test('gates checkout and payment routes behind Payments', () {
        expect(FeatureFlags.gatedRouteFeature('/checkout'), 'Payments');
        expect(FeatureFlags.gatedRouteFeature('/checkout/direct'), 'Payments');
        expect(FeatureFlags.gatedRouteFeature('/payment/success'), 'Payments');
        expect(FeatureFlags.gatedRouteFeature('/payment/failure'), 'Payments');
      });

      test('gates waitlist and staff backoffice routes', () {
        expect(FeatureFlags.gatedRouteFeature('/waitlist'), 'Waitlist');
        expect(FeatureFlags.gatedRouteFeature('/staff'), 'Staff tools');
        expect(FeatureFlags.gatedRouteFeature('/staff/tickets'), 'Staff tools');
        expect(
          FeatureFlags.gatedRouteFeature('/staff/verifications'),
          'Staff tools',
        );
      });
    });
  });
}
