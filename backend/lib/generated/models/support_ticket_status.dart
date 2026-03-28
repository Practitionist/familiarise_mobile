import 'package:freezed_annotation/freezed_annotation.dart';

enum SupportTicketStatus {
  @JsonValue('OPEN')
  open,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('ON_HOLD')
  onHold,
  @JsonValue('RESOLVED')
  resolved,
  @JsonValue('CLOSED')
  closed,
}
