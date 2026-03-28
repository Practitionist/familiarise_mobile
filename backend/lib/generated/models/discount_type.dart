import 'package:freezed_annotation/freezed_annotation.dart';

enum DiscountType {
  @JsonValue('PERCENTAGE')
  percentage,
  @JsonValue('FIXED_AMOUNT')
  fixedAmount,
  @JsonValue('FREE_SHIPPING')
  freeShipping,
}
