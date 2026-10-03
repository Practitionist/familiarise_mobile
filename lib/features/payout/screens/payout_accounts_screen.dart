import 'package:flutter/material.dart';

import 'payout_screen.dart';

export 'payout_screen.dart';

/// Read-only Consultant Earnings & Payouts Wallet Summary screen.
///
/// Delegates to [PayoutScreen] so existing router entries render the
/// Companion read-only wallet summary and web payout settings link.
class PayoutAccountsScreen extends StatelessWidget {
  const PayoutAccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PayoutScreen();
  }
}
