import 'package:freezed_annotation/freezed_annotation.dart';

enum EarningRole {
  @JsonValue('OWNER')
  owner,
  @JsonValue('COLLABORATOR')
  collaborator,
}
