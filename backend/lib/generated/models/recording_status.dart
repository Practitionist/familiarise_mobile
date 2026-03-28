import 'package:freezed_annotation/freezed_annotation.dart';

enum RecordingStatus {
  @JsonValue('RECORDING')
  recording,
  @JsonValue('PROCESSING')
  processing,
  @JsonValue('READY')
  ready,
  @JsonValue('TRANSFERRING')
  transferring,
  @JsonValue('AVAILABLE')
  available,
  @JsonValue('FAILED')
  failed,
  @JsonValue('EXPIRED')
  expired,
}
