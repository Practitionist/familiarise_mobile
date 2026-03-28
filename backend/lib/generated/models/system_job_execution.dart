import 'package:freezed_annotation/freezed_annotation.dart';

import '../filters.dart';

import 'system_job_status.dart';

part 'system_job_execution.freezed.dart';
part 'system_job_execution.g.dart';

@freezed
class SystemJobExecution with _$SystemJobExecution {
  const factory SystemJobExecution({
    required String id,
    required String jobId,
    required String jobName,
    required SystemJobStatus status,
    required DateTime startedAt,
    DateTime? endedAt,
    String? triggeredBy,
    Map<String, dynamic>? result,
    String? errorLog,
    int? itemsProcessed,
    int? errorCount,
    int? durationMs,
    required DateTime createdAt,
  }) = _SystemJobExecution;

  factory SystemJobExecution.fromJson(Map<String, dynamic> json) =>
      _$SystemJobExecutionFromJson(json);
}

/// Input for creating a new SystemJobExecution
@freezed
class CreateSystemJobExecutionInput with _$CreateSystemJobExecutionInput {
  const factory CreateSystemJobExecutionInput({
    required String jobId,
    required String jobName,
    required SystemJobStatus status,
    DateTime? endedAt,
    String? triggeredBy,
    Map<String, dynamic>? result,
    String? errorLog,
    int? itemsProcessed,
    int? errorCount,
    int? durationMs,
  }) = _CreateSystemJobExecutionInput;

  factory CreateSystemJobExecutionInput.fromJson(Map<String, dynamic> json) =>
      _$CreateSystemJobExecutionInputFromJson(json);
}

/// Input for updating an existing SystemJobExecution
@freezed
class UpdateSystemJobExecutionInput with _$UpdateSystemJobExecutionInput {
  const factory UpdateSystemJobExecutionInput({
    String? jobId,
    String? jobName,
    SystemJobStatus? status,
    DateTime? endedAt,
    String? triggeredBy,
    Map<String, dynamic>? result,
    String? errorLog,
    int? itemsProcessed,
    int? errorCount,
    int? durationMs,
  }) = _UpdateSystemJobExecutionInput;

  factory UpdateSystemJobExecutionInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateSystemJobExecutionInputFromJson(json);
}

/// Unique where input for SystemJobExecution
/// At least one field must be provided
@freezed
class SystemJobExecutionWhereUniqueInput with _$SystemJobExecutionWhereUniqueInput {
  const factory SystemJobExecutionWhereUniqueInput({
    String? id,
  }) = _SystemJobExecutionWhereUniqueInput;

  factory SystemJobExecutionWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SystemJobExecutionWhereUniqueInputFromJson(json);
}

/// Where input for filtering SystemJobExecution records
@freezed
class SystemJobExecutionWhereInput with _$SystemJobExecutionWhereInput {
  @JsonSerializable(explicitToJson: true)
  const factory SystemJobExecutionWhereInput({
    StringFilter? id,
    StringFilter? jobId,
    StringFilter? jobName,
    SystemJobStatusFilter? status,
    DateTimeFilter? startedAt,
    DateTimeFilter? endedAt,
    StringFilter? triggeredBy,
    StringFilter? errorLog,
    IntFilter? itemsProcessed,
    IntFilter? errorCount,
    IntFilter? durationMs,
    DateTimeFilter? createdAt,
    List<SystemJobExecutionWhereInput>? AND,
    List<SystemJobExecutionWhereInput>? OR,
    SystemJobExecutionWhereInput? NOT,
  }) = _SystemJobExecutionWhereInput;

  factory SystemJobExecutionWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SystemJobExecutionWhereInputFromJson(json);
}

/// Filter for SystemJobExecution list relations (one-to-many, many-to-many)
@freezed
class SystemJobExecutionListRelationFilter with _$SystemJobExecutionListRelationFilter {
  const factory SystemJobExecutionListRelationFilter({
    /// At least one related record matches
    SystemJobExecutionWhereInput? some,
    /// All related records match
    SystemJobExecutionWhereInput? every,
    /// No related records match
    SystemJobExecutionWhereInput? none,
  }) = _SystemJobExecutionListRelationFilter;

  factory SystemJobExecutionListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SystemJobExecutionListRelationFilterFromJson(json);
}

/// Filter for SystemJobExecution single relations (one-to-one, many-to-one)
@freezed
class SystemJobExecutionRelationFilter with _$SystemJobExecutionRelationFilter {
  const factory SystemJobExecutionRelationFilter({
    /// Related record matches
    @JsonKey(name: 'is') SystemJobExecutionWhereInput? is_,
    /// Related record does not match
    SystemJobExecutionWhereInput? isNot,
  }) = _SystemJobExecutionRelationFilter;

  factory SystemJobExecutionRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$SystemJobExecutionRelationFilterFromJson(json);
}

/// Order by input for sorting SystemJobExecution records
@freezed
class SystemJobExecutionOrderByInput with _$SystemJobExecutionOrderByInput {
  const factory SystemJobExecutionOrderByInput({
    SortOrder? id,
    SortOrder? jobId,
    SortOrder? jobName,
    SortOrder? startedAt,
    SortOrder? endedAt,
    SortOrder? triggeredBy,
    SortOrder? errorLog,
    SortOrder? itemsProcessed,
    SortOrder? errorCount,
    SortOrder? durationMs,
    SortOrder? createdAt,
  }) = _SystemJobExecutionOrderByInput;

  factory SystemJobExecutionOrderByInput.fromJson(Map<String, dynamic> json) =>
      _$SystemJobExecutionOrderByInputFromJson(json);
}

