import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('SUCCEEDED')
  succeeded,
  @JsonValue('FAILED')
  failed,
  @JsonValue('EXPIRED')
  expired,
}
