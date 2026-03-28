import 'package:freezed_annotation/freezed_annotation.dart';

enum DisputeStatus {
  @JsonValue('WARNING_NEEDS_RESPONSE')
  warningNeedsResponse,
  @JsonValue('WARNING_UNDER_REVIEW')
  warningUnderReview,
  @JsonValue('WARNING_CLOSED')
  warningClosed,
  @JsonValue('NEEDS_RESPONSE')
  needsResponse,
  @JsonValue('UNDER_REVIEW')
  underReview,
  @JsonValue('CHARGE_REFUNDED')
  chargeRefunded,
  @JsonValue('WON')
  won,
  @JsonValue('LOST')
  lost,
}
