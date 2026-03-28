import 'package:freezed_annotation/freezed_annotation.dart';

enum PayoutAccountType {
  @JsonValue('BANK_ACCOUNT')
  bankAccount,
  @JsonValue('UPI')
  upi,
  @JsonValue('STRIPE_CONNECT')
  stripeConnect,
}
