// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_job_execution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SystemJobExecution _$SystemJobExecutionFromJson(Map<String, dynamic> json) {
  return _SystemJobExecution.fromJson(json);
}

/// @nodoc
mixin _$SystemJobExecution {
  String get id => throw _privateConstructorUsedError;
  String get jobId => throw _privateConstructorUsedError;
  String get jobName => throw _privateConstructorUsedError;
  SystemJobStatus get status => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  String? get triggeredBy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get result => throw _privateConstructorUsedError;
  String? get errorLog => throw _privateConstructorUsedError;
  int? get itemsProcessed => throw _privateConstructorUsedError;
  int? get errorCount => throw _privateConstructorUsedError;
  int? get durationMs => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SystemJobExecution to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemJobExecution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemJobExecutionCopyWith<SystemJobExecution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemJobExecutionCopyWith<$Res> {
  factory $SystemJobExecutionCopyWith(
          SystemJobExecution value, $Res Function(SystemJobExecution) then) =
      _$SystemJobExecutionCopyWithImpl<$Res, SystemJobExecution>;
  @useResult
  $Res call(
      {String id,
      String jobId,
      String jobName,
      SystemJobStatus status,
      DateTime startedAt,
      DateTime? endedAt,
      String? triggeredBy,
      Map<String, dynamic>? result,
      String? errorLog,
      int? itemsProcessed,
      int? errorCount,
      int? durationMs,
      DateTime createdAt});
}

/// @nodoc
class _$SystemJobExecutionCopyWithImpl<$Res, $Val extends SystemJobExecution>
    implements $SystemJobExecutionCopyWith<$Res> {
  _$SystemJobExecutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemJobExecution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jobId = null,
    Object? jobName = null,
    Object? status = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
    Object? triggeredBy = freezed,
    Object? result = freezed,
    Object? errorLog = freezed,
    Object? itemsProcessed = freezed,
    Object? errorCount = freezed,
    Object? durationMs = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      jobName: null == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SystemJobStatus,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      triggeredBy: freezed == triggeredBy
          ? _value.triggeredBy
          : triggeredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorLog: freezed == errorLog
          ? _value.errorLog
          : errorLog // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsProcessed: freezed == itemsProcessed
          ? _value.itemsProcessed
          : itemsProcessed // ignore: cast_nullable_to_non_nullable
              as int?,
      errorCount: freezed == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemJobExecutionImplCopyWith<$Res>
    implements $SystemJobExecutionCopyWith<$Res> {
  factory _$$SystemJobExecutionImplCopyWith(_$SystemJobExecutionImpl value,
          $Res Function(_$SystemJobExecutionImpl) then) =
      __$$SystemJobExecutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String jobId,
      String jobName,
      SystemJobStatus status,
      DateTime startedAt,
      DateTime? endedAt,
      String? triggeredBy,
      Map<String, dynamic>? result,
      String? errorLog,
      int? itemsProcessed,
      int? errorCount,
      int? durationMs,
      DateTime createdAt});
}

/// @nodoc
class __$$SystemJobExecutionImplCopyWithImpl<$Res>
    extends _$SystemJobExecutionCopyWithImpl<$Res, _$SystemJobExecutionImpl>
    implements _$$SystemJobExecutionImplCopyWith<$Res> {
  __$$SystemJobExecutionImplCopyWithImpl(_$SystemJobExecutionImpl _value,
      $Res Function(_$SystemJobExecutionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemJobExecution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jobId = null,
    Object? jobName = null,
    Object? status = null,
    Object? startedAt = null,
    Object? endedAt = freezed,
    Object? triggeredBy = freezed,
    Object? result = freezed,
    Object? errorLog = freezed,
    Object? itemsProcessed = freezed,
    Object? errorCount = freezed,
    Object? durationMs = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$SystemJobExecutionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      jobName: null == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SystemJobStatus,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      triggeredBy: freezed == triggeredBy
          ? _value.triggeredBy
          : triggeredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorLog: freezed == errorLog
          ? _value.errorLog
          : errorLog // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsProcessed: freezed == itemsProcessed
          ? _value.itemsProcessed
          : itemsProcessed // ignore: cast_nullable_to_non_nullable
              as int?,
      errorCount: freezed == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemJobExecutionImpl implements _SystemJobExecution {
  const _$SystemJobExecutionImpl(
      {required this.id,
      required this.jobId,
      required this.jobName,
      required this.status,
      required this.startedAt,
      this.endedAt,
      this.triggeredBy,
      final Map<String, dynamic>? result,
      this.errorLog,
      this.itemsProcessed,
      this.errorCount,
      this.durationMs,
      required this.createdAt})
      : _result = result;

  factory _$SystemJobExecutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemJobExecutionImplFromJson(json);

  @override
  final String id;
  @override
  final String jobId;
  @override
  final String jobName;
  @override
  final SystemJobStatus status;
  @override
  final DateTime startedAt;
  @override
  final DateTime? endedAt;
  @override
  final String? triggeredBy;
  final Map<String, dynamic>? _result;
  @override
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? errorLog;
  @override
  final int? itemsProcessed;
  @override
  final int? errorCount;
  @override
  final int? durationMs;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'SystemJobExecution(id: $id, jobId: $jobId, jobName: $jobName, status: $status, startedAt: $startedAt, endedAt: $endedAt, triggeredBy: $triggeredBy, result: $result, errorLog: $errorLog, itemsProcessed: $itemsProcessed, errorCount: $errorCount, durationMs: $durationMs, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemJobExecutionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobName, jobName) || other.jobName == jobName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.triggeredBy, triggeredBy) ||
                other.triggeredBy == triggeredBy) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.errorLog, errorLog) ||
                other.errorLog == errorLog) &&
            (identical(other.itemsProcessed, itemsProcessed) ||
                other.itemsProcessed == itemsProcessed) &&
            (identical(other.errorCount, errorCount) ||
                other.errorCount == errorCount) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      jobId,
      jobName,
      status,
      startedAt,
      endedAt,
      triggeredBy,
      const DeepCollectionEquality().hash(_result),
      errorLog,
      itemsProcessed,
      errorCount,
      durationMs,
      createdAt);

  /// Create a copy of SystemJobExecution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemJobExecutionImplCopyWith<_$SystemJobExecutionImpl> get copyWith =>
      __$$SystemJobExecutionImplCopyWithImpl<_$SystemJobExecutionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemJobExecutionImplToJson(
      this,
    );
  }
}

