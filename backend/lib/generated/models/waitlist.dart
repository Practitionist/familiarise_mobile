import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'waitlist_status.dart';

part 'waitlist.freezed.dart';
part 'waitlist.g.dart';

@freezed
class Waitlist with _$Waitlist {
  const factory Waitlist({
    required String id,
    required DateTime joinedAt,
    int? position,
    @Default(WaitlistStatus.waiting)
    WaitlistStatus status,
    @Default(0)
    int priority,
    DateTime? notifiedAt,
    DateTime? expiresAt,
    DateTime? reminderSentAt,
    DateTime? bookedAt,
    DateTime? respondedAt,
    Map<String, dynamic>? preferences,
  }) = _Waitlist;

  factory Waitlist.fromJson(Map<String, dynamic> json) =>
      _$WaitlistFromJson(json);
}

/// Input for creating a new Waitlist
@freezed
class CreateWaitlistInput with _$CreateWaitlistInput {
  const factory CreateWaitlistInput({
    int? position,
    @Default(WaitlistStatus.waiting)
    WaitlistStatus status,
    @Default(0)
    int? priority,
    DateTime? notifiedAt,
    DateTime? expiresAt,
    DateTime? reminderSentAt,
    DateTime? bookedAt,
    DateTime? respondedAt,
    Map<String, dynamic>? preferences,
  }) = _CreateWaitlistInput;

  factory CreateWaitlistInput.fromJson(Map<String, dynamic> json) =>
      _$CreateWaitlistInputFromJson(json);
}

/// Input for updating an existing Waitlist
@freezed
class UpdateWaitlistInput with _$UpdateWaitlistInput {
  const factory UpdateWaitlistInput({
    int? position,
    WaitlistStatus? status,
    int? priority,
    DateTime? notifiedAt,
    DateTime? expiresAt,
    DateTime? reminderSentAt,
    DateTime? bookedAt,
    DateTime? respondedAt,
    Map<String, dynamic>? preferences,
  }) = _UpdateWaitlistInput;

  factory UpdateWaitlistInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateWaitlistInputFromJson(json);
}

/// Unique where input for Waitlist
/// At least one field must be provided
@freezed
class WaitlistWhereUniqueInput with _$WaitlistWhereUniqueInput {
  const factory WaitlistWhereUniqueInput({
    String? id,
  }) = _WaitlistWhereUniqueInput;

  factory WaitlistWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$WaitlistWhereUniqueInputFromJson(json);
}

/// Where input for filtering Waitlist records
@freezed
class WaitlistWhereInput with _$WaitlistWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory WaitlistWhereInput({
    StringFilter? id,
    DateTimeFilter? joinedAt,
    IntFilter? position,
    WaitlistStatusFilter? status,
    IntFilter? priority,
    DateTimeFilter? notifiedAt,
    DateTimeFilter? expiresAt,
    DateTimeFilter? reminderSentAt,
    DateTimeFilter? bookedAt,
    DateTimeFilter? respondedAt,
    List<WaitlistWhereInput>? AND,
    List<WaitlistWhereInput>? OR,
    WaitlistWhereInput? NOT,
  }) = _WaitlistWhereInput;

  factory WaitlistWhereInput.fromJson(Map<String, dynamic> json) =>
      _$WaitlistWhereInputFromJson(json);
}

/// Filter for Waitlist list relations (one-to-many, many-to-many)
@freezed
class WaitlistListRelationFilter with _$WaitlistListRelationFilter {
  const factory WaitlistListRelationFilter({
    /// At least one related record matches
    WaitlistWhereInput? some,
    /// All related records match
    WaitlistWhereInput? every,
    /// No related records match
    WaitlistWhereInput? none,
  }) = _WaitlistListRelationFilter;

  factory WaitlistListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WaitlistListRelationFilterFromJson(json);
}

/// Filter for Waitlist single relations (one-to-one, many-to-one)
@freezed
class WaitlistRelationFilter with _$WaitlistRelationFilter {
  const factory WaitlistRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') WaitlistWhereInput? is_,
    /// Related record does not match
    WaitlistWhereInput? isNot,
  }) = _WaitlistRelationFilter;

  factory WaitlistRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$WaitlistRelationFilterFromJson(json);
}

/// Order by input for sorting Waitlist records
@freezed
class WaitlistOrderByInput with _$WaitlistOrderByInput {
  const factory WaitlistOrderByInput({
    SortOrder? id,
    SortOrder? joinedAt,
    SortOrder? position,
    SortOrder? priority,
    SortOrder? notifiedAt,
    SortOrder? expiresAt,
    SortOrder? reminderSentAt,
    SortOrder? bookedAt,
    SortOrder? respondedAt,
  }) = _WaitlistOrderByInput;

  factory WaitlistOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$WaitlistOrderByInputFromJson(json);
}

