import 'package:freezed_annotation/freezed_annotation.dart';

enum CreditSource {
  @JsonValue('REFERRAL_BONUS')
  referralBonus,
  @JsonValue('REFEREE_BONUS')
  refereeBonus,
  @JsonValue('PROMOTION')
  promotion,
  @JsonValue('COMPENSATION')
  compensation,
  @JsonValue('MANUAL')
  manual,
}
