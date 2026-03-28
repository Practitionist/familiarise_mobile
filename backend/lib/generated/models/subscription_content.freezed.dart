// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionContent _$SubscriptionContentFromJson(Map<String, dynamic> json) {
  return _SubscriptionContent.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionContent {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  String? get contentUrl => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  double get hoursAllotted => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  SubscriptionPlan? get subscriptionPlan => throw _privateConstructorUsedError;
  String get subscriptionPlanId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionContentCopyWith<SubscriptionContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionContentCopyWith<$Res> {
  factory $SubscriptionContentCopyWith(
          SubscriptionContent value, $Res Function(SubscriptionContent) then) =
      _$SubscriptionContentCopyWithImpl<$Res, SubscriptionContent>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String? contentType,
      String? contentUrl,
      int order,
      double hoursAllotted,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SubscriptionPlan? subscriptionPlan,
      String subscriptionPlanId,
      DateTime createdAt,
      DateTime updatedAt});

  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;
}

/// @nodoc
class _$SubscriptionContentCopyWithImpl<$Res, $Val extends SubscriptionContent>
    implements $SubscriptionContentCopyWith<$Res> {
  _$SubscriptionContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = null,
    Object? hoursAllotted = null,
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = null,
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
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      hoursAllotted: null == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlan?,
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
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

  /// Create a copy of SubscriptionContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan {
    if (_value.subscriptionPlan == null) {
      return null;
    }

    return $SubscriptionPlanCopyWith<$Res>(_value.subscriptionPlan!, (value) {
      return _then(_value.copyWith(subscriptionPlan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionContentImplCopyWith<$Res>
    implements $SubscriptionContentCopyWith<$Res> {
  factory _$$SubscriptionContentImplCopyWith(_$SubscriptionContentImpl value,
          $Res Function(_$SubscriptionContentImpl) then) =
      __$$SubscriptionContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String? contentType,
      String? contentUrl,
      int order,
      double hoursAllotted,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SubscriptionPlan? subscriptionPlan,
      String subscriptionPlanId,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;
}

/// @nodoc
class __$$SubscriptionContentImplCopyWithImpl<$Res>
    extends _$SubscriptionContentCopyWithImpl<$Res, _$SubscriptionContentImpl>
    implements _$$SubscriptionContentImplCopyWith<$Res> {
  __$$SubscriptionContentImplCopyWithImpl(_$SubscriptionContentImpl _value,
      $Res Function(_$SubscriptionContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = null,
    Object? hoursAllotted = null,
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SubscriptionContentImpl(
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
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      hoursAllotted: null == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlan?,
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$SubscriptionContentImpl implements _SubscriptionContent {
  const _$SubscriptionContentImpl(
      {required this.id,
      required this.title,
      required this.description,
      this.contentType,
      this.contentUrl,
      required this.order,
      this.hoursAllotted = 1.0,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.subscriptionPlan,
      required this.subscriptionPlanId,
      required this.createdAt,
      required this.updatedAt});

  factory _$SubscriptionContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionContentImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? contentType;
  @override
  final String? contentUrl;
  @override
  final int order;
  @override
  @JsonKey()
  final double hoursAllotted;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final SubscriptionPlan? subscriptionPlan;
  @override
  final String subscriptionPlanId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SubscriptionContent(id: $id, title: $title, description: $description, contentType: $contentType, contentUrl: $contentUrl, order: $order, hoursAllotted: $hoursAllotted, subscriptionPlan: $subscriptionPlan, subscriptionPlanId: $subscriptionPlanId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionContentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hoursAllotted, hoursAllotted) ||
                other.hoursAllotted == hoursAllotted) &&
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
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
      contentType,
      contentUrl,
      order,
      hoursAllotted,
      subscriptionPlan,
      subscriptionPlanId,
      createdAt,
      updatedAt);

  /// Create a copy of SubscriptionContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionContentImplCopyWith<_$SubscriptionContentImpl> get copyWith =>
      __$$SubscriptionContentImplCopyWithImpl<_$SubscriptionContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionContentImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionContent implements SubscriptionContent {
  const factory _SubscriptionContent(
      {required final String id,
      required final String title,
      required final String description,
      final String? contentType,
      final String? contentUrl,
      required final int order,
      final double hoursAllotted,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final SubscriptionPlan? subscriptionPlan,
      required final String subscriptionPlanId,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$SubscriptionContentImpl;

  factory _SubscriptionContent.fromJson(Map<String, dynamic> json) =
      _$SubscriptionContentImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get contentType;
  @override
  String? get contentUrl;
  @override
  int get order;
  @override
  double get hoursAllotted;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  SubscriptionPlan? get subscriptionPlan;
  @override
  String get subscriptionPlanId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of SubscriptionContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionContentImplCopyWith<_$SubscriptionContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSubscriptionContentInput _$CreateSubscriptionContentInputFromJson(
    Map<String, dynamic> json) {
  return _CreateSubscriptionContentInput.fromJson(json);
}

/// @nodoc
mixin _$CreateSubscriptionContentInput {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  String? get contentUrl => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  double? get hoursAllotted => throw _privateConstructorUsedError;
  String get subscriptionPlanId => throw _privateConstructorUsedError;

  /// Serializes this CreateSubscriptionContentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateSubscriptionContentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSubscriptionContentInputCopyWith<CreateSubscriptionContentInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSubscriptionContentInputCopyWith<$Res> {
  factory $CreateSubscriptionContentInputCopyWith(
          CreateSubscriptionContentInput value,
          $Res Function(CreateSubscriptionContentInput) then) =
      _$CreateSubscriptionContentInputCopyWithImpl<$Res,
          CreateSubscriptionContentInput>;
  @useResult
  $Res call(
      {String title,
      String description,
      String? contentType,
      String? contentUrl,
      int order,
      double? hoursAllotted,
      String subscriptionPlanId});
}

/// @nodoc
class _$CreateSubscriptionContentInputCopyWithImpl<$Res,
        $Val extends CreateSubscriptionContentInput>
    implements $CreateSubscriptionContentInputCopyWith<$Res> {
  _$CreateSubscriptionContentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSubscriptionContentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = null,
    Object? hoursAllotted = freezed,
    Object? subscriptionPlanId = null,
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
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double?,
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSubscriptionContentInputImplCopyWith<$Res>
    implements $CreateSubscriptionContentInputCopyWith<$Res> {
  factory _$$CreateSubscriptionContentInputImplCopyWith(
          _$CreateSubscriptionContentInputImpl value,
          $Res Function(_$CreateSubscriptionContentInputImpl) then) =
      __$$CreateSubscriptionContentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String? contentType,
      String? contentUrl,
      int order,
      double? hoursAllotted,
      String subscriptionPlanId});
}

/// @nodoc
class __$$CreateSubscriptionContentInputImplCopyWithImpl<$Res>
    extends _$CreateSubscriptionContentInputCopyWithImpl<$Res,
        _$CreateSubscriptionContentInputImpl>
    implements _$$CreateSubscriptionContentInputImplCopyWith<$Res> {
  __$$CreateSubscriptionContentInputImplCopyWithImpl(
      _$CreateSubscriptionContentInputImpl _value,
      $Res Function(_$CreateSubscriptionContentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSubscriptionContentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = null,
    Object? hoursAllotted = freezed,
    Object? subscriptionPlanId = null,
  }) {
    return _then(_$CreateSubscriptionContentInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double?,
      subscriptionPlanId: null == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSubscriptionContentInputImpl
    implements _CreateSubscriptionContentInput {
  const _$CreateSubscriptionContentInputImpl(
      {required this.title,
      required this.description,
      this.contentType,
      this.contentUrl,
      required this.order,
      this.hoursAllotted = 1.0,
      required this.subscriptionPlanId});

  factory _$CreateSubscriptionContentInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSubscriptionContentInputImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String? contentType;
  @override
  final String? contentUrl;
  @override
  final int order;
  @override
  @JsonKey()
  final double? hoursAllotted;
  @override
  final String subscriptionPlanId;

  @override
  String toString() {
    return 'CreateSubscriptionContentInput(title: $title, description: $description, contentType: $contentType, contentUrl: $contentUrl, order: $order, hoursAllotted: $hoursAllotted, subscriptionPlanId: $subscriptionPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSubscriptionContentInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hoursAllotted, hoursAllotted) ||
                other.hoursAllotted == hoursAllotted) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, contentType,
      contentUrl, order, hoursAllotted, subscriptionPlanId);

  /// Create a copy of CreateSubscriptionContentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSubscriptionContentInputImplCopyWith<
          _$CreateSubscriptionContentInputImpl>
      get copyWith => __$$CreateSubscriptionContentInputImplCopyWithImpl<
          _$CreateSubscriptionContentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSubscriptionContentInputImplToJson(
      this,
    );
  }
}

abstract class _CreateSubscriptionContentInput
    implements CreateSubscriptionContentInput {
  const factory _CreateSubscriptionContentInput(
          {required final String title,
          required final String description,
          final String? contentType,
          final String? contentUrl,
          required final int order,
          final double? hoursAllotted,
          required final String subscriptionPlanId}) =
      _$CreateSubscriptionContentInputImpl;

  factory _CreateSubscriptionContentInput.fromJson(Map<String, dynamic> json) =
      _$CreateSubscriptionContentInputImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String? get contentType;
  @override
  String? get contentUrl;
  @override
  int get order;
  @override
  double? get hoursAllotted;
  @override
  String get subscriptionPlanId;

  /// Create a copy of CreateSubscriptionContentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateSubscriptionContentInputImplCopyWith<
          _$CreateSubscriptionContentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSubscriptionContentInput _$UpdateSubscriptionContentInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateSubscriptionContentInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateSubscriptionContentInput {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  String? get contentUrl => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  double? get hoursAllotted => throw _privateConstructorUsedError;
  String? get subscriptionPlanId => throw _privateConstructorUsedError;

  /// Serializes this UpdateSubscriptionContentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSubscriptionContentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSubscriptionContentInputCopyWith<UpdateSubscriptionContentInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSubscriptionContentInputCopyWith<$Res> {
  factory $UpdateSubscriptionContentInputCopyWith(
          UpdateSubscriptionContentInput value,
          $Res Function(UpdateSubscriptionContentInput) then) =
      _$UpdateSubscriptionContentInputCopyWithImpl<$Res,
          UpdateSubscriptionContentInput>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? contentType,
      String? contentUrl,
      int? order,
      double? hoursAllotted,
      String? subscriptionPlanId});
}

/// @nodoc
class _$UpdateSubscriptionContentInputCopyWithImpl<$Res,
        $Val extends UpdateSubscriptionContentInput>
    implements $UpdateSubscriptionContentInputCopyWith<$Res> {
  _$UpdateSubscriptionContentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSubscriptionContentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? subscriptionPlanId = freezed,
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
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSubscriptionContentInputImplCopyWith<$Res>
    implements $UpdateSubscriptionContentInputCopyWith<$Res> {
  factory _$$UpdateSubscriptionContentInputImplCopyWith(
          _$UpdateSubscriptionContentInputImpl value,
          $Res Function(_$UpdateSubscriptionContentInputImpl) then) =
      __$$UpdateSubscriptionContentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? contentType,
      String? contentUrl,
      int? order,
      double? hoursAllotted,
      String? subscriptionPlanId});
}

/// @nodoc
class __$$UpdateSubscriptionContentInputImplCopyWithImpl<$Res>
    extends _$UpdateSubscriptionContentInputCopyWithImpl<$Res,
        _$UpdateSubscriptionContentInputImpl>
    implements _$$UpdateSubscriptionContentInputImplCopyWith<$Res> {
  __$$UpdateSubscriptionContentInputImplCopyWithImpl(
      _$UpdateSubscriptionContentInputImpl _value,
      $Res Function(_$UpdateSubscriptionContentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSubscriptionContentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? subscriptionPlanId = freezed,
  }) {
    return _then(_$UpdateSubscriptionContentInputImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as double?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSubscriptionContentInputImpl
    implements _UpdateSubscriptionContentInput {
  const _$UpdateSubscriptionContentInputImpl(
      {this.title,
      this.description,
      this.contentType,
      this.contentUrl,
      this.order,
      this.hoursAllotted,
      this.subscriptionPlanId});

  factory _$UpdateSubscriptionContentInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSubscriptionContentInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? contentType;
  @override
  final String? contentUrl;
  @override
  final int? order;
  @override
  final double? hoursAllotted;
  @override
  final String? subscriptionPlanId;

  @override
  String toString() {
    return 'UpdateSubscriptionContentInput(title: $title, description: $description, contentType: $contentType, contentUrl: $contentUrl, order: $order, hoursAllotted: $hoursAllotted, subscriptionPlanId: $subscriptionPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSubscriptionContentInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hoursAllotted, hoursAllotted) ||
                other.hoursAllotted == hoursAllotted) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, contentType,
      contentUrl, order, hoursAllotted, subscriptionPlanId);

  /// Create a copy of UpdateSubscriptionContentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSubscriptionContentInputImplCopyWith<
          _$UpdateSubscriptionContentInputImpl>
      get copyWith => __$$UpdateSubscriptionContentInputImplCopyWithImpl<
          _$UpdateSubscriptionContentInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSubscriptionContentInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateSubscriptionContentInput
    implements UpdateSubscriptionContentInput {
  const factory _UpdateSubscriptionContentInput(
      {final String? title,
      final String? description,
      final String? contentType,
      final String? contentUrl,
      final int? order,
      final double? hoursAllotted,
      final String? subscriptionPlanId}) = _$UpdateSubscriptionContentInputImpl;

  factory _UpdateSubscriptionContentInput.fromJson(Map<String, dynamic> json) =
      _$UpdateSubscriptionContentInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get contentType;
  @override
  String? get contentUrl;
  @override
  int? get order;
  @override
  double? get hoursAllotted;
  @override
  String? get subscriptionPlanId;

  /// Create a copy of UpdateSubscriptionContentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSubscriptionContentInputImplCopyWith<
          _$UpdateSubscriptionContentInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionContentWhereUniqueInput
    _$SubscriptionContentWhereUniqueInputFromJson(Map<String, dynamic> json) {
  return _SubscriptionContentWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionContentWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionContentWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionContentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionContentWhereUniqueInputCopyWith<
          SubscriptionContentWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionContentWhereUniqueInputCopyWith<$Res> {
  factory $SubscriptionContentWhereUniqueInputCopyWith(
          SubscriptionContentWhereUniqueInput value,
          $Res Function(SubscriptionContentWhereUniqueInput) then) =
      _$SubscriptionContentWhereUniqueInputCopyWithImpl<$Res,
          SubscriptionContentWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SubscriptionContentWhereUniqueInputCopyWithImpl<$Res,
        $Val extends SubscriptionContentWhereUniqueInput>
    implements $SubscriptionContentWhereUniqueInputCopyWith<$Res> {
  _$SubscriptionContentWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionContentWhereUniqueInput
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
abstract class _$$SubscriptionContentWhereUniqueInputImplCopyWith<$Res>
    implements $SubscriptionContentWhereUniqueInputCopyWith<$Res> {
  factory _$$SubscriptionContentWhereUniqueInputImplCopyWith(
          _$SubscriptionContentWhereUniqueInputImpl value,
          $Res Function(_$SubscriptionContentWhereUniqueInputImpl) then) =
      __$$SubscriptionContentWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SubscriptionContentWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$SubscriptionContentWhereUniqueInputCopyWithImpl<$Res,
        _$SubscriptionContentWhereUniqueInputImpl>
    implements _$$SubscriptionContentWhereUniqueInputImplCopyWith<$Res> {
  __$$SubscriptionContentWhereUniqueInputImplCopyWithImpl(
      _$SubscriptionContentWhereUniqueInputImpl _value,
      $Res Function(_$SubscriptionContentWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionContentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SubscriptionContentWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionContentWhereUniqueInputImpl
    implements _SubscriptionContentWhereUniqueInput {
  const _$SubscriptionContentWhereUniqueInputImpl({this.id});

  factory _$SubscriptionContentWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionContentWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SubscriptionContentWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionContentWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SubscriptionContentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionContentWhereUniqueInputImplCopyWith<
          _$SubscriptionContentWhereUniqueInputImpl>
      get copyWith => __$$SubscriptionContentWhereUniqueInputImplCopyWithImpl<
          _$SubscriptionContentWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionContentWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionContentWhereUniqueInput
    implements SubscriptionContentWhereUniqueInput {
  const factory _SubscriptionContentWhereUniqueInput({final String? id}) =
      _$SubscriptionContentWhereUniqueInputImpl;

  factory _SubscriptionContentWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$SubscriptionContentWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of SubscriptionContentWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionContentWhereUniqueInputImplCopyWith<
          _$SubscriptionContentWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionContentWhereInput _$SubscriptionContentWhereInputFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionContentWhereInput.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionContentWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  StringFilter? get contentType => throw _privateConstructorUsedError;
  StringFilter? get contentUrl => throw _privateConstructorUsedError;
  IntFilter? get order => throw _privateConstructorUsedError;
  FloatFilter? get hoursAllotted => throw _privateConstructorUsedError;

  /// Filter by subscriptionPlan relation
  SubscriptionPlanRelationFilter? get subscriptionPlan =>
      throw _privateConstructorUsedError;
  StringFilter? get subscriptionPlanId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<SubscriptionContentWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<SubscriptionContentWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  SubscriptionContentWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionContentWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionContentWhereInputCopyWith<SubscriptionContentWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionContentWhereInputCopyWith<$Res> {
  factory $SubscriptionContentWhereInputCopyWith(
          SubscriptionContentWhereInput value,
          $Res Function(SubscriptionContentWhereInput) then) =
      _$SubscriptionContentWhereInputCopyWithImpl<$Res,
          SubscriptionContentWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      StringFilter? contentType,
      StringFilter? contentUrl,
      IntFilter? order,
      FloatFilter? hoursAllotted,
      SubscriptionPlanRelationFilter? subscriptionPlan,
      StringFilter? subscriptionPlanId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SubscriptionContentWhereInput>? AND,
      List<SubscriptionContentWhereInput>? OR,
      SubscriptionContentWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get description;
  $StringFilterCopyWith<$Res>? get contentType;
  $StringFilterCopyWith<$Res>? get contentUrl;
  $IntFilterCopyWith<$Res>? get order;
  $FloatFilterCopyWith<$Res>? get hoursAllotted;
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan;
  $StringFilterCopyWith<$Res>? get subscriptionPlanId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $SubscriptionContentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$SubscriptionContentWhereInputCopyWithImpl<$Res,
        $Val extends SubscriptionContentWhereInput>
    implements $SubscriptionContentWhereInputCopyWith<$Res> {
  _$SubscriptionContentWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = freezed,
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
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanRelationFilter?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
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
              as List<SubscriptionContentWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionContentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SubscriptionContentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubscriptionContentWhereInput
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

  /// Create a copy of SubscriptionContentWhereInput
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

  /// Create a copy of SubscriptionContentWhereInput
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

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get contentType {
    if (_value.contentType == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.contentType!, (value) {
      return _then(_value.copyWith(contentType: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionContentWhereInput
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

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get hoursAllotted {
    if (_value.hoursAllotted == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.hoursAllotted!, (value) {
      return _then(_value.copyWith(hoursAllotted: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan {
    if (_value.subscriptionPlan == null) {
      return null;
    }

    return $SubscriptionPlanRelationFilterCopyWith<$Res>(
        _value.subscriptionPlan!, (value) {
      return _then(_value.copyWith(subscriptionPlan: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get subscriptionPlanId {
    if (_value.subscriptionPlanId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.subscriptionPlanId!, (value) {
      return _then(_value.copyWith(subscriptionPlanId: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionContentWhereInput
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

  /// Create a copy of SubscriptionContentWhereInput
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

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionContentWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $SubscriptionContentWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionContentWhereInputImplCopyWith<$Res>
    implements $SubscriptionContentWhereInputCopyWith<$Res> {
  factory _$$SubscriptionContentWhereInputImplCopyWith(
          _$SubscriptionContentWhereInputImpl value,
          $Res Function(_$SubscriptionContentWhereInputImpl) then) =
      __$$SubscriptionContentWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      StringFilter? contentType,
      StringFilter? contentUrl,
      IntFilter? order,
      FloatFilter? hoursAllotted,
      SubscriptionPlanRelationFilter? subscriptionPlan,
      StringFilter? subscriptionPlanId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<SubscriptionContentWhereInput>? AND,
      List<SubscriptionContentWhereInput>? OR,
      SubscriptionContentWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $StringFilterCopyWith<$Res>? get contentType;
  @override
  $StringFilterCopyWith<$Res>? get contentUrl;
  @override
  $IntFilterCopyWith<$Res>? get order;
  @override
  $FloatFilterCopyWith<$Res>? get hoursAllotted;
  @override
  $SubscriptionPlanRelationFilterCopyWith<$Res>? get subscriptionPlan;
  @override
  $StringFilterCopyWith<$Res>? get subscriptionPlanId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $SubscriptionContentWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$SubscriptionContentWhereInputImplCopyWithImpl<$Res>
    extends _$SubscriptionContentWhereInputCopyWithImpl<$Res,
        _$SubscriptionContentWhereInputImpl>
    implements _$$SubscriptionContentWhereInputImplCopyWith<$Res> {
  __$$SubscriptionContentWhereInputImplCopyWithImpl(
      _$SubscriptionContentWhereInputImpl _value,
      $Res Function(_$SubscriptionContentWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? subscriptionPlan = freezed,
    Object? subscriptionPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$SubscriptionContentWhereInputImpl(
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
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanRelationFilter?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
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
              as List<SubscriptionContentWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionContentWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as SubscriptionContentWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SubscriptionContentWhereInputImpl
    implements _SubscriptionContentWhereInput {
  const _$SubscriptionContentWhereInputImpl(
      {this.id,
      this.title,
      this.description,
      this.contentType,
      this.contentUrl,
      this.order,
      this.hoursAllotted,
      this.subscriptionPlan,
      this.subscriptionPlanId,
      this.createdAt,
      this.updatedAt,
      final List<SubscriptionContentWhereInput>? AND,
      final List<SubscriptionContentWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$SubscriptionContentWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionContentWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;
  @override
  final StringFilter? description;
  @override
  final StringFilter? contentType;
  @override
  final StringFilter? contentUrl;
  @override
  final IntFilter? order;
  @override
  final FloatFilter? hoursAllotted;

  /// Filter by subscriptionPlan relation
  @override
  final SubscriptionPlanRelationFilter? subscriptionPlan;
  @override
  final StringFilter? subscriptionPlanId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<SubscriptionContentWhereInput>? _AND;
  @override
  List<SubscriptionContentWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubscriptionContentWhereInput>? _OR;
  @override
  List<SubscriptionContentWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SubscriptionContentWhereInput? NOT;

  @override
  String toString() {
    return 'SubscriptionContentWhereInput(id: $id, title: $title, description: $description, contentType: $contentType, contentUrl: $contentUrl, order: $order, hoursAllotted: $hoursAllotted, subscriptionPlan: $subscriptionPlan, subscriptionPlanId: $subscriptionPlanId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionContentWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hoursAllotted, hoursAllotted) ||
                other.hoursAllotted == hoursAllotted) &&
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
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
      title,
      description,
      contentType,
      contentUrl,
      order,
      hoursAllotted,
      subscriptionPlan,
      subscriptionPlanId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionContentWhereInputImplCopyWith<
          _$SubscriptionContentWhereInputImpl>
      get copyWith => __$$SubscriptionContentWhereInputImplCopyWithImpl<
          _$SubscriptionContentWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionContentWhereInputImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionContentWhereInput
    implements SubscriptionContentWhereInput {
  const factory _SubscriptionContentWhereInput(
          {final StringFilter? id,
          final StringFilter? title,
          final StringFilter? description,
          final StringFilter? contentType,
          final StringFilter? contentUrl,
          final IntFilter? order,
          final FloatFilter? hoursAllotted,
          final SubscriptionPlanRelationFilter? subscriptionPlan,
          final StringFilter? subscriptionPlanId,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<SubscriptionContentWhereInput>? AND,
          final List<SubscriptionContentWhereInput>? OR,
          final SubscriptionContentWhereInput? NOT}) =
      _$SubscriptionContentWhereInputImpl;

  factory _SubscriptionContentWhereInput.fromJson(Map<String, dynamic> json) =
      _$SubscriptionContentWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;
  @override
  StringFilter? get description;
  @override
  StringFilter? get contentType;
  @override
  StringFilter? get contentUrl;
  @override
  IntFilter? get order;
  @override
  FloatFilter? get hoursAllotted;

  /// Filter by subscriptionPlan relation
  @override
  SubscriptionPlanRelationFilter? get subscriptionPlan;
  @override
  StringFilter? get subscriptionPlanId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<SubscriptionContentWhereInput>? get AND;
  @override
  List<SubscriptionContentWhereInput>? get OR;
  @override
  SubscriptionContentWhereInput? get NOT;

  /// Create a copy of SubscriptionContentWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionContentWhereInputImplCopyWith<
          _$SubscriptionContentWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionContentListRelationFilter
    _$SubscriptionContentListRelationFilterFromJson(Map<String, dynamic> json) {
  return _SubscriptionContentListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionContentListRelationFilter {
  /// At least one related record matches
  SubscriptionContentWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  SubscriptionContentWhereInput? get every =>
      throw _privateConstructorUsedError;

  /// No related records match
  SubscriptionContentWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionContentListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionContentListRelationFilterCopyWith<
          SubscriptionContentListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionContentListRelationFilterCopyWith<$Res> {
  factory $SubscriptionContentListRelationFilterCopyWith(
          SubscriptionContentListRelationFilter value,
          $Res Function(SubscriptionContentListRelationFilter) then) =
      _$SubscriptionContentListRelationFilterCopyWithImpl<$Res,
          SubscriptionContentListRelationFilter>;
  @useResult
  $Res call(
      {SubscriptionContentWhereInput? some,
      SubscriptionContentWhereInput? every,
      SubscriptionContentWhereInput? none});

  $SubscriptionContentWhereInputCopyWith<$Res>? get some;
  $SubscriptionContentWhereInputCopyWith<$Res>? get every;
  $SubscriptionContentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$SubscriptionContentListRelationFilterCopyWithImpl<$Res,
        $Val extends SubscriptionContentListRelationFilter>
    implements $SubscriptionContentListRelationFilterCopyWith<$Res> {
  _$SubscriptionContentListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionContentListRelationFilter
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
              as SubscriptionContentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SubscriptionContentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SubscriptionContentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubscriptionContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionContentWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $SubscriptionContentWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionContentWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $SubscriptionContentWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionContentWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $SubscriptionContentWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionContentListRelationFilterImplCopyWith<$Res>
    implements $SubscriptionContentListRelationFilterCopyWith<$Res> {
  factory _$$SubscriptionContentListRelationFilterImplCopyWith(
          _$SubscriptionContentListRelationFilterImpl value,
          $Res Function(_$SubscriptionContentListRelationFilterImpl) then) =
      __$$SubscriptionContentListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubscriptionContentWhereInput? some,
      SubscriptionContentWhereInput? every,
      SubscriptionContentWhereInput? none});

  @override
  $SubscriptionContentWhereInputCopyWith<$Res>? get some;
  @override
  $SubscriptionContentWhereInputCopyWith<$Res>? get every;
  @override
  $SubscriptionContentWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$SubscriptionContentListRelationFilterImplCopyWithImpl<$Res>
    extends _$SubscriptionContentListRelationFilterCopyWithImpl<$Res,
        _$SubscriptionContentListRelationFilterImpl>
    implements _$$SubscriptionContentListRelationFilterImplCopyWith<$Res> {
  __$$SubscriptionContentListRelationFilterImplCopyWithImpl(
      _$SubscriptionContentListRelationFilterImpl _value,
      $Res Function(_$SubscriptionContentListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$SubscriptionContentListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as SubscriptionContentWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as SubscriptionContentWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as SubscriptionContentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionContentListRelationFilterImpl
    implements _SubscriptionContentListRelationFilter {
  const _$SubscriptionContentListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$SubscriptionContentListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionContentListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final SubscriptionContentWhereInput? some;

  /// All related records match
  @override
  final SubscriptionContentWhereInput? every;

  /// No related records match
  @override
  final SubscriptionContentWhereInput? none;

  @override
  String toString() {
    return 'SubscriptionContentListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionContentListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of SubscriptionContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionContentListRelationFilterImplCopyWith<
          _$SubscriptionContentListRelationFilterImpl>
      get copyWith => __$$SubscriptionContentListRelationFilterImplCopyWithImpl<
          _$SubscriptionContentListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionContentListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionContentListRelationFilter
    implements SubscriptionContentListRelationFilter {
  const factory _SubscriptionContentListRelationFilter(
          {final SubscriptionContentWhereInput? some,
          final SubscriptionContentWhereInput? every,
          final SubscriptionContentWhereInput? none}) =
      _$SubscriptionContentListRelationFilterImpl;

  factory _SubscriptionContentListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SubscriptionContentListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  SubscriptionContentWhereInput? get some;

  /// All related records match
  @override
  SubscriptionContentWhereInput? get every;

  /// No related records match
  @override
  SubscriptionContentWhereInput? get none;

  /// Create a copy of SubscriptionContentListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionContentListRelationFilterImplCopyWith<
          _$SubscriptionContentListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionContentRelationFilter _$SubscriptionContentRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionContentRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionContentRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  SubscriptionContentWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  SubscriptionContentWhereInput? get isNot =>
      throw _privateConstructorUsedError;

  /// Serializes this SubscriptionContentRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionContentRelationFilterCopyWith<SubscriptionContentRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionContentRelationFilterCopyWith<$Res> {
  factory $SubscriptionContentRelationFilterCopyWith(
          SubscriptionContentRelationFilter value,
          $Res Function(SubscriptionContentRelationFilter) then) =
      _$SubscriptionContentRelationFilterCopyWithImpl<$Res,
          SubscriptionContentRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SubscriptionContentWhereInput? is_,
      SubscriptionContentWhereInput? isNot});

  $SubscriptionContentWhereInputCopyWith<$Res>? get is_;
  $SubscriptionContentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$SubscriptionContentRelationFilterCopyWithImpl<$Res,
        $Val extends SubscriptionContentRelationFilter>
    implements $SubscriptionContentRelationFilterCopyWith<$Res> {
  _$SubscriptionContentRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionContentRelationFilter
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
              as SubscriptionContentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SubscriptionContentWhereInput?,
    ) as $Val);
  }

  /// Create a copy of SubscriptionContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionContentWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $SubscriptionContentWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of SubscriptionContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionContentWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $SubscriptionContentWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionContentRelationFilterImplCopyWith<$Res>
    implements $SubscriptionContentRelationFilterCopyWith<$Res> {
  factory _$$SubscriptionContentRelationFilterImplCopyWith(
          _$SubscriptionContentRelationFilterImpl value,
          $Res Function(_$SubscriptionContentRelationFilterImpl) then) =
      __$$SubscriptionContentRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') SubscriptionContentWhereInput? is_,
      SubscriptionContentWhereInput? isNot});

  @override
  $SubscriptionContentWhereInputCopyWith<$Res>? get is_;
  @override
  $SubscriptionContentWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$SubscriptionContentRelationFilterImplCopyWithImpl<$Res>
    extends _$SubscriptionContentRelationFilterCopyWithImpl<$Res,
        _$SubscriptionContentRelationFilterImpl>
    implements _$$SubscriptionContentRelationFilterImplCopyWith<$Res> {
  __$$SubscriptionContentRelationFilterImplCopyWithImpl(
      _$SubscriptionContentRelationFilterImpl _value,
      $Res Function(_$SubscriptionContentRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$SubscriptionContentRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as SubscriptionContentWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as SubscriptionContentWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionContentRelationFilterImpl
    implements _SubscriptionContentRelationFilter {
  const _$SubscriptionContentRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$SubscriptionContentRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionContentRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final SubscriptionContentWhereInput? is_;

  /// Related record does not match
  @override
  final SubscriptionContentWhereInput? isNot;

  @override
  String toString() {
    return 'SubscriptionContentRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionContentRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of SubscriptionContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionContentRelationFilterImplCopyWith<
          _$SubscriptionContentRelationFilterImpl>
      get copyWith => __$$SubscriptionContentRelationFilterImplCopyWithImpl<
          _$SubscriptionContentRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionContentRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionContentRelationFilter
    implements SubscriptionContentRelationFilter {
  const factory _SubscriptionContentRelationFilter(
          {@JsonKey(name: 'is') final SubscriptionContentWhereInput? is_,
          final SubscriptionContentWhereInput? isNot}) =
      _$SubscriptionContentRelationFilterImpl;

  factory _SubscriptionContentRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$SubscriptionContentRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  SubscriptionContentWhereInput? get is_;

  /// Related record does not match
  @override
  SubscriptionContentWhereInput? get isNot;

  /// Create a copy of SubscriptionContentRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionContentRelationFilterImplCopyWith<
          _$SubscriptionContentRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionContentOrderByInput _$SubscriptionContentOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionContentOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionContentOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get contentType => throw _privateConstructorUsedError;
  SortOrder? get contentUrl => throw _privateConstructorUsedError;
  SortOrder? get order => throw _privateConstructorUsedError;
  SortOrder? get hoursAllotted => throw _privateConstructorUsedError;
  SortOrder? get subscriptionPlanId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionContentOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionContentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionContentOrderByInputCopyWith<SubscriptionContentOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionContentOrderByInputCopyWith<$Res> {
  factory $SubscriptionContentOrderByInputCopyWith(
          SubscriptionContentOrderByInput value,
          $Res Function(SubscriptionContentOrderByInput) then) =
      _$SubscriptionContentOrderByInputCopyWithImpl<$Res,
          SubscriptionContentOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? contentType,
      SortOrder? contentUrl,
      SortOrder? order,
      SortOrder? hoursAllotted,
      SortOrder? subscriptionPlanId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$SubscriptionContentOrderByInputCopyWithImpl<$Res,
        $Val extends SubscriptionContentOrderByInput>
    implements $SubscriptionContentOrderByInputCopyWith<$Res> {
  _$SubscriptionContentOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionContentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? subscriptionPlanId = freezed,
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
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubscriptionContentOrderByInputImplCopyWith<$Res>
    implements $SubscriptionContentOrderByInputCopyWith<$Res> {
  factory _$$SubscriptionContentOrderByInputImplCopyWith(
          _$SubscriptionContentOrderByInputImpl value,
          $Res Function(_$SubscriptionContentOrderByInputImpl) then) =
      __$$SubscriptionContentOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? contentType,
      SortOrder? contentUrl,
      SortOrder? order,
      SortOrder? hoursAllotted,
      SortOrder? subscriptionPlanId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$SubscriptionContentOrderByInputImplCopyWithImpl<$Res>
    extends _$SubscriptionContentOrderByInputCopyWithImpl<$Res,
        _$SubscriptionContentOrderByInputImpl>
    implements _$$SubscriptionContentOrderByInputImplCopyWith<$Res> {
  __$$SubscriptionContentOrderByInputImplCopyWithImpl(
      _$SubscriptionContentOrderByInputImpl _value,
      $Res Function(_$SubscriptionContentOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionContentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? contentType = freezed,
    Object? contentUrl = freezed,
    Object? order = freezed,
    Object? hoursAllotted = freezed,
    Object? subscriptionPlanId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SubscriptionContentOrderByInputImpl(
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
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      hoursAllotted: freezed == hoursAllotted
          ? _value.hoursAllotted
          : hoursAllotted // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      subscriptionPlanId: freezed == subscriptionPlanId
          ? _value.subscriptionPlanId
          : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
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
class _$SubscriptionContentOrderByInputImpl
    implements _SubscriptionContentOrderByInput {
  const _$SubscriptionContentOrderByInputImpl(
      {this.id,
      this.title,
      this.description,
      this.contentType,
      this.contentUrl,
      this.order,
      this.hoursAllotted,
      this.subscriptionPlanId,
      this.createdAt,
      this.updatedAt});

  factory _$SubscriptionContentOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionContentOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? title;
  @override
  final SortOrder? description;
  @override
  final SortOrder? contentType;
  @override
  final SortOrder? contentUrl;
  @override
  final SortOrder? order;
  @override
  final SortOrder? hoursAllotted;
  @override
  final SortOrder? subscriptionPlanId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'SubscriptionContentOrderByInput(id: $id, title: $title, description: $description, contentType: $contentType, contentUrl: $contentUrl, order: $order, hoursAllotted: $hoursAllotted, subscriptionPlanId: $subscriptionPlanId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionContentOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.hoursAllotted, hoursAllotted) ||
                other.hoursAllotted == hoursAllotted) &&
            (identical(other.subscriptionPlanId, subscriptionPlanId) ||
                other.subscriptionPlanId == subscriptionPlanId) &&
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
      contentType,
      contentUrl,
      order,
      hoursAllotted,
      subscriptionPlanId,
      createdAt,
      updatedAt);

  /// Create a copy of SubscriptionContentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionContentOrderByInputImplCopyWith<
          _$SubscriptionContentOrderByInputImpl>
      get copyWith => __$$SubscriptionContentOrderByInputImplCopyWithImpl<
          _$SubscriptionContentOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionContentOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionContentOrderByInput
    implements SubscriptionContentOrderByInput {
  const factory _SubscriptionContentOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? description,
      final SortOrder? contentType,
      final SortOrder? contentUrl,
      final SortOrder? order,
      final SortOrder? hoursAllotted,
      final SortOrder? subscriptionPlanId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$SubscriptionContentOrderByInputImpl;

  factory _SubscriptionContentOrderByInput.fromJson(Map<String, dynamic> json) =
      _$SubscriptionContentOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get title;
  @override
  SortOrder? get description;
  @override
  SortOrder? get contentType;
  @override
  SortOrder? get contentUrl;
  @override
  SortOrder? get order;
  @override
  SortOrder? get hoursAllotted;
  @override
  SortOrder? get subscriptionPlanId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of SubscriptionContentOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionContentOrderByInputImplCopyWith<
          _$SubscriptionContentOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
