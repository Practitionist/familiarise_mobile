// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maintenance_window.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MaintenanceWindow _$MaintenanceWindowFromJson(Map<String, dynamic> json) {
  return _MaintenanceWindow.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceWindow {
  String get id => throw _privateConstructorUsedError;
  MaintenancePhase get phase => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  DateTime? get estimatedEnd => throw _privateConstructorUsedError;
  String? get startedBy => throw _privateConstructorUsedError;
  String? get endedBy => throw _privateConstructorUsedError;
  String? get bypassSecret => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MaintenanceWindow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaintenanceWindow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenanceWindowCopyWith<MaintenanceWindow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceWindowCopyWith<$Res> {
  factory $MaintenanceWindowCopyWith(
          MaintenanceWindow value, $Res Function(MaintenanceWindow) then) =
      _$MaintenanceWindowCopyWithImpl<$Res, MaintenanceWindow>;
  @useResult
  $Res call(
      {String id,
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
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$MaintenanceWindowCopyWithImpl<$Res, $Val extends MaintenanceWindow>
    implements $MaintenanceWindowCopyWith<$Res> {
  _$MaintenanceWindowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenanceWindow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phase = null,
    Object? reason = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? estimatedEnd = freezed,
    Object? startedBy = freezed,
    Object? endedBy = freezed,
    Object? bypassSecret = freezed,
    Object? metadata = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as MaintenancePhase,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedEnd: freezed == estimatedEnd
          ? _value.estimatedEnd
          : estimatedEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedBy: freezed == endedBy
          ? _value.endedBy
          : endedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      bypassSecret: freezed == bypassSecret
          ? _value.bypassSecret
          : bypassSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaintenanceWindowImplCopyWith<$Res>
    implements $MaintenanceWindowCopyWith<$Res> {
  factory _$$MaintenanceWindowImplCopyWith(_$MaintenanceWindowImpl value,
          $Res Function(_$MaintenanceWindowImpl) then) =
      __$$MaintenanceWindowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
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
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$MaintenanceWindowImplCopyWithImpl<$Res>
    extends _$MaintenanceWindowCopyWithImpl<$Res, _$MaintenanceWindowImpl>
    implements _$$MaintenanceWindowImplCopyWith<$Res> {
  __$$MaintenanceWindowImplCopyWithImpl(_$MaintenanceWindowImpl _value,
      $Res Function(_$MaintenanceWindowImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenanceWindow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phase = null,
    Object? reason = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? estimatedEnd = freezed,
    Object? startedBy = freezed,
    Object? endedBy = freezed,
    Object? bypassSecret = freezed,
    Object? metadata = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MaintenanceWindowImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as MaintenancePhase,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedEnd: freezed == estimatedEnd
          ? _value.estimatedEnd
          : estimatedEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedBy: freezed == endedBy
          ? _value.endedBy
          : endedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      bypassSecret: freezed == bypassSecret
          ? _value.bypassSecret
          : bypassSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceWindowImpl implements _MaintenanceWindow {
  const _$MaintenanceWindowImpl(
      {required this.id,
      this.phase = MaintenancePhase.off,
      this.reason,
      this.scheduledAt,
      this.startedAt,
      this.endedAt,
      this.estimatedEnd,
      this.startedBy,
      this.endedBy,
      this.bypassSecret,
      final Map<String, dynamic>? metadata,
      required this.createdAt,
      required this.updatedAt})
      : _metadata = metadata;

  factory _$MaintenanceWindowImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaintenanceWindowImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final MaintenancePhase phase;
  @override
  final String? reason;
  @override
  final DateTime? scheduledAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? endedAt;
  @override
  final DateTime? estimatedEnd;
  @override
  final String? startedBy;
  @override
  final String? endedBy;
  @override
  final String? bypassSecret;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'MaintenanceWindow(id: $id, phase: $phase, reason: $reason, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, estimatedEnd: $estimatedEnd, startedBy: $startedBy, endedBy: $endedBy, bypassSecret: $bypassSecret, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceWindowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.estimatedEnd, estimatedEnd) ||
                other.estimatedEnd == estimatedEnd) &&
            (identical(other.startedBy, startedBy) ||
                other.startedBy == startedBy) &&
            (identical(other.endedBy, endedBy) || other.endedBy == endedBy) &&
            (identical(other.bypassSecret, bypassSecret) ||
                other.bypassSecret == bypassSecret) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      phase,
      reason,
      scheduledAt,
      startedAt,
      endedAt,
      estimatedEnd,
      startedBy,
      endedBy,
      bypassSecret,
      const DeepCollectionEquality().hash(_metadata),
      createdAt,
      updatedAt);

  /// Create a copy of MaintenanceWindow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceWindowImplCopyWith<_$MaintenanceWindowImpl> get copyWith =>
      __$$MaintenanceWindowImplCopyWithImpl<_$MaintenanceWindowImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceWindowImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceWindow implements MaintenanceWindow {
  const factory _MaintenanceWindow(
      {required final String id,
      final MaintenancePhase phase,
      final String? reason,
      final DateTime? scheduledAt,
      final DateTime? startedAt,
      final DateTime? endedAt,
      final DateTime? estimatedEnd,
      final String? startedBy,
      final String? endedBy,
      final String? bypassSecret,
      final Map<String, dynamic>? metadata,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$MaintenanceWindowImpl;

  factory _MaintenanceWindow.fromJson(Map<String, dynamic> json) =
      _$MaintenanceWindowImpl.fromJson;

  @override
  String get id;
  @override
  MaintenancePhase get phase;
  @override
  String? get reason;
  @override
  DateTime? get scheduledAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get endedAt;
  @override
  DateTime? get estimatedEnd;
  @override
  String? get startedBy;
  @override
  String? get endedBy;
  @override
  String? get bypassSecret;
  @override
  Map<String, dynamic>? get metadata;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of MaintenanceWindow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenanceWindowImplCopyWith<_$MaintenanceWindowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateMaintenanceWindowInput _$CreateMaintenanceWindowInputFromJson(
    Map<String, dynamic> json) {
  return _CreateMaintenanceWindowInput.fromJson(json);
}

/// @nodoc
mixin _$CreateMaintenanceWindowInput {
  MaintenancePhase get phase => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  DateTime? get estimatedEnd => throw _privateConstructorUsedError;
  String? get startedBy => throw _privateConstructorUsedError;
  String? get endedBy => throw _privateConstructorUsedError;
  String? get bypassSecret => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this CreateMaintenanceWindowInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateMaintenanceWindowInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateMaintenanceWindowInputCopyWith<CreateMaintenanceWindowInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMaintenanceWindowInputCopyWith<$Res> {
  factory $CreateMaintenanceWindowInputCopyWith(
          CreateMaintenanceWindowInput value,
          $Res Function(CreateMaintenanceWindowInput) then) =
      _$CreateMaintenanceWindowInputCopyWithImpl<$Res,
          CreateMaintenanceWindowInput>;
  @useResult
  $Res call(
      {MaintenancePhase phase,
      String? reason,
      DateTime? scheduledAt,
      DateTime? startedAt,
      DateTime? endedAt,
      DateTime? estimatedEnd,
      String? startedBy,
      String? endedBy,
      String? bypassSecret,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateMaintenanceWindowInputCopyWithImpl<$Res,
        $Val extends CreateMaintenanceWindowInput>
    implements $CreateMaintenanceWindowInputCopyWith<$Res> {
  _$CreateMaintenanceWindowInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateMaintenanceWindowInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? reason = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? estimatedEnd = freezed,
    Object? startedBy = freezed,
    Object? endedBy = freezed,
    Object? bypassSecret = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as MaintenancePhase,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedEnd: freezed == estimatedEnd
          ? _value.estimatedEnd
          : estimatedEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedBy: freezed == endedBy
          ? _value.endedBy
          : endedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      bypassSecret: freezed == bypassSecret
          ? _value.bypassSecret
          : bypassSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateMaintenanceWindowInputImplCopyWith<$Res>
    implements $CreateMaintenanceWindowInputCopyWith<$Res> {
  factory _$$CreateMaintenanceWindowInputImplCopyWith(
          _$CreateMaintenanceWindowInputImpl value,
          $Res Function(_$CreateMaintenanceWindowInputImpl) then) =
      __$$CreateMaintenanceWindowInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MaintenancePhase phase,
      String? reason,
      DateTime? scheduledAt,
      DateTime? startedAt,
      DateTime? endedAt,
      DateTime? estimatedEnd,
      String? startedBy,
      String? endedBy,
      String? bypassSecret,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateMaintenanceWindowInputImplCopyWithImpl<$Res>
    extends _$CreateMaintenanceWindowInputCopyWithImpl<$Res,
        _$CreateMaintenanceWindowInputImpl>
    implements _$$CreateMaintenanceWindowInputImplCopyWith<$Res> {
  __$$CreateMaintenanceWindowInputImplCopyWithImpl(
      _$CreateMaintenanceWindowInputImpl _value,
      $Res Function(_$CreateMaintenanceWindowInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateMaintenanceWindowInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? reason = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? estimatedEnd = freezed,
    Object? startedBy = freezed,
    Object? endedBy = freezed,
    Object? bypassSecret = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateMaintenanceWindowInputImpl(
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as MaintenancePhase,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedEnd: freezed == estimatedEnd
          ? _value.estimatedEnd
          : estimatedEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedBy: freezed == endedBy
          ? _value.endedBy
          : endedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      bypassSecret: freezed == bypassSecret
          ? _value.bypassSecret
          : bypassSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateMaintenanceWindowInputImpl
    implements _CreateMaintenanceWindowInput {
  const _$CreateMaintenanceWindowInputImpl(
      {this.phase = MaintenancePhase.off,
      this.reason,
      this.scheduledAt,
      this.startedAt,
      this.endedAt,
      this.estimatedEnd,
      this.startedBy,
      this.endedBy,
      this.bypassSecret,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$CreateMaintenanceWindowInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateMaintenanceWindowInputImplFromJson(json);

  @override
  @JsonKey()
  final MaintenancePhase phase;
  @override
  final String? reason;
  @override
  final DateTime? scheduledAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? endedAt;
  @override
  final DateTime? estimatedEnd;
  @override
  final String? startedBy;
  @override
  final String? endedBy;
  @override
  final String? bypassSecret;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CreateMaintenanceWindowInput(phase: $phase, reason: $reason, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, estimatedEnd: $estimatedEnd, startedBy: $startedBy, endedBy: $endedBy, bypassSecret: $bypassSecret, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMaintenanceWindowInputImpl &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.estimatedEnd, estimatedEnd) ||
                other.estimatedEnd == estimatedEnd) &&
            (identical(other.startedBy, startedBy) ||
                other.startedBy == startedBy) &&
            (identical(other.endedBy, endedBy) || other.endedBy == endedBy) &&
            (identical(other.bypassSecret, bypassSecret) ||
                other.bypassSecret == bypassSecret) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      phase,
      reason,
      scheduledAt,
      startedAt,
      endedAt,
      estimatedEnd,
      startedBy,
      endedBy,
      bypassSecret,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of CreateMaintenanceWindowInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMaintenanceWindowInputImplCopyWith<
          _$CreateMaintenanceWindowInputImpl>
      get copyWith => __$$CreateMaintenanceWindowInputImplCopyWithImpl<
          _$CreateMaintenanceWindowInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateMaintenanceWindowInputImplToJson(
      this,
    );
  }
}

abstract class _CreateMaintenanceWindowInput
    implements CreateMaintenanceWindowInput {
  const factory _CreateMaintenanceWindowInput(
          {final MaintenancePhase phase,
          final String? reason,
          final DateTime? scheduledAt,
          final DateTime? startedAt,
          final DateTime? endedAt,
          final DateTime? estimatedEnd,
          final String? startedBy,
          final String? endedBy,
          final String? bypassSecret,
          final Map<String, dynamic>? metadata}) =
      _$CreateMaintenanceWindowInputImpl;

  factory _CreateMaintenanceWindowInput.fromJson(Map<String, dynamic> json) =
      _$CreateMaintenanceWindowInputImpl.fromJson;

  @override
  MaintenancePhase get phase;
  @override
  String? get reason;
  @override
  DateTime? get scheduledAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get endedAt;
  @override
  DateTime? get estimatedEnd;
  @override
  String? get startedBy;
  @override
  String? get endedBy;
  @override
  String? get bypassSecret;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateMaintenanceWindowInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMaintenanceWindowInputImplCopyWith<
          _$CreateMaintenanceWindowInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateMaintenanceWindowInput _$UpdateMaintenanceWindowInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateMaintenanceWindowInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateMaintenanceWindowInput {
  MaintenancePhase? get phase => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  DateTime? get estimatedEnd => throw _privateConstructorUsedError;
  String? get startedBy => throw _privateConstructorUsedError;
  String? get endedBy => throw _privateConstructorUsedError;
  String? get bypassSecret => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this UpdateMaintenanceWindowInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMaintenanceWindowInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMaintenanceWindowInputCopyWith<UpdateMaintenanceWindowInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMaintenanceWindowInputCopyWith<$Res> {
  factory $UpdateMaintenanceWindowInputCopyWith(
          UpdateMaintenanceWindowInput value,
          $Res Function(UpdateMaintenanceWindowInput) then) =
      _$UpdateMaintenanceWindowInputCopyWithImpl<$Res,
          UpdateMaintenanceWindowInput>;
  @useResult
  $Res call(
      {MaintenancePhase? phase,
      String? reason,
      DateTime? scheduledAt,
      DateTime? startedAt,
      DateTime? endedAt,
      DateTime? estimatedEnd,
      String? startedBy,
      String? endedBy,
      String? bypassSecret,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateMaintenanceWindowInputCopyWithImpl<$Res,
        $Val extends UpdateMaintenanceWindowInput>
    implements $UpdateMaintenanceWindowInputCopyWith<$Res> {
  _$UpdateMaintenanceWindowInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMaintenanceWindowInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = freezed,
    Object? reason = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? estimatedEnd = freezed,
    Object? startedBy = freezed,
    Object? endedBy = freezed,
    Object? bypassSecret = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      phase: freezed == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as MaintenancePhase?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedEnd: freezed == estimatedEnd
          ? _value.estimatedEnd
          : estimatedEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedBy: freezed == endedBy
          ? _value.endedBy
          : endedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      bypassSecret: freezed == bypassSecret
          ? _value.bypassSecret
          : bypassSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateMaintenanceWindowInputImplCopyWith<$Res>
    implements $UpdateMaintenanceWindowInputCopyWith<$Res> {
  factory _$$UpdateMaintenanceWindowInputImplCopyWith(
          _$UpdateMaintenanceWindowInputImpl value,
          $Res Function(_$UpdateMaintenanceWindowInputImpl) then) =
      __$$UpdateMaintenanceWindowInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MaintenancePhase? phase,
      String? reason,
      DateTime? scheduledAt,
      DateTime? startedAt,
      DateTime? endedAt,
      DateTime? estimatedEnd,
      String? startedBy,
      String? endedBy,
      String? bypassSecret,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateMaintenanceWindowInputImplCopyWithImpl<$Res>
    extends _$UpdateMaintenanceWindowInputCopyWithImpl<$Res,
        _$UpdateMaintenanceWindowInputImpl>
    implements _$$UpdateMaintenanceWindowInputImplCopyWith<$Res> {
  __$$UpdateMaintenanceWindowInputImplCopyWithImpl(
      _$UpdateMaintenanceWindowInputImpl _value,
      $Res Function(_$UpdateMaintenanceWindowInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateMaintenanceWindowInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = freezed,
    Object? reason = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? estimatedEnd = freezed,
    Object? startedBy = freezed,
    Object? endedBy = freezed,
    Object? bypassSecret = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateMaintenanceWindowInputImpl(
      phase: freezed == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as MaintenancePhase?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estimatedEnd: freezed == estimatedEnd
          ? _value.estimatedEnd
          : estimatedEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      endedBy: freezed == endedBy
          ? _value.endedBy
          : endedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      bypassSecret: freezed == bypassSecret
          ? _value.bypassSecret
          : bypassSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateMaintenanceWindowInputImpl
    implements _UpdateMaintenanceWindowInput {
  const _$UpdateMaintenanceWindowInputImpl(
      {this.phase,
      this.reason,
      this.scheduledAt,
      this.startedAt,
      this.endedAt,
      this.estimatedEnd,
      this.startedBy,
      this.endedBy,
      this.bypassSecret,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdateMaintenanceWindowInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateMaintenanceWindowInputImplFromJson(json);

  @override
  final MaintenancePhase? phase;
  @override
  final String? reason;
  @override
  final DateTime? scheduledAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? endedAt;
  @override
  final DateTime? estimatedEnd;
  @override
  final String? startedBy;
  @override
  final String? endedBy;
  @override
  final String? bypassSecret;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UpdateMaintenanceWindowInput(phase: $phase, reason: $reason, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, estimatedEnd: $estimatedEnd, startedBy: $startedBy, endedBy: $endedBy, bypassSecret: $bypassSecret, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMaintenanceWindowInputImpl &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.estimatedEnd, estimatedEnd) ||
                other.estimatedEnd == estimatedEnd) &&
            (identical(other.startedBy, startedBy) ||
                other.startedBy == startedBy) &&
            (identical(other.endedBy, endedBy) || other.endedBy == endedBy) &&
            (identical(other.bypassSecret, bypassSecret) ||
                other.bypassSecret == bypassSecret) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      phase,
      reason,
      scheduledAt,
      startedAt,
      endedAt,
      estimatedEnd,
      startedBy,
      endedBy,
      bypassSecret,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of UpdateMaintenanceWindowInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMaintenanceWindowInputImplCopyWith<
          _$UpdateMaintenanceWindowInputImpl>
      get copyWith => __$$UpdateMaintenanceWindowInputImplCopyWithImpl<
          _$UpdateMaintenanceWindowInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateMaintenanceWindowInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateMaintenanceWindowInput
    implements UpdateMaintenanceWindowInput {
  const factory _UpdateMaintenanceWindowInput(
          {final MaintenancePhase? phase,
          final String? reason,
          final DateTime? scheduledAt,
          final DateTime? startedAt,
          final DateTime? endedAt,
          final DateTime? estimatedEnd,
          final String? startedBy,
          final String? endedBy,
          final String? bypassSecret,
          final Map<String, dynamic>? metadata}) =
      _$UpdateMaintenanceWindowInputImpl;

  factory _UpdateMaintenanceWindowInput.fromJson(Map<String, dynamic> json) =
      _$UpdateMaintenanceWindowInputImpl.fromJson;

  @override
  MaintenancePhase? get phase;
  @override
  String? get reason;
  @override
  DateTime? get scheduledAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get endedAt;
  @override
  DateTime? get estimatedEnd;
  @override
  String? get startedBy;
  @override
  String? get endedBy;
  @override
  String? get bypassSecret;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateMaintenanceWindowInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMaintenanceWindowInputImplCopyWith<
          _$UpdateMaintenanceWindowInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MaintenanceWindowWhereUniqueInput _$MaintenanceWindowWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _MaintenanceWindowWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceWindowWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this MaintenanceWindowWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaintenanceWindowWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenanceWindowWhereUniqueInputCopyWith<MaintenanceWindowWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceWindowWhereUniqueInputCopyWith<$Res> {
  factory $MaintenanceWindowWhereUniqueInputCopyWith(
          MaintenanceWindowWhereUniqueInput value,
          $Res Function(MaintenanceWindowWhereUniqueInput) then) =
      _$MaintenanceWindowWhereUniqueInputCopyWithImpl<$Res,
          MaintenanceWindowWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$MaintenanceWindowWhereUniqueInputCopyWithImpl<$Res,
        $Val extends MaintenanceWindowWhereUniqueInput>
    implements $MaintenanceWindowWhereUniqueInputCopyWith<$Res> {
  _$MaintenanceWindowWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenanceWindowWhereUniqueInput
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
abstract class _$$MaintenanceWindowWhereUniqueInputImplCopyWith<$Res>
    implements $MaintenanceWindowWhereUniqueInputCopyWith<$Res> {
  factory _$$MaintenanceWindowWhereUniqueInputImplCopyWith(
          _$MaintenanceWindowWhereUniqueInputImpl value,
          $Res Function(_$MaintenanceWindowWhereUniqueInputImpl) then) =
      __$$MaintenanceWindowWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$MaintenanceWindowWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$MaintenanceWindowWhereUniqueInputCopyWithImpl<$Res,
        _$MaintenanceWindowWhereUniqueInputImpl>
    implements _$$MaintenanceWindowWhereUniqueInputImplCopyWith<$Res> {
  __$$MaintenanceWindowWhereUniqueInputImplCopyWithImpl(
      _$MaintenanceWindowWhereUniqueInputImpl _value,
      $Res Function(_$MaintenanceWindowWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenanceWindowWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$MaintenanceWindowWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceWindowWhereUniqueInputImpl
    implements _MaintenanceWindowWhereUniqueInput {
  const _$MaintenanceWindowWhereUniqueInputImpl({this.id});

  factory _$MaintenanceWindowWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MaintenanceWindowWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'MaintenanceWindowWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceWindowWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MaintenanceWindowWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceWindowWhereUniqueInputImplCopyWith<
          _$MaintenanceWindowWhereUniqueInputImpl>
      get copyWith => __$$MaintenanceWindowWhereUniqueInputImplCopyWithImpl<
          _$MaintenanceWindowWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceWindowWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceWindowWhereUniqueInput
    implements MaintenanceWindowWhereUniqueInput {
  const factory _MaintenanceWindowWhereUniqueInput({final String? id}) =
      _$MaintenanceWindowWhereUniqueInputImpl;

  factory _MaintenanceWindowWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$MaintenanceWindowWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of MaintenanceWindowWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenanceWindowWhereUniqueInputImplCopyWith<
          _$MaintenanceWindowWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MaintenanceWindowWhereInput _$MaintenanceWindowWhereInputFromJson(
    Map<String, dynamic> json) {
  return _MaintenanceWindowWhereInput.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceWindowWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  MaintenancePhaseFilter? get phase => throw _privateConstructorUsedError;
  StringFilter? get reason => throw _privateConstructorUsedError;
  DateTimeFilter? get scheduledAt => throw _privateConstructorUsedError;
  DateTimeFilter? get startedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get endedAt => throw _privateConstructorUsedError;
  DateTimeFilter? get estimatedEnd => throw _privateConstructorUsedError;
  StringFilter? get startedBy => throw _privateConstructorUsedError;
  StringFilter? get endedBy => throw _privateConstructorUsedError;
  StringFilter? get bypassSecret => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<MaintenanceWindowWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<MaintenanceWindowWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  MaintenanceWindowWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this MaintenanceWindowWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenanceWindowWhereInputCopyWith<MaintenanceWindowWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceWindowWhereInputCopyWith<$Res> {
  factory $MaintenanceWindowWhereInputCopyWith(
          MaintenanceWindowWhereInput value,
          $Res Function(MaintenanceWindowWhereInput) then) =
      _$MaintenanceWindowWhereInputCopyWithImpl<$Res,
          MaintenanceWindowWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
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
      MaintenanceWindowWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $MaintenancePhaseFilterCopyWith<$Res>? get phase;
  $StringFilterCopyWith<$Res>? get reason;
  $DateTimeFilterCopyWith<$Res>? get scheduledAt;
  $DateTimeFilterCopyWith<$Res>? get startedAt;
  $DateTimeFilterCopyWith<$Res>? get endedAt;
  $DateTimeFilterCopyWith<$Res>? get estimatedEnd;
  $StringFilterCopyWith<$Res>? get startedBy;
  $StringFilterCopyWith<$Res>? get endedBy;
  $StringFilterCopyWith<$Res>? get bypassSecret;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $MaintenanceWindowWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$MaintenanceWindowWhereInputCopyWithImpl<$Res,
        $Val extends MaintenanceWindowWhereInput>
    implements $MaintenanceWindowWhereInputCopyWith<$Res> {
  _$MaintenanceWindowWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? phase = freezed,
    Object? reason = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? estimatedEnd = freezed,
    Object? startedBy = freezed,
    Object? endedBy = freezed,
    Object? bypassSecret = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      phase: freezed == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as MaintenancePhaseFilter?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      estimatedEnd: freezed == estimatedEnd
          ? _value.estimatedEnd
          : estimatedEnd // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      endedBy: freezed == endedBy
          ? _value.endedBy
          : endedBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      bypassSecret: freezed == bypassSecret
          ? _value.bypassSecret
          : bypassSecret // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<MaintenanceWindowWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<MaintenanceWindowWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as MaintenanceWindowWhereInput?,
    ) as $Val);
  }

  /// Create a copy of MaintenanceWindowWhereInput
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

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaintenancePhaseFilterCopyWith<$Res>? get phase {
    if (_value.phase == null) {
      return null;
    }

    return $MaintenancePhaseFilterCopyWith<$Res>(_value.phase!, (value) {
      return _then(_value.copyWith(phase: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get reason {
    if (_value.reason == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.reason!, (value) {
      return _then(_value.copyWith(reason: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get scheduledAt {
    if (_value.scheduledAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.scheduledAt!, (value) {
      return _then(_value.copyWith(scheduledAt: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowWhereInput
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

  /// Create a copy of MaintenanceWindowWhereInput
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

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get estimatedEnd {
    if (_value.estimatedEnd == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.estimatedEnd!, (value) {
      return _then(_value.copyWith(estimatedEnd: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get startedBy {
    if (_value.startedBy == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.startedBy!, (value) {
      return _then(_value.copyWith(startedBy: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get endedBy {
    if (_value.endedBy == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.endedBy!, (value) {
      return _then(_value.copyWith(endedBy: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get bypassSecret {
    if (_value.bypassSecret == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.bypassSecret!, (value) {
      return _then(_value.copyWith(bypassSecret: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowWhereInput
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

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get updatedAt {
    if (_value.updatedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.updatedAt!, (value) {
      return _then(_value.copyWith(updatedAt: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaintenanceWindowWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $MaintenanceWindowWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MaintenanceWindowWhereInputImplCopyWith<$Res>
    implements $MaintenanceWindowWhereInputCopyWith<$Res> {
  factory _$$MaintenanceWindowWhereInputImplCopyWith(
          _$MaintenanceWindowWhereInputImpl value,
          $Res Function(_$MaintenanceWindowWhereInputImpl) then) =
      __$$MaintenanceWindowWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
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
      MaintenanceWindowWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $MaintenancePhaseFilterCopyWith<$Res>? get phase;
  @override
  $StringFilterCopyWith<$Res>? get reason;
  @override
  $DateTimeFilterCopyWith<$Res>? get scheduledAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get startedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get endedAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get estimatedEnd;
  @override
  $StringFilterCopyWith<$Res>? get startedBy;
  @override
  $StringFilterCopyWith<$Res>? get endedBy;
  @override
  $StringFilterCopyWith<$Res>? get bypassSecret;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $MaintenanceWindowWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$MaintenanceWindowWhereInputImplCopyWithImpl<$Res>
    extends _$MaintenanceWindowWhereInputCopyWithImpl<$Res,
        _$MaintenanceWindowWhereInputImpl>
    implements _$$MaintenanceWindowWhereInputImplCopyWith<$Res> {
  __$$MaintenanceWindowWhereInputImplCopyWithImpl(
      _$MaintenanceWindowWhereInputImpl _value,
      $Res Function(_$MaintenanceWindowWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? phase = freezed,
    Object? reason = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? estimatedEnd = freezed,
    Object? startedBy = freezed,
    Object? endedBy = freezed,
    Object? bypassSecret = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$MaintenanceWindowWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      phase: freezed == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as MaintenancePhaseFilter?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      estimatedEnd: freezed == estimatedEnd
          ? _value.estimatedEnd
          : estimatedEnd // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      endedBy: freezed == endedBy
          ? _value.endedBy
          : endedBy // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      bypassSecret: freezed == bypassSecret
          ? _value.bypassSecret
          : bypassSecret // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<MaintenanceWindowWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<MaintenanceWindowWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as MaintenanceWindowWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MaintenanceWindowWhereInputImpl
    implements _MaintenanceWindowWhereInput {
  const _$MaintenanceWindowWhereInputImpl(
      {this.id,
      this.phase,
      this.reason,
      this.scheduledAt,
      this.startedAt,
      this.endedAt,
      this.estimatedEnd,
      this.startedBy,
      this.endedBy,
      this.bypassSecret,
      this.createdAt,
      this.updatedAt,
      final List<MaintenanceWindowWhereInput>? AND,
      final List<MaintenanceWindowWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$MaintenanceWindowWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MaintenanceWindowWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final MaintenancePhaseFilter? phase;
  @override
  final StringFilter? reason;
  @override
  final DateTimeFilter? scheduledAt;
  @override
  final DateTimeFilter? startedAt;
  @override
  final DateTimeFilter? endedAt;
  @override
  final DateTimeFilter? estimatedEnd;
  @override
  final StringFilter? startedBy;
  @override
  final StringFilter? endedBy;
  @override
  final StringFilter? bypassSecret;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<MaintenanceWindowWhereInput>? _AND;
  @override
  List<MaintenanceWindowWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MaintenanceWindowWhereInput>? _OR;
  @override
  List<MaintenanceWindowWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MaintenanceWindowWhereInput? NOT;

  @override
  String toString() {
    return 'MaintenanceWindowWhereInput(id: $id, phase: $phase, reason: $reason, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, estimatedEnd: $estimatedEnd, startedBy: $startedBy, endedBy: $endedBy, bypassSecret: $bypassSecret, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceWindowWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.estimatedEnd, estimatedEnd) ||
                other.estimatedEnd == estimatedEnd) &&
            (identical(other.startedBy, startedBy) ||
                other.startedBy == startedBy) &&
            (identical(other.endedBy, endedBy) || other.endedBy == endedBy) &&
            (identical(other.bypassSecret, bypassSecret) ||
                other.bypassSecret == bypassSecret) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._AND, _AND) &&
            const DeepCollectionEquality().equals(other._OR, _OR) &&
            (identical(other.NOT, NOT) || other.NOT == NOT));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      phase,
      reason,
      scheduledAt,
      startedAt,
      endedAt,
      estimatedEnd,
      startedBy,
      endedBy,
      bypassSecret,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceWindowWhereInputImplCopyWith<_$MaintenanceWindowWhereInputImpl>
      get copyWith => __$$MaintenanceWindowWhereInputImplCopyWithImpl<
          _$MaintenanceWindowWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceWindowWhereInputImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceWindowWhereInput
    implements MaintenanceWindowWhereInput {
  const factory _MaintenanceWindowWhereInput(
          {final StringFilter? id,
          final MaintenancePhaseFilter? phase,
          final StringFilter? reason,
          final DateTimeFilter? scheduledAt,
          final DateTimeFilter? startedAt,
          final DateTimeFilter? endedAt,
          final DateTimeFilter? estimatedEnd,
          final StringFilter? startedBy,
          final StringFilter? endedBy,
          final StringFilter? bypassSecret,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<MaintenanceWindowWhereInput>? AND,
          final List<MaintenanceWindowWhereInput>? OR,
          final MaintenanceWindowWhereInput? NOT}) =
      _$MaintenanceWindowWhereInputImpl;

  factory _MaintenanceWindowWhereInput.fromJson(Map<String, dynamic> json) =
      _$MaintenanceWindowWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  MaintenancePhaseFilter? get phase;
  @override
  StringFilter? get reason;
  @override
  DateTimeFilter? get scheduledAt;
  @override
  DateTimeFilter? get startedAt;
  @override
  DateTimeFilter? get endedAt;
  @override
  DateTimeFilter? get estimatedEnd;
  @override
  StringFilter? get startedBy;
  @override
  StringFilter? get endedBy;
  @override
  StringFilter? get bypassSecret;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<MaintenanceWindowWhereInput>? get AND;
  @override
  List<MaintenanceWindowWhereInput>? get OR;
  @override
  MaintenanceWindowWhereInput? get NOT;

  /// Create a copy of MaintenanceWindowWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenanceWindowWhereInputImplCopyWith<_$MaintenanceWindowWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MaintenanceWindowListRelationFilter
    _$MaintenanceWindowListRelationFilterFromJson(Map<String, dynamic> json) {
  return _MaintenanceWindowListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceWindowListRelationFilter {
  /// At least one related record matches
  MaintenanceWindowWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  MaintenanceWindowWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  MaintenanceWindowWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this MaintenanceWindowListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaintenanceWindowListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenanceWindowListRelationFilterCopyWith<
          MaintenanceWindowListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceWindowListRelationFilterCopyWith<$Res> {
  factory $MaintenanceWindowListRelationFilterCopyWith(
          MaintenanceWindowListRelationFilter value,
          $Res Function(MaintenanceWindowListRelationFilter) then) =
      _$MaintenanceWindowListRelationFilterCopyWithImpl<$Res,
          MaintenanceWindowListRelationFilter>;
  @useResult
  $Res call(
      {MaintenanceWindowWhereInput? some,
      MaintenanceWindowWhereInput? every,
      MaintenanceWindowWhereInput? none});

  $MaintenanceWindowWhereInputCopyWith<$Res>? get some;
  $MaintenanceWindowWhereInputCopyWith<$Res>? get every;
  $MaintenanceWindowWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$MaintenanceWindowListRelationFilterCopyWithImpl<$Res,
        $Val extends MaintenanceWindowListRelationFilter>
    implements $MaintenanceWindowListRelationFilterCopyWith<$Res> {
  _$MaintenanceWindowListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenanceWindowListRelationFilter
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
              as MaintenanceWindowWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as MaintenanceWindowWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as MaintenanceWindowWhereInput?,
    ) as $Val);
  }

  /// Create a copy of MaintenanceWindowListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaintenanceWindowWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $MaintenanceWindowWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaintenanceWindowWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $MaintenanceWindowWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaintenanceWindowWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $MaintenanceWindowWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MaintenanceWindowListRelationFilterImplCopyWith<$Res>
    implements $MaintenanceWindowListRelationFilterCopyWith<$Res> {
  factory _$$MaintenanceWindowListRelationFilterImplCopyWith(
          _$MaintenanceWindowListRelationFilterImpl value,
          $Res Function(_$MaintenanceWindowListRelationFilterImpl) then) =
      __$$MaintenanceWindowListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MaintenanceWindowWhereInput? some,
      MaintenanceWindowWhereInput? every,
      MaintenanceWindowWhereInput? none});

  @override
  $MaintenanceWindowWhereInputCopyWith<$Res>? get some;
  @override
  $MaintenanceWindowWhereInputCopyWith<$Res>? get every;
  @override
  $MaintenanceWindowWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$MaintenanceWindowListRelationFilterImplCopyWithImpl<$Res>
    extends _$MaintenanceWindowListRelationFilterCopyWithImpl<$Res,
        _$MaintenanceWindowListRelationFilterImpl>
    implements _$$MaintenanceWindowListRelationFilterImplCopyWith<$Res> {
  __$$MaintenanceWindowListRelationFilterImplCopyWithImpl(
      _$MaintenanceWindowListRelationFilterImpl _value,
      $Res Function(_$MaintenanceWindowListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenanceWindowListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$MaintenanceWindowListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as MaintenanceWindowWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as MaintenanceWindowWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as MaintenanceWindowWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceWindowListRelationFilterImpl
    implements _MaintenanceWindowListRelationFilter {
  const _$MaintenanceWindowListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$MaintenanceWindowListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MaintenanceWindowListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final MaintenanceWindowWhereInput? some;

  /// All related records match
  @override
  final MaintenanceWindowWhereInput? every;

  /// No related records match
  @override
  final MaintenanceWindowWhereInput? none;

  @override
  String toString() {
    return 'MaintenanceWindowListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceWindowListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of MaintenanceWindowListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceWindowListRelationFilterImplCopyWith<
          _$MaintenanceWindowListRelationFilterImpl>
      get copyWith => __$$MaintenanceWindowListRelationFilterImplCopyWithImpl<
          _$MaintenanceWindowListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceWindowListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceWindowListRelationFilter
    implements MaintenanceWindowListRelationFilter {
  const factory _MaintenanceWindowListRelationFilter(
          {final MaintenanceWindowWhereInput? some,
          final MaintenanceWindowWhereInput? every,
          final MaintenanceWindowWhereInput? none}) =
      _$MaintenanceWindowListRelationFilterImpl;

  factory _MaintenanceWindowListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$MaintenanceWindowListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  MaintenanceWindowWhereInput? get some;

  /// All related records match
  @override
  MaintenanceWindowWhereInput? get every;

  /// No related records match
  @override
  MaintenanceWindowWhereInput? get none;

  /// Create a copy of MaintenanceWindowListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenanceWindowListRelationFilterImplCopyWith<
          _$MaintenanceWindowListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MaintenanceWindowRelationFilter _$MaintenanceWindowRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _MaintenanceWindowRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceWindowRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  MaintenanceWindowWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  MaintenanceWindowWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this MaintenanceWindowRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaintenanceWindowRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenanceWindowRelationFilterCopyWith<MaintenanceWindowRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceWindowRelationFilterCopyWith<$Res> {
  factory $MaintenanceWindowRelationFilterCopyWith(
          MaintenanceWindowRelationFilter value,
          $Res Function(MaintenanceWindowRelationFilter) then) =
      _$MaintenanceWindowRelationFilterCopyWithImpl<$Res,
          MaintenanceWindowRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') MaintenanceWindowWhereInput? is_,
      MaintenanceWindowWhereInput? isNot});

  $MaintenanceWindowWhereInputCopyWith<$Res>? get is_;
  $MaintenanceWindowWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$MaintenanceWindowRelationFilterCopyWithImpl<$Res,
        $Val extends MaintenanceWindowRelationFilter>
    implements $MaintenanceWindowRelationFilterCopyWith<$Res> {
  _$MaintenanceWindowRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenanceWindowRelationFilter
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
              as MaintenanceWindowWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as MaintenanceWindowWhereInput?,
    ) as $Val);
  }

  /// Create a copy of MaintenanceWindowRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaintenanceWindowWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $MaintenanceWindowWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of MaintenanceWindowRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaintenanceWindowWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $MaintenanceWindowWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MaintenanceWindowRelationFilterImplCopyWith<$Res>
    implements $MaintenanceWindowRelationFilterCopyWith<$Res> {
  factory _$$MaintenanceWindowRelationFilterImplCopyWith(
          _$MaintenanceWindowRelationFilterImpl value,
          $Res Function(_$MaintenanceWindowRelationFilterImpl) then) =
      __$$MaintenanceWindowRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') MaintenanceWindowWhereInput? is_,
      MaintenanceWindowWhereInput? isNot});

  @override
  $MaintenanceWindowWhereInputCopyWith<$Res>? get is_;
  @override
  $MaintenanceWindowWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$MaintenanceWindowRelationFilterImplCopyWithImpl<$Res>
    extends _$MaintenanceWindowRelationFilterCopyWithImpl<$Res,
        _$MaintenanceWindowRelationFilterImpl>
    implements _$$MaintenanceWindowRelationFilterImplCopyWith<$Res> {
  __$$MaintenanceWindowRelationFilterImplCopyWithImpl(
      _$MaintenanceWindowRelationFilterImpl _value,
      $Res Function(_$MaintenanceWindowRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenanceWindowRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$MaintenanceWindowRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as MaintenanceWindowWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as MaintenanceWindowWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceWindowRelationFilterImpl
    implements _MaintenanceWindowRelationFilter {
  const _$MaintenanceWindowRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$MaintenanceWindowRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MaintenanceWindowRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final MaintenanceWindowWhereInput? is_;

  /// Related record does not match
  @override
  final MaintenanceWindowWhereInput? isNot;

  @override
  String toString() {
    return 'MaintenanceWindowRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceWindowRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of MaintenanceWindowRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceWindowRelationFilterImplCopyWith<
          _$MaintenanceWindowRelationFilterImpl>
      get copyWith => __$$MaintenanceWindowRelationFilterImplCopyWithImpl<
          _$MaintenanceWindowRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceWindowRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceWindowRelationFilter
    implements MaintenanceWindowRelationFilter {
  const factory _MaintenanceWindowRelationFilter(
          {@JsonKey(name: 'is') final MaintenanceWindowWhereInput? is_,
          final MaintenanceWindowWhereInput? isNot}) =
      _$MaintenanceWindowRelationFilterImpl;

  factory _MaintenanceWindowRelationFilter.fromJson(Map<String, dynamic> json) =
      _$MaintenanceWindowRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  MaintenanceWindowWhereInput? get is_;

  /// Related record does not match
  @override
  MaintenanceWindowWhereInput? get isNot;

  /// Create a copy of MaintenanceWindowRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenanceWindowRelationFilterImplCopyWith<
          _$MaintenanceWindowRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MaintenanceWindowOrderByInput _$MaintenanceWindowOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _MaintenanceWindowOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceWindowOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get reason => throw _privateConstructorUsedError;
  SortOrder? get scheduledAt => throw _privateConstructorUsedError;
  SortOrder? get startedAt => throw _privateConstructorUsedError;
  SortOrder? get endedAt => throw _privateConstructorUsedError;
  SortOrder? get estimatedEnd => throw _privateConstructorUsedError;
  SortOrder? get startedBy => throw _privateConstructorUsedError;
  SortOrder? get endedBy => throw _privateConstructorUsedError;
  SortOrder? get bypassSecret => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MaintenanceWindowOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaintenanceWindowOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenanceWindowOrderByInputCopyWith<MaintenanceWindowOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceWindowOrderByInputCopyWith<$Res> {
  factory $MaintenanceWindowOrderByInputCopyWith(
          MaintenanceWindowOrderByInput value,
          $Res Function(MaintenanceWindowOrderByInput) then) =
      _$MaintenanceWindowOrderByInputCopyWithImpl<$Res,
          MaintenanceWindowOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? reason,
      SortOrder? scheduledAt,
      SortOrder? startedAt,
      SortOrder? endedAt,
      SortOrder? estimatedEnd,
      SortOrder? startedBy,
      SortOrder? endedBy,
      SortOrder? bypassSecret,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$MaintenanceWindowOrderByInputCopyWithImpl<$Res,
        $Val extends MaintenanceWindowOrderByInput>
    implements $MaintenanceWindowOrderByInputCopyWith<$Res> {
  _$MaintenanceWindowOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenanceWindowOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reason = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? estimatedEnd = freezed,
    Object? startedBy = freezed,
    Object? endedBy = freezed,
    Object? bypassSecret = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      estimatedEnd: freezed == estimatedEnd
          ? _value.estimatedEnd
          : estimatedEnd // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endedBy: freezed == endedBy
          ? _value.endedBy
          : endedBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      bypassSecret: freezed == bypassSecret
          ? _value.bypassSecret
          : bypassSecret // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaintenanceWindowOrderByInputImplCopyWith<$Res>
    implements $MaintenanceWindowOrderByInputCopyWith<$Res> {
  factory _$$MaintenanceWindowOrderByInputImplCopyWith(
          _$MaintenanceWindowOrderByInputImpl value,
          $Res Function(_$MaintenanceWindowOrderByInputImpl) then) =
      __$$MaintenanceWindowOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? reason,
      SortOrder? scheduledAt,
      SortOrder? startedAt,
      SortOrder? endedAt,
      SortOrder? estimatedEnd,
      SortOrder? startedBy,
      SortOrder? endedBy,
      SortOrder? bypassSecret,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$MaintenanceWindowOrderByInputImplCopyWithImpl<$Res>
    extends _$MaintenanceWindowOrderByInputCopyWithImpl<$Res,
        _$MaintenanceWindowOrderByInputImpl>
    implements _$$MaintenanceWindowOrderByInputImplCopyWith<$Res> {
  __$$MaintenanceWindowOrderByInputImplCopyWithImpl(
      _$MaintenanceWindowOrderByInputImpl _value,
      $Res Function(_$MaintenanceWindowOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenanceWindowOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reason = freezed,
    Object? scheduledAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? estimatedEnd = freezed,
    Object? startedBy = freezed,
    Object? endedBy = freezed,
    Object? bypassSecret = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MaintenanceWindowOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      estimatedEnd: freezed == estimatedEnd
          ? _value.estimatedEnd
          : estimatedEnd // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      endedBy: freezed == endedBy
          ? _value.endedBy
          : endedBy // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      bypassSecret: freezed == bypassSecret
          ? _value.bypassSecret
          : bypassSecret // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceWindowOrderByInputImpl
    implements _MaintenanceWindowOrderByInput {
  const _$MaintenanceWindowOrderByInputImpl(
      {this.id,
      this.reason,
      this.scheduledAt,
      this.startedAt,
      this.endedAt,
      this.estimatedEnd,
      this.startedBy,
      this.endedBy,
      this.bypassSecret,
      this.createdAt,
      this.updatedAt});

  factory _$MaintenanceWindowOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MaintenanceWindowOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? reason;
  @override
  final SortOrder? scheduledAt;
  @override
  final SortOrder? startedAt;
  @override
  final SortOrder? endedAt;
  @override
  final SortOrder? estimatedEnd;
  @override
  final SortOrder? startedBy;
  @override
  final SortOrder? endedBy;
  @override
  final SortOrder? bypassSecret;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'MaintenanceWindowOrderByInput(id: $id, reason: $reason, scheduledAt: $scheduledAt, startedAt: $startedAt, endedAt: $endedAt, estimatedEnd: $estimatedEnd, startedBy: $startedBy, endedBy: $endedBy, bypassSecret: $bypassSecret, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceWindowOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.estimatedEnd, estimatedEnd) ||
                other.estimatedEnd == estimatedEnd) &&
            (identical(other.startedBy, startedBy) ||
                other.startedBy == startedBy) &&
            (identical(other.endedBy, endedBy) || other.endedBy == endedBy) &&
            (identical(other.bypassSecret, bypassSecret) ||
                other.bypassSecret == bypassSecret) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      reason,
      scheduledAt,
      startedAt,
      endedAt,
      estimatedEnd,
      startedBy,
      endedBy,
      bypassSecret,
      createdAt,
      updatedAt);

  /// Create a copy of MaintenanceWindowOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceWindowOrderByInputImplCopyWith<
          _$MaintenanceWindowOrderByInputImpl>
      get copyWith => __$$MaintenanceWindowOrderByInputImplCopyWithImpl<
          _$MaintenanceWindowOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceWindowOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceWindowOrderByInput
    implements MaintenanceWindowOrderByInput {
  const factory _MaintenanceWindowOrderByInput(
      {final SortOrder? id,
      final SortOrder? reason,
      final SortOrder? scheduledAt,
      final SortOrder? startedAt,
      final SortOrder? endedAt,
      final SortOrder? estimatedEnd,
      final SortOrder? startedBy,
      final SortOrder? endedBy,
      final SortOrder? bypassSecret,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$MaintenanceWindowOrderByInputImpl;

  factory _MaintenanceWindowOrderByInput.fromJson(Map<String, dynamic> json) =
      _$MaintenanceWindowOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get reason;
  @override
  SortOrder? get scheduledAt;
  @override
  SortOrder? get startedAt;
  @override
  SortOrder? get endedAt;
  @override
  SortOrder? get estimatedEnd;
  @override
  SortOrder? get startedBy;
  @override
  SortOrder? get endedBy;
  @override
  SortOrder? get bypassSecret;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of MaintenanceWindowOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenanceWindowOrderByInputImplCopyWith<
          _$MaintenanceWindowOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
