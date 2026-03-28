import 'package:freezed_annotation/freezed_annotation.dart';

enum RefundStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('SUCCEEDED')
  succeeded,
  @JsonValue('FAILED')
  failed,
  @JsonValue('CANCELLED')
  cancelled,
}
