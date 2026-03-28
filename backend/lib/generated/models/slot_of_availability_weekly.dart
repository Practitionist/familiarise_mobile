import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'day_of_week.dart';
import 'consultant_profile.dart';

part 'slot_of_availability_weekly.freezed.dart';
part 'slot_of_availability_weekly.g.dart';

@freezed
class SlotOfAvailabilityWeekly with _$SlotOfAvailabilityWeekly {
  const factory SlotOfAvailabilityWeekly({
    required String id,
    required DayOfWeek startDay,
    required int startTimeUtc,
    required DayOfWeek endDay,
    required int endTimeUtc,
    @Default(0)
    int utcOffsetMinutes,
    @JsonKey(includeFromJson: false, includeToJson: false)
    ConsultantProfile? consultantProfile,
    required String consultantProfileId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SlotOfAvailabilityWeekly;

  factory SlotOfAvailabilityWeekly.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityWeeklyFromJson(json);
}

/// Input for creating a new SlotOfAvailabilityWeekly
@freezed
class CreateSlotOfAvailabilityWeeklyInput with _$CreateSlotOfAvailabilityWeeklyInput {
  const factory CreateSlotOfAvailabilityWeeklyInput({
    required DayOfWeek startDay,
    required int startTimeUtc,
    required DayOfWeek endDay,
    required int endTimeUtc,
    @Default(0)
    int? utcOffsetMinutes,
    required String consultantProfileId,
  }) = _CreateSlotOfAvailabilityWeeklyInput;

  factory CreateSlotOfAvailabilityWeeklyInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSlotOfAvailabilityWeeklyInputFromJson(json);
}

/// Input for updating an existing SlotOfAvailabilityWeekly
@freezed
class UpdateSlotOfAvailabilityWeeklyInput with _$UpdateSlotOfAvailabilityWeeklyInput {
  const factory UpdateSlotOfAvailabilityWeeklyInput({
    DayOfWeek? startDay,
    int? startTimeUtc,
    DayOfWeek? endDay,
    int? endTimeUtc,
    int? utcOffsetMinutes,
    String? consultantProfileId,
  }) = _UpdateSlotOfAvailabilityWeeklyInput;

  factory UpdateSlotOfAvailabilityWeeklyInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSlotOfAvailabilityWeeklyInputFromJson(json);
}

/// Unique where input for SlotOfAvailabilityWeekly
/// At least one field must be provided
@freezed
class SlotOfAvailabilityWeeklyWhereUniqueInput with _$SlotOfAvailabilityWeeklyWhereUniqueInput {
  const factory SlotOfAvailabilityWeeklyWhereUniqueInput({
    String? id,
  }) = _SlotOfAvailabilityWeeklyWhereUniqueInput;

  factory SlotOfAvailabilityWeeklyWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityWeeklyWhereUniqueInputFromJson(json);
}

/// Where input for filtering SlotOfAvailabilityWeekly records
@freezed
class SlotOfAvailabilityWeeklyWhereInput with _$SlotOfAvailabilityWeeklyWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SlotOfAvailabilityWeeklyWhereInput({
    StringFilter? id,
    DayOfWeekFilter? startDay,
    IntFilter? startTimeUtc,
    DayOfWeekFilter? endDay,
    IntFilter? endTimeUtc,
    IntFilter? utcOffsetMinutes,
    /// Filter by consultantProfile relation
    ConsultantProfileRelationFilter? consultantProfile,
    StringFilter? consultantProfileId,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<SlotOfAvailabilityWeeklyWhereInput>? AND,
    List<SlotOfAvailabilityWeeklyWhereInput>? OR,
    SlotOfAvailabilityWeeklyWhereInput? NOT,
  }) = _SlotOfAvailabilityWeeklyWhereInput;

  factory SlotOfAvailabilityWeeklyWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityWeeklyWhereInputFromJson(json);
}

/// Filter for SlotOfAvailabilityWeekly list relations (one-to-many, many-to-many)
@freezed
class SlotOfAvailabilityWeeklyListRelationFilter with _$SlotOfAvailabilityWeeklyListRelationFilter {
  const factory SlotOfAvailabilityWeeklyListRelationFilter({
    /// At least one related record matches
    SlotOfAvailabilityWeeklyWhereInput? some,
    /// All related records match
    SlotOfAvailabilityWeeklyWhereInput? every,
    /// No related records match
    SlotOfAvailabilityWeeklyWhereInput? none,
  }) = _SlotOfAvailabilityWeeklyListRelationFilter;

  factory SlotOfAvailabilityWeeklyListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityWeeklyListRelationFilterFromJson(json);
}

/// Filter for SlotOfAvailabilityWeekly single relations (one-to-one, many-to-one)
@freezed
class SlotOfAvailabilityWeeklyRelationFilter with _$SlotOfAvailabilityWeeklyRelationFilter {
  const factory SlotOfAvailabilityWeeklyRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SlotOfAvailabilityWeeklyWhereInput? is_,
    /// Related record does not match
    SlotOfAvailabilityWeeklyWhereInput? isNot,
  }) = _SlotOfAvailabilityWeeklyRelationFilter;

  factory SlotOfAvailabilityWeeklyRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityWeeklyRelationFilterFromJson(json);
}

/// Order by input for sorting SlotOfAvailabilityWeekly records
@freezed
class SlotOfAvailabilityWeeklyOrderByInput with _$SlotOfAvailabilityWeeklyOrderByInput {
  const factory SlotOfAvailabilityWeeklyOrderByInput({
    SortOrder? id,
    SortOrder? startTimeUtc,
    SortOrder? endTimeUtc,
    SortOrder? utcOffsetMinutes,
    SortOrder? consultantProfileId,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _SlotOfAvailabilityWeeklyOrderByInput;

  factory SlotOfAvailabilityWeeklyOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SlotOfAvailabilityWeeklyOrderByInputFromJson(json);
}

