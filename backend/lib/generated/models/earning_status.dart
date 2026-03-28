import 'package:freezed_annotation/freezed_annotation.dart';

enum EarningStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('HELD')
  held,
  @JsonValue('READY')
  ready,
  @JsonValue('PAID')
  paid,
  @JsonValue('REFUNDED')
  refunded,
}
