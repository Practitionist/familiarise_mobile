import 'package:freezed_annotation/freezed_annotation.dart';

enum SystemJobStatus {
  @JsonValue('RUNNING')
  running,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('FAILED')
  failed,
  @JsonValue('CANCELLED')
  cancelled,
}
