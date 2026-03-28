import 'package:freezed_annotation/freezed_annotation.dart';

enum BudgetPreference {
  @JsonValue('BUDGET')
  budget,
  @JsonValue('MODERATE')
  moderate,
  @JsonValue('PREMIUM')
  premium,
  @JsonValue('FLEXIBLE')
  flexible,
}
