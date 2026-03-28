import 'package:freezed_annotation/freezed_annotation.dart';

enum PlanDuration {
  @JsonValue('ONE_MONTH')
  oneMonth,
  @JsonValue('THREE_MONTHS')
  threeMonths,
  @JsonValue('SIX_MONTHS')
  sixMonths,
  @JsonValue('TWELVE_MONTHS')
  twelveMonths,
}
