// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderation_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModerationReport _$ModerationReportFromJson(Map<String, dynamic> json) {
  return _ModerationReport.fromJson(json);
}

/// @nodoc
mixin _$ModerationReport {
  String get id => throw _privateConstructorUsedError;
  ModerationReportType get type => throw _privateConstructorUsedError;
  ModerationReportStatus get status => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get reportCount => throw _privateConstructorUsedError;
  String? get contentText => throw _privateConstructorUsedError;
  String? get contentUrl => throw _privateConstructorUsedError;
  String get reportedById => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get reportedBy => throw _privateConstructorUsedError;
  String get targetUserId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get targetUser => throw _privateConstructorUsedError;
  String? get reviewId => throw _privateConstructorUsedError;
  String? get assignedToId => throw _privateConstructorUsedError;
  DateTime? get resolvedAt => throw _privateConstructorUsedError;
  String? get resolvedBy => throw _privateConstructorUsedError;
  List<ModerationAction> get actions => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ModerationReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationReportCopyWith<ModerationReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationReportCopyWith<$Res> {
  factory $ModerationReportCopyWith(
          ModerationReport value, $Res Function(ModerationReport) then) =
      _$ModerationReportCopyWithImpl<$Res, ModerationReport>;
  @useResult
  $Res call(
      {String id,
      ModerationReportType type,
      ModerationReportStatus status,
      String reason,
      String? description,
      int reportCount,
      String? contentText,
      String? contentUrl,
      String reportedById,
      @JsonKey(includeFromJson: false, includeToJson: false) User? reportedBy,
      String targetUserId,
      @JsonKey(includeFromJson: false, includeToJson: false) User? targetUser,
      String? reviewId,
      String? assignedToId,
      DateTime? resolvedAt,
      String? resolvedBy,
      List<ModerationAction> actions,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get reportedBy;
  $UserCopyWith<$Res>? get targetUser;
}

/// @nodoc
class _$ModerationReportCopyWithImpl<$Res, $Val extends ModerationReport>
    implements $ModerationReportCopyWith<$Res> {
  _$ModerationReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? status = null,
    Object? reason = null,
    Object? description = freezed,
    Object? reportCount = null,
    Object? contentText = freezed,
    Object? contentUrl = freezed,
    Object? reportedById = null,
    Object? reportedBy = freezed,
    Object? targetUserId = null,
    Object? targetUser = freezed,
    Object? reviewId = freezed,
    Object? assignedToId = freezed,
    Object? resolvedAt = freezed,
    Object? resolvedBy = freezed,
    Object? actions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ModerationReportType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatus,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportCount: null == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as int,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reportedById: null == reportedById
          ? _value.reportedById
          : reportedById // ignore: cast_nullable_to_non_nullable
              as String,
      reportedBy: freezed == reportedBy
          ? _value.reportedBy
          : reportedBy // ignore: cast_nullable_to_non_nullable
              as User?,
      targetUserId: null == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String,
      targetUser: freezed == targetUser
          ? _value.targetUser
          : targetUser // ignore: cast_nullable_to_non_nullable
              as User?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resolvedBy: freezed == resolvedBy
          ? _value.resolvedBy
          : resolvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ModerationAction>,
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

  /// Create a copy of ModerationReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get reportedBy {
    if (_value.reportedBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.reportedBy!, (value) {
      return _then(_value.copyWith(reportedBy: value) as $Val);
    });
  }

  /// Create a copy of ModerationReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get targetUser {
    if (_value.targetUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.targetUser!, (value) {
      return _then(_value.copyWith(targetUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModerationReportImplCopyWith<$Res>
    implements $ModerationReportCopyWith<$Res> {
  factory _$$ModerationReportImplCopyWith(_$ModerationReportImpl value,
          $Res Function(_$ModerationReportImpl) then) =
      __$$ModerationReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ModerationReportType type,
      ModerationReportStatus status,
      String reason,
      String? description,
      int reportCount,
      String? contentText,
      String? contentUrl,
      String reportedById,
      @JsonKey(includeFromJson: false, includeToJson: false) User? reportedBy,
      String targetUserId,
      @JsonKey(includeFromJson: false, includeToJson: false) User? targetUser,
      String? reviewId,
      String? assignedToId,
      DateTime? resolvedAt,
      String? resolvedBy,
      List<ModerationAction> actions,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get reportedBy;
  @override
  $UserCopyWith<$Res>? get targetUser;
}

/// @nodoc
class __$$ModerationReportImplCopyWithImpl<$Res>
    extends _$ModerationReportCopyWithImpl<$Res, _$ModerationReportImpl>
    implements _$$ModerationReportImplCopyWith<$Res> {
  __$$ModerationReportImplCopyWithImpl(_$ModerationReportImpl _value,
      $Res Function(_$ModerationReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? status = null,
    Object? reason = null,
    Object? description = freezed,
    Object? reportCount = null,
    Object? contentText = freezed,
    Object? contentUrl = freezed,
    Object? reportedById = null,
    Object? reportedBy = freezed,
    Object? targetUserId = null,
    Object? targetUser = freezed,
    Object? reviewId = freezed,
    Object? assignedToId = freezed,
    Object? resolvedAt = freezed,
    Object? resolvedBy = freezed,
    Object? actions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ModerationReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ModerationReportType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatus,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportCount: null == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as int,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reportedById: null == reportedById
          ? _value.reportedById
          : reportedById // ignore: cast_nullable_to_non_nullable
              as String,
      reportedBy: freezed == reportedBy
          ? _value.reportedBy
          : reportedBy // ignore: cast_nullable_to_non_nullable
              as User?,
      targetUserId: null == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String,
      targetUser: freezed == targetUser
          ? _value.targetUser
          : targetUser // ignore: cast_nullable_to_non_nullable
              as User?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resolvedBy: freezed == resolvedBy
          ? _value.resolvedBy
          : resolvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ModerationAction>,
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
class _$ModerationReportImpl implements _ModerationReport {
  const _$ModerationReportImpl(
      {required this.id,
      required this.type,
      this.status = ModerationReportStatus.pending,
      required this.reason,
      this.description,
      this.reportCount = 1,
      this.contentText,
      this.contentUrl,
      required this.reportedById,
      @JsonKey(includeFromJson: false, includeToJson: false) this.reportedBy,
      required this.targetUserId,
      @JsonKey(includeFromJson: false, includeToJson: false) this.targetUser,
      this.reviewId,
      this.assignedToId,
      this.resolvedAt,
      this.resolvedBy,
      required final List<ModerationAction> actions,
      required this.createdAt,
      required this.updatedAt})
      : _actions = actions;

  factory _$ModerationReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModerationReportImplFromJson(json);

  @override
  final String id;
  @override
  final ModerationReportType type;
  @override
  @JsonKey()
  final ModerationReportStatus status;
  @override
  final String reason;
  @override
  final String? description;
  @override
  @JsonKey()
  final int reportCount;
  @override
  final String? contentText;
  @override
  final String? contentUrl;
  @override
  final String reportedById;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? reportedBy;
  @override
  final String targetUserId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? targetUser;
  @override
  final String? reviewId;
  @override
  final String? assignedToId;
  @override
  final DateTime? resolvedAt;
  @override
  final String? resolvedBy;
  final List<ModerationAction> _actions;
  @override
  List<ModerationAction> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ModerationReport(id: $id, type: $type, status: $status, reason: $reason, description: $description, reportCount: $reportCount, contentText: $contentText, contentUrl: $contentUrl, reportedById: $reportedById, reportedBy: $reportedBy, targetUserId: $targetUserId, targetUser: $targetUser, reviewId: $reviewId, assignedToId: $assignedToId, resolvedAt: $resolvedAt, resolvedBy: $resolvedBy, actions: $actions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reportCount, reportCount) ||
                other.reportCount == reportCount) &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.reportedById, reportedById) ||
                other.reportedById == reportedById) &&
            (identical(other.reportedBy, reportedBy) ||
                other.reportedBy == reportedBy) &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId) &&
            (identical(other.targetUser, targetUser) ||
                other.targetUser == targetUser) &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.assignedToId, assignedToId) ||
                other.assignedToId == assignedToId) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.resolvedBy, resolvedBy) ||
                other.resolvedBy == resolvedBy) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        type,
        status,
        reason,
        description,
        reportCount,
        contentText,
        contentUrl,
        reportedById,
        reportedBy,
        targetUserId,
        targetUser,
        reviewId,
        assignedToId,
        resolvedAt,
        resolvedBy,
        const DeepCollectionEquality().hash(_actions),
        createdAt,
        updatedAt
      ]);

  /// Create a copy of ModerationReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationReportImplCopyWith<_$ModerationReportImpl> get copyWith =>
      __$$ModerationReportImplCopyWithImpl<_$ModerationReportImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationReportImplToJson(
      this,
    );
  }
}

