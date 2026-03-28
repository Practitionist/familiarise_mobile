import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentGateway {
  @JsonValue('STRIPE')
  stripe,
  @JsonValue('RAZORPAY')
  razorpay,
  @JsonValue('LEMON_SQUEEZY')
  lemonSqueezy,
  @JsonValue('XFLOW')
  xflow,
  @JsonValue('CARD')
  card,
}
