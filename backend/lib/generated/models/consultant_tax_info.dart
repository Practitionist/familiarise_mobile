import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'consultant_profile.dart';

part 'consultant_tax_info.freezed.dart';
part 'consultant_tax_info.g.dart';

@freezed
class ConsultantTaxInfo with _$ConsultantTaxInfo {
  const factory ConsultantTaxInfo({
    required String id,
    required String consultantProfileId,
    List<int>? panEncrypted,
    String? panLast4,
    @Default(false)
    bool panVerified,
    String? gstin,
    @Default(false)
    bool gstinVerified,
    @Default("IN")
    String country,
    @Default(true)
    bool isIndianResident,
    String? lutNumber,
    DateTime? lutValidUntil,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ConsultantTaxInfo;

  factory ConsultantTaxInfo.fromJson(Map<String, dynamic> json) =>
      _$ConsultantTaxInfoFromJson(json);
}

/// Input for creating a new ConsultantTaxInfo
@freezed
class CreateConsultantTaxInfoInput with _$CreateConsultantTaxInfoInput {
  const factory CreateConsultantTaxInfoInput({
    required String consultantProfileId,
    List<int>? panEncrypted,
    String? panLast4,
    @Default(false)
    bool? panVerified,
    String? gstin,
    @Default(false)
    bool? gstinVerified,
    @Default("IN")
    String? country,
    @Default(true)
    bool? isIndianResident,
    String? lutNumber,
    DateTime? lutValidUntil,
  }) = _CreateConsultantTaxInfoInput;

  factory CreateConsultantTaxInfoInput.fromJson(Map<String, dynamic> json) =>
      _$CreateConsultantTaxInfoInputFromJson(json);
}

/// Input for updating an existing ConsultantTaxInfo
@freezed
class UpdateConsultantTaxInfoInput with _$UpdateConsultantTaxInfoInput {
  const factory UpdateConsultantTaxInfoInput({
    String? consultantProfileId,
    List<int>? panEncrypted,
    String? panLast4,
    bool? panVerified,
    String? gstin,
    bool? gstinVerified,
    String? country,
    bool? isIndianResident,
    String? lutNumber,
    DateTime? lutValidUntil,
  }) = _UpdateConsultantTaxInfoInput;

  factory UpdateConsultantTaxInfoInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateConsultantTaxInfoInputFromJson(json);
}

/// Unique where input for ConsultantTaxInfo
/// At least one field must be provided
@freezed
class ConsultantTaxInfoWhereUniqueInput with _$ConsultantTaxInfoWhereUniqueInput {
  const factory ConsultantTaxInfoWhereUniqueInput({
    String? id,
    String? consultantProfileId,
  }) = _ConsultantTaxInfoWhereUniqueInput;

  factory ConsultantTaxInfoWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantTaxInfoWhereUniqueInputFromJson(json);
}

/// Where input for filtering ConsultantTaxInfo records
@freezed
class ConsultantTaxInfoWhereInput with _$ConsultantTaxInfoWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory ConsultantTaxInfoWhereInput({
    StringFilter? id,
    StringFilter? consultantProfileId,
    StringFilter? panLast4,
    BooleanFilter? panVerified,
    StringFilter? gstin,
    BooleanFilter? gstinVerified,
    StringFilter? country,
    BooleanFilter? isIndianResident,
    StringFilter? lutNumber,
    DateTimeFilter? lutValidUntil,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<ConsultantTaxInfoWhereInput>? AND,
    List<ConsultantTaxInfoWhereInput>? OR,
    ConsultantTaxInfoWhereInput? NOT,
  }) = _ConsultantTaxInfoWhereInput;

  factory ConsultantTaxInfoWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantTaxInfoWhereInputFromJson(json);
}

/// Filter for ConsultantTaxInfo list relations (one-to-many, many-to-many)
@freezed
class ConsultantTaxInfoListRelationFilter with _$ConsultantTaxInfoListRelationFilter {
  const factory ConsultantTaxInfoListRelationFilter({
    /// At least one related record matches
    ConsultantTaxInfoWhereInput? some,
    /// All related records match
    ConsultantTaxInfoWhereInput? every,
    /// No related records match
    ConsultantTaxInfoWhereInput? none,
  }) = _ConsultantTaxInfoListRelationFilter;

  factory ConsultantTaxInfoListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantTaxInfoListRelationFilterFromJson(json);
}

/// Filter for ConsultantTaxInfo single relations (one-to-one, many-to-one)
@freezed
class ConsultantTaxInfoRelationFilter with _$ConsultantTaxInfoRelationFilter {
  const factory ConsultantTaxInfoRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') ConsultantTaxInfoWhereInput? is_,
    /// Related record does not match
    ConsultantTaxInfoWhereInput? isNot,
  }) = _ConsultantTaxInfoRelationFilter;

  factory ConsultantTaxInfoRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ConsultantTaxInfoRelationFilterFromJson(json);
}

/// Order by input for sorting ConsultantTaxInfo records
@freezed
class ConsultantTaxInfoOrderByInput with _$ConsultantTaxInfoOrderByInput {
  const factory ConsultantTaxInfoOrderByInput({
    SortOrder? id,
    SortOrder? consultantProfileId,
    SortOrder? panLast4,
    SortOrder? panVerified,
    SortOrder? gstin,
    SortOrder? gstinVerified,
    SortOrder? country,
    SortOrder? isIndianResident,
    SortOrder? lutNumber,
    SortOrder? lutValidUntil,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _ConsultantTaxInfoOrderByInput;

  factory ConsultantTaxInfoOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$ConsultantTaxInfoOrderByInputFromJson(json);
}

