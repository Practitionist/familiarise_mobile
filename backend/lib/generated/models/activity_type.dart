import 'package:freezed_annotation/freezed_annotation.dart';

enum ActivityType {
  @JsonValue('CONSULTATION_BOOKED')
  consultationBooked,
  @JsonValue('CONSULTATION_COMPLETED')
  consultationCompleted,
  @JsonValue('CONSULTATION_CANCELLED')
  consultationCancelled,
  @JsonValue('SUBSCRIPTION_REQUESTED')
  subscriptionRequested,
  @JsonValue('SUBSCRIPTION_APPROVED')
  subscriptionApproved,
  @JsonValue('SUBSCRIPTION_CANCELLED')
  subscriptionCancelled,
  @JsonValue('WEBINAR_REGISTERED')
  webinarRegistered,
  @JsonValue('CLASS_ENROLLED')
  classEnrolled,
  @JsonValue('TRIAL_REQUESTED')
  trialRequested,
  @JsonValue('TRIAL_SCHEDULED')
  trialScheduled,
  @JsonValue('TRIAL_COMPLETED')
  trialCompleted,
  @JsonValue('TRIAL_CONVERTED')
  trialConverted,
  @JsonValue('REVIEW_SUBMITTED')
  reviewSubmitted,
  @JsonValue('MESSAGE_RECEIVED')
  messageReceived,
}
