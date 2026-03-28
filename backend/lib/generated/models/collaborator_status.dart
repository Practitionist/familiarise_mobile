import 'package:freezed_annotation/freezed_annotation.dart';

enum CollaboratorStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('ACCEPTED')
  accepted,
  @JsonValue('DECLINED')
  declined,
  @JsonValue('REMOVED')
  removed,
}
