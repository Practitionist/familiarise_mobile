import 'package:freezed_annotation/freezed_annotation.dart';

enum ClassCollaboratorRole {
  @JsonValue('CO_INSTRUCTOR')
  coInstructor,
  @JsonValue('TEACHING_ASSISTANT')
  teachingAssistant,
  @JsonValue('GUEST_LECTURER')
  guestLecturer,
  @JsonValue('CONTENT_CREATOR')
  contentCreator,
}
