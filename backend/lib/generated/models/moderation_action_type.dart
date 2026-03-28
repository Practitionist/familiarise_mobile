import 'package:freezed_annotation/freezed_annotation.dart';

enum ModerationActionType {
  @JsonValue('WARNING_ISSUED')
  warningIssued,
  @JsonValue('CONTENT_REMOVED')
  contentRemoved,
  @JsonValue('USER_SUSPENDED')
  userSuspended,
  @JsonValue('USER_BANNED')
  userBanned,
  @JsonValue('PROFILE_UNVERIFIED')
  profileUnverified,
  @JsonValue('NO_ACTION')
  noAction,
}
