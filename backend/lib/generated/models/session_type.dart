import 'package:freezed_annotation/freezed_annotation.dart';

enum SessionType {
  @JsonValue('ONE_ON_ONE')
  oneOnOne,
  @JsonValue('GROUP')
  group,
  @JsonValue('ASYNC_REVIEW')
  asyncReview,
}
