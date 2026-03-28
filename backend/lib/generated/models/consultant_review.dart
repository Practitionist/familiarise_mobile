import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'consultant_profile.dart';
import 'consultee_profile.dart';

part 'consultant_review.freezed.dart';
part 'consultant_review.g.dart';

@freezed
class ConsultantReview with _$ConsultantReview {
  const factory ConsultantReview({
    required String id,
    @Default(0)
    int rating,
    String? reviewDescription,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required String consultantProfileId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsulteeProfile? consulteeProfile,
    required String consulteeProfileId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ConsultantReview;

  factory ConsultantReview.fromJson(Map<String, dynamic> json) =>
      _$ConsultantReviewFromJson(json);
}

/// Input for creating a new ConsultantReview
@freezed
class CreateConsultantReviewInput with _$CreateConsultantReviewInput {
  const factory CreateConsultantReviewInput({
    @Default(0)
    int? rating,
    String? reviewDescription,
    required String consultantProfileId,
    required String consulteeProfileId,
  }) = _CreateConsultantReviewInput;

  factory CreateConsultantReviewInput.fromJson(Map<String, dynamic> json) =>
      _$CreateConsultantReviewInputFromJson(json);
}

/// Input for updating an existing ConsultantReview
@freezed
class UpdateConsultantReviewInput with _$UpdateConsultantReviewInput {
  const factory UpdateConsultantReviewInput({
    int? rating,
    String? reviewDescription,
    String? consultantProfileId,
    String? consulteeProfileId,
  }) = _UpdateConsultantReviewInput;

  factory UpdateConsultantReviewInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateConsultantReviewInputFromJson(json);
}

/// Unique where input for ConsultantReview
/// At least one field must be provided
@freezed
class ConsultantReviewWhereUniqueInput with _$ConsultantReviewWhereUniqueInput {
  const factory ConsultantReviewWhereUniqueInput({
    String? id,
  }) = _ConsultantReviewWhereUniqueInput;

  factory ConsultantReviewWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantReviewWhereUniqueInputFromJson(json);
}

/// Where input for filtering ConsultantReview records
@freezed
class ConsultantReviewWhereInput with _$ConsultantReviewWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ConsultantReviewWhereInput({
    StringFilter? id,
    IntFilter? rating,
    StringFilter? reviewDescription,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    StringFilter? consultantProfileId,
    /// Filter by consulteeProfile relation
    ConsulteeProfileRelationFilter? consulteeProfile,
    StringFilter? consulteeProfileId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ConsultantReviewWhereInput>? AND,
    List<ConsultantReviewWhereInput>? OR,
    ConsultantReviewWhereInput? NOT,
  }) = _ConsultantReviewWhereInput;

  factory ConsultantReviewWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantReviewWhereInputFromJson(json);
}

/// Filter for ConsultantReview list relations (one-to-many, many-to-many)
@freezed
class ConsultantReviewListRelationFilter with _$ConsultantReviewListRelationFilter {
  const factory ConsultantReviewListRelationFilter({
    /// At least one related record matches
    ConsultantReviewWhereInput? some,
    /// All related records match
    ConsultantReviewWhereInput? every,
    /// No related records match
    ConsultantReviewWhereInput? none,
  }) = _ConsultantReviewListRelationFilter;

  factory ConsultantReviewListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantReviewListRelationFilterFromJson(json);
}

/// Filter for ConsultantReview single relations (one-to-one, many-to-one)
@freezed
class ConsultantReviewRelationFilter with _$ConsultantReviewRelationFilter {
  const factory ConsultantReviewRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ConsultantReviewWhereInput? is_,
    /// Related record does not match
    ConsultantReviewWhereInput? isNot,
  }) = _ConsultantReviewRelationFilter;

  factory ConsultantReviewRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantReviewRelationFilterFromJson(json);
}

/// Order by input for sorting ConsultantReview records
@freezed
class ConsultantReviewOrderByInput with _$ConsultantReviewOrderByInput {
  const factory ConsultantReviewOrderByInput({
    SortOrder? id,
    SortOrder? rating,
    SortOrder? reviewDescription,
    SortOrder? consultantProfileId,
    SortOrder? consulteeProfileId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ConsultantReviewOrderByInput;

  factory ConsultantReviewOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantReviewOrderByInputFromJson(json);
}