abstract class _ModerationReport implements ModerationReport {
  const factory _ModerationReport(
      {required final String id,
      required final ModerationReportType type,
      final ModerationReportStatus status,
      required final String reason,
      final String? description,
      final int reportCount,
      final String? contentText,
      final String? contentUrl,
      required final String reportedById,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final User? reportedBy,
      required final String targetUserId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final User? targetUser,
      final String? reviewId,
      final String? assignedToId,
      final DateTime? resolvedAt,
      final String? resolvedBy,
      required final List<ModerationAction> actions,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ModerationReportImpl;

  factory _ModerationReport.fromJson(Map<String, dynamic> json) =
      _$ModerationReportImpl.fromJson;

  @override
  String get id;
  @override
  ModerationReportType get type;
  @override
  ModerationReportStatus get status;
  @override
  String get reason;
  @override
  String? get description;
  @override
  int get reportCount;
  @override
  String? get contentText;
  @override
  String? get contentUrl;
  @override
  String get reportedById;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get reportedBy;
  @override
  String get targetUserId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get targetUser;
  @override
  String? get reviewId;
  @override
  String? get assignedToId;
  @override
  DateTime? get resolvedAt;
  @override
  String? get resolvedBy;
  @override
  List<ModerationAction> get actions;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ModerationReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationReportImplCopyWith<_$ModerationReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateModerationReportInput _$CreateModerationReportInputFromJson(
    Map<String, dynamic> json) {
  return _CreateModerationReportInput.fromJson(json);
}

/// @nodoc
mixin _$CreateModerationReportInput {
  ModerationReportType get type => throw _privateConstructorUsedError;
  ModerationReportStatus get status => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get reportCount => throw _privateConstructorUsedError;
  String? get contentText => throw _privateConstructorUsedError;
  String? get contentUrl => throw _privateConstructorUsedError;
  String get reportedById => throw _privateConstructorUsedError;
  String get targetUserId => throw _privateConstructorUsedError;
  String? get reviewId => throw _privateConstructorUsedError;
  String? get assignedToId => throw _privateConstructorUsedError;
  DateTime? get resolvedAt => throw _privateConstructorUsedError;
  String? get resolvedBy => throw _privateConstructorUsedError;

  /// Serializes this CreateModerationReportInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateModerationReportInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateModerationReportInputCopyWith<CreateModerationReportInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateModerationReportInputCopyWith<$Res> {
  factory $CreateModerationReportInputCopyWith(
          CreateModerationReportInput value,
          $Res Function(CreateModerationReportInput) then) =
      _$CreateModerationReportInputCopyWithImpl<$Res,
          CreateModerationReportInput>;
  @useResult
  $Res call(
      {ModerationReportType type,
      ModerationReportStatus status,
      String reason,
      String? description,
      int? reportCount,
      String? contentText,
      String? contentUrl,
      String reportedById,
      String targetUserId,
      String? reviewId,
      String? assignedToId,
      DateTime? resolvedAt,
      String? resolvedBy});
}

/// @nodoc
class _$CreateModerationReportInputCopyWithImpl<$Res,
        $Val extends CreateModerationReportInput>
    implements $CreateModerationReportInputCopyWith<$Res> {
  _$CreateModerationReportInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateModerationReportInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? status = null,
    Object? reason = null,
    Object? description = freezed,
    Object? reportCount = freezed,
    Object? contentText = freezed,
    Object? contentUrl = freezed,
    Object? reportedById = null,
    Object? targetUserId = null,
    Object? reviewId = freezed,
    Object? assignedToId = freezed,
    Object? resolvedAt = freezed,
    Object? resolvedBy = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ModerationReportType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatus,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportCount: freezed == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as int?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reportedById: null == reportedById
          ? _value.reportedById
          : reportedById // ignore: cast_nullable_to_non_nullable
              as String,
      targetUserId: null == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resolvedBy: freezed == resolvedBy
          ? _value.resolvedBy
          : resolvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateModerationReportInputImplCopyWith<$Res>
    implements $CreateModerationReportInputCopyWith<$Res> {
  factory _$$CreateModerationReportInputImplCopyWith(
          _$CreateModerationReportInputImpl value,
          $Res Function(_$CreateModerationReportInputImpl) then) =
      __$$CreateModerationReportInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ModerationReportType type,
      ModerationReportStatus status,
      String reason,
      String? description,
      int? reportCount,
      String? contentText,
      String? contentUrl,
      String reportedById,
      String targetUserId,
      String? reviewId,
      String? assignedToId,
      DateTime? resolvedAt,
      String? resolvedBy});
}

/// @nodoc
class __$$CreateModerationReportInputImplCopyWithImpl<$Res>
    extends _$CreateModerationReportInputCopyWithImpl<$Res,
        _$CreateModerationReportInputImpl>
    implements _$$CreateModerationReportInputImplCopyWith<$Res> {
  __$$CreateModerationReportInputImplCopyWithImpl(
      _$CreateModerationReportInputImpl _value,
      $Res Function(_$CreateModerationReportInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateModerationReportInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? status = null,
    Object? reason = null,
    Object? description = freezed,
    Object? reportCount = freezed,
    Object? contentText = freezed,
    Object? contentUrl = freezed,
    Object? reportedById = null,
    Object? targetUserId = null,
    Object? reviewId = freezed,
    Object? assignedToId = freezed,
    Object? resolvedAt = freezed,
    Object? resolvedBy = freezed,
  }) {
    return _then(_$CreateModerationReportInputImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ModerationReportType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatus,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportCount: freezed == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as int?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reportedById: null == reportedById
          ? _value.reportedById
          : reportedById // ignore: cast_nullable_to_non_nullable
              as String,
      targetUserId: null == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resolvedBy: freezed == resolvedBy
          ? _value.resolvedBy
          : resolvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateModerationReportInputImpl
    implements _CreateModerationReportInput {
  const _$CreateModerationReportInputImpl(
      {required this.type,
      this.status = ModerationReportStatus.pending,
      required this.reason,
      this.description,
      this.reportCount = 1,
      this.contentText,
      this.contentUrl,
      required this.reportedById,
      required this.targetUserId,
      this.reviewId,
      this.assignedToId,
      this.resolvedAt,
      this.resolvedBy});

  factory _$CreateModerationReportInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateModerationReportInputImplFromJson(json);

  @override
  final ModerationReportType type;
  @override
  @JsonKey()
  final ModerationReportStatus status;
  @override
  final String reason;
  @override
  final String? description;
  @override
  @JsonKey()
  final int? reportCount;
  @override
  final String? contentText;
  @override
  final String? contentUrl;
  @override
  final String reportedById;
  @override
  final String targetUserId;
  @override
  final String? reviewId;
  @override
  final String? assignedToId;
  @override
  final DateTime? resolvedAt;
  @override
  final String? resolvedBy;

  @override
  String toString() {
    return 'CreateModerationReportInput(type: $type, status: $status, reason: $reason, description: $description, reportCount: $reportCount, contentText: $contentText, contentUrl: $contentUrl, reportedById: $reportedById, targetUserId: $targetUserId, reviewId: $reviewId, assignedToId: $assignedToId, resolvedAt: $resolvedAt, resolvedBy: $resolvedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateModerationReportInputImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reportCount, reportCount) ||
                other.reportCount == reportCount) &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.reportedById, reportedById) ||
                other.reportedById == reportedById) &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId) &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.assignedToId, assignedToId) ||
                other.assignedToId == assignedToId) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.resolvedBy, resolvedBy) ||
                other.resolvedBy == resolvedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      status,
      reason,
      description,
      reportCount,
      contentText,
      contentUrl,
      reportedById,
      targetUserId,
      reviewId,
      assignedToId,
      resolvedAt,
      resolvedBy);

  /// Create a copy of CreateModerationReportInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateModerationReportInputImplCopyWith<_$CreateModerationReportInputImpl>
      get copyWith => __$$CreateModerationReportInputImplCopyWithImpl<
          _$CreateModerationReportInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateModerationReportInputImplToJson(
      this,
    );
  }
}

