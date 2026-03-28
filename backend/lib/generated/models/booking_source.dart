import 'package:freezed_annotation/freezed_annotation.dart';

enum BookingSource {
  @JsonValue('DIRECT_CHECKOUT')
  directCheckout,
  @JsonValue('REQUEST_SUBMITTED')
  requestSubmitted,
}
