import 'package:freezed_annotation/freezed_annotation.dart';

enum CancellationReason {
  @JsonValue('SCHEDULE_CONFLICT')
  scheduleConflict,
  @JsonValue('FOUND_ALTERNATIVE')
  foundAlternative,
  @JsonValue('FINANCIAL_REASONS')
  financialReasons,
  @JsonValue('PERSONAL_EMERGENCY')
  personalEmergency,
  @JsonValue('NO_LONGER_NEEDED')
  noLongerNeeded,
  @JsonValue('CONSULTANT_UNAVAILABLE')
  consultantUnavailable,
  @JsonValue('CONSULTANT_EMERGENCY')
  consultantEmergency,
  @JsonValue('PAYMENT_FAILED')
  paymentFailed,
  @JsonValue('EXPIRED')
  expired,
  @JsonValue('CONSULTANT_ISSUE')
  consultantIssue,
  @JsonValue('TECHNICAL_ISSUE')
  technicalIssue,
  @JsonValue('OTHER')
  other,
}
