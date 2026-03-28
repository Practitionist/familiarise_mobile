// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
mixin _$Topic {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<WebinarPlan>? get webinarPlans => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassPlan>? get classPlans => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ConsultationPlan>? get consultationPlans =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<SubscriptionPlan>? get subscriptionPlans =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Topic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Topic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res, Topic>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<WebinarPlan>? webinarPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassPlan>? classPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ConsultationPlan>? consultationPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<SubscriptionPlan>? subscriptionPlans,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res, $Val extends Topic>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Topic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? webinarPlans = freezed,
    Object? classPlans = freezed,
    Object? consultationPlans = freezed,
    Object? subscriptionPlans = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      webinarPlans: freezed == webinarPlans
          ? _value.webinarPlans
          : webinarPlans // ignore: cast_nullable_to_non_nullable
              as List<WebinarPlan>?,
      classPlans: freezed == classPlans
          ? _value.classPlans
          : classPlans // ignore: cast_nullable_to_non_nullable
              as List<ClassPlan>?,
      consultationPlans: freezed == consultationPlans
          ? _value.consultationPlans
          : consultationPlans // ignore: cast_nullable_to_non_nullable
              as List<ConsultationPlan>?,
      subscriptionPlans: freezed == subscriptionPlans
          ? _value.subscriptionPlans
          : subscriptionPlans // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionPlan>?,
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
abstract class _$$TopicImplCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$TopicImplCopyWith(
          _$TopicImpl value, $Res Function(_$TopicImpl) then) =
      __$$TopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<WebinarPlan>? webinarPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassPlan>? classPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ConsultationPlan>? consultationPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<SubscriptionPlan>? subscriptionPlans,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$TopicImplCopyWithImpl<$Res>
    extends _$TopicCopyWithImpl<$Res, _$TopicImpl>
    implements _$$TopicImplCopyWith<$Res> {
  __$$TopicImplCopyWithImpl(
      _$TopicImpl _value, $Res Function(_$TopicImpl) _then)
      : super(_value, _then);

  /// Create a copy of Topic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? webinarPlans = freezed,
    Object? classPlans = freezed,
    Object? consultationPlans = freezed,
    Object? subscriptionPlans = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TopicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      webinarPlans: freezed == webinarPlans
          ? _value._webinarPlans
          : webinarPlans // ignore: cast_nullable_to_non_nullable
              as List<WebinarPlan>?,
      classPlans: freezed == classPlans
          ? _value._classPlans
          : classPlans // ignore: cast_nullable_to_non_nullable
              as List<ClassPlan>?,
      consultationPlans: freezed == consultationPlans
          ? _value._consultationPlans
          : consultationPlans // ignore: cast_nullable_to_non_nullable
              as List<ConsultationPlan>?,
      subscriptionPlans: freezed == subscriptionPlans
          ? _value._subscriptionPlans
          : subscriptionPlans // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionPlan>?,
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
class _$TopicImpl implements _Topic {
  const _$TopicImpl(
      {required this.id,
      required this.name,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<WebinarPlan>? webinarPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassPlan>? classPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ConsultationPlan>? consultationPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<SubscriptionPlan>? subscriptionPlans,
      required this.createdAt,
      required this.updatedAt})
      : _webinarPlans = webinarPlans,
        _classPlans = classPlans,
        _consultationPlans = consultationPlans,
        _subscriptionPlans = subscriptionPlans;

  factory _$TopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<WebinarPlan>? _webinarPlans;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<WebinarPlan>? get webinarPlans {
    final value = _webinarPlans;
    if (value == null) return null;
    if (_webinarPlans is EqualUnmodifiableListView) return _webinarPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClassPlan>? _classPlans;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassPlan>? get classPlans {
    final value = _classPlans;
    if (value == null) return null;
    if (_classPlans is EqualUnmodifiableListView) return _classPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConsultationPlan>? _consultationPlans;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ConsultationPlan>? get consultationPlans {
    final value = _consultationPlans;
    if (value == null) return null;
    if (_consultationPlans is EqualUnmodifiableListView)
      return _consultationPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubscriptionPlan>? _subscriptionPlans;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<SubscriptionPlan>? get subscriptionPlans {
    final value = _subscriptionPlans;
    if (value == null) return null;
    if (_subscriptionPlans is EqualUnmodifiableListView)
      return _subscriptionPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Topic(id: $id, name: $name, webinarPlans: $webinarPlans, classPlans: $classPlans, consultationPlans: $consultationPlans, subscriptionPlans: $subscriptionPlans, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._webinarPlans, _webinarPlans) &&
            const DeepCollectionEquality()
                .equals(other._classPlans, _classPlans) &&
            const DeepCollectionEquality()
                .equals(other._consultationPlans, _consultationPlans) &&
            const DeepCollectionEquality()
                .equals(other._subscriptionPlans, _subscriptionPlans) &&
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
      name,
      const DeepCollectionEquality().hash(_webinarPlans),
      const DeepCollectionEquality().hash(_classPlans),
      const DeepCollectionEquality().hash(_consultationPlans),
      const DeepCollectionEquality().hash(_subscriptionPlans),
      createdAt,
      updatedAt);

  /// Create a copy of Topic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      __$$TopicImplCopyWithImpl<_$TopicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicImplToJson(
      this,
    );
  }
}

abstract class _Topic implements Topic {
  const factory _Topic(
      {required final String id,
      required final String name,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<WebinarPlan>? webinarPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassPlan>? classPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ConsultationPlan>? consultationPlans,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<SubscriptionPlan>? subscriptionPlans,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$TopicImpl;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$TopicImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<WebinarPlan>? get webinarPlans;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassPlan>? get classPlans;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ConsultationPlan>? get consultationPlans;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<SubscriptionPlan>? get subscriptionPlans;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Topic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateTopicInput _$CreateTopicInputFromJson(Map<String, dynamic> json) {
  return _CreateTopicInput.fromJson(json);
}

/// @nodoc
mixin _$CreateTopicInput {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CreateTopicInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTopicInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTopicInputCopyWith<CreateTopicInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTopicInputCopyWith<$Res> {
  factory $CreateTopicInputCopyWith(
          CreateTopicInput value, $Res Function(CreateTopicInput) then) =
      _$CreateTopicInputCopyWithImpl<$Res, CreateTopicInput>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreateTopicInputCopyWithImpl<$Res, $Val extends CreateTopicInput>
    implements $CreateTopicInputCopyWith<$Res> {
  _$CreateTopicInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTopicInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTopicInputImplCopyWith<$Res>
    implements $CreateTopicInputCopyWith<$Res> {
  factory _$$CreateTopicInputImplCopyWith(_$CreateTopicInputImpl value,
          $Res Function(_$CreateTopicInputImpl) then) =
      __$$CreateTopicInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateTopicInputImplCopyWithImpl<$Res>
    extends _$CreateTopicInputCopyWithImpl<$Res, _$CreateTopicInputImpl>
    implements _$$CreateTopicInputImplCopyWith<$Res> {
  __$$CreateTopicInputImplCopyWithImpl(_$CreateTopicInputImpl _value,
      $Res Function(_$CreateTopicInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTopicInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateTopicInputImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTopicInputImpl implements _CreateTopicInput {
  const _$CreateTopicInputImpl({required this.name});

  factory _$CreateTopicInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTopicInputImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateTopicInput(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTopicInputImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of CreateTopicInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTopicInputImplCopyWith<_$CreateTopicInputImpl> get copyWith =>
      __$$CreateTopicInputImplCopyWithImpl<_$CreateTopicInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTopicInputImplToJson(
      this,
    );
  }
}

abstract class _CreateTopicInput implements CreateTopicInput {
  const factory _CreateTopicInput({required final String name}) =
      _$CreateTopicInputImpl;

  factory _CreateTopicInput.fromJson(Map<String, dynamic> json) =
      _$CreateTopicInputImpl.fromJson;

  @override
  String get name;

  /// Create a copy of CreateTopicInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTopicInputImplCopyWith<_$CreateTopicInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTopicInput _$UpdateTopicInputFromJson(Map<String, dynamic> json) {
  return _UpdateTopicInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateTopicInput {
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this UpdateTopicInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTopicInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTopicInputCopyWith<UpdateTopicInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTopicInputCopyWith<$Res> {
  factory $UpdateTopicInputCopyWith(
          UpdateTopicInput value, $Res Function(UpdateTopicInput) then) =
      _$UpdateTopicInputCopyWithImpl<$Res, UpdateTopicInput>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$UpdateTopicInputCopyWithImpl<$Res, $Val extends UpdateTopicInput>
    implements $UpdateTopicInputCopyWith<$Res> {
  _$UpdateTopicInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTopicInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTopicInputImplCopyWith<$Res>
    implements $UpdateTopicInputCopyWith<$Res> {
  factory _$$UpdateTopicInputImplCopyWith(_$UpdateTopicInputImpl value,
          $Res Function(_$UpdateTopicInputImpl) then) =
      __$$UpdateTopicInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$UpdateTopicInputImplCopyWithImpl<$Res>
    extends _$UpdateTopicInputCopyWithImpl<$Res, _$UpdateTopicInputImpl>
    implements _$$UpdateTopicInputImplCopyWith<$Res> {
  __$$UpdateTopicInputImplCopyWithImpl(_$UpdateTopicInputImpl _value,
      $Res Function(_$UpdateTopicInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTopicInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$UpdateTopicInputImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTopicInputImpl implements _UpdateTopicInput {
  const _$UpdateTopicInputImpl({this.name});

  factory _$UpdateTopicInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTopicInputImplFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'UpdateTopicInput(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTopicInputImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of UpdateTopicInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTopicInputImplCopyWith<_$UpdateTopicInputImpl> get copyWith =>
      __$$UpdateTopicInputImplCopyWithImpl<_$UpdateTopicInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTopicInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateTopicInput implements UpdateTopicInput {
  const factory _UpdateTopicInput({final String? name}) =
      _$UpdateTopicInputImpl;

  factory _UpdateTopicInput.fromJson(Map<String, dynamic> json) =
      _$UpdateTopicInputImpl.fromJson;

  @override
  String? get name;

  /// Create a copy of UpdateTopicInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTopicInputImplCopyWith<_$UpdateTopicInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopicWhereUniqueInput _$TopicWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _TopicWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$TopicWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this TopicWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopicWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopicWhereUniqueInputCopyWith<TopicWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicWhereUniqueInputCopyWith<$Res> {
  factory $TopicWhereUniqueInputCopyWith(TopicWhereUniqueInput value,
          $Res Function(TopicWhereUniqueInput) then) =
      _$TopicWhereUniqueInputCopyWithImpl<$Res, TopicWhereUniqueInput>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$TopicWhereUniqueInputCopyWithImpl<$Res,
        $Val extends TopicWhereUniqueInput>
    implements $TopicWhereUniqueInputCopyWith<$Res> {
  _$TopicWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicWhereUniqueInputImplCopyWith<$Res>
    implements $TopicWhereUniqueInputCopyWith<$Res> {
  factory _$$TopicWhereUniqueInputImplCopyWith(
          _$TopicWhereUniqueInputImpl value,
          $Res Function(_$TopicWhereUniqueInputImpl) then) =
      __$$TopicWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$TopicWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$TopicWhereUniqueInputCopyWithImpl<$Res,
        _$TopicWhereUniqueInputImpl>
    implements _$$TopicWhereUniqueInputImplCopyWith<$Res> {
  __$$TopicWhereUniqueInputImplCopyWithImpl(_$TopicWhereUniqueInputImpl _value,
      $Res Function(_$TopicWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TopicWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicWhereUniqueInputImpl implements _TopicWhereUniqueInput {
  const _$TopicWhereUniqueInputImpl({this.id, this.name});

  factory _$TopicWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicWhereUniqueInputImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'TopicWhereUniqueInput(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of TopicWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicWhereUniqueInputImplCopyWith<_$TopicWhereUniqueInputImpl>
      get copyWith => __$$TopicWhereUniqueInputImplCopyWithImpl<
          _$TopicWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _TopicWhereUniqueInput implements TopicWhereUniqueInput {
  const factory _TopicWhereUniqueInput({final String? id, final String? name}) =
      _$TopicWhereUniqueInputImpl;

  factory _TopicWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$TopicWhereUniqueInputImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of TopicWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicWhereUniqueInputImplCopyWith<_$TopicWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopicWhereInput _$TopicWhereInputFromJson(Map<String, dynamic> json) {
  return _TopicWhereInput.fromJson(json);
}

/// @nodoc
mixin _$TopicWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get name => throw _privateConstructorUsedError;

  /// Filter by webinarPlans relation
  WebinarPlanListRelationFilter? get webinarPlans =>
      throw _privateConstructorUsedError;

  /// Filter by classPlans relation
  ClassPlanListRelationFilter? get classPlans =>
      throw _privateConstructorUsedError;

  /// Filter by consultationPlans relation
  ConsultationPlanListRelationFilter? get consultationPlans =>
      throw _privateConstructorUsedError;

  /// Filter by subscriptionPlans relation
  SubscriptionPlanListRelationFilter? get subscriptionPlans =>
      throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<TopicWhereInput>? get AND => throw _privateConstructorUsedError;
  List<TopicWhereInput>? get OR => throw _privateConstructorUsedError;
  TopicWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this TopicWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopicWhereInputCopyWith<TopicWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicWhereInputCopyWith<$Res> {
  factory $TopicWhereInputCopyWith(
          TopicWhereInput value, $Res Function(TopicWhereInput) then) =
      _$TopicWhereInputCopyWithImpl<$Res, TopicWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      WebinarPlanListRelationFilter? webinarPlans,
      ClassPlanListRelationFilter? classPlans,
      ConsultationPlanListRelationFilter? consultationPlans,
      SubscriptionPlanListRelationFilter? subscriptionPlans,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<TopicWhereInput>? AND,
      List<TopicWhereInput>? OR,
      TopicWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get name;
  $WebinarPlanListRelationFilterCopyWith<$Res>? get webinarPlans;
  $ClassPlanListRelationFilterCopyWith<$Res>? get classPlans;
  $ConsultationPlanListRelationFilterCopyWith<$Res>? get consultationPlans;
  $SubscriptionPlanListRelationFilterCopyWith<$Res>? get subscriptionPlans;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $TopicWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$TopicWhereInputCopyWithImpl<$Res, $Val extends TopicWhereInput>
    implements $TopicWhereInputCopyWith<$Res> {
  _$TopicWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? webinarPlans = freezed,
    Object? classPlans = freezed,
    Object? consultationPlans = freezed,
    Object? subscriptionPlans = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinarPlans: freezed == webinarPlans
          ? _value.webinarPlans
          : webinarPlans // ignore: cast_nullable_to_non_nullable
              as WebinarPlanListRelationFilter?,
      classPlans: freezed == classPlans
          ? _value.classPlans
          : classPlans // ignore: cast_nullable_to_non_nullable
              as ClassPlanListRelationFilter?,
      consultationPlans: freezed == consultationPlans
          ? _value.consultationPlans
          : consultationPlans // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanListRelationFilter?,
      subscriptionPlans: freezed == subscriptionPlans
          ? _value.subscriptionPlans
          : subscriptionPlans // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanListRelationFilter?,
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
              as List<TopicWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<TopicWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as TopicWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TopicWhereInput
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

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanListRelationFilterCopyWith<$Res>? get webinarPlans {
    if (_value.webinarPlans == null) {
      return null;
    }

    return $WebinarPlanListRelationFilterCopyWith<$Res>(_value.webinarPlans!,
        (value) {
      return _then(_value.copyWith(webinarPlans: value) as $Val);
    });
  }

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanListRelationFilterCopyWith<$Res>? get classPlans {
    if (_value.classPlans == null) {
      return null;
    }

    return $ClassPlanListRelationFilterCopyWith<$Res>(_value.classPlans!,
        (value) {
      return _then(_value.copyWith(classPlans: value) as $Val);
    });
  }

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanListRelationFilterCopyWith<$Res>? get consultationPlans {
    if (_value.consultationPlans == null) {
      return null;
    }

    return $ConsultationPlanListRelationFilterCopyWith<$Res>(
        _value.consultationPlans!, (value) {
      return _then(_value.copyWith(consultationPlans: value) as $Val);
    });
  }

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanListRelationFilterCopyWith<$Res>? get subscriptionPlans {
    if (_value.subscriptionPlans == null) {
      return null;
    }

    return $SubscriptionPlanListRelationFilterCopyWith<$Res>(
        _value.subscriptionPlans!, (value) {
      return _then(_value.copyWith(subscriptionPlans: value) as $Val);
    });
  }

  /// Create a copy of TopicWhereInput
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

  /// Create a copy of TopicWhereInput
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

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopicWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $TopicWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopicWhereInputImplCopyWith<$Res>
    implements $TopicWhereInputCopyWith<$Res> {
  factory _$$TopicWhereInputImplCopyWith(_$TopicWhereInputImpl value,
          $Res Function(_$TopicWhereInputImpl) then) =
      __$$TopicWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? name,
      WebinarPlanListRelationFilter? webinarPlans,
      ClassPlanListRelationFilter? classPlans,
      ConsultationPlanListRelationFilter? consultationPlans,
      SubscriptionPlanListRelationFilter? subscriptionPlans,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<TopicWhereInput>? AND,
      List<TopicWhereInput>? OR,
      TopicWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get name;
  @override
  $WebinarPlanListRelationFilterCopyWith<$Res>? get webinarPlans;
  @override
  $ClassPlanListRelationFilterCopyWith<$Res>? get classPlans;
  @override
  $ConsultationPlanListRelationFilterCopyWith<$Res>? get consultationPlans;
  @override
  $SubscriptionPlanListRelationFilterCopyWith<$Res>? get subscriptionPlans;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $TopicWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$TopicWhereInputImplCopyWithImpl<$Res>
    extends _$TopicWhereInputCopyWithImpl<$Res, _$TopicWhereInputImpl>
    implements _$$TopicWhereInputImplCopyWith<$Res> {
  __$$TopicWhereInputImplCopyWithImpl(
      _$TopicWhereInputImpl _value, $Res Function(_$TopicWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? webinarPlans = freezed,
    Object? classPlans = freezed,
    Object? consultationPlans = freezed,
    Object? subscriptionPlans = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$TopicWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      webinarPlans: freezed == webinarPlans
          ? _value.webinarPlans
          : webinarPlans // ignore: cast_nullable_to_non_nullable
              as WebinarPlanListRelationFilter?,
      classPlans: freezed == classPlans
          ? _value.classPlans
          : classPlans // ignore: cast_nullable_to_non_nullable
              as ClassPlanListRelationFilter?,
      consultationPlans: freezed == consultationPlans
          ? _value.consultationPlans
          : consultationPlans // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanListRelationFilter?,
      subscriptionPlans: freezed == subscriptionPlans
          ? _value.subscriptionPlans
          : subscriptionPlans // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlanListRelationFilter?,
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
              as List<TopicWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<TopicWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as TopicWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TopicWhereInputImpl implements _TopicWhereInput {
  const _$TopicWhereInputImpl(
      {this.id,
      this.name,
      this.webinarPlans,
      this.classPlans,
      this.consultationPlans,
      this.subscriptionPlans,
      this.createdAt,
      this.updatedAt,
      final List<TopicWhereInput>? AND,
      final List<TopicWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$TopicWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? name;

  /// Filter by webinarPlans relation
  @override
  final WebinarPlanListRelationFilter? webinarPlans;

  /// Filter by classPlans relation
  @override
  final ClassPlanListRelationFilter? classPlans;

  /// Filter by consultationPlans relation
  @override
  final ConsultationPlanListRelationFilter? consultationPlans;

  /// Filter by subscriptionPlans relation
  @override
  final SubscriptionPlanListRelationFilter? subscriptionPlans;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<TopicWhereInput>? _AND;
  @override
  List<TopicWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopicWhereInput>? _OR;
  @override
  List<TopicWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TopicWhereInput? NOT;

  @override
  String toString() {
    return 'TopicWhereInput(id: $id, name: $name, webinarPlans: $webinarPlans, classPlans: $classPlans, consultationPlans: $consultationPlans, subscriptionPlans: $subscriptionPlans, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.webinarPlans, webinarPlans) ||
                other.webinarPlans == webinarPlans) &&
            (identical(other.classPlans, classPlans) ||
                other.classPlans == classPlans) &&
            (identical(other.consultationPlans, consultationPlans) ||
                other.consultationPlans == consultationPlans) &&
            (identical(other.subscriptionPlans, subscriptionPlans) ||
                other.subscriptionPlans == subscriptionPlans) &&
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
      name,
      webinarPlans,
      classPlans,
      consultationPlans,
      subscriptionPlans,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_AND),
      const DeepCollectionEquality().hash(_OR),
      NOT);

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicWhereInputImplCopyWith<_$TopicWhereInputImpl> get copyWith =>
      __$$TopicWhereInputImplCopyWithImpl<_$TopicWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicWhereInputImplToJson(
      this,
    );
  }
}

abstract class _TopicWhereInput implements TopicWhereInput {
  const factory _TopicWhereInput(
      {final StringFilter? id,
      final StringFilter? name,
      final WebinarPlanListRelationFilter? webinarPlans,
      final ClassPlanListRelationFilter? classPlans,
      final ConsultationPlanListRelationFilter? consultationPlans,
      final SubscriptionPlanListRelationFilter? subscriptionPlans,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<TopicWhereInput>? AND,
      final List<TopicWhereInput>? OR,
      final TopicWhereInput? NOT}) = _$TopicWhereInputImpl;

  factory _TopicWhereInput.fromJson(Map<String, dynamic> json) =
      _$TopicWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get name;

  /// Filter by webinarPlans relation
  @override
  WebinarPlanListRelationFilter? get webinarPlans;

  /// Filter by classPlans relation
  @override
  ClassPlanListRelationFilter? get classPlans;

  /// Filter by consultationPlans relation
  @override
  ConsultationPlanListRelationFilter? get consultationPlans;

  /// Filter by subscriptionPlans relation
  @override
  SubscriptionPlanListRelationFilter? get subscriptionPlans;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<TopicWhereInput>? get AND;
  @override
  List<TopicWhereInput>? get OR;
  @override
  TopicWhereInput? get NOT;

  /// Create a copy of TopicWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicWhereInputImplCopyWith<_$TopicWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopicListRelationFilter _$TopicListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _TopicListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$TopicListRelationFilter {
  /// At least one related record matches
  TopicWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  TopicWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  TopicWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this TopicListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopicListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopicListRelationFilterCopyWith<TopicListRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicListRelationFilterCopyWith<$Res> {
  factory $TopicListRelationFilterCopyWith(TopicListRelationFilter value,
          $Res Function(TopicListRelationFilter) then) =
      _$TopicListRelationFilterCopyWithImpl<$Res, TopicListRelationFilter>;
  @useResult
  $Res call(
      {TopicWhereInput? some, TopicWhereInput? every, TopicWhereInput? none});

  $TopicWhereInputCopyWith<$Res>? get some;
  $TopicWhereInputCopyWith<$Res>? get every;
  $TopicWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$TopicListRelationFilterCopyWithImpl<$Res,
        $Val extends TopicListRelationFilter>
    implements $TopicListRelationFilterCopyWith<$Res> {
  _$TopicListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicListRelationFilter
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
              as TopicWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as TopicWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as TopicWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TopicListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopicWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $TopicWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of TopicListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopicWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $TopicWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of TopicListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopicWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $TopicWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopicListRelationFilterImplCopyWith<$Res>
    implements $TopicListRelationFilterCopyWith<$Res> {
  factory _$$TopicListRelationFilterImplCopyWith(
          _$TopicListRelationFilterImpl value,
          $Res Function(_$TopicListRelationFilterImpl) then) =
      __$$TopicListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TopicWhereInput? some, TopicWhereInput? every, TopicWhereInput? none});

  @override
  $TopicWhereInputCopyWith<$Res>? get some;
  @override
  $TopicWhereInputCopyWith<$Res>? get every;
  @override
  $TopicWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$TopicListRelationFilterImplCopyWithImpl<$Res>
    extends _$TopicListRelationFilterCopyWithImpl<$Res,
        _$TopicListRelationFilterImpl>
    implements _$$TopicListRelationFilterImplCopyWith<$Res> {
  __$$TopicListRelationFilterImplCopyWithImpl(
      _$TopicListRelationFilterImpl _value,
      $Res Function(_$TopicListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$TopicListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as TopicWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as TopicWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as TopicWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicListRelationFilterImpl implements _TopicListRelationFilter {
  const _$TopicListRelationFilterImpl({this.some, this.every, this.none});

  factory _$TopicListRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final TopicWhereInput? some;

  /// All related records match
  @override
  final TopicWhereInput? every;

  /// No related records match
  @override
  final TopicWhereInput? none;

  @override
  String toString() {
    return 'TopicListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of TopicListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicListRelationFilterImplCopyWith<_$TopicListRelationFilterImpl>
      get copyWith => __$$TopicListRelationFilterImplCopyWithImpl<
          _$TopicListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _TopicListRelationFilter implements TopicListRelationFilter {
  const factory _TopicListRelationFilter(
      {final TopicWhereInput? some,
      final TopicWhereInput? every,
      final TopicWhereInput? none}) = _$TopicListRelationFilterImpl;

  factory _TopicListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$TopicListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  TopicWhereInput? get some;

  /// All related records match
  @override
  TopicWhereInput? get every;

  /// No related records match
  @override
  TopicWhereInput? get none;

  /// Create a copy of TopicListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicListRelationFilterImplCopyWith<_$TopicListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopicRelationFilter _$TopicRelationFilterFromJson(Map<String, dynamic> json) {
  return _TopicRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$TopicRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  TopicWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  TopicWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this TopicRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopicRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopicRelationFilterCopyWith<TopicRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicRelationFilterCopyWith<$Res> {
  factory $TopicRelationFilterCopyWith(
          TopicRelationFilter value, $Res Function(TopicRelationFilter) then) =
      _$TopicRelationFilterCopyWithImpl<$Res, TopicRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') TopicWhereInput? is_, TopicWhereInput? isNot});

  $TopicWhereInputCopyWith<$Res>? get is_;
  $TopicWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$TopicRelationFilterCopyWithImpl<$Res, $Val extends TopicRelationFilter>
    implements $TopicRelationFilterCopyWith<$Res> {
  _$TopicRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicRelationFilter
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
              as TopicWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as TopicWhereInput?,
    ) as $Val);
  }

  /// Create a copy of TopicRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopicWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $TopicWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of TopicRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopicWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $TopicWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopicRelationFilterImplCopyWith<$Res>
    implements $TopicRelationFilterCopyWith<$Res> {
  factory _$$TopicRelationFilterImplCopyWith(_$TopicRelationFilterImpl value,
          $Res Function(_$TopicRelationFilterImpl) then) =
      __$$TopicRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') TopicWhereInput? is_, TopicWhereInput? isNot});

  @override
  $TopicWhereInputCopyWith<$Res>? get is_;
  @override
  $TopicWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$TopicRelationFilterImplCopyWithImpl<$Res>
    extends _$TopicRelationFilterCopyWithImpl<$Res, _$TopicRelationFilterImpl>
    implements _$$TopicRelationFilterImplCopyWith<$Res> {
  __$$TopicRelationFilterImplCopyWithImpl(_$TopicRelationFilterImpl _value,
      $Res Function(_$TopicRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$TopicRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as TopicWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as TopicWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicRelationFilterImpl implements _TopicRelationFilter {
  const _$TopicRelationFilterImpl({@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$TopicRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final TopicWhereInput? is_;

  /// Related record does not match
  @override
  final TopicWhereInput? isNot;

  @override
  String toString() {
    return 'TopicRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of TopicRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicRelationFilterImplCopyWith<_$TopicRelationFilterImpl> get copyWith =>
      __$$TopicRelationFilterImplCopyWithImpl<_$TopicRelationFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _TopicRelationFilter implements TopicRelationFilter {
  const factory _TopicRelationFilter(
      {@JsonKey(name: 'is') final TopicWhereInput? is_,
      final TopicWhereInput? isNot}) = _$TopicRelationFilterImpl;

  factory _TopicRelationFilter.fromJson(Map<String, dynamic> json) =
      _$TopicRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  TopicWhereInput? get is_;

  /// Related record does not match
  @override
  TopicWhereInput? get isNot;

  /// Create a copy of TopicRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicRelationFilterImplCopyWith<_$TopicRelationFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopicOrderByInput _$TopicOrderByInputFromJson(Map<String, dynamic> json) {
  return _TopicOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$TopicOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get name => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TopicOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopicOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopicOrderByInputCopyWith<TopicOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicOrderByInputCopyWith<$Res> {
  factory $TopicOrderByInputCopyWith(
          TopicOrderByInput value, $Res Function(TopicOrderByInput) then) =
      _$TopicOrderByInputCopyWithImpl<$Res, TopicOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$TopicOrderByInputCopyWithImpl<$Res, $Val extends TopicOrderByInput>
    implements $TopicOrderByInputCopyWith<$Res> {
  _$TopicOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TopicOrderByInputImplCopyWith<$Res>
    implements $TopicOrderByInputCopyWith<$Res> {
  factory _$$TopicOrderByInputImplCopyWith(_$TopicOrderByInputImpl value,
          $Res Function(_$TopicOrderByInputImpl) then) =
      __$$TopicOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? name,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$TopicOrderByInputImplCopyWithImpl<$Res>
    extends _$TopicOrderByInputCopyWithImpl<$Res, _$TopicOrderByInputImpl>
    implements _$$TopicOrderByInputImplCopyWith<$Res> {
  __$$TopicOrderByInputImplCopyWithImpl(_$TopicOrderByInputImpl _value,
      $Res Function(_$TopicOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TopicOrderByInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$TopicOrderByInputImpl implements _TopicOrderByInput {
  const _$TopicOrderByInputImpl(
      {this.id, this.name, this.createdAt, this.updatedAt});

  factory _$TopicOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? name;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'TopicOrderByInput(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, updatedAt);

  /// Create a copy of TopicOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicOrderByInputImplCopyWith<_$TopicOrderByInputImpl> get copyWith =>
      __$$TopicOrderByInputImplCopyWithImpl<_$TopicOrderByInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _TopicOrderByInput implements TopicOrderByInput {
  const factory _TopicOrderByInput(
      {final SortOrder? id,
      final SortOrder? name,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$TopicOrderByInputImpl;

  factory _TopicOrderByInput.fromJson(Map<String, dynamic> json) =
      _$TopicOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get name;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of TopicOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicOrderByInputImplCopyWith<_$TopicOrderByInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
