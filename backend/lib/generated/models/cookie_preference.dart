import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'user.dart';

part 'cookie_preference.freezed.dart';
part 'cookie_preference.g.dart';

@freezed
class CookiePreference with _$CookiePreference {
  const factory CookiePreference({
    required String id,
    @JsonKey(includeFromJson: false, includeToJson: false)
    User? user,
    String? userId,
    String? sessionId,
    @Default(true)
    bool essential,
    @Default(false)
    bool analytics,
    @Default(false)
    bool marketing,
    @Default(false)
    bool functional,
    required DateTime consentGivenAt,
    required DateTime consentUpdatedAt,
  }) = _CookiePreference;

  factory CookiePreference.fromJson(Map<String, dynamic> json) =>
      _$CookiePreferenceFromJson(json);
}

/// Input for creating a new CookiePreference
@freezed
class CreateCookiePreferenceInput with _$CreateCookiePreferenceInput {
  const factory CreateCookiePreferenceInput({
    String? userId,
    String? sessionId,
    @Default(true)
    bool? essential,
    @Default(false)
    bool? analytics,
    @Default(false)
    bool? marketing,
    @Default(false)
    bool? functional,
  }) = _CreateCookiePreferenceInput;

  factory CreateCookiePreferenceInput.fromJson(Map<String, dynamic> json) =>
      _$CreateCookiePreferenceInputFromJson(json);
}

/// Input for updating an existing CookiePreference
@freezed
class UpdateCookiePreferenceInput with _$UpdateCookiePreferenceInput {
  const factory UpdateCookiePreferenceInput({
    String? userId,
    String? sessionId,
    bool? essential,
    bool? analytics,
    bool? marketing,
    bool? functional,
  }) = _UpdateCookiePreferenceInput;

  factory UpdateCookiePreferenceInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateCookiePreferenceInputFromJson(json);
}

/// Unique where input for CookiePreference
/// At least one field must be provided
@freezed
class CookiePreferenceWhereUniqueInput with _$CookiePreferenceWhereUniqueInput {
  const factory CookiePreferenceWhereUniqueInput({
    String? id,
    String? userId,
    String? sessionId,
  }) = _CookiePreferenceWhereUniqueInput;

  factory CookiePreferenceWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$CookiePreferenceWhereUniqueInputFromJson(json);
}

/// Where input for filtering CookiePreference records
@freezed
class CookiePreferenceWhereInput with _$CookiePreferenceWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory CookiePreferenceWhereInput({
    StringFilter? id,
    /// Filter by user relation
    UserRelationFilter? user,
    StringFilter? userId,
    StringFilter? sessionId,
    BooleanFilter? essential,
    BooleanFilter? analytics,
    BooleanFilter? marketing,
    BooleanFilter? functional,
    DateTimeFilter? consentGivenAt,
    DateTimeFilter? consentUpdatedAt,
    List<CookiePreferenceWhereInput>? AND,
    List<CookiePreferenceWhereInput>? OR,
    CookiePreferenceWhereInput? NOT,
  }) = _CookiePreferenceWhereInput;

  factory CookiePreferenceWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CookiePreferenceWhereInputFromJson(json);
}

/// Filter for CookiePreference list relations (one-to-many, many-to-many)
@freezed
class CookiePreferenceListRelationFilter with _$CookiePreferenceListRelationFilter {
  const factory CookiePreferenceListRelationFilter({
    /// At least one related record matches
    CookiePreferenceWhereInput? some,
    /// All related records match
    CookiePreferenceWhereInput? every,
    /// No related records match
    CookiePreferenceWhereInput? none,
  }) = _CookiePreferenceListRelationFilter;

  factory CookiePreferenceListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CookiePreferenceListRelationFilterFromJson(json);
}

/// Filter for CookiePreference single relations (one-to-one, many-to-one)
@freezed
class CookiePreferenceRelationFilter with _$CookiePreferenceRelationFilter {
  const factory CookiePreferenceRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') CookiePreferenceWhereInput? is_,
    /// Related record does not match
    CookiePreferenceWhereInput? isNot,
  }) = _CookiePreferenceRelationFilter;

  factory CookiePreferenceRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CookiePreferenceRelationFilterFromJson(json);
}

/// Order by input for sorting CookiePreference records
@freezed
class CookiePreferenceOrderByInput with _$CookiePreferenceOrderByInput {
  const factory CookiePreferenceOrderByInput({
    SortOrder? id,
    SortOrder? userId,
    SortOrder? sessionId,
    SortOrder? essential,
    SortOrder? analytics,
    SortOrder? marketing,
    SortOrder? functional,
    SortOrder? consentGivenAt,
    SortOrder? consentUpdatedAt,
  }) = _CookiePreferenceOrderByInput;

  factory CookiePreferenceOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$CookiePreferenceOrderByInputFromJson(json);
}

