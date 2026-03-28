import 'package:freezed_annotation/freezed_annotation.dart';

enum CareerStage {
  @JsonValue('SCHOOL_STUDENT')
  schoolStudent,
  @JsonValue('STUDENT')
  student,
  @JsonValue('EARLY_CAREER')
  earlyCareer,
  @JsonValue('MID_CAREER')
  midCareer,
  @JsonValue('SENIOR')
  senior,
  @JsonValue('EXECUTIVE')
  executive,
}
