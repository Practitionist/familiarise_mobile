import 'package:freezed_annotation/freezed_annotation.dart';

enum ReferralStatus {
  @JsonValue('SIGNED_UP')
  signedUp,
  @JsonValue('QUALIFIED')
  qualified,
  @JsonValue('REWARDED')
  rewarded,
  @JsonValue('EXPIRED')
  expired,
  @JsonValue('FRAUDULENT')
  fraudulent,
}
