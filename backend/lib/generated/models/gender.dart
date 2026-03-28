import 'package:freezed_annotation/freezed_annotation.dart';

enum Gender {
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female,
  @JsonValue('NON_BINARY')
  nonBinary,
  @JsonValue('PREFER_NOT_TO_SAY')
  preferNotToSay,
}
