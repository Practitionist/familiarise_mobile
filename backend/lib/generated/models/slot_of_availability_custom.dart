import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'consultant_profile.dart';

part 'slot_of_availability_custom.freezed.dart';
part 'slot_of_availability_custom.g.dart';

@freezed
class SlotOfAvailabilityCustom with _$SlotOfAvailabilityCustom {
  const factory SlotOfAvailabilityCustom({
    required String id,
    required DateTime startsAt,
    required DateTime endsAt,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required String consultantProfileId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SlotOfAvailabilityCustom;

  factory SlotOfAvailabilityCustom.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityCustomFromJson(json);
}

/// Input for creating a new SlotOfAvailabilityCustom
@freezed
class CreateSlotOfAvailabilityCustomInput with _$CreateSlotOfAvailabilityCustomInput {
  const factory CreateSlotOfAvailabilityCustomInput({
    required DateTime startsAt,
    required DateTime endsAt,
    required String consultantProfileId,
  }) = _CreateSlotOfAvailabilityCustomInput;

  factory CreateSlotOfAvailabilityCustomInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSlotOfAvailabilityCustomInputFromJson(json);
}

/// Input for updating an existing SlotOfAvailabilityCustom
@freezed
class UpdateSlotOfAvailabilityCustomInput with _$UpdateSlotOfAvailabilityCustomInput {
  const factory UpdateSlotOfAvailabilityCustomInput({
    DateTime? startsAt,
    DateTime? endsAt,
    String? consultantProfileId,
  }) = _UpdateSlotOfAvailabilityCustomInput;

  factory UpdateSlotOfAvailabilityCustomInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSlotOfAvailabilityCustomInputFromJson(json);
}

/// Unique where input for SlotOfAvailabilityCustom
/// At least one field must be provided
@freezed
class SlotOfAvailabilityCustomWhereUniqueInput with _$SlotOfAvailabilityCustomWhereUniqueInput {
  const factory SlotOfAvailabilityCustomWhereUniqueInput({
    String? id,
  }) = _SlotOfAvailabilityCustomWhereUniqueInput;

  factory SlotOfAvailabilityCustomWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityCustomWhereUniqueInputFromJson(json);
}

/// Where input for filtering SlotOfAvailabilityCustom records
@freezed
class SlotOfAvailabilityCustomWhereInput with _$SlotOfAvailabilityCustomWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SlotOfAvailabilityCustomWhereInput({
    StringFilter? id,
    DateTimeFilter? startsAt,
    DateTimeFilter? endsAt,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    StringFilter? consultantProfileId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<SlotOfAvailabilityCustomWhereInput>? AND,
    List<SlotOfAvailabilityCustomWhereInput>? OR,
    SlotOfAvailabilityCustomWhereInput? NOT,
  }) = _SlotOfAvailabilityCustomWhereInput;

  factory SlotOfAvailabilityCustomWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityCustomWhereInputFromJson(json);
}

/// Filter for SlotOfAvailabilityCustom list relations (one-to-many, many-to-many)
@freezed
class SlotOfAvailabilityCustomListRelationFilter with _$SlotOfAvailabilityCustomListRelationFilter {
  const factory SlotOfAvailabilityCustomListRelationFilter({
    /// At least one related record matches
    SlotOfAvailabilityCustomWhereInput? some,
    /// All related records match
    SlotOfAvailabilityCustomWhereInput? every,
    /// No related records match
    SlotOfAvailabilityCustomWhereInput? none,
  }) = _SlotOfAvailabilityCustomListRelationFilter;

  factory SlotOfAvailabilityCustomListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityCustomListRelationFilterFromJson(json);
}

/// Filter for SlotOfAvailabilityCustom single relations (one-to-one, many-to-one)
@freezed
class SlotOfAvailabilityCustomRelationFilter with _$SlotOfAvailabilityCustomRelationFilter {
  const factory SlotOfAvailabilityCustomRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SlotOfAvailabilityCustomWhereInput? is_,
    /// Related record does not match
    SlotOfAvailabilityCustomWhereInput? isNot,
  }) = _SlotOfAvailabilityCustomRelationFilter;

  factory SlotOfAvailabilityCustomRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityCustomRelationFilterFromJson(json);
}

/// Order by input for sorting SlotOfAvailabilityCustom records
@freezed
class SlotOfAvailabilityCustomOrderByInput with _$SlotOfAvailabilityCustomOrderByInput {
  const factory SlotOfAvailabilityCustomOrderByInput({
    SortOrder? id,
    SortOrder? startsAt,
    SortOrder? endsAt,
    SortOrder? consultantProfileId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _SlotOfAvailabilityCustomOrderByInput;

  factory SlotOfAvailabilityCustomOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityCustomOrderByInputFromJson(json);
}