abstract class _SystemJobExecution implements SystemJobExecution {
  const factory _SystemJobExecution(
      {required final String id,
      required final String jobId,
      required final String jobName,
      required final SystemJobStatus status,
      required final DateTime startedAt,
      final DateTime? endedAt,
      final String? triggeredBy,
      final Map<String, dynamic>? result,
      final String? errorLog,
      final int? itemsProcessed,
      final int? errorCount,
      final int? durationMs,
      required final DateTime createdAt}) = _$SystemJobExecutionImpl;

  factory _SystemJobExecution.fromJson(Map<String, dynamic> json) =
      _$SystemJobExecutionImpl.fromJson;

  @override
  String get id;
  @override
  String get jobId;
  @override
  String get jobName;
  @override
  SystemJobStatus get status;
  @override
  DateTime get startedAt;
  @override
  DateTime? get endedAt;
  @override
  String? get triggeredBy;
  @override
  Map<String, dynamic>? get result;
  @override
  String? get errorLog;
  @override
  int? get itemsProcessed;
  @override
  int? get errorCount;
  @override
  int? get durationMs;
  @override
  DateTime get createdAt;

  /// Create a copy of SystemJobExecution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemJobExecutionImplCopyWith<_$SystemJobExecutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSystemJobExecutionInput _$CreateSystemJobExecutionInputFromJson(
    Map<String, dynamic> json) {
  return _CreateSystemJobExecutionInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSystemJobExecutionInput {
  String get jobId => throw _privateConstructorUsedError;
  String get jobName => throw _privateConstructorUsedError;
  SystemJobStatus get status => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  String? get triggeredBy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get result => throw _privateConstructorUsedError;
  String? get errorLog => throw _privateConstructorUsedError;
  int? get itemsProcessed => throw _privateConstructorUsedError;
  int? get errorCount => throw _privateConstructorUsedError;
  int? get durationMs => throw _privateConstructorUsedError;

  /// Serializes this CreateSystemJobExecutionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSystemJobExecutionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSystemJobExecutionInputCopyWith<CreateSystemJobExecutionInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSystemJobExecutionInputCopyWith<$Res> {
  factory $CreateSystemJobExecutionInputCopyWith(
          CreateSystemJobExecutionInput value,
          $Res Function(CreateSystemJobExecutionInput) then) =
      _$CreateSystemJobExecutionInputCopyWithImpl<$Res,
          CreateSystemJobExecutionInput>;
  @useResult
  $Res call(
      {String jobId,
      String jobName,
      SystemJobStatus status,
      DateTime? endedAt,
      String? triggeredBy,
      Map<String, dynamic>? result,
      String? errorLog,
      int? itemsProcessed,
      int? errorCount,
      int? durationMs});
}

/// @nodoc
class _$CreateSystemJobExecutionInputCopyWithImpl<$Res,
        $Val extends CreateSystemJobExecutionInput>
    implements $CreateSystemJobExecutionInputCopyWith<$Res> {
  _$CreateSystemJobExecutionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSystemJobExecutionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
    Object? jobName = null,
    Object? status = null,
    Object? endedAt = freezed,
    Object? triggeredBy = freezed,
    Object? result = freezed,
    Object? errorLog = freezed,
    Object? itemsProcessed = freezed,
    Object? errorCount = freezed,
    Object? durationMs = freezed,
  }) {
    return _then(_value.copyWith(
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      jobName: null == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SystemJobStatus,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      triggeredBy: freezed == triggeredBy
          ? _value.triggeredBy
          : triggeredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorLog: freezed == errorLog
          ? _value.errorLog
          : errorLog // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsProcessed: freezed == itemsProcessed
          ? _value.itemsProcessed
          : itemsProcessed // ignore: cast_nullable_to_non_nullable
              as int?,
      errorCount: freezed == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSystemJobExecutionInputImplCopyWith<$Res>
    implements $CreateSystemJobExecutionInputCopyWith<$Res> {
  factory _$$CreateSystemJobExecutionInputImplCopyWith(
          _$CreateSystemJobExecutionInputImpl value,
          $Res Function(_$CreateSystemJobExecutionInputImpl) then) =
      __$$CreateSystemJobExecutionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String jobId,
      String jobName,
      SystemJobStatus status,
      DateTime? endedAt,
      String? triggeredBy,
      Map<String, dynamic>? result,
      String? errorLog,
      int? itemsProcessed,
      int? errorCount,
      int? durationMs});
}

/// @nodoc
class __$$CreateSystemJobExecutionInputImplCopyWithImpl<$Res>
    extends _$CreateSystemJobExecutionInputCopyWithImpl<$Res,
        _$CreateSystemJobExecutionInputImpl>
    implements _$$CreateSystemJobExecutionInputImplCopyWith<$Res> {
  __$$CreateSystemJobExecutionInputImplCopyWithImpl(
      _$CreateSystemJobExecutionInputImpl _value,
      $Res Function(_$CreateSystemJobExecutionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSystemJobExecutionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
    Object? jobName = null,
    Object? status = null,
    Object? endedAt = freezed,
    Object? triggeredBy = freezed,
    Object? result = freezed,
    Object? errorLog = freezed,
    Object? itemsProcessed = freezed,
    Object? errorCount = freezed,
    Object? durationMs = freezed,
  }) {
    return _then(_$CreateSystemJobExecutionInputImpl(
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      jobName: null == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SystemJobStatus,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      triggeredBy: freezed == triggeredBy
          ? _value.triggeredBy
          : triggeredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorLog: freezed == errorLog
          ? _value.errorLog
          : errorLog // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsProcessed: freezed == itemsProcessed
          ? _value.itemsProcessed
          : itemsProcessed // ignore: cast_nullable_to_non_nullable
              as int?,
      errorCount: freezed == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSystemJobExecutionInputImpl
    implements _CreateSystemJobExecutionInput {
  const _$CreateSystemJobExecutionInputImpl(
      {required this.jobId,
      required this.jobName,
      required this.status,
      this.endedAt,
      this.triggeredBy,
      final Map<String, dynamic>? result,
      this.errorLog,
      this.itemsProcessed,
      this.errorCount,
      this.durationMs})
      : _result = result;

  factory _$CreateSystemJobExecutionInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSystemJobExecutionInputImplFromJson(json);

  @override
  final String jobId;
  @override
  final String jobName;
  @override
  final SystemJobStatus status;
  @override
  final DateTime? endedAt;
  @override
  final String? triggeredBy;
  final Map<String, dynamic>? _result;
  @override
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? errorLog;
  @override
  final int? itemsProcessed;
  @override
  final int? errorCount;
  @override
  final int? durationMs;

  @override
  String toString() {
    return 'CreateSystemJobExecutionInput(jobId: $jobId, jobName: $jobName, status: $status, endedAt: $endedAt, triggeredBy: $triggeredBy, result: $result, errorLog: $errorLog, itemsProcessed: $itemsProcessed, errorCount: $errorCount, durationMs: $durationMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSystemJobExecutionInputImpl &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobName, jobName) || other.jobName == jobName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.triggeredBy, triggeredBy) ||
                other.triggeredBy == triggeredBy) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.errorLog, errorLog) ||
                other.errorLog == errorLog) &&
            (identical(other.itemsProcessed, itemsProcessed) ||
                other.itemsProcessed == itemsProcessed) &&
            (identical(other.errorCount, errorCount) ||
                other.errorCount == errorCount) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      jobId,
      jobName,
      status,
      endedAt,
      triggeredBy,
      const DeepCollectionEquality().hash(_result),
      errorLog,
      itemsProcessed,
      errorCount,
      durationMs);

  /// Create a copy of CreateSystemJobExecutionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSystemJobExecutionInputImplCopyWith<
          _$CreateSystemJobExecutionInputImpl>
      get copyWith => __$$CreateSystemJobExecutionInputImplCopyWithImpl<
          _$CreateSystemJobExecutionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSystemJobExecutionInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSystemJobExecutionInput
    implements CreateSystemJobExecutionInput {
  const factory _CreateSystemJobExecutionInput(
      {required final String jobId,
      required final String jobName,
      required final SystemJobStatus status,
      final DateTime? endedAt,
      final String? triggeredBy,
      final Map<String, dynamic>? result,
      final String? errorLog,
      final int? itemsProcessed,
      final int? errorCount,
      final int? durationMs}) = _$CreateSystemJobExecutionInputImpl;

  factory _CreateSystemJobExecutionInput.fromJson(Map<String, dynamic> json) =
      _$CreateSystemJobExecutionInputImpl.fromJson;

  @override
  String get jobId;
  @override
  String get jobName;
  @override
  SystemJobStatus get status;
  @override
  DateTime? get endedAt;
  @override
  String? get triggeredBy;
  @override
  Map<String, dynamic>? get result;
  @override
  String? get errorLog;
  @override
  int? get itemsProcessed;
  @override
  int? get errorCount;
  @override
  int? get durationMs;

  /// Create a copy of CreateSystemJobExecutionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSystemJobExecutionInputImplCopyWith<
          _$CreateSystemJobExecutionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSystemJobExecutionInput _$UpdateSystemJobExecutionInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateSystemJobExecutionInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSystemJobExecutionInput {
  String? get jobId => throw _privateConstructorUsedError;
  String? get jobName => throw _privateConstructorUsedError;
  SystemJobStatus? get status => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  String? get triggeredBy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get result => throw _privateConstructorUsedError;
  String? get errorLog => throw _privateConstructorUsedError;
  int? get itemsProcessed => throw _privateConstructorUsedError;
  int? get errorCount => throw _privateConstructorUsedError;
  int? get durationMs => throw _privateConstructorUsedError;

  /// Serializes this UpdateSystemJobExecutionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSystemJobExecutionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSystemJobExecutionInputCopyWith<UpdateSystemJobExecutionInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSystemJobExecutionInputCopyWith<$Res> {
  factory $UpdateSystemJobExecutionInputCopyWith(
          UpdateSystemJobExecutionInput value,
          $Res Function(UpdateSystemJobExecutionInput) then) =
      _$UpdateSystemJobExecutionInputCopyWithImpl<$Res,
          UpdateSystemJobExecutionInput>;
  @useResult
  $Res call(
      {String? jobId,
      String? jobName,
      SystemJobStatus? status,
      DateTime? endedAt,
      String? triggeredBy,
      Map<String, dynamic>? result,
      String? errorLog,
      int? itemsProcessed,
      int? errorCount,
      int? durationMs});
}

/// @nodoc
class _$UpdateSystemJobExecutionInputCopyWithImpl<$Res,
        $Val extends UpdateSystemJobExecutionInput>
    implements $UpdateSystemJobExecutionInputCopyWith<$Res> {
  _$UpdateSystemJobExecutionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSystemJobExecutionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = freezed,
    Object? jobName = freezed,
    Object? status = freezed,
    Object? endedAt = freezed,
    Object? triggeredBy = freezed,
    Object? result = freezed,
    Object? errorLog = freezed,
    Object? itemsProcessed = freezed,
    Object? errorCount = freezed,
    Object? durationMs = freezed,
  }) {
    return _then(_value.copyWith(
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobName: freezed == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SystemJobStatus?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      triggeredBy: freezed == triggeredBy
          ? _value.triggeredBy
          : triggeredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorLog: freezed == errorLog
          ? _value.errorLog
          : errorLog // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsProcessed: freezed == itemsProcessed
          ? _value.itemsProcessed
          : itemsProcessed // ignore: cast_nullable_to_non_nullable
              as int?,
      errorCount: freezed == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSystemJobExecutionInputImplCopyWith<$Res>
    implements $UpdateSystemJobExecutionInputCopyWith<$Res> {
  factory _$$UpdateSystemJobExecutionInputImplCopyWith(
          _$UpdateSystemJobExecutionInputImpl value,
          $Res Function(_$UpdateSystemJobExecutionInputImpl) then) =
      __$$UpdateSystemJobExecutionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? jobId,
      String? jobName,
      SystemJobStatus? status,
      DateTime? endedAt,
      String? triggeredBy,
      Map<String, dynamic>? result,
      String? errorLog,
      int? itemsProcessed,
      int? errorCount,
      int? durationMs});
}

/// @nodoc
class __$$UpdateSystemJobExecutionInputImplCopyWithImpl<$Res>
    extends _$UpdateSystemJobExecutionInputCopyWithImpl<$Res,
        _$UpdateSystemJobExecutionInputImpl>
    implements _$$UpdateSystemJobExecutionInputImplCopyWith<$Res> {
  __$$UpdateSystemJobExecutionInputImplCopyWithImpl(
      _$UpdateSystemJobExecutionInputImpl _value,
      $Res Function(_$UpdateSystemJobExecutionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSystemJobExecutionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = freezed,
    Object? jobName = freezed,
    Object? status = freezed,
    Object? endedAt = freezed,
    Object? triggeredBy = freezed,
    Object? result = freezed,
    Object? errorLog = freezed,
    Object? itemsProcessed = freezed,
    Object? errorCount = freezed,
    Object? durationMs = freezed,
  }) {
    return _then(_$UpdateSystemJobExecutionInputImpl(
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobName: freezed == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SystemJobStatus?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      triggeredBy: freezed == triggeredBy
          ? _value.triggeredBy
          : triggeredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorLog: freezed == errorLog
          ? _value.errorLog
          : errorLog // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsProcessed: freezed == itemsProcessed
          ? _value.itemsProcessed
          : itemsProcessed // ignore: cast_nullable_to_non_nullable
              as int?,
      errorCount: freezed == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSystemJobExecutionInputImpl
    implements _UpdateSystemJobExecutionInput {
  const _$UpdateSystemJobExecutionInputImpl(
      {this.jobId,
      this.jobName,
      this.status,
      this.endedAt,
      this.triggeredBy,
      final Map<String, dynamic>? result,
      this.errorLog,
      this.itemsProcessed,
      this.errorCount,
      this.durationMs})
      : _result = result;

  factory _$UpdateSystemJobExecutionInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSystemJobExecutionInputImplFromJson(json);

  @override
  final String? jobId;
  @override
  final String? jobName;
  @override
  final SystemJobStatus? status;
  @override
  final DateTime? endedAt;
  @override
  final String? triggeredBy;
  final Map<String, dynamic>? _result;
  @override
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? errorLog;
  @override
  final int? itemsProcessed;
  @override
  final int? errorCount;
  @override
  final int? durationMs;

  @override
  String toString() {
    return 'UpdateSystemJobExecutionInput(jobId: $jobId, jobName: $jobName, status: $status, endedAt: $endedAt, triggeredBy: $triggeredBy, result: $result, errorLog: $errorLog, itemsProcessed: $itemsProcessed, errorCount: $errorCount, durationMs: $durationMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSystemJobExecutionInputImpl &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobName, jobName) || other.jobName == jobName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.triggeredBy, triggeredBy) ||
                other.triggeredBy == triggeredBy) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.errorLog, errorLog) ||
                other.errorLog == errorLog) &&
            (identical(other.itemsProcessed, itemsProcessed) ||
                other.itemsProcessed == itemsProcessed) &&
            (identical(other.errorCount, errorCount) ||
                other.errorCount == errorCount) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      jobId,
      jobName,
      status,
      endedAt,
      triggeredBy,
      const DeepCollectionEquality().hash(_result),
      errorLog,
      itemsProcessed,
      errorCount,
      durationMs);

  /// Create a copy of UpdateSystemJobExecutionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSystemJobExecutionInputImplCopyWith<
          _$UpdateSystemJobExecutionInputImpl>
      get copyWith => __$$UpdateSystemJobExecutionInputImplCopyWithImpl<
          _$UpdateSystemJobExecutionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSystemJobExecutionInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSystemJobExecutionInput
    implements UpdateSystemJobExecutionInput {
  const factory _UpdateSystemJobExecutionInput(
      {final String? jobId,
      final String? jobName,
      final SystemJobStatus? status,
      final DateTime? endedAt,
      final String? triggeredBy,
      final Map<String, dynamic>? result,
      final String? errorLog,
      final int? itemsProcessed,
      final int? errorCount,
      final int? durationMs}) = _$UpdateSystemJobExecutionInputImpl;

  factory _UpdateSystemJobExecutionInput.fromJson(Map<String, dynamic> json) =
      _$UpdateSystemJobExecutionInputImpl.fromJson;

  @override
  String? get jobId;
  @override
  String? get jobName;
  @override
  SystemJobStatus? get status;
  @override
  DateTime? get endedAt;
  @override
  String? get triggeredBy;
  @override
  Map<String, dynamic>? get result;
  @override
  String? get errorLog;
  @override
  int? get itemsProcessed;
  @override
  int? get errorCount;
  @override
  int? get durationMs;

  /// Create a copy of UpdateSystemJobExecutionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSystemJobExecutionInputImplCopyWith<
          _$UpdateSystemJobExecutionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SystemJobExecutionWhereUniqueInput _$SystemJobExecutionWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _SystemJobExecutionWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SystemJobExecutionWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SystemJobExecutionWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemJobExecutionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemJobExecutionWhereUniqueInputCopyWith<
          SystemJobExecutionWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemJobExecutionWhereUniqueInputCopyWith<$Res> {
  factory $SystemJobExecutionWhereUniqueInputCopyWith(
          SystemJobExecutionWhereUniqueInput value,
          $Res Function(SystemJobExecutionWhereUniqueInput) then) =
      _$SystemJobExecutionWhereUniqueInputCopyWithImpl<$Res,
          SystemJobExecutionWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SystemJobExecutionWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SystemJobExecutionWhereUniqueInput>
    implements $SystemJobExecutionWhereUniqueInputCopyWith<$Res> {
  _$SystemJobExecutionWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemJobExecutionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemJobExecutionWhereUniqueInputImplCopyWith<$Res>
    implements $SystemJobExecutionWhereUniqueInputCopyWith<$Res> {
  factory _$$SystemJobExecutionWhereUniqueInputImplCopyWith(
          _$SystemJobExecutionWhereUniqueInputImpl value,
          $Res Function(_$SystemJobExecutionWhereUniqueInputImpl) then) =
      __$$SystemJobExecutionWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SystemJobExecutionWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SystemJobExecutionWhereUniqueInputCopyWithImpl<$Res,
        _$SystemJobExecutionWhereUniqueInputImpl>
    implements _$$SystemJobExecutionWhereUniqueInputImplCopyWith<$Res> {
  __$$SystemJobExecutionWhereUniqueInputImplCopyWithImpl(
      _$SystemJobExecutionWhereUniqueInputImpl _value,
      $Res Function(_$SystemJobExecutionWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemJobExecutionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SystemJobExecutionWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemJobExecutionWhereUniqueInputImpl
    implements _SystemJobExecutionWhereUniqueInput {
  const _$SystemJobExecutionWhereUniqueInputImpl({this.id});

  factory _$SystemJobExecutionWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SystemJobExecutionWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SystemJobExecutionWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemJobExecutionWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SystemJobExecutionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemJobExecutionWhereUniqueInputImplCopyWith<
          _$SystemJobExecutionWhereUniqueInputImpl>
      get copyWith => __$$SystemJobExecutionWhereUniqueInputImplCopyWithImpl<
          _$SystemJobExecutionWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemJobExecutionWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SystemJobExecutionWhereUniqueInput
    implements SystemJobExecutionWhereUniqueInput {
  const factory _SystemJobExecutionWhereUniqueInput({final String? id}) =
      _$SystemJobExecutionWhereUniqueInputImpl;

  factory _SystemJobExecutionWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$SystemJobExecutionWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of SystemJobExecutionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemJobExecutionWhereUniqueInputImplCopyWith<
          _$SystemJobExecutionWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SystemJobExecutionWhereInput _$SystemJobExecutionWhereInputFromJson(
    Map<String, dynamic> json) {
  return _SystemJobExecutionWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SystemJobExecutionWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get jobId => throw _privateConstructorUsedError;
  StringFilter? get jobName => throw _privateConstructorUsedError;
  SystemJobStatusFilter? get status => throw _privateConstructorUsedError;
  DateTimeFilter? get startedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get endedAt => throw _privateConstructorUsedError;
  StringFilter? get triggeredBy => throw _privateConstructorUsedError;
  StringFilter? get errorLog => throw _privateConstructorUsedError;
  IntFilter? get itemsProcessed => throw _privateConstructorUsedError;
  IntFilter? get errorCount => throw _privateConstructorUsedError;
  IntFilter? get durationMs => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  List<SystemJobExecutionWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<SystemJobExecutionWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  SystemJobExecutionWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this SystemJobExecutionWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemJobExecutionWhereInputCopyWith<SystemJobExecutionWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemJobExecutionWhereInputCopyWith<$Res> {
  factory $SystemJobExecutionWhereInputCopyWith(
          SystemJobExecutionWhereInput value,
          $Res Function(SystemJobExecutionWhereInput) then) =
      _$SystemJobExecutionWhereInputCopyWithImpl<$Res,
          SystemJobExecutionWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
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
      SystemJobExecutionWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get jobId;
  $StringFilterCopyWith<$Res>? get jobName;
  $SystemJobStatusFilterCopyWith<$Res>? get status;
  $DateTimeFilterCopyWith<$Res>? get startedAt;
  $DateTimeFilterCopyWith<$Res>? get endedAt;
  $StringFilterCopyWith<$Res>? get triggeredBy;
  $StringFilterCopyWith<$Res>? get errorLog;
  $IntFilterCopyWith<$Res>? get itemsProcessed;
  $IntFilterCopyWith<$Res>? get errorCount;
  $IntFilterCopyWith<$Res>? get durationMs;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $SystemJobExecutionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SystemJobExecutionWhereInputCopyWithImpl<$Res,
        $Val extends SystemJobExecutionWhereInput>
    implements $SystemJobExecutionWhereInputCopyWith<$Res> {
  _$SystemJobExecutionWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? jobId = freezed,
    Object? jobName = freezed,
    Object? status = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? triggeredBy = freezed,
    Object? errorLog = freezed,
    Object? itemsProcessed = freezed,
    Object? errorCount = freezed,
    Object? durationMs = freezed,
    Object? createdAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      jobName: freezed == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SystemJobStatusFilter?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      triggeredBy: freezed == triggeredBy
          ? _value.triggeredBy
          : triggeredBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      errorLog: freezed == errorLog
          ? _value.errorLog
          : errorLog // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      itemsProcessed: freezed == itemsProcessed
          ? _value.itemsProcessed
          : itemsProcessed // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      errorCount: freezed == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<SystemJobExecutionWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SystemJobExecutionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get jobId {
    if (_value.jobId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.jobId!, (value) {
      return _then(_value.copyWith(jobId: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get jobName {
    if (_value.jobName == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.jobName!, (value) {
      return _then(_value.copyWith(jobName: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemJobStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $SystemJobStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get startedAt {
    if (_value.startedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.startedAt!, (value) {
      return _then(_value.copyWith(startedAt: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get endedAt {
    if (_value.endedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.endedAt!, (value) {
      return _then(_value.copyWith(endedAt: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get triggeredBy {
    if (_value.triggeredBy == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.triggeredBy!, (value) {
      return _then(_value.copyWith(triggeredBy: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get errorLog {
    if (_value.errorLog == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.errorLog!, (value) {
      return _then(_value.copyWith(errorLog: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get itemsProcessed {
    if (_value.itemsProcessed == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.itemsProcessed!, (value) {
      return _then(_value.copyWith(itemsProcessed: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get errorCount {
    if (_value.errorCount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.errorCount!, (value) {
      return _then(_value.copyWith(errorCount: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get durationMs {
    if (_value.durationMs == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.durationMs!, (value) {
      return _then(_value.copyWith(durationMs: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get createdAt {
    if (_value.createdAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.createdAt!, (value) {
      return _then(_value.copyWith(createdAt: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemJobExecutionWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SystemJobExecutionWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SystemJobExecutionWhereInputImplCopyWith<$Res>
    implements $SystemJobExecutionWhereInputCopyWith<$Res> {
  factory _$$SystemJobExecutionWhereInputImplCopyWith(
          _$SystemJobExecutionWhereInputImpl value,
          $Res Function(_$SystemJobExecutionWhereInputImpl) then) =
      __$$SystemJobExecutionWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
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
      SystemJobExecutionWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get jobId;
  @override
  $StringFilterCopyWith<$Res>? get jobName;
  @override
  $SystemJobStatusFilterCopyWith<$Res>? get status;
  @override
  $DateTimeFilterCopyWith<$Res>? get startedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get endedAt;
  @override
  $StringFilterCopyWith<$Res>? get triggeredBy;
  @override
  $StringFilterCopyWith<$Res>? get errorLog;
  @override
  $IntFilterCopyWith<$Res>? get itemsProcessed;
  @override
  $IntFilterCopyWith<$Res>? get errorCount;
  @override
  $IntFilterCopyWith<$Res>? get durationMs;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $SystemJobExecutionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SystemJobExecutionWhereInputImplCopyWithImpl<$Res>
    extends _$SystemJobExecutionWhereInputCopyWithImpl<$Res,
        _$SystemJobExecutionWhereInputImpl>
    implements _$$SystemJobExecutionWhereInputImplCopyWith<$Res> {
  __$$SystemJobExecutionWhereInputImplCopyWithImpl(
      _$SystemJobExecutionWhereInputImpl _value,
      $Res Function(_$SystemJobExecutionWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? jobId = freezed,
    Object? jobName = freezed,
    Object? status = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? triggeredBy = freezed,
    Object? errorLog = freezed,
    Object? itemsProcessed = freezed,
    Object? errorCount = freezed,
    Object? durationMs = freezed,
    Object? createdAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SystemJobExecutionWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      jobName: freezed == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SystemJobStatusFilter?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      triggeredBy: freezed == triggeredBy
          ? _value.triggeredBy
          : triggeredBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      errorLog: freezed == errorLog
          ? _value.errorLog
          : errorLog // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      itemsProcessed: freezed == itemsProcessed
          ? _value.itemsProcessed
          : itemsProcessed // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      errorCount: freezed == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<SystemJobExecutionWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SystemJobExecutionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SystemJobExecutionWhereInputImpl
    implements _SystemJobExecutionWhereInput {
  const _$SystemJobExecutionWhereInputImpl(
      {this.id,
      this.jobId,
      this.jobName,
      this.status,
      this.startedAt,
      this.endedAt,
      this.triggeredBy,
      this.errorLog,
      this.itemsProcessed,
      this.errorCount,
      this.durationMs,
      this.createdAt,
      final List<SystemJobExecutionWhereInput>? AND,
      final List<SystemJobExecutionWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SystemJobExecutionWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SystemJobExecutionWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? jobId;
  @override
  final StringFilter? jobName;
  @override
  final SystemJobStatusFilter? status;
  @override
  final DateTimeFilter? startedAt;
  @override
  final DateTimeFilter? endedAt;
  @override
  final StringFilter? triggeredBy;
  @override
  final StringFilter? errorLog;
  @override
  final IntFilter? itemsProcessed;
  @override
  final IntFilter? errorCount;
  @override
  final IntFilter? durationMs;
  @override
  final DateTimeFilter? createdAt;
  final List<SystemJobExecutionWhereInput>? _AND;
  @override
  List<SystemJobExecutionWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SystemJobExecutionWhereInput>? _OR;
  @override
  List<SystemJobExecutionWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SystemJobExecutionWhereInput? NOT;

  @override
  String toString() {
    return 'SystemJobExecutionWhereInput(id: $id, jobId: $jobId, jobName: $jobName, status: $status, startedAt: $startedAt, endedAt: $endedAt, triggeredBy: $triggeredBy, errorLog: $errorLog, itemsProcessed: $itemsProcessed, errorCount: $errorCount, durationMs: $durationMs, createdAt: $createdAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemJobExecutionWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobName, jobName) || other.jobName == jobName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.triggeredBy, triggeredBy) ||
                other.triggeredBy == triggeredBy) &&
            (identical(other.errorLog, errorLog) ||
                other.errorLog == errorLog) &&
            (identical(other.itemsProcessed, itemsProcessed) ||
                other.itemsProcessed == itemsProcessed) &&
            (identical(other.errorCount, errorCount) ||
                other.errorCount == errorCount) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      jobId,
      jobName,
      status,
      startedAt,
      endedAt,
      triggeredBy,
      errorLog,
      itemsProcessed,
      errorCount,
      durationMs,
      createdAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemJobExecutionWhereInputImplCopyWith<
          _$SystemJobExecutionWhereInputImpl>
      get copyWith => __$$SystemJobExecutionWhereInputImplCopyWithImpl<
          _$SystemJobExecutionWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemJobExecutionWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SystemJobExecutionWhereInput
    implements SystemJobExecutionWhereInput {
  const factory _SystemJobExecutionWhereInput(
          {final StringFilter? id,
          final StringFilter? jobId,
          final StringFilter? jobName,
          final SystemJobStatusFilter? status,
          final DateTimeFilter? startedAt,
          final DateTimeFilter? endedAt,
          final StringFilter? triggeredBy,
          final StringFilter? errorLog,
          final IntFilter? itemsProcessed,
          final IntFilter? errorCount,
          final IntFilter? durationMs,
          final DateTimeFilter? createdAt,
          final List<SystemJobExecutionWhereInput>? AND,
          final List<SystemJobExecutionWhereInput>? OR,
          final SystemJobExecutionWhereInput? NOT}) =
      _$SystemJobExecutionWhereInputImpl;

  factory _SystemJobExecutionWhereInput.fromJson(Map<String, dynamic> json) =
      _$SystemJobExecutionWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get jobId;
  @override
  StringFilter? get jobName;
  @override
  SystemJobStatusFilter? get status;
  @override
  DateTimeFilter? get startedAt;
  @override
  DateTimeFilter? get endedAt;
  @override
  StringFilter? get triggeredBy;
  @override
  StringFilter? get errorLog;
  @override
  IntFilter? get itemsProcessed;
  @override
  IntFilter? get errorCount;
  @override
  IntFilter? get durationMs;
  @override
  DateTimeFilter? get createdAt;
  @override
  List<SystemJobExecutionWhereInput>? get AND;
  @override
  List<SystemJobExecutionWhereInput>? get OR;
  @override
  SystemJobExecutionWhereInput? get NOT;

  /// Create a copy of SystemJobExecutionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemJobExecutionWhereInputImplCopyWith<
          _$SystemJobExecutionWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SystemJobExecutionListRelationFilter
    _$SystemJobExecutionListRelationFilterFromJson(Map<String, dynamic> json) {
  return _SystemJobExecutionListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SystemJobExecutionListRelationFilter {
  /// At least one related record matches
  SystemJobExecutionWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  SystemJobExecutionWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  SystemJobExecutionWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this SystemJobExecutionListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemJobExecutionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemJobExecutionListRelationFilterCopyWith<
          SystemJobExecutionListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemJobExecutionListRelationFilterCopyWith<$Res> {
  factory $SystemJobExecutionListRelationFilterCopyWith(
          SystemJobExecutionListRelationFilter value,
          $Res Function(SystemJobExecutionListRelationFilter) then) =
      _$SystemJobExecutionListRelationFilterCopyWithImpl<$Res,
          SystemJobExecutionListRelationFilter>;
  @useResult
  $Res call(
      {SystemJobExecutionWhereInput? some,
      SystemJobExecutionWhereInput? every,
      SystemJobExecutionWhereInput? none});

  $SystemJobExecutionWhereInputCopyWith<$Res>? get some;
  $SystemJobExecutionWhereInputCopyWith<$Res>? get every;
  $SystemJobExecutionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SystemJobExecutionListRelationFilterCopyWithImpl<$Res,
        $Val extends SystemJobExecutionListRelationFilter>
    implements $SystemJobExecutionListRelationFilterCopyWith<$Res> {
  _$SystemJobExecutionListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemJobExecutionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_value.copyWith(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SystemJobExecutionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemJobExecutionWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SystemJobExecutionWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemJobExecutionWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SystemJobExecutionWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemJobExecutionWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SystemJobExecutionWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SystemJobExecutionListRelationFilterImplCopyWith<$Res>
    implements $SystemJobExecutionListRelationFilterCopyWith<$Res> {
  factory _$$SystemJobExecutionListRelationFilterImplCopyWith(
          _$SystemJobExecutionListRelationFilterImpl value,
          $Res Function(_$SystemJobExecutionListRelationFilterImpl) then) =
      __$$SystemJobExecutionListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SystemJobExecutionWhereInput? some,
      SystemJobExecutionWhereInput? every,
      SystemJobExecutionWhereInput? none});

  @override
  $SystemJobExecutionWhereInputCopyWith<$Res>? get some;
  @override
  $SystemJobExecutionWhereInputCopyWith<$Res>? get every;
  @override
  $SystemJobExecutionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SystemJobExecutionListRelationFilterImplCopyWithImpl<$Res>
    extends _$SystemJobExecutionListRelationFilterCopyWithImpl<$Res,
        _$SystemJobExecutionListRelationFilterImpl>
    implements _$$SystemJobExecutionListRelationFilterImplCopyWith<$Res> {
  __$$SystemJobExecutionListRelationFilterImplCopyWithImpl(
      _$SystemJobExecutionListRelationFilterImpl _value,
      $Res Function(_$SystemJobExecutionListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemJobExecutionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SystemJobExecutionListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemJobExecutionListRelationFilterImpl
    implements _SystemJobExecutionListRelationFilter {
  const _$SystemJobExecutionListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$SystemJobExecutionListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SystemJobExecutionListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SystemJobExecutionWhereInput? some;

  /// All related records match
  @override
  final SystemJobExecutionWhereInput? every;

  /// No related records match
  @override
  final SystemJobExecutionWhereInput? none;

  @override
  String toString() {
    return 'SystemJobExecutionListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemJobExecutionListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SystemJobExecutionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemJobExecutionListRelationFilterImplCopyWith<
          _$SystemJobExecutionListRelationFilterImpl>
      get copyWith => __$$SystemJobExecutionListRelationFilterImplCopyWithImpl<
          _$SystemJobExecutionListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemJobExecutionListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SystemJobExecutionListRelationFilter
    implements SystemJobExecutionListRelationFilter {
  const factory _SystemJobExecutionListRelationFilter(
          {final SystemJobExecutionWhereInput? some,
          final SystemJobExecutionWhereInput? every,
          final SystemJobExecutionWhereInput? none}) =
      _$SystemJobExecutionListRelationFilterImpl;

  factory _SystemJobExecutionListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SystemJobExecutionListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SystemJobExecutionWhereInput? get some;

  /// All related records match
  @override
  SystemJobExecutionWhereInput? get every;

  /// No related records match
  @override
  SystemJobExecutionWhereInput? get none;

  /// Create a copy of SystemJobExecutionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemJobExecutionListRelationFilterImplCopyWith<
          _$SystemJobExecutionListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SystemJobExecutionRelationFilter _$SystemJobExecutionRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SystemJobExecutionRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SystemJobExecutionRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SystemJobExecutionWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  SystemJobExecutionWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this SystemJobExecutionRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemJobExecutionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemJobExecutionRelationFilterCopyWith<SystemJobExecutionRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemJobExecutionRelationFilterCopyWith<$Res> {
  factory $SystemJobExecutionRelationFilterCopyWith(
          SystemJobExecutionRelationFilter value,
          $Res Function(SystemJobExecutionRelationFilter) then) =
      _$SystemJobExecutionRelationFilterCopyWithImpl<$Res,
          SystemJobExecutionRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SystemJobExecutionWhereInput? is_,
      SystemJobExecutionWhereInput? isNot});

  $SystemJobExecutionWhereInputCopyWith<$Res>? get is_;
  $SystemJobExecutionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SystemJobExecutionRelationFilterCopyWithImpl<$Res,
        $Val extends SystemJobExecutionRelationFilter>
    implements $SystemJobExecutionRelationFilterCopyWith<$Res> {
  _$SystemJobExecutionRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemJobExecutionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_value.copyWith(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SystemJobExecutionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemJobExecutionWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SystemJobExecutionWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SystemJobExecutionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemJobExecutionWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SystemJobExecutionWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SystemJobExecutionRelationFilterImplCopyWith<$Res>
    implements $SystemJobExecutionRelationFilterCopyWith<$Res> {
  factory _$$SystemJobExecutionRelationFilterImplCopyWith(
          _$SystemJobExecutionRelationFilterImpl value,
          $Res Function(_$SystemJobExecutionRelationFilterImpl) then) =
      __$$SystemJobExecutionRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SystemJobExecutionWhereInput? is_,
      SystemJobExecutionWhereInput? isNot});

  @override
  $SystemJobExecutionWhereInputCopyWith<$Res>? get is_;
  @override
  $SystemJobExecutionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SystemJobExecutionRelationFilterImplCopyWithImpl<$Res>
    extends _$SystemJobExecutionRelationFilterCopyWithImpl<$Res,
        _$SystemJobExecutionRelationFilterImpl>
    implements _$$SystemJobExecutionRelationFilterImplCopyWith<$Res> {
  __$$SystemJobExecutionRelationFilterImplCopyWithImpl(
      _$SystemJobExecutionRelationFilterImpl _value,
      $Res Function(_$SystemJobExecutionRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemJobExecutionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SystemJobExecutionRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SystemJobExecutionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemJobExecutionRelationFilterImpl
    implements _SystemJobExecutionRelationFilter {
  const _$SystemJobExecutionRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SystemJobExecutionRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SystemJobExecutionRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SystemJobExecutionWhereInput? is_;

  /// Related record does not match
  @override
  final SystemJobExecutionWhereInput? isNot;

  @override
  String toString() {
    return 'SystemJobExecutionRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemJobExecutionRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SystemJobExecutionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemJobExecutionRelationFilterImplCopyWith<
          _$SystemJobExecutionRelationFilterImpl>
      get copyWith => __$$SystemJobExecutionRelationFilterImplCopyWithImpl<
          _$SystemJobExecutionRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemJobExecutionRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SystemJobExecutionRelationFilter
    implements SystemJobExecutionRelationFilter {
  const factory _SystemJobExecutionRelationFilter(
          {@JsonKey(name: 'is') final SystemJobExecutionWhereInput? is_,
          final SystemJobExecutionWhereInput? isNot}) =
      _$SystemJobExecutionRelationFilterImpl;

  factory _SystemJobExecutionRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SystemJobExecutionRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SystemJobExecutionWhereInput? get is_;

  /// Related record does not match
  @override
  SystemJobExecutionWhereInput? get isNot;

  /// Create a copy of SystemJobExecutionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemJobExecutionRelationFilterImplCopyWith<
          _$SystemJobExecutionRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SystemJobExecutionOrderByInput _$SystemJobExecutionOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _SystemJobExecutionOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SystemJobExecutionOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get jobId => throw _privateConstructorUsedError;
  SortOrder? get jobName => throw _privateConstructorUsedError;
  SortOrder? get startedAt => throw _privateConstructorUsedError;
  SortOrder? get endedAt => throw _privateConstructorUsedError;
  SortOrder? get triggeredBy => throw _privateConstructorUsedError;
  SortOrder? get errorLog => throw _privateConstructorUsedError;
  SortOrder? get itemsProcessed => throw _privateConstructorUsedError;
  SortOrder? get errorCount => throw _privateConstructorUsedError;
  SortOrder? get durationMs => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SystemJobExecutionOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemJobExecutionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemJobExecutionOrderByInputCopyWith<SystemJobExecutionOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemJobExecutionOrderByInputCopyWith<$Res> {
  factory $SystemJobExecutionOrderByInputCopyWith(
          SystemJobExecutionOrderByInput value,
          $Res Function(SystemJobExecutionOrderByInput) then) =
      _$SystemJobExecutionOrderByInputCopyWithImpl<$Res,
          SystemJobExecutionOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? jobId,
      SortOrder? jobName,
      SortOrder? startedAt,
      SortOrder? endedAt,
      SortOrder? triggeredBy,
      SortOrder? errorLog,
      SortOrder? itemsProcessed,
      SortOrder? errorCount,
      SortOrder? durationMs,
      SortOrder? createdAt});
}

/// @nodoc
class _$SystemJobExecutionOrderByInputCopyWithImpl<$Res,
        $Val extends SystemJobExecutionOrderByInput>
    implements $SystemJobExecutionOrderByInputCopyWith<$Res> {
  _$SystemJobExecutionOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemJobExecutionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? jobId = freezed,
    Object? jobName = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? triggeredBy = freezed,
    Object? errorLog = freezed,
    Object? itemsProcessed = freezed,
    Object? errorCount = freezed,
    Object? durationMs = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      jobName: freezed == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      triggeredBy: freezed == triggeredBy
          ? _value.triggeredBy
          : triggeredBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      errorLog: freezed == errorLog
          ? _value.errorLog
          : errorLog // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      itemsProcessed: freezed == itemsProcessed
          ? _value.itemsProcessed
          : itemsProcessed // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      errorCount: freezed == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemJobExecutionOrderByInputImplCopyWith<$Res>
    implements $SystemJobExecutionOrderByInputCopyWith<$Res> {
  factory _$$SystemJobExecutionOrderByInputImplCopyWith(
          _$SystemJobExecutionOrderByInputImpl value,
          $Res Function(_$SystemJobExecutionOrderByInputImpl) then) =
      __$$SystemJobExecutionOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? jobId,
      SortOrder? jobName,
      SortOrder? startedAt,
      SortOrder? endedAt,
      SortOrder? triggeredBy,
      SortOrder? errorLog,
      SortOrder? itemsProcessed,
      SortOrder? errorCount,
      SortOrder? durationMs,
      SortOrder? createdAt});
}

/// @nodoc
class __$$SystemJobExecutionOrderByInputImplCopyWithImpl<$Res>
    extends _$SystemJobExecutionOrderByInputCopyWithImpl<$Res,
        _$SystemJobExecutionOrderByInputImpl>
    implements _$$SystemJobExecutionOrderByInputImplCopyWith<$Res> {
  __$$SystemJobExecutionOrderByInputImplCopyWithImpl(
      _$SystemJobExecutionOrderByInputImpl _value,
      $Res Function(_$SystemJobExecutionOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemJobExecutionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? jobId = freezed,
    Object? jobName = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? triggeredBy = freezed,
    Object? errorLog = freezed,
    Object? itemsProcessed = freezed,
    Object? errorCount = freezed,
    Object? durationMs = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$SystemJobExecutionOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      jobName: freezed == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      triggeredBy: freezed == triggeredBy
          ? _value.triggeredBy
          : triggeredBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      errorLog: freezed == errorLog
          ? _value.errorLog
          : errorLog // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      itemsProcessed: freezed == itemsProcessed
          ? _value.itemsProcessed
          : itemsProcessed // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      errorCount: freezed == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemJobExecutionOrderByInputImpl
    implements _SystemJobExecutionOrderByInput {
  const _$SystemJobExecutionOrderByInputImpl(
      {this.id,
      this.jobId,
      this.jobName,
      this.startedAt,
      this.endedAt,
      this.triggeredBy,
      this.errorLog,
      this.itemsProcessed,
      this.errorCount,
      this.durationMs,
      this.createdAt});

  factory _$SystemJobExecutionOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SystemJobExecutionOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? jobId;
  @override
  final SortOrder? jobName;
  @override
  final SortOrder? startedAt;
  @override
  final SortOrder? endedAt;
  @override
  final SortOrder? triggeredBy;
  @override
  final SortOrder? errorLog;
  @override
  final SortOrder? itemsProcessed;
  @override
  final SortOrder? errorCount;
  @override
  final SortOrder? durationMs;
  @override
  final SortOrder? createdAt;

  @override
  String toString() {
    return 'SystemJobExecutionOrderByInput(id: $id, jobId: $jobId, jobName: $jobName, startedAt: $startedAt, endedAt: $endedAt, triggeredBy: $triggeredBy, errorLog: $errorLog, itemsProcessed: $itemsProcessed, errorCount: $errorCount, durationMs: $durationMs, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemJobExecutionOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobName, jobName) || other.jobName == jobName) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.triggeredBy, triggeredBy) ||
                other.triggeredBy == triggeredBy) &&
            (identical(other.errorLog, errorLog) ||
                other.errorLog == errorLog) &&
            (identical(other.itemsProcessed, itemsProcessed) ||
                other.itemsProcessed == itemsProcessed) &&
            (identical(other.errorCount, errorCount) ||
                other.errorCount == errorCount) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      jobId,
      jobName,
      startedAt,
      endedAt,
      triggeredBy,
      errorLog,
      itemsProcessed,
      errorCount,
      durationMs,
      createdAt);

  /// Create a copy of SystemJobExecutionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemJobExecutionOrderByInputImplCopyWith<
          _$SystemJobExecutionOrderByInputImpl>
      get copyWith => __$$SystemJobExecutionOrderByInputImplCopyWithImpl<
          _$SystemJobExecutionOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemJobExecutionOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SystemJobExecutionOrderByInput
    implements SystemJobExecutionOrderByInput {
  const factory _SystemJobExecutionOrderByInput(
      {final SortOrder? id,
      final SortOrder? jobId,
      final SortOrder? jobName,
      final SortOrder? startedAt,
      final SortOrder? endedAt,
      final SortOrder? triggeredBy,
      final SortOrder? errorLog,
      final SortOrder? itemsProcessed,
      final SortOrder? errorCount,
      final SortOrder? durationMs,
      final SortOrder? createdAt}) = _$SystemJobExecutionOrderByInputImpl;

  factory _SystemJobExecutionOrderByInput.fromJson(Map<String, dynamic> json) =
      _$SystemJobExecutionOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get jobId;
  @override
  SortOrder? get jobName;
  @override
  SortOrder? get startedAt;
  @override
  SortOrder? get endedAt;
  @override
  SortOrder? get triggeredBy;
  @override
  SortOrder? get errorLog;
  @override
  SortOrder? get itemsProcessed;
  @override
  SortOrder? get errorCount;
  @override
  SortOrder? get durationMs;
  @override
  SortOrder? get createdAt;

  /// Create a copy of SystemJobExecutionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemJobExecutionOrderByInputImplCopyWith<
          _$SystemJobExecutionOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
