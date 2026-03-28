import 'package:freezed_annotation/freezed_annotation.dart';

enum DocumentUploadRole {
  @JsonValue('CONSULTEE')
  consultee,
  @JsonValue('CONSULTANT')
  consultant,
}