abstract class _CreateModerationReportInput
    implements CreateModerationReportInput {
  const factory _CreateModerationReportInput(
      {required final ModerationReportType type,
      final ModerationReportStatus status,
      required final String reason,
      final String? description,
      final int? reportCount,
      final String? contentText,
      final String? contentUrl,
      required final String reportedById,
      required final String targetUserId,
      final String? reviewId,
      final String? assignedToId,
      final DateTime? resolvedAt,
      final String? resolvedBy}) = _$CreateModerationReportInputImpl;

  factory _CreateModerationReportInput.fromJson(Map<String, dynamic> json) =
      _$CreateModerationReportInputImpl.fromJson;

  @override
  ModerationReportType get type;
  @override
  ModerationReportStatus get status;
  @override
  String get reason;
  @override
  String? get description;
  @override
  int? get reportCount;
  @override
  String? get contentText;
  @override
  String? get contentUrl;
  @override
  String get reportedById;
  @override
  String get targetUserId;
  @override
  String? get reviewId;
  @override
  String? get assignedToId;
  @override
  DateTime? get resolvedAt;
  @override
  String? get resolvedBy;

  /// Create a copy of CreateModerationReportInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateModerationReportInputImplCopyWith<_$CreateModerationReportInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateModerationReportInput _$UpdateModerationReportInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateModerationReportInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateModerationReportInput {
  ModerationReportType? get type => throw _privateConstructorUsedError;
  ModerationReportStatus? get status => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get reportCount => throw _privateConstructorUsedError;
  String? get contentText => throw _privateConstructorUsedError;
  String? get contentUrl => throw _privateConstructorUsedError;
  String? get reportedById => throw _privateConstructorUsedError;
  String? get targetUserId => throw _privateConstructorUsedError;
  String? get reviewId => throw _privateConstructorUsedError;
  String? get assignedToId => throw _privateConstructorUsedError;
  DateTime? get resolvedAt => throw _privateConstructorUsedError;
  String? get resolvedBy => throw _privateConstructorUsedError;

  /// Serializes this UpdateModerationReportInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateModerationReportInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateModerationReportInputCopyWith<UpdateModerationReportInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateModerationReportInputCopyWith<$Res> {
  factory $UpdateModerationReportInputCopyWith(
          UpdateModerationReportInput value,
          $Res Function(UpdateModerationReportInput) then) =
      _$UpdateModerationReportInputCopyWithImpl<$Res,
          UpdateModerationReportInput>;
  @useResult
  $Res call(
      {ModerationReportType? type,
      ModerationReportStatus? status,
      String? reason,
      String? description,
      int? reportCount,
      String? contentText,
      String? contentUrl,
      String? reportedById,
      String? targetUserId,
      String? reviewId,
      String? assignedToId,
      DateTime? resolvedAt,
      String? resolvedBy});
}

/// @nodoc
class _$UpdateModerationReportInputCopyWithImpl<$Res,
        $Val extends UpdateModerationReportInput>
    implements $UpdateModerationReportInputCopyWith<$Res> {
  _$UpdateModerationReportInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateModerationReportInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? reason = freezed,
    Object? description = freezed,
    Object? reportCount = freezed,
    Object? contentText = freezed,
    Object? contentUrl = freezed,
    Object? reportedById = freezed,
    Object? targetUserId = freezed,
    Object? reviewId = freezed,
    Object? assignedToId = freezed,
    Object? resolvedAt = freezed,
    Object? resolvedBy = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ModerationReportType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatus?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportCount: freezed == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as int?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reportedById: freezed == reportedById
          ? _value.reportedById
          : reportedById // ignore: cast_nullable_to_non_nullable
              as String?,
      targetUserId: freezed == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resolvedBy: freezed == resolvedBy
          ? _value.resolvedBy
          : resolvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateModerationReportInputImplCopyWith<$Res>
    implements $UpdateModerationReportInputCopyWith<$Res> {
  factory _$$UpdateModerationReportInputImplCopyWith(
          _$UpdateModerationReportInputImpl value,
          $Res Function(_$UpdateModerationReportInputImpl) then) =
      __$$UpdateModerationReportInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ModerationReportType? type,
      ModerationReportStatus? status,
      String? reason,
      String? description,
      int? reportCount,
      String? contentText,
      String? contentUrl,
      String? reportedById,
      String? targetUserId,
      String? reviewId,
      String? assignedToId,
      DateTime? resolvedAt,
      String? resolvedBy});
}

