import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'maintenance_phase.dart';

part 'maintenance_window.freezed.dart';
part 'maintenance_window.g.dart';

@freezed
class MaintenanceWindow with _$MaintenanceWindow {
  const factory MaintenanceWindow({
    required String id,
    @Default(MaintenancePhase.off)
    MaintenancePhase phase,
    String? reason,
    DateTime? scheduledAt,
    DateTime? startedAt,
    DateTime? endedAt,
    DateTime? estimatedEnd,
    String? startedBy,
    String? endedBy,
    String? bypassSecret,
    Map<String, dynamic>? metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MaintenanceWindow;

  factory MaintenanceWindow.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceWindowFromJson(json);
}

/// Input for creating a new MaintenanceWindow
@freezed
class CreateMaintenanceWindowInput with _$CreateMaintenanceWindowInput {
  const factory CreateMaintenanceWindowInput({
    @Default(MaintenancePhase.off)
    MaintenancePhase phase,
    String? reason,
    DateTime? scheduledAt,
    DateTime? startedAt,
    DateTime? endedAt,
    DateTime? estimatedEnd,
    String? startedBy,
    String? endedBy,
    String? bypassSecret,
    Map<String, dynamic>? metadata,
  }) = _CreateMaintenanceWindowInput;

  factory CreateMaintenanceWindowInput.fromJson(Map<String, dynamic> json) =>
      _$CreateMaintenanceWindowInputFromJson(json);
}

/// Input for updating an existing MaintenanceWindow
@freezed
class UpdateMaintenanceWindowInput with _$UpdateMaintenanceWindowInput {
  const factory UpdateMaintenanceWindowInput({
    MaintenancePhase? phase,
    String? reason,
    DateTime? scheduledAt,
    DateTime? startedAt,
    DateTime? endedAt,
    DateTime? estimatedEnd,
    String? startedBy,
    String? endedBy,
    String? bypassSecret,
    Map<String, dynamic>? metadata,
  }) = _UpdateMaintenanceWindowInput;

  factory UpdateMaintenanceWindowInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateMaintenanceWindowInputFromJson(json);
}

/// Unique where input for MaintenanceWindow
/// At least one field must be provided
@freezed
class MaintenanceWindowWhereUniqueInput with _$MaintenanceWindowWhereUniqueInput {
  const factory MaintenanceWindowWhereUniqueInput({
    String? id,
  }) = _MaintenanceWindowWhereUniqueInput;

  factory MaintenanceWindowWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceWindowWhereUniqueInputFromJson(json);
}

/// Where input for filtering MaintenanceWindow records
@freezed
class MaintenanceWindowWhereInput with _$MaintenanceWindowWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory MaintenanceWindowWhereInput({
    StringFilter? id,
    MaintenancePhaseFilter? phase,
    StringFilter? reason,
    DateTimeFilter? scheduledAt,
    DateTimeFilter? startedAt,
    DateTimeFilter? endedAt,
    DateTimeFilter? estimatedEnd,
    StringFilter? startedBy,
    StringFilter? endedBy,
    StringFilter? bypassSecret,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    List<MaintenanceWindowWhereInput>? AND,
    List<MaintenanceWindowWhereInput>? OR,
    MaintenanceWindowWhereInput? NOT,
  }) = _MaintenanceWindowWhereInput;

  factory MaintenanceWindowWhereInput.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceWindowWhereInputFromJson(json);
}

/// Filter for MaintenanceWindow list relations (one-to-many, many-to-many)
@freezed
class MaintenanceWindowListRelationFilter with _$MaintenanceWindowListRelationFilter {
  const factory MaintenanceWindowListRelationFilter({
    /// At least one related record matches
    MaintenanceWindowWhereInput? some,
    /// All related records match
    MaintenanceWindowWhereInput? every,
    /// No related records match
    MaintenanceWindowWhereInput? none,
  }) = _MaintenanceWindowListRelationFilter;

  factory MaintenanceWindowListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceWindowListRelationFilterFromJson(json);
}

/// Filter for MaintenanceWindow single relations (one-to-one, many-to-one)
@freezed
class MaintenanceWindowRelationFilter with _$MaintenanceWindowRelationFilter {
  const factory MaintenanceWindowRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') MaintenanceWindowWhereInput? is_,
    /// Related record does not match
    MaintenanceWindowWhereInput? isNot,
  }) = _MaintenanceWindowRelationFilter;

  factory MaintenanceWindowRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceWindowRelationFilterFromJson(json);
}

/// Order by input for sorting MaintenanceWindow records
@freezed
class MaintenanceWindowOrderByInput with _$MaintenanceWindowOrderByInput {
  const factory MaintenanceWindowOrderByInput({
    SortOrder? id,
    SortOrder? reason,
    SortOrder? scheduledAt,
    SortOrder? startedAt,
    SortOrder? endedAt,
    SortOrder? estimatedEnd,
    SortOrder? startedBy,
    SortOrder? endedBy,
    SortOrder? bypassSecret,
    SortOrder? createdAt,
    SortOrder? updatedAt,
  }) = _MaintenanceWindowOrderByInput;

  factory MaintenanceWindowOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceWindowOrderByInputFromJson(json);
}

