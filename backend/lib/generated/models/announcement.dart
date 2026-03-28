import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

part 'announcement.freezed.dart';
part 'announcement.g.dart';

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    required String id,
    required String title,
    required String content,
    @Default(true)
    bool isActive,
    DateTime? startDate,
    DateTime? endDate,
    @Default("#000000")
    String backgroundColor,
    @Default("#FFFFFF")
    String textColor,
    String? linkUrl,
    String? linkText,
    required String createdBy,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}

/// Input for creating a new Announcement
@freezed
class CreateAnnouncementInput with _$CreateAnnouncementInput {
  const factory CreateAnnouncementInput({
    required String title,
    required String content,
    @Default(true)
    bool? isActive,
    DateTime? startDate,
    DateTime? endDate,
    @Default("#000000")
    String? backgroundColor,
    @Default("#FFFFFF")
    String? textColor,
    String? linkUrl,
    String? linkText,
    required String createdBy,
  }) = _CreateAnnouncementInput;

  factory CreateAnnouncementInput.fromJson(Map<String, dynamic> json) =>
      _$CreateAnnouncementInputFromJson(json);
}

/// Input for updating an existing Announcement
@freezed
class UpdateAnnouncementInput with _$UpdateAnnouncementInput {
  const factory UpdateAnnouncementInput({
    String? title,
    String? content,
    bool? isActive,
    DateTime? startDate,
    DateTime? endDate,
    String? backgroundColor,
    String? textColor,
    String? linkUrl,
    String? linkText,
    String? createdBy,
  }) = _UpdateAnnouncementInput;

  factory UpdateAnnouncementInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateAnnouncementInputFromJson(json);
}

/// Unique where input for Announcement
/// At least one field must be provided
@freezed
class AnnouncementWhereUniqueInput with _$AnnouncementWhereUniqueInput {
  const factory AnnouncementWhereUniqueInput({
    String? id,
  }) = _AnnouncementWhereUniqueInput;

  factory AnnouncementWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementWhereUniqueInputFromJson(json);
}

/// Where input for filtering Announcement records
@freezed
class AnnouncementWhereInput with _$AnnouncementWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory AnnouncementWhereInput({
    StringFilter? id,
    StringFilter? title,
    StringFilter? content,
    BooleanFilter? isActive,
    DateTimeFilter? startDate,
    DateTimeFilter? endDate,
    StringFilter? backgroundColor,
    StringFilter? textColor,
    StringFilter? linkUrl,
    StringFilter? linkText,
    StringFilter? createdBy,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<AnnouncementWhereInput>? AND,
    List<AnnouncementWhereInput>? OR,
    AnnouncementWhereInput? NOT,
  }) = _AnnouncementWhereInput;

  factory AnnouncementWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementWhereInputFromJson(json);
}

/// Filter for Announcement list relations (one-to-many, many-to-many)
@freezed
class AnnouncementListRelationFilter with _$AnnouncementListRelationFilter {
  const factory AnnouncementListRelationFilter({
    /// At least one related record matches
    AnnouncementWhereInput? some,
    /// All related records match
    AnnouncementWhereInput? every,
    /// No related records match
    AnnouncementWhereInput? none,
  }) = _AnnouncementListRelationFilter;

  factory AnnouncementListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementListRelationFilterFromJson(json);
}

/// Filter for Announcement single relations (one-to-one, many-to-one)
@freezed
class AnnouncementRelationFilter with _$AnnouncementRelationFilter {
  const factory AnnouncementRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') AnnouncementWhereInput? is_,
    /// Related record does not match
    AnnouncementWhereInput? isNot,
  }) = _AnnouncementRelationFilter;

  factory AnnouncementRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementRelationFilterFromJson(json);
}

/// Order by input for sorting Announcement records
@freezed
class AnnouncementOrderByInput with _$AnnouncementOrderByInput {
  const factory AnnouncementOrderByInput({
    SortOrder? id,
    SortOrder? title,
    SortOrder? content,
    SortOrder? isActive,
    SortOrder? startDate,
    SortOrder? endDate,
    SortOrder? backgroundColor,
    SortOrder? textColor,
    SortOrder? linkUrl,
    SortOrder? linkText,
    SortOrder? createdBy,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _AnnouncementOrderByInput;

  factory AnnouncementOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementOrderByInputFromJson(json);
}

