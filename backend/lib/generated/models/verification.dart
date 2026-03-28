import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

part 'verification.freezed.dart';
part 'verification.g.dart';

@freezed
class Verification with _$Verification {
  const factory Verification({
    required String id,
    required String identifier,
    required String value,
    required DateTime expiresAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Verification;

  factory Verification.fromJson(Map<String, dynamic> json) =>
      _$VerificationFromJson(json);
}

/// Input for creating a new Verification
@freezed
class CreateVerificationInput with _$CreateVerificationInput {
  const factory CreateVerificationInput({
    required String identifier,
    required String value,
    required DateTime expiresAt,
  }) = _CreateVerificationInput;

  factory CreateVerificationInput.fromJson(Map<String, dynamic> json) =>
      _$CreateVerificationInputFromJson(json);
}

/// Input for updating an existing Verification
@freezed
class UpdateVerificationInput with _$UpdateVerificationInput {
  const factory UpdateVerificationInput({
    String? identifier,
    String? value,
    DateTime? expiresAt,
  }) = _UpdateVerificationInput;

  factory UpdateVerificationInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateVerificationInputFromJson(json);
}

/// Unique where input for Verification
/// At least one field must be provided
@freezed
class VerificationWhereUniqueInput with _$VerificationWhereUniqueInput {
  const factory VerificationWhereUniqueInput({
    String? id,
  }) = _VerificationWhereUniqueInput;

  factory VerificationWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$VerificationWhereUniqueInputFromJson(json);
}

/// Where input for filtering Verification records
@freezed
class VerificationWhereInput with _$VerificationWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory VerificationWhereInput({
    StringFilter? id,
    StringFilter? identifier,
    StringFilter? value,
    DateTimeFilter? expiresAt,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<VerificationWhereInput>? AND,
    List<VerificationWhereInput>? OR,
    VerificationWhereInput? NOT,
  }) = _VerificationWhereInput;

  factory VerificationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$VerificationWhereInputFromJson(json);
}

/// Filter for Verification list relations (one-to-many, many-to-many)
@freezed
class VerificationListRelationFilter with _$VerificationListRelationFilter {
  const factory VerificationListRelationFilter({
    /// At least one related record matches
    VerificationWhereInput? some,
    /// All related records match
    VerificationWhereInput? every,
    /// No related records match
    VerificationWhereInput? none,
  }) = _VerificationListRelationFilter;

  factory VerificationListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$VerificationListRelationFilterFromJson(json);
}

/// Filter for Verification single relations (one-to-one, many-to-one)
@freezed
class VerificationRelationFilter with _$VerificationRelationFilter {
  const factory VerificationRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') VerificationWhereInput? is_,
    /// Related record does not match
    VerificationWhereInput? isNot,
  }) = _VerificationRelationFilter;

  factory VerificationRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$VerificationRelationFilterFromJson(json);
}

/// Order by input for sorting Verification records
@freezed
class VerificationOrderByInput with _$VerificationOrderByInput {
  const factory VerificationOrderByInput({
    SortOrder? id,
    SortOrder? identifier,
    SortOrder? value,
    SortOrder? expiresAt,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _VerificationOrderByInput;

  factory VerificationOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$VerificationOrderByInputFromJson(json);
}

