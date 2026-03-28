// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupportTicket _$SupportTicketFromJson(Map<String, dynamic> json) {
  return _SupportTicket.fromJson(json);
}

/// @nodoc
mixin _$SupportTicket {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  SupportPriority get priority => throw _privateConstructorUsedError;
  SupportTicketStatus get status => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  SupportIssueType? get issueType => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<SupportResponse> get responses => throw _privateConstructorUsedError;
  List<SupportTicketAttachment> get attachments =>
      throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  String? get subscriptionId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  String? get refundId => throw _privateConstructorUsedError;
  String? get assignedToId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SupportTicket to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketCopyWith<SupportTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketCopyWith<$Res> {
  factory $SupportTicketCopyWith(
          SupportTicket value, $Res Function(SupportTicket) then) =
      _$SupportTicketCopyWithImpl<$Res, SupportTicket>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      SupportPriority priority,
      SupportTicketStatus status,
      String? category,
      SupportIssueType? issueType,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      List<SupportResponse> responses,
      List<SupportTicketAttachment> attachments,
      String? consultationId,
      String? subscriptionId,
      String? paymentId,
      String? refundId,
      String? assignedToId,
      DateTime createdAt,
      DateTime updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$SupportTicketCopyWithImpl<$Res, $Val extends SupportTicket>
    implements $SupportTicketCopyWith<$Res> {
  _$SupportTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? priority = null,
    Object? status = null,
    Object? category = freezed,
    Object? issueType = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? responses = null,
    Object? attachments = null,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? paymentId = freezed,
    Object? refundId = freezed,
    Object? assignedToId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as SupportPriority,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      issueType: freezed == issueType
          ? _value.issueType
          : issueType // ignore: cast_nullable_to_non_nullable
              as SupportIssueType?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      responses: null == responses
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<SupportResponse>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketAttachment>,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportTicketImplCopyWith<$Res>
    implements $SupportTicketCopyWith<$Res> {
  factory _$$SupportTicketImplCopyWith(
          _$SupportTicketImpl value, $Res Function(_$SupportTicketImpl) then) =
      __$$SupportTicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      SupportPriority priority,
      SupportTicketStatus status,
      String? category,
      SupportIssueType? issueType,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      String userId,
      List<SupportResponse> responses,
      List<SupportTicketAttachment> attachments,
      String? consultationId,
      String? subscriptionId,
      String? paymentId,
      String? refundId,
      String? assignedToId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SupportTicketImplCopyWithImpl<$Res>
    extends _$SupportTicketCopyWithImpl<$Res, _$SupportTicketImpl>
    implements _$$SupportTicketImplCopyWith<$Res> {
  __$$SupportTicketImplCopyWithImpl(
      _$SupportTicketImpl _value, $Res Function(_$SupportTicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? priority = null,
    Object? status = null,
    Object? category = freezed,
    Object? issueType = freezed,
    Object? user = freezed,
    Object? userId = null,
    Object? responses = null,
    Object? attachments = null,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? paymentId = freezed,
    Object? refundId = freezed,
    Object? assignedToId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SupportTicketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as SupportPriority,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      issueType: freezed == issueType
          ? _value.issueType
          : issueType // ignore: cast_nullable_to_non_nullable
              as SupportIssueType?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      responses: null == responses
          ? _value._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<SupportResponse>,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketAttachment>,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$SupportTicketImpl implements _SupportTicket {
  const _$SupportTicketImpl(
      {required this.id,
      required this.title,
      required this.description,
      this.priority = SupportPriority.medium,
      this.status = SupportTicketStatus.open,
      this.category,
      this.issueType,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      required this.userId,
      required final List<SupportResponse> responses,
      required final List<SupportTicketAttachment> attachments,
      this.consultationId,
      this.subscriptionId,
      this.paymentId,
      this.refundId,
      this.assignedToId,
      required this.createdAt,
      required this.updatedAt})
      : _responses = responses,
        _attachments = attachments;

  factory _$SupportTicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final SupportPriority priority;
  @override
  @JsonKey()
  final SupportTicketStatus status;
  @override
  final String? category;
  @override
  final SupportIssueType? issueType;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  final String userId;
  final List<SupportResponse> _responses;
  @override
  List<SupportResponse> get responses {
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responses);
  }

  final List<SupportTicketAttachment> _attachments;
  @override
  List<SupportTicketAttachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final String? consultationId;
  @override
  final String? subscriptionId;
  @override
  final String? paymentId;
  @override
  final String? refundId;
  @override
  final String? assignedToId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SupportTicket(id: $id, title: $title, description: $description, priority: $priority, status: $status, category: $category, issueType: $issueType, user: $user, userId: $userId, responses: $responses, attachments: $attachments, consultationId: $consultationId, subscriptionId: $subscriptionId, paymentId: $paymentId, refundId: $refundId, assignedToId: $assignedToId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.issueType, issueType) ||
                other.issueType == issueType) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.assignedToId, assignedToId) ||
                other.assignedToId == assignedToId) &&
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
      title,
      description,
      priority,
      status,
      category,
      issueType,
      user,
      userId,
      const DeepCollectionEquality().hash(_responses),
      const DeepCollectionEquality().hash(_attachments),
      consultationId,
      subscriptionId,
      paymentId,
      refundId,
      assignedToId,
      createdAt,
      updatedAt);

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketImplCopyWith<_$SupportTicketImpl> get copyWith =>
      __$$SupportTicketImplCopyWithImpl<_$SupportTicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketImplToJson(
      this,
    );
  }
}

abstract class _SupportTicket implements SupportTicket {
  const factory _SupportTicket(
      {required final String id,
      required final String title,
      required final String description,
      final SupportPriority priority,
      final SupportTicketStatus status,
      final String? category,
      final SupportIssueType? issueType,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      required final String userId,
      required final List<SupportResponse> responses,
      required final List<SupportTicketAttachment> attachments,
      final String? consultationId,
      final String? subscriptionId,
      final String? paymentId,
      final String? refundId,
      final String? assignedToId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SupportTicketImpl;

  factory _SupportTicket.fromJson(Map<String, dynamic> json) =
      _$SupportTicketImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  SupportPriority get priority;
  @override
  SupportTicketStatus get status;
  @override
  String? get category;
  @override
  SupportIssueType? get issueType;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  String get userId;
  @override
  List<SupportResponse> get responses;
  @override
  List<SupportTicketAttachment> get attachments;
  @override
  String? get consultationId;
  @override
  String? get subscriptionId;
  @override
  String? get paymentId;
  @override
  String? get refundId;
  @override
  String? get assignedToId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of SupportTicket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketImplCopyWith<_$SupportTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSupportTicketInput _$CreateSupportTicketInputFromJson(
    Map<String, dynamic> json) {
  return _CreateSupportTicketInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSupportTicketInput {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  SupportPriority get priority => throw _privateConstructorUsedError;
  SupportTicketStatus get status => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  SupportIssueType? get issueType => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  String? get subscriptionId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  String? get refundId => throw _privateConstructorUsedError;
  String? get assignedToId => throw _privateConstructorUsedError;

  /// Serializes this CreateSupportTicketInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSupportTicketInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSupportTicketInputCopyWith<CreateSupportTicketInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSupportTicketInputCopyWith<$Res> {
  factory $CreateSupportTicketInputCopyWith(CreateSupportTicketInput value,
          $Res Function(CreateSupportTicketInput) then) =
      _$CreateSupportTicketInputCopyWithImpl<$Res, CreateSupportTicketInput>;
  @useResult
  $Res call(
      {String title,
      String description,
      SupportPriority priority,
      SupportTicketStatus status,
      String? category,
      SupportIssueType? issueType,
      String userId,
      String? consultationId,
      String? subscriptionId,
      String? paymentId,
      String? refundId,
      String? assignedToId});
}

/// @nodoc
class _$CreateSupportTicketInputCopyWithImpl<$Res,
        $Val extends CreateSupportTicketInput>
    implements $CreateSupportTicketInputCopyWith<$Res> {
  _$CreateSupportTicketInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSupportTicketInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? priority = null,
    Object? status = null,
    Object? category = freezed,
    Object? issueType = freezed,
    Object? userId = null,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? paymentId = freezed,
    Object? refundId = freezed,
    Object? assignedToId = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as SupportPriority,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      issueType: freezed == issueType
          ? _value.issueType
          : issueType // ignore: cast_nullable_to_non_nullable
              as SupportIssueType?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSupportTicketInputImplCopyWith<$Res>
    implements $CreateSupportTicketInputCopyWith<$Res> {
  factory _$$CreateSupportTicketInputImplCopyWith(
          _$CreateSupportTicketInputImpl value,
          $Res Function(_$CreateSupportTicketInputImpl) then) =
      __$$CreateSupportTicketInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      SupportPriority priority,
      SupportTicketStatus status,
      String? category,
      SupportIssueType? issueType,
      String userId,
      String? consultationId,
      String? subscriptionId,
      String? paymentId,
      String? refundId,
      String? assignedToId});
}

/// @nodoc
class __$$CreateSupportTicketInputImplCopyWithImpl<$Res>
    extends _$CreateSupportTicketInputCopyWithImpl<$Res,
        _$CreateSupportTicketInputImpl>
    implements _$$CreateSupportTicketInputImplCopyWith<$Res> {
  __$$CreateSupportTicketInputImplCopyWithImpl(
      _$CreateSupportTicketInputImpl _value,
      $Res Function(_$CreateSupportTicketInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSupportTicketInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? priority = null,
    Object? status = null,
    Object? category = freezed,
    Object? issueType = freezed,
    Object? userId = null,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? paymentId = freezed,
    Object? refundId = freezed,
    Object? assignedToId = freezed,
  }) {
    return _then(_$CreateSupportTicketInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as SupportPriority,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      issueType: freezed == issueType
          ? _value.issueType
          : issueType // ignore: cast_nullable_to_non_nullable
              as SupportIssueType?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSupportTicketInputImpl implements _CreateSupportTicketInput {
  const _$CreateSupportTicketInputImpl(
      {required this.title,
      required this.description,
      this.priority = SupportPriority.medium,
      this.status = SupportTicketStatus.open,
      this.category,
      this.issueType,
      required this.userId,
      this.consultationId,
      this.subscriptionId,
      this.paymentId,
      this.refundId,
      this.assignedToId});

  factory _$CreateSupportTicketInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSupportTicketInputImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final SupportPriority priority;
  @override
  @JsonKey()
  final SupportTicketStatus status;
  @override
  final String? category;
  @override
  final SupportIssueType? issueType;
  @override
  final String userId;
  @override
  final String? consultationId;
  @override
  final String? subscriptionId;
  @override
  final String? paymentId;
  @override
  final String? refundId;
  @override
  final String? assignedToId;

  @override
  String toString() {
    return 'CreateSupportTicketInput(title: $title, description: $description, priority: $priority, status: $status, category: $category, issueType: $issueType, userId: $userId, consultationId: $consultationId, subscriptionId: $subscriptionId, paymentId: $paymentId, refundId: $refundId, assignedToId: $assignedToId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSupportTicketInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.issueType, issueType) ||
                other.issueType == issueType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.assignedToId, assignedToId) ||
                other.assignedToId == assignedToId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      priority,
      status,
      category,
      issueType,
      userId,
      consultationId,
      subscriptionId,
      paymentId,
      refundId,
      assignedToId);

  /// Create a copy of CreateSupportTicketInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSupportTicketInputImplCopyWith<_$CreateSupportTicketInputImpl>
      get copyWith => __$$CreateSupportTicketInputImplCopyWithImpl<
          _$CreateSupportTicketInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSupportTicketInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSupportTicketInput implements CreateSupportTicketInput {
  const factory _CreateSupportTicketInput(
      {required final String title,
      required final String description,
      final SupportPriority priority,
      final SupportTicketStatus status,
      final String? category,
      final SupportIssueType? issueType,
      required final String userId,
      final String? consultationId,
      final String? subscriptionId,
      final String? paymentId,
      final String? refundId,
      final String? assignedToId}) = _$CreateSupportTicketInputImpl;

  factory _CreateSupportTicketInput.fromJson(Map<String, dynamic> json) =
      _$CreateSupportTicketInputImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  SupportPriority get priority;
  @override
  SupportTicketStatus get status;
  @override
  String? get category;
  @override
  SupportIssueType? get issueType;
  @override
  String get userId;
  @override
  String? get consultationId;
  @override
  String? get subscriptionId;
  @override
  String? get paymentId;
  @override
  String? get refundId;
  @override
  String? get assignedToId;

  /// Create a copy of CreateSupportTicketInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSupportTicketInputImplCopyWith<_$CreateSupportTicketInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSupportTicketInput _$UpdateSupportTicketInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateSupportTicketInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSupportTicketInput {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  SupportPriority? get priority => throw _privateConstructorUsedError;
  SupportTicketStatus? get status => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  SupportIssueType? get issueType => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  String? get subscriptionId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  String? get refundId => throw _privateConstructorUsedError;
  String? get assignedToId => throw _privateConstructorUsedError;

  /// Serializes this UpdateSupportTicketInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSupportTicketInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSupportTicketInputCopyWith<UpdateSupportTicketInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSupportTicketInputCopyWith<$Res> {
  factory $UpdateSupportTicketInputCopyWith(UpdateSupportTicketInput value,
          $Res Function(UpdateSupportTicketInput) then) =
      _$UpdateSupportTicketInputCopyWithImpl<$Res, UpdateSupportTicketInput>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      SupportPriority? priority,
      SupportTicketStatus? status,
      String? category,
      SupportIssueType? issueType,
      String? userId,
      String? consultationId,
      String? subscriptionId,
      String? paymentId,
      String? refundId,
      String? assignedToId});
}

/// @nodoc
class _$UpdateSupportTicketInputCopyWithImpl<$Res,
        $Val extends UpdateSupportTicketInput>
    implements $UpdateSupportTicketInputCopyWith<$Res> {
  _$UpdateSupportTicketInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSupportTicketInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? category = freezed,
    Object? issueType = freezed,
    Object? userId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? paymentId = freezed,
    Object? refundId = freezed,
    Object? assignedToId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as SupportPriority?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      issueType: freezed == issueType
          ? _value.issueType
          : issueType // ignore: cast_nullable_to_non_nullable
              as SupportIssueType?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSupportTicketInputImplCopyWith<$Res>
    implements $UpdateSupportTicketInputCopyWith<$Res> {
  factory _$$UpdateSupportTicketInputImplCopyWith(
          _$UpdateSupportTicketInputImpl value,
          $Res Function(_$UpdateSupportTicketInputImpl) then) =
      __$$UpdateSupportTicketInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      SupportPriority? priority,
      SupportTicketStatus? status,
      String? category,
      SupportIssueType? issueType,
      String? userId,
      String? consultationId,
      String? subscriptionId,
      String? paymentId,
      String? refundId,
      String? assignedToId});
}

/// @nodoc
class __$$UpdateSupportTicketInputImplCopyWithImpl<$Res>
    extends _$UpdateSupportTicketInputCopyWithImpl<$Res,
        _$UpdateSupportTicketInputImpl>
    implements _$$UpdateSupportTicketInputImplCopyWith<$Res> {
  __$$UpdateSupportTicketInputImplCopyWithImpl(
      _$UpdateSupportTicketInputImpl _value,
      $Res Function(_$UpdateSupportTicketInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSupportTicketInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? category = freezed,
    Object? issueType = freezed,
    Object? userId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? paymentId = freezed,
    Object? refundId = freezed,
    Object? assignedToId = freezed,
  }) {
    return _then(_$UpdateSupportTicketInputImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as SupportPriority?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatus?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      issueType: freezed == issueType
          ? _value.issueType
          : issueType // ignore: cast_nullable_to_non_nullable
              as SupportIssueType?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSupportTicketInputImpl implements _UpdateSupportTicketInput {
  const _$UpdateSupportTicketInputImpl(
      {this.title,
      this.description,
      this.priority,
      this.status,
      this.category,
      this.issueType,
      this.userId,
      this.consultationId,
      this.subscriptionId,
      this.paymentId,
      this.refundId,
      this.assignedToId});

  factory _$UpdateSupportTicketInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateSupportTicketInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final SupportPriority? priority;
  @override
  final SupportTicketStatus? status;
  @override
  final String? category;
  @override
  final SupportIssueType? issueType;
  @override
  final String? userId;
  @override
  final String? consultationId;
  @override
  final String? subscriptionId;
  @override
  final String? paymentId;
  @override
  final String? refundId;
  @override
  final String? assignedToId;

  @override
  String toString() {
    return 'UpdateSupportTicketInput(title: $title, description: $description, priority: $priority, status: $status, category: $category, issueType: $issueType, userId: $userId, consultationId: $consultationId, subscriptionId: $subscriptionId, paymentId: $paymentId, refundId: $refundId, assignedToId: $assignedToId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSupportTicketInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.issueType, issueType) ||
                other.issueType == issueType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.assignedToId, assignedToId) ||
                other.assignedToId == assignedToId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      priority,
      status,
      category,
      issueType,
      userId,
      consultationId,
      subscriptionId,
      paymentId,
      refundId,
      assignedToId);

  /// Create a copy of UpdateSupportTicketInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSupportTicketInputImplCopyWith<_$UpdateSupportTicketInputImpl>
      get copyWith => __$$UpdateSupportTicketInputImplCopyWithImpl<
          _$UpdateSupportTicketInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSupportTicketInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSupportTicketInput implements UpdateSupportTicketInput {
  const factory _UpdateSupportTicketInput(
      {final String? title,
      final String? description,
      final SupportPriority? priority,
      final SupportTicketStatus? status,
      final String? category,
      final SupportIssueType? issueType,
      final String? userId,
      final String? consultationId,
      final String? subscriptionId,
      final String? paymentId,
      final String? refundId,
      final String? assignedToId}) = _$UpdateSupportTicketInputImpl;

  factory _UpdateSupportTicketInput.fromJson(Map<String, dynamic> json) =
      _$UpdateSupportTicketInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  SupportPriority? get priority;
  @override
  SupportTicketStatus? get status;
  @override
  String? get category;
  @override
  SupportIssueType? get issueType;
  @override
  String? get userId;
  @override
  String? get consultationId;
  @override
  String? get subscriptionId;
  @override
  String? get paymentId;
  @override
  String? get refundId;
  @override
  String? get assignedToId;

  /// Create a copy of UpdateSupportTicketInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSupportTicketInputImplCopyWith<_$UpdateSupportTicketInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketWhereUniqueInput _$SupportTicketWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketWhereUniqueInputCopyWith<SupportTicketWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketWhereUniqueInputCopyWith<$Res> {
  factory $SupportTicketWhereUniqueInputCopyWith(
          SupportTicketWhereUniqueInput value,
          $Res Function(SupportTicketWhereUniqueInput) then) =
      _$SupportTicketWhereUniqueInputCopyWithImpl<$Res,
          SupportTicketWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SupportTicketWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SupportTicketWhereUniqueInput>
    implements $SupportTicketWhereUniqueInputCopyWith<$Res> {
  _$SupportTicketWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketWhereUniqueInput
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
abstract class _$$SupportTicketWhereUniqueInputImplCopyWith<$Res>
    implements $SupportTicketWhereUniqueInputCopyWith<$Res> {
  factory _$$SupportTicketWhereUniqueInputImplCopyWith(
          _$SupportTicketWhereUniqueInputImpl value,
          $Res Function(_$SupportTicketWhereUniqueInputImpl) then) =
      __$$SupportTicketWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SupportTicketWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SupportTicketWhereUniqueInputCopyWithImpl<$Res,
        _$SupportTicketWhereUniqueInputImpl>
    implements _$$SupportTicketWhereUniqueInputImplCopyWith<$Res> {
  __$$SupportTicketWhereUniqueInputImplCopyWithImpl(
      _$SupportTicketWhereUniqueInputImpl _value,
      $Res Function(_$SupportTicketWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SupportTicketWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketWhereUniqueInputImpl
    implements _SupportTicketWhereUniqueInput {
  const _$SupportTicketWhereUniqueInputImpl({this.id});

  factory _$SupportTicketWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportTicketWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SupportTicketWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SupportTicketWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketWhereUniqueInputImplCopyWith<
          _$SupportTicketWhereUniqueInputImpl>
      get copyWith => __$$SupportTicketWhereUniqueInputImplCopyWithImpl<
          _$SupportTicketWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketWhereUniqueInput
    implements SupportTicketWhereUniqueInput {
  const factory _SupportTicketWhereUniqueInput({final String? id}) =
      _$SupportTicketWhereUniqueInputImpl;

  factory _SupportTicketWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$SupportTicketWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of SupportTicketWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketWhereUniqueInputImplCopyWith<
          _$SupportTicketWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketWhereInput _$SupportTicketWhereInputFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  SupportPriorityFilter? get priority => throw _privateConstructorUsedError;
  SupportTicketStatusFilter? get status => throw _privateConstructorUsedError;
  StringFilter? get category => throw _privateConstructorUsedError;
  SupportIssueTypeFilter? get issueType => throw _privateConstructorUsedError;

  /// Filter by user relation
  UserRelationFilter? get user => throw _privateConstructorUsedError;
  StringFilter? get userId => throw _privateConstructorUsedError;
  StringFilter? get consultationId => throw _privateConstructorUsedError;
  StringFilter? get subscriptionId => throw _privateConstructorUsedError;
  StringFilter? get paymentId => throw _privateConstructorUsedError;
  StringFilter? get refundId => throw _privateConstructorUsedError;
  StringFilter? get assignedToId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<SupportTicketWhereInput>? get AND => throw _privateConstructorUsedError;
  List<SupportTicketWhereInput>? get OR => throw _privateConstructorUsedError;
  SupportTicketWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketWhereInputCopyWith<SupportTicketWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketWhereInputCopyWith<$Res> {
  factory $SupportTicketWhereInputCopyWith(SupportTicketWhereInput value,
          $Res Function(SupportTicketWhereInput) then) =
      _$SupportTicketWhereInputCopyWithImpl<$Res, SupportTicketWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      SupportPriorityFilter? priority,
      SupportTicketStatusFilter? status,
      StringFilter? category,
      SupportIssueTypeFilter? issueType,
      UserRelationFilter? user,
      StringFilter? userId,
      StringFilter? consultationId,
      StringFilter? subscriptionId,
      StringFilter? paymentId,
      StringFilter? refundId,
      StringFilter? assignedToId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SupportTicketWhereInput>? AND,
      List<SupportTicketWhereInput>? OR,
      SupportTicketWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get description;
  $SupportPriorityFilterCopyWith<$Res>? get priority;
  $SupportTicketStatusFilterCopyWith<$Res>? get status;
  $StringFilterCopyWith<$Res>? get category;
  $SupportIssueTypeFilterCopyWith<$Res>? get issueType;
  $UserRelationFilterCopyWith<$Res>? get user;
  $StringFilterCopyWith<$Res>? get userId;
  $StringFilterCopyWith<$Res>? get consultationId;
  $StringFilterCopyWith<$Res>? get subscriptionId;
  $StringFilterCopyWith<$Res>? get paymentId;
  $StringFilterCopyWith<$Res>? get refundId;
  $StringFilterCopyWith<$Res>? get assignedToId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $SupportTicketWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SupportTicketWhereInputCopyWithImpl<$Res,
        $Val extends SupportTicketWhereInput>
    implements $SupportTicketWhereInputCopyWith<$Res> {
  _$SupportTicketWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? category = freezed,
    Object? issueType = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? paymentId = freezed,
    Object? refundId = freezed,
    Object? assignedToId = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as SupportPriorityFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatusFilter?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      issueType: freezed == issueType
          ? _value.issueType
          : issueType // ignore: cast_nullable_to_non_nullable
              as SupportIssueTypeFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
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
              as List<SupportTicketWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SupportTicketWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SupportTicketWhereInput
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

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get title {
    if (_value.title == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.title!, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
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

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportPriorityFilterCopyWith<$Res>? get priority {
    if (_value.priority == null) {
      return null;
    }

    return $SupportPriorityFilterCopyWith<$Res>(_value.priority!, (value) {
      return _then(_value.copyWith(priority: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketStatusFilterCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $SupportTicketStatusFilterCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportIssueTypeFilterCopyWith<$Res>? get issueType {
    if (_value.issueType == null) {
      return null;
    }

    return $SupportIssueTypeFilterCopyWith<$Res>(_value.issueType!, (value) {
      return _then(_value.copyWith(issueType: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRelationFilterCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserRelationFilterCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get userId {
    if (_value.userId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.userId!, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consultationId {
    if (_value.consultationId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consultationId!, (value) {
      return _then(_value.copyWith(consultationId: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get subscriptionId {
    if (_value.subscriptionId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.subscriptionId!, (value) {
      return _then(_value.copyWith(subscriptionId: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get paymentId {
    if (_value.paymentId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.paymentId!, (value) {
      return _then(_value.copyWith(paymentId: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get refundId {
    if (_value.refundId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.refundId!, (value) {
      return _then(_value.copyWith(refundId: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketWhereInput
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

  /// Create a copy of SupportTicketWhereInput
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

  /// Create a copy of SupportTicketWhereInput
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

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SupportTicketWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportTicketWhereInputImplCopyWith<$Res>
    implements $SupportTicketWhereInputCopyWith<$Res> {
  factory _$$SupportTicketWhereInputImplCopyWith(
          _$SupportTicketWhereInputImpl value,
          $Res Function(_$SupportTicketWhereInputImpl) then) =
      __$$SupportTicketWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      SupportPriorityFilter? priority,
      SupportTicketStatusFilter? status,
      StringFilter? category,
      SupportIssueTypeFilter? issueType,
      UserRelationFilter? user,
      StringFilter? userId,
      StringFilter? consultationId,
      StringFilter? subscriptionId,
      StringFilter? paymentId,
      StringFilter? refundId,
      StringFilter? assignedToId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SupportTicketWhereInput>? AND,
      List<SupportTicketWhereInput>? OR,
      SupportTicketWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $SupportPriorityFilterCopyWith<$Res>? get priority;
  @override
  $SupportTicketStatusFilterCopyWith<$Res>? get status;
  @override
  $StringFilterCopyWith<$Res>? get category;
  @override
  $SupportIssueTypeFilterCopyWith<$Res>? get issueType;
  @override
  $UserRelationFilterCopyWith<$Res>? get user;
  @override
  $StringFilterCopyWith<$Res>? get userId;
  @override
  $StringFilterCopyWith<$Res>? get consultationId;
  @override
  $StringFilterCopyWith<$Res>? get subscriptionId;
  @override
  $StringFilterCopyWith<$Res>? get paymentId;
  @override
  $StringFilterCopyWith<$Res>? get refundId;
  @override
  $StringFilterCopyWith<$Res>? get assignedToId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $SupportTicketWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SupportTicketWhereInputImplCopyWithImpl<$Res>
    extends _$SupportTicketWhereInputCopyWithImpl<$Res,
        _$SupportTicketWhereInputImpl>
    implements _$$SupportTicketWhereInputImplCopyWith<$Res> {
  __$$SupportTicketWhereInputImplCopyWithImpl(
      _$SupportTicketWhereInputImpl _value,
      $Res Function(_$SupportTicketWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? priority = freezed,
    Object? status = freezed,
    Object? category = freezed,
    Object? issueType = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? paymentId = freezed,
    Object? refundId = freezed,
    Object? assignedToId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SupportTicketWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as SupportPriorityFilter?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupportTicketStatusFilter?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      issueType: freezed == issueType
          ? _value.issueType
          : issueType // ignore: cast_nullable_to_non_nullable
              as SupportIssueTypeFilter?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRelationFilter?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
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
              as List<SupportTicketWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SupportTicketWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SupportTicketWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SupportTicketWhereInputImpl implements _SupportTicketWhereInput {
  const _$SupportTicketWhereInputImpl(
      {this.id,
      this.title,
      this.description,
      this.priority,
      this.status,
      this.category,
      this.issueType,
      this.user,
      this.userId,
      this.consultationId,
      this.subscriptionId,
      this.paymentId,
      this.refundId,
      this.assignedToId,
      this.createdAt,
      this.updatedAt,
      final List<SupportTicketWhereInput>? AND,
      final List<SupportTicketWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SupportTicketWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;
  @override
  final StringFilter? description;
  @override
  final SupportPriorityFilter? priority;
  @override
  final SupportTicketStatusFilter? status;
  @override
  final StringFilter? category;
  @override
  final SupportIssueTypeFilter? issueType;

  /// Filter by user relation
  @override
  final UserRelationFilter? user;
  @override
  final StringFilter? userId;
  @override
  final StringFilter? consultationId;
  @override
  final StringFilter? subscriptionId;
  @override
  final StringFilter? paymentId;
  @override
  final StringFilter? refundId;
  @override
  final StringFilter? assignedToId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<SupportTicketWhereInput>? _AND;
  @override
  List<SupportTicketWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SupportTicketWhereInput>? _OR;
  @override
  List<SupportTicketWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SupportTicketWhereInput? NOT;

  @override
  String toString() {
    return 'SupportTicketWhereInput(id: $id, title: $title, description: $description, priority: $priority, status: $status, category: $category, issueType: $issueType, user: $user, userId: $userId, consultationId: $consultationId, subscriptionId: $subscriptionId, paymentId: $paymentId, refundId: $refundId, assignedToId: $assignedToId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.issueType, issueType) ||
                other.issueType == issueType) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.assignedToId, assignedToId) ||
                other.assignedToId == assignedToId) &&
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
        title,
        description,
        priority,
        status,
        category,
        issueType,
        user,
        userId,
        consultationId,
        subscriptionId,
        paymentId,
        refundId,
        assignedToId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketWhereInputImplCopyWith<_$SupportTicketWhereInputImpl>
      get copyWith => __$$SupportTicketWhereInputImplCopyWithImpl<
          _$SupportTicketWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketWhereInput implements SupportTicketWhereInput {
  const factory _SupportTicketWhereInput(
      {final StringFilter? id,
      final StringFilter? title,
      final StringFilter? description,
      final SupportPriorityFilter? priority,
      final SupportTicketStatusFilter? status,
      final StringFilter? category,
      final SupportIssueTypeFilter? issueType,
      final UserRelationFilter? user,
      final StringFilter? userId,
      final StringFilter? consultationId,
      final StringFilter? subscriptionId,
      final StringFilter? paymentId,
      final StringFilter? refundId,
      final StringFilter? assignedToId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<SupportTicketWhereInput>? AND,
      final List<SupportTicketWhereInput>? OR,
      final SupportTicketWhereInput? NOT}) = _$SupportTicketWhereInputImpl;

  factory _SupportTicketWhereInput.fromJson(Map<String, dynamic> json) =
      _$SupportTicketWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;
  @override
  StringFilter? get description;
  @override
  SupportPriorityFilter? get priority;
  @override
  SupportTicketStatusFilter? get status;
  @override
  StringFilter? get category;
  @override
  SupportIssueTypeFilter? get issueType;

  /// Filter by user relation
  @override
  UserRelationFilter? get user;
  @override
  StringFilter? get userId;
  @override
  StringFilter? get consultationId;
  @override
  StringFilter? get subscriptionId;
  @override
  StringFilter? get paymentId;
  @override
  StringFilter? get refundId;
  @override
  StringFilter? get assignedToId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<SupportTicketWhereInput>? get AND;
  @override
  List<SupportTicketWhereInput>? get OR;
  @override
  SupportTicketWhereInput? get NOT;

  /// Create a copy of SupportTicketWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketWhereInputImplCopyWith<_$SupportTicketWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketListRelationFilter _$SupportTicketListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketListRelationFilter {
  /// At least one related record matches
  SupportTicketWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  SupportTicketWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  SupportTicketWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketListRelationFilterCopyWith<SupportTicketListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketListRelationFilterCopyWith<$Res> {
  factory $SupportTicketListRelationFilterCopyWith(
          SupportTicketListRelationFilter value,
          $Res Function(SupportTicketListRelationFilter) then) =
      _$SupportTicketListRelationFilterCopyWithImpl<$Res,
          SupportTicketListRelationFilter>;
  @useResult
  $Res call(
      {SupportTicketWhereInput? some,
      SupportTicketWhereInput? every,
      SupportTicketWhereInput? none});

  $SupportTicketWhereInputCopyWith<$Res>? get some;
  $SupportTicketWhereInputCopyWith<$Res>? get every;
  $SupportTicketWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SupportTicketListRelationFilterCopyWithImpl<$Res,
        $Val extends SupportTicketListRelationFilter>
    implements $SupportTicketListRelationFilterCopyWith<$Res> {
  _$SupportTicketListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketListRelationFilter
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
              as SupportTicketWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SupportTicketWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SupportTicketWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SupportTicketListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SupportTicketWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SupportTicketWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SupportTicketWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportTicketListRelationFilterImplCopyWith<$Res>
    implements $SupportTicketListRelationFilterCopyWith<$Res> {
  factory _$$SupportTicketListRelationFilterImplCopyWith(
          _$SupportTicketListRelationFilterImpl value,
          $Res Function(_$SupportTicketListRelationFilterImpl) then) =
      __$$SupportTicketListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SupportTicketWhereInput? some,
      SupportTicketWhereInput? every,
      SupportTicketWhereInput? none});

  @override
  $SupportTicketWhereInputCopyWith<$Res>? get some;
  @override
  $SupportTicketWhereInputCopyWith<$Res>? get every;
  @override
  $SupportTicketWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SupportTicketListRelationFilterImplCopyWithImpl<$Res>
    extends _$SupportTicketListRelationFilterCopyWithImpl<$Res,
        _$SupportTicketListRelationFilterImpl>
    implements _$$SupportTicketListRelationFilterImplCopyWith<$Res> {
  __$$SupportTicketListRelationFilterImplCopyWithImpl(
      _$SupportTicketListRelationFilterImpl _value,
      $Res Function(_$SupportTicketListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SupportTicketListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SupportTicketWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SupportTicketWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SupportTicketWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketListRelationFilterImpl
    implements _SupportTicketListRelationFilter {
  const _$SupportTicketListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$SupportTicketListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportTicketListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SupportTicketWhereInput? some;

  /// All related records match
  @override
  final SupportTicketWhereInput? every;

  /// No related records match
  @override
  final SupportTicketWhereInput? none;

  @override
  String toString() {
    return 'SupportTicketListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SupportTicketListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketListRelationFilterImplCopyWith<
          _$SupportTicketListRelationFilterImpl>
      get copyWith => __$$SupportTicketListRelationFilterImplCopyWithImpl<
          _$SupportTicketListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketListRelationFilter
    implements SupportTicketListRelationFilter {
  const factory _SupportTicketListRelationFilter(
          {final SupportTicketWhereInput? some,
          final SupportTicketWhereInput? every,
          final SupportTicketWhereInput? none}) =
      _$SupportTicketListRelationFilterImpl;

  factory _SupportTicketListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SupportTicketListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SupportTicketWhereInput? get some;

  /// All related records match
  @override
  SupportTicketWhereInput? get every;

  /// No related records match
  @override
  SupportTicketWhereInput? get none;

  /// Create a copy of SupportTicketListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketListRelationFilterImplCopyWith<
          _$SupportTicketListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketRelationFilter _$SupportTicketRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SupportTicketWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  SupportTicketWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketRelationFilterCopyWith<SupportTicketRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketRelationFilterCopyWith<$Res> {
  factory $SupportTicketRelationFilterCopyWith(
          SupportTicketRelationFilter value,
          $Res Function(SupportTicketRelationFilter) then) =
      _$SupportTicketRelationFilterCopyWithImpl<$Res,
          SupportTicketRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SupportTicketWhereInput? is_,
      SupportTicketWhereInput? isNot});

  $SupportTicketWhereInputCopyWith<$Res>? get is_;
  $SupportTicketWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SupportTicketRelationFilterCopyWithImpl<$Res,
        $Val extends SupportTicketRelationFilter>
    implements $SupportTicketRelationFilterCopyWith<$Res> {
  _$SupportTicketRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketRelationFilter
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
              as SupportTicketWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SupportTicketWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SupportTicketRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SupportTicketWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SupportTicketRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportTicketWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SupportTicketWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportTicketRelationFilterImplCopyWith<$Res>
    implements $SupportTicketRelationFilterCopyWith<$Res> {
  factory _$$SupportTicketRelationFilterImplCopyWith(
          _$SupportTicketRelationFilterImpl value,
          $Res Function(_$SupportTicketRelationFilterImpl) then) =
      __$$SupportTicketRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SupportTicketWhereInput? is_,
      SupportTicketWhereInput? isNot});

  @override
  $SupportTicketWhereInputCopyWith<$Res>? get is_;
  @override
  $SupportTicketWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SupportTicketRelationFilterImplCopyWithImpl<$Res>
    extends _$SupportTicketRelationFilterCopyWithImpl<$Res,
        _$SupportTicketRelationFilterImpl>
    implements _$$SupportTicketRelationFilterImplCopyWith<$Res> {
  __$$SupportTicketRelationFilterImplCopyWithImpl(
      _$SupportTicketRelationFilterImpl _value,
      $Res Function(_$SupportTicketRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SupportTicketRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SupportTicketWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SupportTicketWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportTicketRelationFilterImpl
    implements _SupportTicketRelationFilter {
  const _$SupportTicketRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SupportTicketRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportTicketRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SupportTicketWhereInput? is_;

  /// Related record does not match
  @override
  final SupportTicketWhereInput? isNot;

  @override
  String toString() {
    return 'SupportTicketRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SupportTicketRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketRelationFilterImplCopyWith<_$SupportTicketRelationFilterImpl>
      get copyWith => __$$SupportTicketRelationFilterImplCopyWithImpl<
          _$SupportTicketRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketRelationFilter
    implements SupportTicketRelationFilter {
  const factory _SupportTicketRelationFilter(
          {@JsonKey(name: 'is') final SupportTicketWhereInput? is_,
          final SupportTicketWhereInput? isNot}) =
      _$SupportTicketRelationFilterImpl;

  factory _SupportTicketRelationFilter.fromJson(Map<String, dynamic> json) =
      _$SupportTicketRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SupportTicketWhereInput? get is_;

  /// Related record does not match
  @override
  SupportTicketWhereInput? get isNot;

  /// Create a copy of SupportTicketRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketRelationFilterImplCopyWith<_$SupportTicketRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportTicketOrderByInput _$SupportTicketOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _SupportTicketOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get category => throw _privateConstructorUsedError;
  SortOrder? get userId => throw _privateConstructorUsedError;
  SortOrder? get consultationId => throw _privateConstructorUsedError;
  SortOrder? get subscriptionId => throw _privateConstructorUsedError;
  SortOrder? get paymentId => throw _privateConstructorUsedError;
  SortOrder? get refundId => throw _privateConstructorUsedError;
  SortOrder? get assignedToId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketOrderByInputCopyWith<SupportTicketOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketOrderByInputCopyWith<$Res> {
  factory $SupportTicketOrderByInputCopyWith(SupportTicketOrderByInput value,
          $Res Function(SupportTicketOrderByInput) then) =
      _$SupportTicketOrderByInputCopyWithImpl<$Res, SupportTicketOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? category,
      SortOrder? userId,
      SortOrder? consultationId,
      SortOrder? subscriptionId,
      SortOrder? paymentId,
      SortOrder? refundId,
      SortOrder? assignedToId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$SupportTicketOrderByInputCopyWithImpl<$Res,
        $Val extends SupportTicketOrderByInput>
    implements $SupportTicketOrderByInputCopyWith<$Res> {
  _$SupportTicketOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? userId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? paymentId = freezed,
    Object? refundId = freezed,
    Object? assignedToId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SupportTicketOrderByInputImplCopyWith<$Res>
    implements $SupportTicketOrderByInputCopyWith<$Res> {
  factory _$$SupportTicketOrderByInputImplCopyWith(
          _$SupportTicketOrderByInputImpl value,
          $Res Function(_$SupportTicketOrderByInputImpl) then) =
      __$$SupportTicketOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? category,
      SortOrder? userId,
      SortOrder? consultationId,
      SortOrder? subscriptionId,
      SortOrder? paymentId,
      SortOrder? refundId,
      SortOrder? assignedToId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$SupportTicketOrderByInputImplCopyWithImpl<$Res>
    extends _$SupportTicketOrderByInputCopyWithImpl<$Res,
        _$SupportTicketOrderByInputImpl>
    implements _$$SupportTicketOrderByInputImplCopyWith<$Res> {
  __$$SupportTicketOrderByInputImplCopyWithImpl(
      _$SupportTicketOrderByInputImpl _value,
      $Res Function(_$SupportTicketOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportTicketOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? userId = freezed,
    Object? consultationId = freezed,
    Object? subscriptionId = freezed,
    Object? paymentId = freezed,
    Object? refundId = freezed,
    Object? assignedToId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SupportTicketOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      refundId: freezed == refundId
          ? _value.refundId
          : refundId // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      assignedToId: freezed == assignedToId
          ? _value.assignedToId
          : assignedToId // ignore: cast_nullable_to_non_nullable
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
class _$SupportTicketOrderByInputImpl implements _SupportTicketOrderByInput {
  const _$SupportTicketOrderByInputImpl(
      {this.id,
      this.title,
      this.description,
      this.category,
      this.userId,
      this.consultationId,
      this.subscriptionId,
      this.paymentId,
      this.refundId,
      this.assignedToId,
      this.createdAt,
      this.updatedAt});

  factory _$SupportTicketOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? title;
  @override
  final SortOrder? description;
  @override
  final SortOrder? category;
  @override
  final SortOrder? userId;
  @override
  final SortOrder? consultationId;
  @override
  final SortOrder? subscriptionId;
  @override
  final SortOrder? paymentId;
  @override
  final SortOrder? refundId;
  @override
  final SortOrder? assignedToId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'SupportTicketOrderByInput(id: $id, title: $title, description: $description, category: $category, userId: $userId, consultationId: $consultationId, subscriptionId: $subscriptionId, paymentId: $paymentId, refundId: $refundId, assignedToId: $assignedToId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.refundId, refundId) ||
                other.refundId == refundId) &&
            (identical(other.assignedToId, assignedToId) ||
                other.assignedToId == assignedToId) &&
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
      title,
      description,
      category,
      userId,
      consultationId,
      subscriptionId,
      paymentId,
      refundId,
      assignedToId,
      createdAt,
      updatedAt);

  /// Create a copy of SupportTicketOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketOrderByInputImplCopyWith<_$SupportTicketOrderByInputImpl>
      get copyWith => __$$SupportTicketOrderByInputImplCopyWithImpl<
          _$SupportTicketOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SupportTicketOrderByInput implements SupportTicketOrderByInput {
  const factory _SupportTicketOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? description,
      final SortOrder? category,
      final SortOrder? userId,
      final SortOrder? consultationId,
      final SortOrder? subscriptionId,
      final SortOrder? paymentId,
      final SortOrder? refundId,
      final SortOrder? assignedToId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$SupportTicketOrderByInputImpl;

  factory _SupportTicketOrderByInput.fromJson(Map<String, dynamic> json) =
      _$SupportTicketOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get title;
  @override
  SortOrder? get description;
  @override
  SortOrder? get category;
  @override
  SortOrder? get userId;
  @override
  SortOrder? get consultationId;
  @override
  SortOrder? get subscriptionId;
  @override
  SortOrder? get paymentId;
  @override
  SortOrder? get refundId;
  @override
  SortOrder? get assignedToId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of SupportTicketOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketOrderByInputImplCopyWith<_$SupportTicketOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
