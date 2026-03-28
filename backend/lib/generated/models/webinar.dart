import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'webinar_status.dart';
import 'waitlist.dart';
import 'webinar_plan.dart';
import 'appointment.dart';

part 'webinar.freezed.dart';
part 'webinar.g.dart';

@freezed
class Webinar with _$Webinar {
  const factory Webinar({
    required String id,
    @Default(WebinarStatus.scheduled)
    WebinarStatus status,
    String? feedbackSummary,
    required List<Waitlist> waitlist,
    @JsonKey(includeFromJson: false, includeToJson: false)
    WebinarPlan? webinarPlan,
    required String webinarPlanId,
    Appointment? appointment,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Webinar;

  factory Webinar.fromJson(Map<String, dynamic> json) =>
      _$WebinarFromJson(json);
}

/// Input for creating a new Webinar
@freezed
class CreateWebinarInput with _$CreateWebinarInput {
  const factory CreateWebinarInput({
    @Default(WebinarStatus.scheduled)
    WebinarStatus status,
    String? feedbackSummary,
    required String webinarPlanId,
  }) = _CreateWebinarInput;

  factory CreateWebinarInput.fromJson(Map<String, dynamic> json) =>
      _$CreateWebinarInputFromJson(json);
}

/// Input for updating an existing Webinar
@freezed
class UpdateWebinarInput with _$UpdateWebinarInput {
  const factory UpdateWebinarInput({
    WebinarStatus? status,
    String? feedbackSummary,
    String? webinarPlanId,
  }) = _UpdateWebinarInput;

  factory UpdateWebinarInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateWebinarInputFromJson(json);
}

/// Unique where input for Webinar
/// At least one field must be provided
@freezed
class WebinarWhereUniqueInput with _$WebinarWhereUniqueInput {
  const factory WebinarWhereUniqueInput({
    String? id,
  }) = _WebinarWhereUniqueInput;

  factory WebinarWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$WebinarWhereUniqueInputFromJson(json);
}

/// Where input for filtering Webinar records
@freezed
class WebinarWhereInput with _$WebinarWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory WebinarWhereInput({
    StringFilter? id,
    WebinarStatusFilter? status,
    StringFilter? feedbackSummary,
    /// Filter by webinarPlan relation
    WebinarPlanRelationFilter? webinarPlan,
    StringFilter? webinarPlanId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<WebinarWhereInput>? AND,
    List<WebinarWhereInput>? OR,
    WebinarWhereInput? NOT,
  }) = _WebinarWhereInput;

  factory WebinarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$WebinarWhereInputFromJson(json);
}

/// Filter for Webinar list relations (one-to-many, many-to-many)
@freezed
class WebinarListRelationFilter with _$WebinarListRelationFilter {
  const factory WebinarListRelationFilter({
    /// At least one related record matches
    WebinarWhereInput? some,
    /// All related records match
    WebinarWhereInput? every,
    /// No related records match
    WebinarWhereInput? none,
  }) = _WebinarListRelationFilter;

  factory WebinarListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WebinarListRelationFilterFromJson(json);
}

/// Filter for Webinar single relations (one-to-one, many-to-one)
@freezed
class WebinarRelationFilter with _$WebinarRelationFilter {
  const factory WebinarRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') WebinarWhereInput? is_,
    /// Related record does not match
    WebinarWhereInput? isNot,
  }) = _WebinarRelationFilter;

  factory WebinarRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WebinarRelationFilterFromJson(json);
}

/// Order by input for sorting Webinar records
@freezed
class WebinarOrderByInput with _$WebinarOrderByInput {
  const factory WebinarOrderByInput({
    SortOrder? id,
    SortOrder? feedbackSummary,
    SortOrder? webinarPlanId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _WebinarOrderByInput;

  factory WebinarOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$WebinarOrderByInputFromJson(json);
}

