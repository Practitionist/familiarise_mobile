import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'feedback_status.dart';
import 'user.dart';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

@freezed
class Feedback with _$Feedback {
  const factory Feedback({
    required String id,
    required String title,
    required String description,
    int? rating,
    String? category,
    @Default(FeedbackStatus.pending)
    FeedbackStatus status,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);
}

/// Input for creating a new Feedback
@freezed
class CreateFeedbackInput with _$CreateFeedbackInput {
  const factory CreateFeedbackInput({
    required String title,
    required String description,
    int? rating,
    String? category,
    @Default(FeedbackStatus.pending)
    FeedbackStatus status,
    required String userId,
  }) = _CreateFeedbackInput;

  factory CreateFeedbackInput.fromJson(Map<String, dynamic> json) =>
      _$CreateFeedbackInputFromJson(json);
}

/// Input for updating an existing Feedback
@freezed
class UpdateFeedbackInput with _$UpdateFeedbackInput {
  const factory UpdateFeedbackInput({
    String? title,
    String? description,
    int? rating,
    String? category,
    FeedbackStatus? status,
    String? userId,
  }) = _UpdateFeedbackInput;

  factory UpdateFeedbackInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateFeedbackInputFromJson(json);
}

/// Unique where input for Feedback
/// At least one field must be provided
@freezed
class FeedbackWhereUniqueInput with _$FeedbackWhereUniqueInput {
  const factory FeedbackWhereUniqueInput({
    String? id,
  }) = _FeedbackWhereUniqueInput;

  factory FeedbackWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$FeedbackWhereUniqueInputFromJson(json);
}

/// Where input for filtering Feedback records
@freezed
class FeedbackWhereInput with _$FeedbackWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory FeedbackWhereInput({
    StringFilter? id,
    StringFilter? title,
    StringFilter? description,
    IntFilter? rating,
    StringFilter? category,
    FeedbackStatusFilter? status,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<FeedbackWhereInput>? AND,
    List<FeedbackWhereInput>? OR,
    FeedbackWhereInput? NOT,
  }) = _FeedbackWhereInput;

  factory FeedbackWhereInput.fromJson(Map<String, dynamic> json) =>
      _$FeedbackWhereInputFromJson(json);
}

/// Filter for Feedback list relations (one-to-many, many-to-many)
@freezed
class FeedbackListRelationFilter with _$FeedbackListRelationFilter {
  const factory FeedbackListRelationFilter({
    /// At least one related record matches
    FeedbackWhereInput? some,
    /// All related records match
    FeedbackWhereInput? every,
    /// No related records match
    FeedbackWhereInput? none,
  }) = _FeedbackListRelationFilter;

  factory FeedbackListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$FeedbackListRelationFilterFromJson(json);
}

/// Filter for Feedback single relations (one-to-one, many-to-one)
@freezed
class FeedbackRelationFilter with _$FeedbackRelationFilter {
  const factory FeedbackRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') FeedbackWhereInput? is_,
    /// Related record does not match
    FeedbackWhereInput? isNot,
  }) = _FeedbackRelationFilter;

  factory FeedbackRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$FeedbackRelationFilterFromJson(json);
}

/// Order by input for sorting Feedback records
@freezed
class FeedbackOrderByInput with _$FeedbackOrderByInput {
  const factory FeedbackOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? description,
    SortOrder? rating,
    SortOrder? category,
    SortOrder? userId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _FeedbackOrderByInput;

  factory FeedbackOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$FeedbackOrderByInputFromJson(json);
}

