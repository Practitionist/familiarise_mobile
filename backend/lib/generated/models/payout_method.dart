import 'package:freezed_annotation/freezed_annotation.dart';

enum PayoutMethod {
  @JsonValue('BANK_TRANSFER')
  bankTransfer,
  @JsonValue('UPI')
  upi,
  @JsonValue('STRIPE_TRANSFER')
  stripeTransfer,
}