/// @nodoc
class __$$UpdateModerationReportInputImplCopyWithImpl<$Res>
    extends _$UpdateModerationReportInputCopyWithImpl<$Res,
        _$UpdateModerationReportInputImpl>
    implements _$$UpdateModerationReportInputImplCopyWith<$Res> {
  __$$UpdateModerationReportInputImplCopyWithImpl(
      _$UpdateModerationReportInputImpl _value,
      $Res Function(_$UpdateModerationReportInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateModerationReportInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? reason = freezed,
    Object? description = freezed,
    Object? reportCount = freezed,
    Object? contentText = freezed,
    Object? contentUrl = freezed,
    Object? reportedById = freezed,
    Object? targetUserId = freezed,
    Object? reviewId = freezed,
    Object? assignedToId = freezed,
    Object? resolvedAt = freezed,
    Object? resolvedBy = freezed,
  }) {
    return _then(_$UpdateModerationReportInputImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ModerationReportType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatus?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reportCount: freezed == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as int?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      reportedById: freezed == reportedById
          ? _value.reportedById
          : reportedById // ignore: cast_nullable_to_non_nullable
              as String?,
      targetUserId: freezed == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resolvedBy: freezed == resolvedBy
          ? _value.resolvedBy
          : resolvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateModerationReportInputImpl
    implements _UpdateModerationReportInput {
  const _$UpdateModerationReportInputImpl(
      {this.type,
      this.status,
      this.reason,
      this.description,
      this.reportCount,
      this.contentText,
      this.contentUrl,
      this.reportedById,
      this.targetUserId,
      this.reviewId,
      this.assignedToId,
      this.resolvedAt,
      this.resolvedBy});

  factory _$UpdateModerationReportInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateModerationReportInputImplFromJson(json);

  @override
  final ModerationReportType? type;
  @override
  final ModerationReportStatus? status;
  @override
  final String? reason;
  @override
  final String? description;
  @override
  final int? reportCount;
  @override
  final String? contentText;
  @override
  final String? contentUrl;
  @override
  final String? reportedById;
  @override
  final String? targetUserId;
  @override
  final String? reviewId;
  @override
  final String? assignedToId;
  @override
  final DateTime? resolvedAt;
  @override
  final String? resolvedBy;

  @override
  String toString() {
    return 'UpdateModerationReportInput(type: $type, status: $status, reason: $reason, description: $description, reportCount: $reportCount, contentText: $contentText, contentUrl: $contentUrl, reportedById: $reportedById, targetUserId: $targetUserId, reviewId: $reviewId, assignedToId: $assignedToId, resolvedAt: $resolvedAt, resolvedBy: $resolvedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateModerationReportInputImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reportCount, reportCount) ||
                other.reportCount == reportCount) &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.reportedById, reportedById) ||
                other.reportedById == reportedById) &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId) &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.assignedToId, assignedToId) ||
                other.assignedToId == assignedToId) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.resolvedBy, resolvedBy) ||
                other.resolvedBy == resolvedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      status,
      reason,
      description,
      reportCount,
      contentText,
      contentUrl,
      reportedById,
      targetUserId,
      reviewId,
      assignedToId,
      resolvedAt,
      resolvedBy);

  /// Create a copy of UpdateModerationReportInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateModerationReportInputImplCopyWith<_$UpdateModerationReportInputImpl>
      get copyWith => __$$UpdateModerationReportInputImplCopyWithImpl<
          _$UpdateModerationReportInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateModerationReportInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateModerationReportInput
    implements UpdateModerationReportInput {
  const factory _UpdateModerationReportInput(
      {final ModerationReportType? type,
      final ModerationReportStatus? status,
      final String? reason,
      final String? description,
      final int? reportCount,
      final String? contentText,
      final String? contentUrl,
      final String? reportedById,
      final String? targetUserId,
      final String? reviewId,
      final String? assignedToId,
      final DateTime? resolvedAt,
      final String? resolvedBy}) = _$UpdateModerationReportInputImpl;

  factory _UpdateModerationReportInput.fromJson(Map<String, dynamic> json) =
      _$UpdateModerationReportInputImpl.fromJson;

  @override
  ModerationReportType? get type;
  @override
  ModerationReportStatus? get status;
  @override
  String? get reason;
  @override
  String? get description;
  @override
  int? get reportCount;
  @override
  String? get contentText;
  @override
  String? get contentUrl;
  @override
  String? get reportedById;
  @override
  String? get targetUserId;
  @override
  String? get reviewId;
  @override
  String? get assignedToId;
  @override
  DateTime? get resolvedAt;
  @override
  String? get resolvedBy;

  /// Create a copy of UpdateModerationReportInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateModerationReportInputImplCopyWith<_$UpdateModerationReportInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationReportWhereUniqueInput _$ModerationReportWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ModerationReportWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ModerationReportWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ModerationReportWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationReportWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationReportWhereUniqueInputCopyWith<ModerationReportWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationReportWhereUniqueInputCopyWith<$Res> {
  factory $ModerationReportWhereUniqueInputCopyWith(
          ModerationReportWhereUniqueInput value,
          $Res Function(ModerationReportWhereUniqueInput) then) =
      _$ModerationReportWhereUniqueInputCopyWithImpl<$Res,
          ModerationReportWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ModerationReportWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ModerationReportWhereUniqueInput>
    implements $ModerationReportWhereUniqueInputCopyWith<$Res> {
  _$ModerationReportWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationReportWhereUniqueInput
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
abstract class _$$ModerationReportWhereUniqueInputImplCopyWith<$Res>
    implements $ModerationReportWhereUniqueInputCopyWith<$Res> {
  factory _$$ModerationReportWhereUniqueInputImplCopyWith(
          _$ModerationReportWhereUniqueInputImpl value,
          $Res Function(_$ModerationReportWhereUniqueInputImpl) then) =
      __$$ModerationReportWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ModerationReportWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ModerationReportWhereUniqueInputCopyWithImpl<$Res,
        _$ModerationReportWhereUniqueInputImpl>
    implements _$$ModerationReportWhereUniqueInputImplCopyWith<$Res> {
  __$$ModerationReportWhereUniqueInputImplCopyWithImpl(
      _$ModerationReportWhereUniqueInputImpl _value,
      $Res Function(_$ModerationReportWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationReportWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ModerationReportWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationReportWhereUniqueInputImpl
    implements _ModerationReportWhereUniqueInput {
  const _$ModerationReportWhereUniqueInputImpl({this.id});

  factory _$ModerationReportWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationReportWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ModerationReportWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationReportWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ModerationReportWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationReportWhereUniqueInputImplCopyWith<
          _$ModerationReportWhereUniqueInputImpl>
      get copyWith => __$$ModerationReportWhereUniqueInputImplCopyWithImpl<
          _$ModerationReportWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationReportWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ModerationReportWhereUniqueInput
    implements ModerationReportWhereUniqueInput {
  const factory _ModerationReportWhereUniqueInput({final String? id}) =
      _$ModerationReportWhereUniqueInputImpl;

  factory _ModerationReportWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ModerationReportWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ModerationReportWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationReportWhereUniqueInputImplCopyWith<
          _$ModerationReportWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationReportWhereInput _$ModerationReportWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ModerationReportWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ModerationReportWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  ModerationReportTypeFilter? get type => throw _privateConstructorUsedError;
  ModerationReportStatusFilter? get status =>
      throw _privateConstructorUsedError;
  StringFilter? get reason => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  IntFilter? get reportCount => throw _privateConstructorUsedError;
  StringFilter? get contentText => throw _privateConstructorUsedError;
  StringFilter? get contentUrl => throw _privateConstructorUsedError;
  StringFilter? get reportedById => throw _privateConstructorUsedError;

  /// Filter by reportedBy relation
  UserRelationFilter? get reportedBy => throw _privateConstructorUsedError;
  StringFilter? get targetUserId => throw _privateConstructorUsedError;

  /// Filter by targetUser relation
  UserRelationFilter? get targetUser => throw _privateConstructorUsedError;
  StringFilter? get reviewId => throw _privateConstructorUsedError;
  StringFilter? get assignedToId => throw _privateConstructorUsedError;
  DateTimeFilter? get resolvedAt => throw _privateConstructorUsedError;
  StringFilter? get resolvedBy => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ModerationReportWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ModerationReportWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ModerationReportWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ModerationReportWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationReportWhereInputCopyWith<ModerationReportWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationReportWhereInputCopyWith<$Res> {
  factory $ModerationReportWhereInputCopyWith(ModerationReportWhereInput value,
          $Res Function(ModerationReportWhereInput) then) =
      _$ModerationReportWhereInputCopyWithImpl<$Res,
          ModerationReportWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      ModerationReportTypeFilter? type,
      ModerationReportStatusFilter? status,
      StringFilter? reason,
      StringFilter? description,
      IntFilter? reportCount,
      StringFilter? contentText,
      StringFilter? contentUrl,
      StringFilter? reportedById,
      UserRelationFilter? reportedBy,
      StringFilter? targetUserId,
      UserRelationFilter? targetUser,
      StringFilter? reviewId,
      StringFilter? assignedToId,
      DateTimeFilter? resolvedAt,
      StringFilter? resolvedBy,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ModerationReportWhereInput>? AND,
      List<ModerationReportWhereInput>? OR,
      ModerationReportWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $ModerationReportTypeFilterCopyWith<$Res>? get type;
  $ModerationReportStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get reason;
  $StringFilterCopyWith<$Res>? get description;
  $IntFilterCopyWith<$Res>? get reportCount;
  $StringFilterCopyWith<$Res>? get contentText;
  $StringFilterCopyWith<$Res>? get contentUrl;
  $StringFilterCopyWith<$Res>? get reportedById;
  $UserRelationFilterCopyWith<$Res>? get reportedBy;
  $StringFilterCopyWith<$Res>? get targetUserId;
  $UserRelationFilterCopyWith<$Res>? get targetUser;
  $StringFilterCopyWith<$Res>? get reviewId;
  $StringFilterCopyWith<$Res>? get assignedToId;
  $DateTimeFilterCopyWith<$Res>? get resolvedAt;
  $StringFilterCopyWith<$Res>? get resolvedBy;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ModerationReportWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ModerationReportWhereInputCopyWithImpl<$Res,
        $Val extends ModerationReportWhereInput>
    implements $ModerationReportWhereInputCopyWith<$Res> {
  _$ModerationReportWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? reason = freezed,
    Object? description = freezed,
    Object? reportCount = freezed,
    Object? contentText = freezed,
    Object? contentUrl = freezed,
    Object? reportedById = freezed,
    Object? reportedBy = freezed,
    Object? targetUserId = freezed,
    Object? targetUser = freezed,
    Object? reviewId = freezed,
    Object? assignedToId = freezed,
    Object? resolvedAt = freezed,
    Object? resolvedBy = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ModerationReportTypeFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatusFilter?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reportCount: freezed == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reportedById: freezed == reportedById
          ? _value.reportedById
          : reportedById // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reportedBy: freezed == reportedBy
          ? _value.reportedBy
          : reportedBy // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      targetUserId: freezed == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      targetUser: freezed == targetUser
          ? _value.targetUser
          : targetUser // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      resolvedBy: freezed == resolvedBy
          ? _value.resolvedBy
          : resolvedBy // ignore: cast_nullable_to_non_nullable
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
              as List<ModerationReportWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ModerationReportWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ModerationReportWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ModerationReportWhereInput
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

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportTypeFilterCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $ModerationReportTypeFilterCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $ModerationReportStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
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

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get reportCount {
    if (_value.reportCount == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.reportCount!, (value) {
      return _then(_value.copyWith(reportCount: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get contentText {
    if (_value.contentText == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.contentText!, (value) {
      return _then(_value.copyWith(contentText: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get contentUrl {
    if (_value.contentUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.contentUrl!, (value) {
      return _then(_value.copyWith(contentUrl: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get reportedById {
    if (_value.reportedById == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.reportedById!, (value) {
      return _then(_value.copyWith(reportedById: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get reportedBy {
    if (_value.reportedBy == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.reportedBy!, (value) {
      return _then(_value.copyWith(reportedBy: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get targetUserId {
    if (_value.targetUserId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.targetUserId!, (value) {
      return _then(_value.copyWith(targetUserId: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get targetUser {
    if (_value.targetUser == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.targetUser!, (value) {
      return _then(_value.copyWith(targetUser: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get reviewId {
    if (_value.reviewId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.reviewId!, (value) {
      return _then(_value.copyWith(reviewId: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get assignedToId {
    if (_value.assignedToId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.assignedToId!, (value) {
      return _then(_value.copyWith(assignedToId: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateTimeFilterCopyWith<$Res>? get resolvedAt {
    if (_value.resolvedAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.resolvedAt!, (value) {
      return _then(_value.copyWith(resolvedAt: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get resolvedBy {
    if (_value.resolvedBy == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.resolvedBy!, (value) {
      return _then(_value.copyWith(resolvedBy: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportWhereInput
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

  /// Create a copy of ModerationReportWhereInput
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

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ModerationReportWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModerationReportWhereInputImplCopyWith<$Res>
    implements $ModerationReportWhereInputCopyWith<$Res> {
  factory _$$ModerationReportWhereInputImplCopyWith(
          _$ModerationReportWhereInputImpl value,
          $Res Function(_$ModerationReportWhereInputImpl) then) =
      __$$ModerationReportWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      ModerationReportTypeFilter? type,
      ModerationReportStatusFilter? status,
      StringFilter? reason,
      StringFilter? description,
      IntFilter? reportCount,
      StringFilter? contentText,
      StringFilter? contentUrl,
      StringFilter? reportedById,
      UserRelationFilter? reportedBy,
      StringFilter? targetUserId,
      UserRelationFilter? targetUser,
      StringFilter? reviewId,
      StringFilter? assignedToId,
      DateTimeFilter? resolvedAt,
      StringFilter? resolvedBy,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ModerationReportWhereInput>? AND,
      List<ModerationReportWhereInput>? OR,
      ModerationReportWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $ModerationReportTypeFilterCopyWith<$Res>? get type;
  @override
  $ModerationReportStatusFilterCopyWith<$Res>? get status;
  @override
  $StringFilterCopyWith<$Res>? get reason;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $IntFilterCopyWith<$Res>? get reportCount;
  @override
  $StringFilterCopyWith<$Res>? get contentText;
  @override
  $StringFilterCopyWith<$Res>? get contentUrl;
  @override
  $StringFilterCopyWith<$Res>? get reportedById;
  @override
  $UserRelationFilterCopyWith<$Res>? get reportedBy;
  @override
  $StringFilterCopyWith<$Res>? get targetUserId;
  @override
  $UserRelationFilterCopyWith<$Res>? get targetUser;
  @override
  $StringFilterCopyWith<$Res>? get reviewId;
  @override
  $StringFilterCopyWith<$Res>? get assignedToId;
  @override
  $DateTimeFilterCopyWith<$Res>? get resolvedAt;
  @override
  $StringFilterCopyWith<$Res>? get resolvedBy;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ModerationReportWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ModerationReportWhereInputImplCopyWithImpl<$Res>
    extends _$ModerationReportWhereInputCopyWithImpl<$Res,
        _$ModerationReportWhereInputImpl>
    implements _$$ModerationReportWhereInputImplCopyWith<$Res> {
  __$$ModerationReportWhereInputImplCopyWithImpl(
      _$ModerationReportWhereInputImpl _value,
      $Res Function(_$ModerationReportWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? reason = freezed,
    Object? description = freezed,
    Object? reportCount = freezed,
    Object? contentText = freezed,
    Object? contentUrl = freezed,
    Object? reportedById = freezed,
    Object? reportedBy = freezed,
    Object? targetUserId = freezed,
    Object? targetUser = freezed,
    Object? reviewId = freezed,
    Object? assignedToId = freezed,
    Object? resolvedAt = freezed,
    Object? resolvedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ModerationReportWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ModerationReportTypeFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModerationReportStatusFilter?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reportCount: freezed == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reportedById: freezed == reportedById
          ? _value.reportedById
          : reportedById // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      reportedBy: freezed == reportedBy
          ? _value.reportedBy
          : reportedBy // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      targetUserId: freezed == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      targetUser: freezed == targetUser
          ? _value.targetUser
          : targetUser // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      resolvedBy: freezed == resolvedBy
          ? _value.resolvedBy
          : resolvedBy // ignore: cast_nullable_to_non_nullable
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
              as List<ModerationReportWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ModerationReportWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ModerationReportWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ModerationReportWhereInputImpl implements _ModerationReportWhereInput {
  const _$ModerationReportWhereInputImpl(
      {this.id,
      this.type,
      this.status,
      this.reason,
      this.description,
      this.reportCount,
      this.contentText,
      this.contentUrl,
      this.reportedById,
      this.reportedBy,
      this.targetUserId,
      this.targetUser,
      this.reviewId,
      this.assignedToId,
      this.resolvedAt,
      this.resolvedBy,
      this.createdAt,
      this.updatedAt,
      final List<ModerationReportWhereInput>? AND,
      final List<ModerationReportWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ModerationReportWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationReportWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final ModerationReportTypeFilter? type;
  @override
  final ModerationReportStatusFilter? status;
  @override
  final StringFilter? reason;
  @override
  final StringFilter? description;
  @override
  final IntFilter? reportCount;
  @override
  final StringFilter? contentText;
  @override
  final StringFilter? contentUrl;
  @override
  final StringFilter? reportedById;

  /// Filter by reportedBy relation
  @override
  final UserRelationFilter? reportedBy;
  @override
  final StringFilter? targetUserId;

  /// Filter by targetUser relation
  @override
  final UserRelationFilter? targetUser;
  @override
  final StringFilter? reviewId;
  @override
  final StringFilter? assignedToId;
  @override
  final DateTimeFilter? resolvedAt;
  @override
  final StringFilter? resolvedBy;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ModerationReportWhereInput>? _AND;
  @override
  List<ModerationReportWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ModerationReportWhereInput>? _OR;
  @override
  List<ModerationReportWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ModerationReportWhereInput? NOT;

  @override
  String toString() {
    return 'ModerationReportWhereInput(id: $id, type: $type, status: $status, reason: $reason, description: $description, reportCount: $reportCount, contentText: $contentText, contentUrl: $contentUrl, reportedById: $reportedById, reportedBy: $reportedBy, targetUserId: $targetUserId, targetUser: $targetUser, reviewId: $reviewId, assignedToId: $assignedToId, resolvedAt: $resolvedAt, resolvedBy: $resolvedBy, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationReportWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reportCount, reportCount) ||
                other.reportCount == reportCount) &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.reportedById, reportedById) ||
                other.reportedById == reportedById) &&
            (identical(other.reportedBy, reportedBy) ||
                other.reportedBy == reportedBy) &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId) &&
            (identical(other.targetUser, targetUser) ||
                other.targetUser == targetUser) &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.assignedToId, assignedToId) ||
                other.assignedToId == assignedToId) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.resolvedBy, resolvedBy) ||
                other.resolvedBy == resolvedBy) &&
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
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        type,
        status,
        reason,
        description,
        reportCount,
        contentText,
        contentUrl,
        reportedById,
        reportedBy,
        targetUserId,
        targetUser,
        reviewId,
        assignedToId,
        resolvedAt,
        resolvedBy,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationReportWhereInputImplCopyWith<_$ModerationReportWhereInputImpl>
      get copyWith => __$$ModerationReportWhereInputImplCopyWithImpl<
          _$ModerationReportWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationReportWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ModerationReportWhereInput
    implements ModerationReportWhereInput {
  const factory _ModerationReportWhereInput(
          {final StringFilter? id,
          final ModerationReportTypeFilter? type,
          final ModerationReportStatusFilter? status,
          final StringFilter? reason,
          final StringFilter? description,
          final IntFilter? reportCount,
          final StringFilter? contentText,
          final StringFilter? contentUrl,
          final StringFilter? reportedById,
          final UserRelationFilter? reportedBy,
          final StringFilter? targetUserId,
          final UserRelationFilter? targetUser,
          final StringFilter? reviewId,
          final StringFilter? assignedToId,
          final DateTimeFilter? resolvedAt,
          final StringFilter? resolvedBy,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<ModerationReportWhereInput>? AND,
          final List<ModerationReportWhereInput>? OR,
          final ModerationReportWhereInput? NOT}) =
      _$ModerationReportWhereInputImpl;

  factory _ModerationReportWhereInput.fromJson(Map<String, dynamic> json) =
      _$ModerationReportWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  ModerationReportTypeFilter? get type;
  @override
  ModerationReportStatusFilter? get status;
  @override
  StringFilter? get reason;
  @override
  StringFilter? get description;
  @override
  IntFilter? get reportCount;
  @override
  StringFilter? get contentText;
  @override
  StringFilter? get contentUrl;
  @override
  StringFilter? get reportedById;

  /// Filter by reportedBy relation
  @override
  UserRelationFilter? get reportedBy;
  @override
  StringFilter? get targetUserId;

  /// Filter by targetUser relation
  @override
  UserRelationFilter? get targetUser;
  @override
  StringFilter? get reviewId;
  @override
  StringFilter? get assignedToId;
  @override
  DateTimeFilter? get resolvedAt;
  @override
  StringFilter? get resolvedBy;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ModerationReportWhereInput>? get AND;
  @override
  List<ModerationReportWhereInput>? get OR;
  @override
  ModerationReportWhereInput? get NOT;

  /// Create a copy of ModerationReportWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationReportWhereInputImplCopyWith<_$ModerationReportWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationReportListRelationFilter _$ModerationReportListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ModerationReportListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ModerationReportListRelationFilter {
  /// At least one related record matches
  ModerationReportWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ModerationReportWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ModerationReportWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ModerationReportListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationReportListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationReportListRelationFilterCopyWith<
          ModerationReportListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationReportListRelationFilterCopyWith<$Res> {
  factory $ModerationReportListRelationFilterCopyWith(
          ModerationReportListRelationFilter value,
          $Res Function(ModerationReportListRelationFilter) then) =
      _$ModerationReportListRelationFilterCopyWithImpl<$Res,
          ModerationReportListRelationFilter>;
  @useResult
  $Res call(
      {ModerationReportWhereInput? some,
      ModerationReportWhereInput? every,
      ModerationReportWhereInput? none});

  $ModerationReportWhereInputCopyWith<$Res>? get some;
  $ModerationReportWhereInputCopyWith<$Res>? get every;
  $ModerationReportWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ModerationReportListRelationFilterCopyWithImpl<$Res,
        $Val extends ModerationReportListRelationFilter>
    implements $ModerationReportListRelationFilterCopyWith<$Res> {
  _$ModerationReportListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationReportListRelationFilter
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
              as ModerationReportWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ModerationReportWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ModerationReportWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ModerationReportListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ModerationReportWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ModerationReportWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ModerationReportWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModerationReportListRelationFilterImplCopyWith<$Res>
    implements $ModerationReportListRelationFilterCopyWith<$Res> {
  factory _$$ModerationReportListRelationFilterImplCopyWith(
          _$ModerationReportListRelationFilterImpl value,
          $Res Function(_$ModerationReportListRelationFilterImpl) then) =
      __$$ModerationReportListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ModerationReportWhereInput? some,
      ModerationReportWhereInput? every,
      ModerationReportWhereInput? none});

  @override
  $ModerationReportWhereInputCopyWith<$Res>? get some;
  @override
  $ModerationReportWhereInputCopyWith<$Res>? get every;
  @override
  $ModerationReportWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ModerationReportListRelationFilterImplCopyWithImpl<$Res>
    extends _$ModerationReportListRelationFilterCopyWithImpl<$Res,
        _$ModerationReportListRelationFilterImpl>
    implements _$$ModerationReportListRelationFilterImplCopyWith<$Res> {
  __$$ModerationReportListRelationFilterImplCopyWithImpl(
      _$ModerationReportListRelationFilterImpl _value,
      $Res Function(_$ModerationReportListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationReportListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ModerationReportListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ModerationReportWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ModerationReportWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ModerationReportWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationReportListRelationFilterImpl
    implements _ModerationReportListRelationFilter {
  const _$ModerationReportListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ModerationReportListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationReportListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ModerationReportWhereInput? some;

  /// All related records match
  @override
  final ModerationReportWhereInput? every;

  /// No related records match
  @override
  final ModerationReportWhereInput? none;

  @override
  String toString() {
    return 'ModerationReportListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationReportListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ModerationReportListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationReportListRelationFilterImplCopyWith<
          _$ModerationReportListRelationFilterImpl>
      get copyWith => __$$ModerationReportListRelationFilterImplCopyWithImpl<
          _$ModerationReportListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationReportListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ModerationReportListRelationFilter
    implements ModerationReportListRelationFilter {
  const factory _ModerationReportListRelationFilter(
          {final ModerationReportWhereInput? some,
          final ModerationReportWhereInput? every,
          final ModerationReportWhereInput? none}) =
      _$ModerationReportListRelationFilterImpl;

  factory _ModerationReportListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ModerationReportListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ModerationReportWhereInput? get some;

  /// All related records match
  @override
  ModerationReportWhereInput? get every;

  /// No related records match
  @override
  ModerationReportWhereInput? get none;

  /// Create a copy of ModerationReportListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationReportListRelationFilterImplCopyWith<
          _$ModerationReportListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationReportRelationFilter _$ModerationReportRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ModerationReportRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ModerationReportRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ModerationReportWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ModerationReportWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ModerationReportRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationReportRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationReportRelationFilterCopyWith<ModerationReportRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationReportRelationFilterCopyWith<$Res> {
  factory $ModerationReportRelationFilterCopyWith(
          ModerationReportRelationFilter value,
          $Res Function(ModerationReportRelationFilter) then) =
      _$ModerationReportRelationFilterCopyWithImpl<$Res,
          ModerationReportRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ModerationReportWhereInput? is_,
      ModerationReportWhereInput? isNot});

  $ModerationReportWhereInputCopyWith<$Res>? get is_;
  $ModerationReportWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ModerationReportRelationFilterCopyWithImpl<$Res,
        $Val extends ModerationReportRelationFilter>
    implements $ModerationReportRelationFilterCopyWith<$Res> {
  _$ModerationReportRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationReportRelationFilter
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
              as ModerationReportWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ModerationReportWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ModerationReportRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ModerationReportWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ModerationReportRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModerationReportWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ModerationReportWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModerationReportRelationFilterImplCopyWith<$Res>
    implements $ModerationReportRelationFilterCopyWith<$Res> {
  factory _$$ModerationReportRelationFilterImplCopyWith(
          _$ModerationReportRelationFilterImpl value,
          $Res Function(_$ModerationReportRelationFilterImpl) then) =
      __$$ModerationReportRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ModerationReportWhereInput? is_,
      ModerationReportWhereInput? isNot});

  @override
  $ModerationReportWhereInputCopyWith<$Res>? get is_;
  @override
  $ModerationReportWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ModerationReportRelationFilterImplCopyWithImpl<$Res>
    extends _$ModerationReportRelationFilterCopyWithImpl<$Res,
        _$ModerationReportRelationFilterImpl>
    implements _$$ModerationReportRelationFilterImplCopyWith<$Res> {
  __$$ModerationReportRelationFilterImplCopyWithImpl(
      _$ModerationReportRelationFilterImpl _value,
      $Res Function(_$ModerationReportRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationReportRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ModerationReportRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ModerationReportWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ModerationReportWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModerationReportRelationFilterImpl
    implements _ModerationReportRelationFilter {
  const _$ModerationReportRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ModerationReportRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationReportRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ModerationReportWhereInput? is_;

  /// Related record does not match
  @override
  final ModerationReportWhereInput? isNot;

  @override
  String toString() {
    return 'ModerationReportRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationReportRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ModerationReportRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationReportRelationFilterImplCopyWith<
          _$ModerationReportRelationFilterImpl>
      get copyWith => __$$ModerationReportRelationFilterImplCopyWithImpl<
          _$ModerationReportRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationReportRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ModerationReportRelationFilter
    implements ModerationReportRelationFilter {
  const factory _ModerationReportRelationFilter(
          {@JsonKey(name: 'is') final ModerationReportWhereInput? is_,
          final ModerationReportWhereInput? isNot}) =
      _$ModerationReportRelationFilterImpl;

  factory _ModerationReportRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ModerationReportRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ModerationReportWhereInput? get is_;

  /// Related record does not match
  @override
  ModerationReportWhereInput? get isNot;

  /// Create a copy of ModerationReportRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationReportRelationFilterImplCopyWith<
          _$ModerationReportRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ModerationReportOrderByInput _$ModerationReportOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ModerationReportOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ModerationReportOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get reason => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get reportCount => throw _privateConstructorUsedError;
  SortOrder? get contentText => throw _privateConstructorUsedError;
  SortOrder? get contentUrl => throw _privateConstructorUsedError;
  SortOrder? get reportedById => throw _privateConstructorUsedError;
  SortOrder? get targetUserId => throw _privateConstructorUsedError;
  SortOrder? get reviewId => throw _privateConstructorUsedError;
  SortOrder? get assignedToId => throw _privateConstructorUsedError;
  SortOrder? get resolvedAt => throw _privateConstructorUsedError;
  SortOrder? get resolvedBy => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ModerationReportOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModerationReportOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModerationReportOrderByInputCopyWith<ModerationReportOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModerationReportOrderByInputCopyWith<$Res> {
  factory $ModerationReportOrderByInputCopyWith(
          ModerationReportOrderByInput value,
          $Res Function(ModerationReportOrderByInput) then) =
      _$ModerationReportOrderByInputCopyWithImpl<$Res,
          ModerationReportOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? reason,
      SortOrder? description,
      SortOrder? reportCount,
      SortOrder? contentText,
      SortOrder? contentUrl,
      SortOrder? reportedById,
      SortOrder? targetUserId,
      SortOrder? reviewId,
      SortOrder? assignedToId,
      SortOrder? resolvedAt,
      SortOrder? resolvedBy,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ModerationReportOrderByInputCopyWithImpl<$Res,
        $Val extends ModerationReportOrderByInput>
    implements $ModerationReportOrderByInputCopyWith<$Res> {
  _$ModerationReportOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModerationReportOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reason = freezed,
    Object? description = freezed,
    Object? reportCount = freezed,
    Object? contentText = freezed,
    Object? contentUrl = freezed,
    Object? reportedById = freezed,
    Object? targetUserId = freezed,
    Object? reviewId = freezed,
    Object? assignedToId = freezed,
    Object? resolvedAt = freezed,
    Object? resolvedBy = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reportCount: freezed == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reportedById: freezed == reportedById
          ? _value.reportedById
          : reportedById // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      targetUserId: freezed == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      resolvedBy: freezed == resolvedBy
          ? _value.resolvedBy
          : resolvedBy // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ModerationReportOrderByInputImplCopyWith<$Res>
    implements $ModerationReportOrderByInputCopyWith<$Res> {
  factory _$$ModerationReportOrderByInputImplCopyWith(
          _$ModerationReportOrderByInputImpl value,
          $Res Function(_$ModerationReportOrderByInputImpl) then) =
      __$$ModerationReportOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? reason,
      SortOrder? description,
      SortOrder? reportCount,
      SortOrder? contentText,
      SortOrder? contentUrl,
      SortOrder? reportedById,
      SortOrder? targetUserId,
      SortOrder? reviewId,
      SortOrder? assignedToId,
      SortOrder? resolvedAt,
      SortOrder? resolvedBy,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ModerationReportOrderByInputImplCopyWithImpl<$Res>
    extends _$ModerationReportOrderByInputCopyWithImpl<$Res,
        _$ModerationReportOrderByInputImpl>
    implements _$$ModerationReportOrderByInputImplCopyWith<$Res> {
  __$$ModerationReportOrderByInputImplCopyWithImpl(
      _$ModerationReportOrderByInputImpl _value,
      $Res Function(_$ModerationReportOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModerationReportOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reason = freezed,
    Object? description = freezed,
    Object? reportCount = freezed,
    Object? contentText = freezed,
    Object? contentUrl = freezed,
    Object? reportedById = freezed,
    Object? targetUserId = freezed,
    Object? reviewId = freezed,
    Object? assignedToId = freezed,
    Object? resolvedAt = freezed,
    Object? resolvedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ModerationReportOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reportCount: freezed == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reportedById: freezed == reportedById
          ? _value.reportedById
          : reportedById // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      targetUserId: freezed == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      resolvedBy: freezed == resolvedBy
          ? _value.resolvedBy
          : resolvedBy // ignore: cast_nullable_to_non_nullable
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
class _$ModerationReportOrderByInputImpl
    implements _ModerationReportOrderByInput {
  const _$ModerationReportOrderByInputImpl(
      {this.id,
      this.reason,
      this.description,
      this.reportCount,
      this.contentText,
      this.contentUrl,
      this.reportedById,
      this.targetUserId,
      this.reviewId,
      this.assignedToId,
      this.resolvedAt,
      this.resolvedBy,
      this.createdAt,
      this.updatedAt});

  factory _$ModerationReportOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModerationReportOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? reason;
  @override
  final SortOrder? description;
  @override
  final SortOrder? reportCount;
  @override
  final SortOrder? contentText;
  @override
  final SortOrder? contentUrl;
  @override
  final SortOrder? reportedById;
  @override
  final SortOrder? targetUserId;
  @override
  final SortOrder? reviewId;
  @override
  final SortOrder? assignedToId;
  @override
  final SortOrder? resolvedAt;
  @override
  final SortOrder? resolvedBy;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ModerationReportOrderByInput(id: $id, reason: $reason, description: $description, reportCount: $reportCount, contentText: $contentText, contentUrl: $contentUrl, reportedById: $reportedById, targetUserId: $targetUserId, reviewId: $reviewId, assignedToId: $assignedToId, resolvedAt: $resolvedAt, resolvedBy: $resolvedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModerationReportOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reportCount, reportCount) ||
                other.reportCount == reportCount) &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.reportedById, reportedById) ||
                other.reportedById == reportedById) &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId) &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.assignedToId, assignedToId) ||
                other.assignedToId == assignedToId) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.resolvedBy, resolvedBy) ||
                other.resolvedBy == resolvedBy) &&
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
      description,
      reportCount,
      contentText,
      contentUrl,
      reportedById,
      targetUserId,
      reviewId,
      assignedToId,
      resolvedAt,
      resolvedBy,
      createdAt,
      updatedAt);

  /// Create a copy of ModerationReportOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModerationReportOrderByInputImplCopyWith<
          _$ModerationReportOrderByInputImpl>
      get copyWith => __$$ModerationReportOrderByInputImplCopyWithImpl<
          _$ModerationReportOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModerationReportOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ModerationReportOrderByInput
    implements ModerationReportOrderByInput {
  const factory _ModerationReportOrderByInput(
      {final SortOrder? id,
      final SortOrder? reason,
      final SortOrder? description,
      final SortOrder? reportCount,
      final SortOrder? contentText,
      final SortOrder? contentUrl,
      final SortOrder? reportedById,
      final SortOrder? targetUserId,
      final SortOrder? reviewId,
      final SortOrder? assignedToId,
      final SortOrder? resolvedAt,
      final SortOrder? resolvedBy,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ModerationReportOrderByInputImpl;

  factory _ModerationReportOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ModerationReportOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get reason;
  @override
  SortOrder? get description;
  @override
  SortOrder? get reportCount;
  @override
  SortOrder? get contentText;
  @override
  SortOrder? get contentUrl;
  @override
  SortOrder? get reportedById;
  @override
  SortOrder? get targetUserId;
  @override
  SortOrder? get reviewId;
  @override
  SortOrder? get assignedToId;
  @override
  SortOrder? get resolvedAt;
  @override
  SortOrder? get resolvedBy;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ModerationReportOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModerationReportOrderByInputImplCopyWith<
          _$ModerationReportOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
