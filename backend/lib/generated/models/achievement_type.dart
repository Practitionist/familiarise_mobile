import 'package:freezed_annotation/freezed_annotation.dart';

enum AchievementType {
  @JsonValue('AWARD')
  award,
  @JsonValue('PUBLICATION')
  publication,
  @JsonValue('PROJECT')
  project,
  @JsonValue('TALK')
  talk,
  @JsonValue('OPEN_SOURCE')
  openSource,
  @JsonValue('OTHER')
  other,
}
