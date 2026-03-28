// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderation_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModerationAction _$ModerationActionFromJson(Map<String, dynamic> json) {
  return _ModerationAction.fromJson(json);
}

/// @nodoc
mixin _$ModerationAction {
  String get id => throw _privateConstructorUsedError;
  ModerationActionType get actionType => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ModerationReport? get report => throw _privateConstructorUsedError;
  String get reportId => throw _privateConstructorUsedError;
  String get takenById => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get takenBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ModerationAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationActionCopyWith<ModerationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationActionCopyWith<$Res> {
  factory $ModerationActionCopyWith(
          ModerationAction value, $Res Function(ModerationAction) then) =
      _$ModerationActionCopyWithImpl<$Res, ModerationAction>;
  @useResult
  $Res call(
      {String id,
      ModerationActionType actionType,
      String? notes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ModerationReport? report,
      String reportId,
      String takenById,
      @JsonKey(includeFromJson: false, includeToJson: false) User? takenBy,
      DateTime createdAt});

  $ModerationReportCopyWith<$Res>? get report;
  $UserCopyWith<$Res>? get takenBy;
}

/// @nodoc
class _$ModerationActionCopyWithImpl<$Res, $Val extends ModerationAction>
    implements $ModerationActionCopyWith<$Res> {
  _$ModerationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? actionType = null,
    Object? notes = freezed,
    Object? report = freezed,
    Object? reportId = null,
    Object? takenById = null,
    Object? takenBy = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ModerationActionType,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ModerationReport?,
      reportId: null == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String,
      takenById: null == takenById
          ? _value.takenById
          : takenById // ignore: cast_nullable_to_non_nullable
              as String,
      takenBy: freezed == takenBy
          ? _value.takenBy
          : takenBy // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of ModerationAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportCopyWith<$Res>? get report {
    if (_value.report == null) {
      return null;
    }

    return $ModerationReportCopyWith<$Res>(_value.report!, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }

  /// Create a copy of ModerationAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get takenBy {
    if (_value.takenBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.takenBy!, (value) {
      return _then(_value.copyWith(takenBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModerationActionImplCopyWith<$Res>
    implements $ModerationActionCopyWith<$Res> {
  factory _$$ModerationActionImplCopyWith(_$ModerationActionImpl value,
          $Res Function(_$ModerationActionImpl) then) =
      __$$ModerationActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ModerationActionType actionType,
      String? notes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ModerationReport? report,
      String reportId,
      String takenById,
      @JsonKey(includeFromJson: false, includeToJson: false) User? takenBy,
      DateTime createdAt});

  @override
  $ModerationReportCopyWith<$Res>? get report;
  @override
  $UserCopyWith<$Res>? get takenBy;
}

/// @nodoc
class __$$ModerationActionImplCopyWithImpl<$Res>
    extends _$ModerationActionCopyWithImpl<$Res, _$ModerationActionImpl>
    implements _$$ModerationActionImplCopyWith<$Res> {
  __$$ModerationActionImplCopyWithImpl(_$ModerationActionImpl _value,
      $Res Function(_$ModerationActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? actionType = null,
    Object? notes = freezed,
    Object? report = freezed,
    Object? reportId = null,
    Object? takenById = null,
    Object? takenBy = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$ModerationActionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ModerationActionType,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ModerationReport?,
      reportId: null == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String,
      takenById: null == takenById
          ? _value.takenById
          : takenById // ignore: cast_nullable_to_non_nullable
              as String,
      takenBy: freezed == takenBy
          ? _value.takenBy
          : takenBy // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationActionImpl implements _ModerationAction {
  const _$ModerationActionImpl(
      {required this.id,
      required this.actionType,
      this.notes,
      @JsonKey(includeFromJson: false, includeToJson: false) this.report,
      required this.reportId,
      required this.takenById,
      @JsonKey(includeFromJson: false, includeToJson: false) this.takenBy,
      required this.createdAt});

  factory _$ModerationActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModerationActionImplFromJson(json);

  @override
  final String id;
  @override
  final ModerationActionType actionType;
  @override
  final String? notes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ModerationReport? report;
  @override
  final String reportId;
  @override
  final String takenById;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? takenBy;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ModerationAction(id: $id, actionType: $actionType, notes: $notes, report: $report, reportId: $reportId, takenById: $takenById, takenBy: $takenBy, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationActionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.takenById, takenById) ||
                other.takenById == takenById) &&
            (identical(other.takenBy, takenBy) || other.takenBy == takenBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, actionType, notes, report,
      reportId, takenById, takenBy, createdAt);

  /// Create a copy of ModerationAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationActionImplCopyWith<_$ModerationActionImpl> get copyWith =>
      __$$ModerationActionImplCopyWithImpl<_$ModerationActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationActionImplToJson(
      this,
    );
  }
}

abstract class _ModerationAction implements ModerationAction {
  const factory _ModerationAction(
      {required final String id,
      required final ModerationActionType actionType,
      final String? notes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ModerationReport? report,
      required final String reportId,
      required final String takenById,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final User? takenBy,
      required final DateTime createdAt}) = _$ModerationActionImpl;

  factory _ModerationAction.fromJson(Map<String, dynamic> json) =
      _$ModerationActionImpl.fromJson;

  @override
  String get id;
  @override
  ModerationActionType get actionType;
  @override
  String? get notes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ModerationReport? get report;
  @override
  String get reportId;
  @override
  String get takenById;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get takenBy;
  @override
  DateTime get createdAt;

  /// Create a copy of ModerationAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationActionImplCopyWith<_$ModerationActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateModerationActionInput _$CreateModerationActionInputFromJson(
    Map<String, dynamic> json) {
  return _CreateModerationActionInput.fromJson(json);
}

/// @nodoc
mixin _$CreateModerationActionInput {
  ModerationActionType get actionType => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String get reportId => throw _privateConstructorUsedError;
  String get takenById => throw _privateConstructorUsedError;

  /// Serializes this CreateModerationActionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateModerationActionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateModerationActionInputCopyWith<CreateModerationActionInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateModerationActionInputCopyWith<$Res> {
  factory $CreateModerationActionInputCopyWith(
          CreateModerationActionInput value,
          $Res Function(CreateModerationActionInput) then) =
      _$CreateModerationActionInputCopyWithImpl<$Res,
          CreateModerationActionInput>;
  @useResult
  $Res call(
      {ModerationActionType actionType,
      String? notes,
      String reportId,
      String takenById});
}

/// @nodoc
class _$CreateModerationActionInputCopyWithImpl<$Res,
        $Val extends CreateModerationActionInput>
    implements $CreateModerationActionInputCopyWith<$Res> {
  _$CreateModerationActionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateModerationActionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = null,
    Object? notes = freezed,
    Object? reportId = null,
    Object? takenById = null,
  }) {
    return _then(_value.copyWith(
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ModerationActionType,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reportId: null == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String,
      takenById: null == takenById
          ? _value.takenById
          : takenById // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateModerationActionInputImplCopyWith<$Res>
    implements $CreateModerationActionInputCopyWith<$Res> {
  factory _$$CreateModerationActionInputImplCopyWith(
          _$CreateModerationActionInputImpl value,
          $Res Function(_$CreateModerationActionInputImpl) then) =
      __$$CreateModerationActionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ModerationActionType actionType,
      String? notes,
      String reportId,
      String takenById});
}

/// @nodoc
class __$$CreateModerationActionInputImplCopyWithImpl<$Res>
    extends _$CreateModerationActionInputCopyWithImpl<$Res,
        _$CreateModerationActionInputImpl>
    implements _$$CreateModerationActionInputImplCopyWith<$Res> {
  __$$CreateModerationActionInputImplCopyWithImpl(
      _$CreateModerationActionInputImpl _value,
      $Res Function(_$CreateModerationActionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateModerationActionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = null,
    Object? notes = freezed,
    Object? reportId = null,
    Object? takenById = null,
  }) {
    return _then(_$CreateModerationActionInputImpl(
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ModerationActionType,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reportId: null == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String,
      takenById: null == takenById
          ? _value.takenById
          : takenById // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateModerationActionInputImpl
    implements _CreateModerationActionInput {
  const _$CreateModerationActionInputImpl(
      {required this.actionType,
      this.notes,
      required this.reportId,
      required this.takenById});

  factory _$CreateModerationActionInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateModerationActionInputImplFromJson(json);

  @override
  final ModerationActionType actionType;
  @override
  final String? notes;
  @override
  final String reportId;
  @override
  final String takenById;

  @override
  String toString() {
    return 'CreateModerationActionInput(actionType: $actionType, notes: $notes, reportId: $reportId, takenById: $takenById)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateModerationActionInputImpl &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.takenById, takenById) ||
                other.takenById == takenById));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, actionType, notes, reportId, takenById);

  /// Create a copy of CreateModerationActionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateModerationActionInputImplCopyWith<_$CreateModerationActionInputImpl>
      get copyWith => __$$CreateModerationActionInputImplCopyWithImpl<
          _$CreateModerationActionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateModerationActionInputImplToJson(
      this,
    );
  }
}

abstract class _CreateModerationActionInput
    implements CreateModerationActionInput {
  const factory _CreateModerationActionInput(
      {required final ModerationActionType actionType,
      final String? notes,
      required final String reportId,
      required final String takenById}) = _$CreateModerationActionInputImpl;

  factory _CreateModerationActionInput.fromJson(Map<String, dynamic> json) =
      _$CreateModerationActionInputImpl.fromJson;

  @override
  ModerationActionType get actionType;
  @override
  String? get notes;
  @override
  String get reportId;
  @override
  String get takenById;

  /// Create a copy of CreateModerationActionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateModerationActionInputImplCopyWith<_$CreateModerationActionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateModerationActionInput _$UpdateModerationActionInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateModerationActionInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateModerationActionInput {
  ModerationActionType? get actionType => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get reportId => throw _privateConstructorUsedError;
  String? get takenById => throw _privateConstructorUsedError;

  /// Serializes this UpdateModerationActionInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateModerationActionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateModerationActionInputCopyWith<UpdateModerationActionInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateModerationActionInputCopyWith<$Res> {
  factory $UpdateModerationActionInputCopyWith(
          UpdateModerationActionInput value,
          $Res Function(UpdateModerationActionInput) then) =
      _$UpdateModerationActionInputCopyWithImpl<$Res,
          UpdateModerationActionInput>;
  @useResult
  $Res call(
      {ModerationActionType? actionType,
      String? notes,
      String? reportId,
      String? takenById});
}

/// @nodoc
class _$UpdateModerationActionInputCopyWithImpl<$Res,
        $Val extends UpdateModerationActionInput>
    implements $UpdateModerationActionInputCopyWith<$Res> {
  _$UpdateModerationActionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateModerationActionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = freezed,
    Object? notes = freezed,
    Object? reportId = freezed,
    Object? takenById = freezed,
  }) {
    return _then(_value.copyWith(
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ModerationActionType?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reportId: freezed == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String?,
      takenById: freezed == takenById
          ? _value.takenById
          : takenById // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateModerationActionInputImplCopyWith<$Res>
    implements $UpdateModerationActionInputCopyWith<$Res> {
  factory _$$UpdateModerationActionInputImplCopyWith(
          _$UpdateModerationActionInputImpl value,
          $Res Function(_$UpdateModerationActionInputImpl) then) =
      __$$UpdateModerationActionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ModerationActionType? actionType,
      String? notes,
      String? reportId,
      String? takenById});
}

/// @nodoc
class __$$UpdateModerationActionInputImplCopyWithImpl<$Res>
    extends _$UpdateModerationActionInputCopyWithImpl<$Res,
        _$UpdateModerationActionInputImpl>
    implements _$$UpdateModerationActionInputImplCopyWith<$Res> {
  __$$UpdateModerationActionInputImplCopyWithImpl(
      _$UpdateModerationActionInputImpl _value,
      $Res Function(_$UpdateModerationActionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateModerationActionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionType = freezed,
    Object? notes = freezed,
    Object? reportId = freezed,
    Object? takenById = freezed,
  }) {
    return _then(_$UpdateModerationActionInputImpl(
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ModerationActionType?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      reportId: freezed == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String?,
      takenById: freezed == takenById
          ? _value.takenById
          : takenById // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateModerationActionInputImpl
    implements _UpdateModerationActionInput {
  const _$UpdateModerationActionInputImpl(
      {this.actionType, this.notes, this.reportId, this.takenById});

  factory _$UpdateModerationActionInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateModerationActionInputImplFromJson(json);

  @override
  final ModerationActionType? actionType;
  @override
  final String? notes;
  @override
  final String? reportId;
  @override
  final String? takenById;

  @override
  String toString() {
    return 'UpdateModerationActionInput(actionType: $actionType, notes: $notes, reportId: $reportId, takenById: $takenById)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateModerationActionInputImpl &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.takenById, takenById) ||
                other.takenById == takenById));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, actionType, notes, reportId, takenById);

  /// Create a copy of UpdateModerationActionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateModerationActionInputImplCopyWith<_$UpdateModerationActionInputImpl>
      get copyWith => __$$UpdateModerationActionInputImplCopyWithImpl<
          _$UpdateModerationActionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateModerationActionInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateModerationActionInput
    implements UpdateModerationActionInput {
  const factory _UpdateModerationActionInput(
      {final ModerationActionType? actionType,
      final String? notes,
      final String? reportId,
      final String? takenById}) = _$UpdateModerationActionInputImpl;

  factory _UpdateModerationActionInput.fromJson(Map<String, dynamic> json) =
      _$UpdateModerationActionInputImpl.fromJson;

  @override
  ModerationActionType? get actionType;
  @override
  String? get notes;
  @override
  String? get reportId;
  @override
  String? get takenById;

  /// Create a copy of UpdateModerationActionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateModerationActionInputImplCopyWith<_$UpdateModerationActionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationActionWhereUniqueInput _$ModerationActionWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ModerationActionWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ModerationActionWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ModerationActionWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationActionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationActionWhereUniqueInputCopyWith<ModerationActionWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationActionWhereUniqueInputCopyWith<$Res> {
  factory $ModerationActionWhereUniqueInputCopyWith(
          ModerationActionWhereUniqueInput value,
          $Res Function(ModerationActionWhereUniqueInput) then) =
      _$ModerationActionWhereUniqueInputCopyWithImpl<$Res,
          ModerationActionWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ModerationActionWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ModerationActionWhereUniqueInput>
    implements $ModerationActionWhereUniqueInputCopyWith<$Res> {
  _$ModerationActionWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationActionWhereUniqueInput
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
abstract class _$$ModerationActionWhereUniqueInputImplCopyWith<$Res>
    implements $ModerationActionWhereUniqueInputCopyWith<$Res> {
  factory _$$ModerationActionWhereUniqueInputImplCopyWith(
          _$ModerationActionWhereUniqueInputImpl value,
          $Res Function(_$ModerationActionWhereUniqueInputImpl) then) =
      __$$ModerationActionWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ModerationActionWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ModerationActionWhereUniqueInputCopyWithImpl<$Res,
        _$ModerationActionWhereUniqueInputImpl>
    implements _$$ModerationActionWhereUniqueInputImplCopyWith<$Res> {
  __$$ModerationActionWhereUniqueInputImplCopyWithImpl(
      _$ModerationActionWhereUniqueInputImpl _value,
      $Res Function(_$ModerationActionWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationActionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ModerationActionWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationActionWhereUniqueInputImpl
    implements _ModerationActionWhereUniqueInput {
  const _$ModerationActionWhereUniqueInputImpl({this.id});

  factory _$ModerationActionWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationActionWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ModerationActionWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationActionWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ModerationActionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationActionWhereUniqueInputImplCopyWith<
          _$ModerationActionWhereUniqueInputImpl>
      get copyWith => __$$ModerationActionWhereUniqueInputImplCopyWithImpl<
          _$ModerationActionWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationActionWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ModerationActionWhereUniqueInput
    implements ModerationActionWhereUniqueInput {
  const factory _ModerationActionWhereUniqueInput({final String? id}) =
      _$ModerationActionWhereUniqueInputImpl;

  factory _ModerationActionWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ModerationActionWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ModerationActionWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationActionWhereUniqueInputImplCopyWith<
          _$ModerationActionWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationActionWhereInput _$ModerationActionWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ModerationActionWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ModerationActionWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  ModerationActionTypeFilter? get actionType =>
      throw _privateConstructorUsedError;
  StringFilter? get notes => throw _privateConstructorUsedError;

  /// Filter by report relation
  ModerationReportRelationFilter? get report =>
      throw _privateConstructorUsedError;
  StringFilter? get reportId => throw _privateConstructorUsedError;
  StringFilter? get takenById => throw _privateConstructorUsedError;

  /// Filter by takenBy relation
  UserRelationFilter? get takenBy => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  List<ModerationActionWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ModerationActionWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ModerationActionWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ModerationActionWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationActionWhereInputCopyWith<ModerationActionWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationActionWhereInputCopyWith<$Res> {
  factory $ModerationActionWhereInputCopyWith(ModerationActionWhereInput value,
          $Res Function(ModerationActionWhereInput) then) =
      _$ModerationActionWhereInputCopyWithImpl<$Res,
          ModerationActionWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      ModerationActionTypeFilter? actionType,
      StringFilter? notes,
      ModerationReportRelationFilter? report,
      StringFilter? reportId,
      StringFilter? takenById,
      UserRelationFilter? takenBy,
      DateTimeFilter? createdAt,
      List<ModerationActionWhereInput>? AND,
      List<ModerationActionWhereInput>? OR,
      ModerationActionWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $ModerationActionTypeFilterCopyWith<$Res>? get actionType;
  $StringFilterCopyWith<$Res>? get notes;
  $ModerationReportRelationFilterCopyWith<$Res>? get report;
  $StringFilterCopyWith<$Res>? get reportId;
  $StringFilterCopyWith<$Res>? get takenById;
  $UserRelationFilterCopyWith<$Res>? get takenBy;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $ModerationActionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ModerationActionWhereInputCopyWithImpl<$Res,
        $Val extends ModerationActionWhereInput>
    implements $ModerationActionWhereInputCopyWith<$Res> {
  _$ModerationActionWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? actionType = freezed,
    Object? notes = freezed,
    Object? report = freezed,
    Object? reportId = freezed,
    Object? takenById = freezed,
    Object? takenBy = freezed,
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
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ModerationActionTypeFilter?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ModerationReportRelationFilter?,
      reportId: freezed == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      takenById: freezed == takenById
          ? _value.takenById
          : takenById // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      takenBy: freezed == takenBy
          ? _value.takenBy
          : takenBy // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value.AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ModerationActionWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ModerationActionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ModerationActionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ModerationActionWhereInput
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

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationActionTypeFilterCopyWith<$Res>? get actionType {
    if (_value.actionType == null) {
      return null;
    }

    return $ModerationActionTypeFilterCopyWith<$Res>(_value.actionType!,
        (value) {
      return _then(_value.copyWith(actionType: value) as $Val);
    });
  }

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get notes {
    if (_value.notes == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.notes!, (value) {
      return _then(_value.copyWith(notes: value) as $Val);
    });
  }

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportRelationFilterCopyWith<$Res>? get report {
    if (_value.report == null) {
      return null;
    }

    return $ModerationReportRelationFilterCopyWith<$Res>(_value.report!,
        (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get reportId {
    if (_value.reportId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.reportId!, (value) {
      return _then(_value.copyWith(reportId: value) as $Val);
    });
  }

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get takenById {
    if (_value.takenById == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.takenById!, (value) {
      return _then(_value.copyWith(takenById: value) as $Val);
    });
  }

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get takenBy {
    if (_value.takenBy == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.takenBy!, (value) {
      return _then(_value.copyWith(takenBy: value) as $Val);
    });
  }

  /// Create a copy of ModerationActionWhereInput
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

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationActionWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ModerationActionWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModerationActionWhereInputImplCopyWith<$Res>
    implements $ModerationActionWhereInputCopyWith<$Res> {
  factory _$$ModerationActionWhereInputImplCopyWith(
          _$ModerationActionWhereInputImpl value,
          $Res Function(_$ModerationActionWhereInputImpl) then) =
      __$$ModerationActionWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      ModerationActionTypeFilter? actionType,
      StringFilter? notes,
      ModerationReportRelationFilter? report,
      StringFilter? reportId,
      StringFilter? takenById,
      UserRelationFilter? takenBy,
      DateTimeFilter? createdAt,
      List<ModerationActionWhereInput>? AND,
      List<ModerationActionWhereInput>? OR,
      ModerationActionWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $ModerationActionTypeFilterCopyWith<$Res>? get actionType;
  @override
  $StringFilterCopyWith<$Res>? get notes;
  @override
  $ModerationReportRelationFilterCopyWith<$Res>? get report;
  @override
  $StringFilterCopyWith<$Res>? get reportId;
  @override
  $StringFilterCopyWith<$Res>? get takenById;
  @override
  $UserRelationFilterCopyWith<$Res>? get takenBy;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $ModerationActionWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ModerationActionWhereInputImplCopyWithImpl<$Res>
    extends _$ModerationActionWhereInputCopyWithImpl<$Res,
        _$ModerationActionWhereInputImpl>
    implements _$$ModerationActionWhereInputImplCopyWith<$Res> {
  __$$ModerationActionWhereInputImplCopyWithImpl(
      _$ModerationActionWhereInputImpl _value,
      $Res Function(_$ModerationActionWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? actionType = freezed,
    Object? notes = freezed,
    Object? report = freezed,
    Object? reportId = freezed,
    Object? takenById = freezed,
    Object? takenBy = freezed,
    Object? createdAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ModerationActionWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ModerationActionTypeFilter?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ModerationReportRelationFilter?,
      reportId: freezed == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      takenById: freezed == takenById
          ? _value.takenById
          : takenById // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      takenBy: freezed == takenBy
          ? _value.takenBy
          : takenBy // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      AND: freezed == AND
          ? _value._AND
          : AND // ignore: cast_nullable_to_non_nullable
              as List<ModerationActionWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ModerationActionWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ModerationActionWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ModerationActionWhereInputImpl implements _ModerationActionWhereInput {
  const _$ModerationActionWhereInputImpl(
      {this.id,
      this.actionType,
      this.notes,
      this.report,
      this.reportId,
      this.takenById,
      this.takenBy,
      this.createdAt,
      final List<ModerationActionWhereInput>? AND,
      final List<ModerationActionWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ModerationActionWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationActionWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final ModerationActionTypeFilter? actionType;
  @override
  final StringFilter? notes;

  /// Filter by report relation
  @override
  final ModerationReportRelationFilter? report;
  @override
  final StringFilter? reportId;
  @override
  final StringFilter? takenById;

  /// Filter by takenBy relation
  @override
  final UserRelationFilter? takenBy;
  @override
  final DateTimeFilter? createdAt;
  final List<ModerationActionWhereInput>? _AND;
  @override
  List<ModerationActionWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ModerationActionWhereInput>? _OR;
  @override
  List<ModerationActionWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ModerationActionWhereInput? NOT;

  @override
  String toString() {
    return 'ModerationActionWhereInput(id: $id, actionType: $actionType, notes: $notes, report: $report, reportId: $reportId, takenById: $takenById, takenBy: $takenBy, createdAt: $createdAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationActionWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.takenById, takenById) ||
                other.takenById == takenById) &&
            (identical(other.takenBy, takenBy) || other.takenBy == takenBy) &&
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
      actionType,
      notes,
      report,
      reportId,
      takenById,
      takenBy,
      createdAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationActionWhereInputImplCopyWith<_$ModerationActionWhereInputImpl>
      get copyWith => __$$ModerationActionWhereInputImplCopyWithImpl<
          _$ModerationActionWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationActionWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ModerationActionWhereInput
    implements ModerationActionWhereInput {
  const factory _ModerationActionWhereInput(
          {final StringFilter? id,
          final ModerationActionTypeFilter? actionType,
          final StringFilter? notes,
          final ModerationReportRelationFilter? report,
          final StringFilter? reportId,
          final StringFilter? takenById,
          final UserRelationFilter? takenBy,
          final DateTimeFilter? createdAt,
          final List<ModerationActionWhereInput>? AND,
          final List<ModerationActionWhereInput>? OR,
          final ModerationActionWhereInput? NOT}) =
      _$ModerationActionWhereInputImpl;

  factory _ModerationActionWhereInput.fromJson(Map<String, dynamic> json) =
      _$ModerationActionWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  ModerationActionTypeFilter? get actionType;
  @override
  StringFilter? get notes;

  /// Filter by report relation
  @override
  ModerationReportRelationFilter? get report;
  @override
  StringFilter? get reportId;
  @override
  StringFilter? get takenById;

  /// Filter by takenBy relation
  @override
  UserRelationFilter? get takenBy;
  @override
  DateTimeFilter? get createdAt;
  @override
  List<ModerationActionWhereInput>? get AND;
  @override
  List<ModerationActionWhereInput>? get OR;
  @override
  ModerationActionWhereInput? get NOT;

  /// Create a copy of ModerationActionWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationActionWhereInputImplCopyWith<_$ModerationActionWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationActionListRelationFilter _$ModerationActionListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ModerationActionListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ModerationActionListRelationFilter {
  /// At least one related record matches
  ModerationActionWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ModerationActionWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ModerationActionWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ModerationActionListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationActionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationActionListRelationFilterCopyWith<
          ModerationActionListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationActionListRelationFilterCopyWith<$Res> {
  factory $ModerationActionListRelationFilterCopyWith(
          ModerationActionListRelationFilter value,
          $Res Function(ModerationActionListRelationFilter) then) =
      _$ModerationActionListRelationFilterCopyWithImpl<$Res,
          ModerationActionListRelationFilter>;
  @useResult
  $Res call(
      {ModerationActionWhereInput? some,
      ModerationActionWhereInput? every,
      ModerationActionWhereInput? none});

  $ModerationActionWhereInputCopyWith<$Res>? get some;
  $ModerationActionWhereInputCopyWith<$Res>? get every;
  $ModerationActionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ModerationActionListRelationFilterCopyWithImpl<$Res,
        $Val extends ModerationActionListRelationFilter>
    implements $ModerationActionListRelationFilterCopyWith<$Res> {
  _$ModerationActionListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationActionListRelationFilter
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
              as ModerationActionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ModerationActionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ModerationActionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ModerationActionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationActionWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ModerationActionWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ModerationActionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationActionWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ModerationActionWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ModerationActionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationActionWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ModerationActionWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModerationActionListRelationFilterImplCopyWith<$Res>
    implements $ModerationActionListRelationFilterCopyWith<$Res> {
  factory _$$ModerationActionListRelationFilterImplCopyWith(
          _$ModerationActionListRelationFilterImpl value,
          $Res Function(_$ModerationActionListRelationFilterImpl) then) =
      __$$ModerationActionListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ModerationActionWhereInput? some,
      ModerationActionWhereInput? every,
      ModerationActionWhereInput? none});

  @override
  $ModerationActionWhereInputCopyWith<$Res>? get some;
  @override
  $ModerationActionWhereInputCopyWith<$Res>? get every;
  @override
  $ModerationActionWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ModerationActionListRelationFilterImplCopyWithImpl<$Res>
    extends _$ModerationActionListRelationFilterCopyWithImpl<$Res,
        _$ModerationActionListRelationFilterImpl>
    implements _$$ModerationActionListRelationFilterImplCopyWith<$Res> {
  __$$ModerationActionListRelationFilterImplCopyWithImpl(
      _$ModerationActionListRelationFilterImpl _value,
      $Res Function(_$ModerationActionListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationActionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ModerationActionListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ModerationActionWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ModerationActionWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ModerationActionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationActionListRelationFilterImpl
    implements _ModerationActionListRelationFilter {
  const _$ModerationActionListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ModerationActionListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationActionListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ModerationActionWhereInput? some;

  /// All related records match
  @override
  final ModerationActionWhereInput? every;

  /// No related records match
  @override
  final ModerationActionWhereInput? none;

  @override
  String toString() {
    return 'ModerationActionListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationActionListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ModerationActionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationActionListRelationFilterImplCopyWith<
          _$ModerationActionListRelationFilterImpl>
      get copyWith => __$$ModerationActionListRelationFilterImplCopyWithImpl<
          _$ModerationActionListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationActionListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ModerationActionListRelationFilter
    implements ModerationActionListRelationFilter {
  const factory _ModerationActionListRelationFilter(
          {final ModerationActionWhereInput? some,
          final ModerationActionWhereInput? every,
          final ModerationActionWhereInput? none}) =
      _$ModerationActionListRelationFilterImpl;

  factory _ModerationActionListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ModerationActionListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ModerationActionWhereInput? get some;

  /// All related records match
  @override
  ModerationActionWhereInput? get every;

  /// No related records match
  @override
  ModerationActionWhereInput? get none;

  /// Create a copy of ModerationActionListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationActionListRelationFilterImplCopyWith<
          _$ModerationActionListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationActionRelationFilter _$ModerationActionRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ModerationActionRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ModerationActionRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ModerationActionWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ModerationActionWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ModerationActionRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationActionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationActionRelationFilterCopyWith<ModerationActionRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationActionRelationFilterCopyWith<$Res> {
  factory $ModerationActionRelationFilterCopyWith(
          ModerationActionRelationFilter value,
          $Res Function(ModerationActionRelationFilter) then) =
      _$ModerationActionRelationFilterCopyWithImpl<$Res,
          ModerationActionRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ModerationActionWhereInput? is_,
      ModerationActionWhereInput? isNot});

  $ModerationActionWhereInputCopyWith<$Res>? get is_;
  $ModerationActionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ModerationActionRelationFilterCopyWithImpl<$Res,
        $Val extends ModerationActionRelationFilter>
    implements $ModerationActionRelationFilterCopyWith<$Res> {
  _$ModerationActionRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationActionRelationFilter
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
              as ModerationActionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ModerationActionWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ModerationActionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationActionWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ModerationActionWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ModerationActionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationActionWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ModerationActionWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModerationActionRelationFilterImplCopyWith<$Res>
    implements $ModerationActionRelationFilterCopyWith<$Res> {
  factory _$$ModerationActionRelationFilterImplCopyWith(
          _$ModerationActionRelationFilterImpl value,
          $Res Function(_$ModerationActionRelationFilterImpl) then) =
      __$$ModerationActionRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ModerationActionWhereInput? is_,
      ModerationActionWhereInput? isNot});

  @override
  $ModerationActionWhereInputCopyWith<$Res>? get is_;
  @override
  $ModerationActionWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ModerationActionRelationFilterImplCopyWithImpl<$Res>
    extends _$ModerationActionRelationFilterCopyWithImpl<$Res,
        _$ModerationActionRelationFilterImpl>
    implements _$$ModerationActionRelationFilterImplCopyWith<$Res> {
  __$$ModerationActionRelationFilterImplCopyWithImpl(
      _$ModerationActionRelationFilterImpl _value,
      $Res Function(_$ModerationActionRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationActionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ModerationActionRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ModerationActionWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ModerationActionWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationActionRelationFilterImpl
    implements _ModerationActionRelationFilter {
  const _$ModerationActionRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ModerationActionRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationActionRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ModerationActionWhereInput? is_;

  /// Related record does not match
  @override
  final ModerationActionWhereInput? isNot;

  @override
  String toString() {
    return 'ModerationActionRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationActionRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ModerationActionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationActionRelationFilterImplCopyWith<
          _$ModerationActionRelationFilterImpl>
      get copyWith => __$$ModerationActionRelationFilterImplCopyWithImpl<
          _$ModerationActionRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationActionRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ModerationActionRelationFilter
    implements ModerationActionRelationFilter {
  const factory _ModerationActionRelationFilter(
          {@JsonKey(name: 'is') final ModerationActionWhereInput? is_,
          final ModerationActionWhereInput? isNot}) =
      _$ModerationActionRelationFilterImpl;

  factory _ModerationActionRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ModerationActionRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ModerationActionWhereInput? get is_;

  /// Related record does not match
  @override
  ModerationActionWhereInput? get isNot;

  /// Create a copy of ModerationActionRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationActionRelationFilterImplCopyWith<
          _$ModerationActionRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationActionOrderByInput _$ModerationActionOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ModerationActionOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ModerationActionOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get notes => throw _privateConstructorUsedError;
  SortOrder? get reportId => throw _privateConstructorUsedError;
  SortOrder? get takenById => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ModerationActionOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationActionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationActionOrderByInputCopyWith<ModerationActionOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationActionOrderByInputCopyWith<$Res> {
  factory $ModerationActionOrderByInputCopyWith(
          ModerationActionOrderByInput value,
          $Res Function(ModerationActionOrderByInput) then) =
      _$ModerationActionOrderByInputCopyWithImpl<$Res,
          ModerationActionOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? notes,
      SortOrder? reportId,
      SortOrder? takenById,
      SortOrder? createdAt});
}

/// @nodoc
class _$ModerationActionOrderByInputCopyWithImpl<$Res,
        $Val extends ModerationActionOrderByInput>
    implements $ModerationActionOrderByInputCopyWith<$Res> {
  _$ModerationActionOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationActionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notes = freezed,
    Object? reportId = freezed,
    Object? takenById = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reportId: freezed == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      takenById: freezed == takenById
          ? _value.takenById
          : takenById // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModerationActionOrderByInputImplCopyWith<$Res>
    implements $ModerationActionOrderByInputCopyWith<$Res> {
  factory _$$ModerationActionOrderByInputImplCopyWith(
          _$ModerationActionOrderByInputImpl value,
          $Res Function(_$ModerationActionOrderByInputImpl) then) =
      __$$ModerationActionOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? notes,
      SortOrder? reportId,
      SortOrder? takenById,
      SortOrder? createdAt});
}

/// @nodoc
class __$$ModerationActionOrderByInputImplCopyWithImpl<$Res>
    extends _$ModerationActionOrderByInputCopyWithImpl<$Res,
        _$ModerationActionOrderByInputImpl>
    implements _$$ModerationActionOrderByInputImplCopyWith<$Res> {
  __$$ModerationActionOrderByInputImplCopyWithImpl(
      _$ModerationActionOrderByInputImpl _value,
      $Res Function(_$ModerationActionOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationActionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? notes = freezed,
    Object? reportId = freezed,
    Object? takenById = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ModerationActionOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reportId: freezed == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      takenById: freezed == takenById
          ? _value.takenById
          : takenById // ignore: cast_nullable_to_non_nullable
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
class _$ModerationActionOrderByInputImpl
    implements _ModerationActionOrderByInput {
  const _$ModerationActionOrderByInputImpl(
      {this.id, this.notes, this.reportId, this.takenById, this.createdAt});

  factory _$ModerationActionOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationActionOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? notes;
  @override
  final SortOrder? reportId;
  @override
  final SortOrder? takenById;
  @override
  final SortOrder? createdAt;

  @override
  String toString() {
    return 'ModerationActionOrderByInput(id: $id, notes: $notes, reportId: $reportId, takenById: $takenById, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationActionOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.takenById, takenById) ||
                other.takenById == takenById) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, notes, reportId, takenById, createdAt);

  /// Create a copy of ModerationActionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationActionOrderByInputImplCopyWith<
          _$ModerationActionOrderByInputImpl>
      get copyWith => __$$ModerationActionOrderByInputImplCopyWithImpl<
          _$ModerationActionOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationActionOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ModerationActionOrderByInput
    implements ModerationActionOrderByInput {
  const factory _ModerationActionOrderByInput(
      {final SortOrder? id,
      final SortOrder? notes,
      final SortOrder? reportId,
      final SortOrder? takenById,
      final SortOrder? createdAt}) = _$ModerationActionOrderByInputImpl;

  factory _ModerationActionOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ModerationActionOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get notes;
  @override
  SortOrder? get reportId;
  @override
  SortOrder? get takenById;
  @override
  SortOrder? get createdAt;

  /// Create a copy of ModerationActionOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationActionOrderByInputImplCopyWith<
          _$ModerationActionOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
