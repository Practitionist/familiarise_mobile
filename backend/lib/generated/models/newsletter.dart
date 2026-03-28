import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

part 'newsletter.freezed.dart';
part 'newsletter.g.dart';

@freezed
class Newsletter with _$Newsletter {
  const factory Newsletter({
    required String id,
    required String email,
    @Default(false)
    bool unsubscribed,
    DateTime? unsubscribedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Newsletter;

  factory Newsletter.fromJson(Map<String, dynamic> json) =>
      _$NewsletterFromJson(json);
}

/// Input for creating a new Newsletter
@freezed
class CreateNewsletterInput with _$CreateNewsletterInput {
  const factory CreateNewsletterInput({
    required String email,
    @Default(false)
    bool? unsubscribed,
    DateTime? unsubscribedAt,
  }) = _CreateNewsletterInput;

  factory CreateNewsletterInput.fromJson(Map<String, dynamic> json) =>
      _$CreateNewsletterInputFromJson(json);
}

/// Input for updating an existing Newsletter
@freezed
class UpdateNewsletterInput with _$UpdateNewsletterInput {
  const factory UpdateNewsletterInput({
    String? email,
    bool? unsubscribed,
    DateTime? unsubscribedAt,
  }) = _UpdateNewsletterInput;

  factory UpdateNewsletterInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateNewsletterInputFromJson(json);
}

/// Unique where input for Newsletter
/// At least one field must be provided
@freezed
class NewsletterWhereUniqueInput with _$NewsletterWhereUniqueInput {
  const factory NewsletterWhereUniqueInput({
    String? id,
    String? email,
  }) = _NewsletterWhereUniqueInput;

  factory NewsletterWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$NewsletterWhereUniqueInputFromJson(json);
}

/// Where input for filtering Newsletter records
@freezed
class NewsletterWhereInput with _$NewsletterWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory NewsletterWhereInput({
    StringFilter? id,
    StringFilter? email,
    BooleanFilter? unsubscribed,
    DateTimeFilter? unsubscribedAt,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<NewsletterWhereInput>? AND,
    List<NewsletterWhereInput>? OR,
    NewsletterWhereInput? NOT,
  }) = _NewsletterWhereInput;

  factory NewsletterWhereInput.fromJson(Map<String, dynamic> json) =>
      _$NewsletterWhereInputFromJson(json);
}

/// Filter for Newsletter list relations (one-to-many, many-to-many)
@freezed
class NewsletterListRelationFilter with _$NewsletterListRelationFilter {
  const factory NewsletterListRelationFilter({
    /// At least one related record matches
    NewsletterWhereInput? some,
    /// All related records match
    NewsletterWhereInput? every,
    /// No related records match
    NewsletterWhereInput? none,
  }) = _NewsletterListRelationFilter;

  factory NewsletterListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$NewsletterListRelationFilterFromJson(json);
}

/// Filter for Newsletter single relations (one-to-one, many-to-one)
@freezed
class NewsletterRelationFilter with _$NewsletterRelationFilter {
  const factory NewsletterRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') NewsletterWhereInput? is_,
    /// Related record does not match
    NewsletterWhereInput? isNot,
  }) = _NewsletterRelationFilter;

  factory NewsletterRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$NewsletterRelationFilterFromJson(json);
}

/// Order by input for sorting Newsletter records
@freezed
class NewsletterOrderByInput with _$NewsletterOrderByInput {
  const factory NewsletterOrderByInput({
    SortOrder? id,
    SortOrder? email,
    SortOrder? unsubscribed,
    SortOrder? unsubscribedAt,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _NewsletterOrderByInput;

  factory NewsletterOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$NewsletterOrderByInputFromJson(json);
}

