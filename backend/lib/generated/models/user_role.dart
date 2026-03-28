import 'package:freezed_annotation/freezed_annotation.dart';

enum UserRole {
  @JsonValue('CONSULTANT')
  consultant,
  @JsonValue('CONSULTEE')
  consultee,
  @JsonValue('ADMIN')
  admin,
  @JsonValue('STAFF')
  staff,
}
