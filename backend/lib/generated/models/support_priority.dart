import 'package:freezed_annotation/freezed_annotation.dart';

enum SupportPriority {
  @JsonValue('LOW')
  low,
  @JsonValue('MEDIUM')
  medium,
  @JsonValue('HIGH')
  high,
  @JsonValue('URGENT')
  urgent,
}
