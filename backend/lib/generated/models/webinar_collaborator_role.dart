import 'package:freezed_annotation/freezed_annotation.dart';

enum WebinarCollaboratorRole {
  @JsonValue('CO_HOST')
  coHost,
  @JsonValue('MODERATOR')
  moderator,
  @JsonValue('GUEST_SPEAKER')
  guestSpeaker,
  @JsonValue('TECHNICAL_SUPPORT')
  technicalSupport,
}
