import 'package:freezed_annotation/freezed_annotation.dart';

enum AdminLevel {
  @JsonValue('SUPER_ADMIN')
  superAdmin,
  @JsonValue('ADMIN')
  admin,
  @JsonValue('MODERATOR')
  moderator,
}
