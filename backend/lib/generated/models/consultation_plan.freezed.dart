// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultationPlan _$ConsultationPlanFromJson(Map<String, dynamic> json) {
  return _ConsultationPlan.fromJson(json);
}

/// @nodoc
mixin _$ConsultationPlan {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get durationInHours => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get priceCurrency => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get prerequisites => throw _privateConstructorUsedError;
  String get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Topic>? get topics => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;
  List<Consultation> get consultations => throw _privateConstructorUsedError;
  List<PlanMaterial> get materials => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultationPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationPlanCopyWith<ConsultationPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationPlanCopyWith<$Res> {
  factory $ConsultationPlanCopyWith(
          ConsultationPlan value, $Res Function(ConsultationPlan) then) =
      _$ConsultationPlanCopyWithImpl<$Res, ConsultationPlan>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      double durationInHours,
      int price,
      String priceCurrency,
      String language,
      String level,
      String prerequisites,
      String materialProvided,
      List<String>? learningOutcomes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<Topic>? topics,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      List<Consultation> consultations,
      List<PlanMaterial> materials,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$ConsultationPlanCopyWithImpl<$Res, $Val extends ConsultationPlan>
    implements $ConsultationPlanCopyWith<$Res> {
  _$ConsultationPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? durationInHours = null,
    Object? price = null,
    Object? priceCurrency = null,
    Object? language = null,
    Object? level = null,
    Object? prerequisites = null,
    Object? materialProvided = null,
    Object? learningOutcomes = freezed,
    Object? topics = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? consultations = null,
    Object? materials = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInHours: null == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: null == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      prerequisites: null == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String,
      materialProvided: null == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultations: null == consultations
          ? _value.consultations
          : consultations // ignore: cast_nullable_to_non_nullable
              as List<Consultation>,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<PlanMaterial>,
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

  /// Create a copy of ConsultationPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileCopyWith<$Res>? get consultantProfile {
    if (_value.consultantProfile == null) {
      return null;
    }

    return $ConsultantProfileCopyWith<$Res>(_value.consultantProfile!, (value) {
      return _then(_value.copyWith(consultantProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultationPlanImplCopyWith<$Res>
    implements $ConsultationPlanCopyWith<$Res> {
  factory _$$ConsultationPlanImplCopyWith(_$ConsultationPlanImpl value,
          $Res Function(_$ConsultationPlanImpl) then) =
      __$$ConsultationPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      double durationInHours,
      int price,
      String priceCurrency,
      String language,
      String level,
      String prerequisites,
      String materialProvided,
      List<String>? learningOutcomes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<Topic>? topics,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String consultantProfileId,
      List<Consultation> consultations,
      List<PlanMaterial> materials,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$ConsultationPlanImplCopyWithImpl<$Res>
    extends _$ConsultationPlanCopyWithImpl<$Res, _$ConsultationPlanImpl>
    implements _$$ConsultationPlanImplCopyWith<$Res> {
  __$$ConsultationPlanImplCopyWithImpl(_$ConsultationPlanImpl _value,
      $Res Function(_$ConsultationPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? durationInHours = null,
    Object? price = null,
    Object? priceCurrency = null,
    Object? language = null,
    Object? level = null,
    Object? prerequisites = null,
    Object? materialProvided = null,
    Object? learningOutcomes = freezed,
    Object? topics = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = null,
    Object? consultations = null,
    Object? materials = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ConsultationPlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInHours: null == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: null == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      prerequisites: null == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String,
      materialProvided: null == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String,
      learningOutcomes: freezed == learningOutcomes
          ? _value._learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      consultations: null == consultations
          ? _value._consultations
          : consultations // ignore: cast_nullable_to_non_nullable
              as List<Consultation>,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<PlanMaterial>,
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
class _$ConsultationPlanImpl implements _ConsultationPlan {
  const _$ConsultationPlanImpl(
      {required this.id,
      required this.title,
      this.description,
      this.durationInHours = 1,
      required this.price,
      this.priceCurrency = "INR",
      this.language = "English",
      this.level = "Beginner",
      this.prerequisites = "None",
      this.materialProvided = "None",
      final List<String>? learningOutcomes = const <String>[],
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<Topic>? topics,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      required this.consultantProfileId,
      required final List<Consultation> consultations,
      required final List<PlanMaterial> materials,
      required this.createdAt,
      required this.updatedAt})
      : _learningOutcomes = learningOutcomes,
        _topics = topics,
        _consultations = consultations,
        _materials = materials;

  factory _$ConsultationPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultationPlanImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final double durationInHours;
  @override
  final int price;
  @override
  @JsonKey()
  final String priceCurrency;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String level;
  @override
  @JsonKey()
  final String prerequisites;
  @override
  @JsonKey()
  final String materialProvided;
  final List<String>? _learningOutcomes;
  @override
  @JsonKey()
  List<String>? get learningOutcomes {
    final value = _learningOutcomes;
    if (value == null) return null;
    if (_learningOutcomes is EqualUnmodifiableListView)
      return _learningOutcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Topic>? _topics;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Topic>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  final String consultantProfileId;
  final List<Consultation> _consultations;
  @override
  List<Consultation> get consultations {
    if (_consultations is EqualUnmodifiableListView) return _consultations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consultations);
  }

  final List<PlanMaterial> _materials;
  @override
  List<PlanMaterial> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ConsultationPlan(id: $id, title: $title, description: $description, durationInHours: $durationInHours, price: $price, priceCurrency: $priceCurrency, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, topics: $topics, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, consultations: $consultations, materials: $materials, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInHours, durationInHours) ||
                other.durationInHours == durationInHours) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            const DeepCollectionEquality()
                .equals(other._learningOutcomes, _learningOutcomes) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            const DeepCollectionEquality()
                .equals(other._consultations, _consultations) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
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
      durationInHours,
      price,
      priceCurrency,
      language,
      level,
      prerequisites,
      materialProvided,
      const DeepCollectionEquality().hash(_learningOutcomes),
      const DeepCollectionEquality().hash(_topics),
      consultantProfile,
      consultantProfileId,
      const DeepCollectionEquality().hash(_consultations),
      const DeepCollectionEquality().hash(_materials),
      createdAt,
      updatedAt);

  /// Create a copy of ConsultationPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationPlanImplCopyWith<_$ConsultationPlanImpl> get copyWith =>
      __$$ConsultationPlanImplCopyWithImpl<_$ConsultationPlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationPlanImplToJson(
      this,
    );
  }
}

abstract class _ConsultationPlan implements ConsultationPlan {
  const factory _ConsultationPlan(
      {required final String id,
      required final String title,
      final String? description,
      final double durationInHours,
      required final int price,
      final String priceCurrency,
      final String language,
      final String level,
      final String prerequisites,
      final String materialProvided,
      final List<String>? learningOutcomes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<Topic>? topics,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      required final String consultantProfileId,
      required final List<Consultation> consultations,
      required final List<PlanMaterial> materials,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ConsultationPlanImpl;

  factory _ConsultationPlan.fromJson(Map<String, dynamic> json) =
      _$ConsultationPlanImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  double get durationInHours;
  @override
  int get price;
  @override
  String get priceCurrency;
  @override
  String get language;
  @override
  String get level;
  @override
  String get prerequisites;
  @override
  String get materialProvided;
  @override
  List<String>? get learningOutcomes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Topic>? get topics;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  String get consultantProfileId;
  @override
  List<Consultation> get consultations;
  @override
  List<PlanMaterial> get materials;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ConsultationPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationPlanImplCopyWith<_$ConsultationPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateConsultationPlanInput _$CreateConsultationPlanInputFromJson(
    Map<String, dynamic> json) {
  return _CreateConsultationPlanInput.fromJson(json);
}

/// @nodoc
mixin _$CreateConsultationPlanInput {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get durationInHours => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get priceCurrency => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get prerequisites => throw _privateConstructorUsedError;
  String? get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  String get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this CreateConsultationPlanInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateConsultationPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateConsultationPlanInputCopyWith<CreateConsultationPlanInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConsultationPlanInputCopyWith<$Res> {
  factory $CreateConsultationPlanInputCopyWith(
          CreateConsultationPlanInput value,
          $Res Function(CreateConsultationPlanInput) then) =
      _$CreateConsultationPlanInputCopyWithImpl<$Res,
          CreateConsultationPlanInput>;
  @useResult
  $Res call(
      {String title,
      String? description,
      double? durationInHours,
      int price,
      String? priceCurrency,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      String consultantProfileId});
}

/// @nodoc
class _$CreateConsultationPlanInputCopyWithImpl<$Res,
        $Val extends CreateConsultationPlanInput>
    implements $CreateConsultationPlanInputCopyWith<$Res> {
  _$CreateConsultationPlanInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateConsultationPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? durationInHours = freezed,
    Object? price = null,
    Object? priceCurrency = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? consultantProfileId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateConsultationPlanInputImplCopyWith<$Res>
    implements $CreateConsultationPlanInputCopyWith<$Res> {
  factory _$$CreateConsultationPlanInputImplCopyWith(
          _$CreateConsultationPlanInputImpl value,
          $Res Function(_$CreateConsultationPlanInputImpl) then) =
      __$$CreateConsultationPlanInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      double? durationInHours,
      int price,
      String? priceCurrency,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      String consultantProfileId});
}

/// @nodoc
class __$$CreateConsultationPlanInputImplCopyWithImpl<$Res>
    extends _$CreateConsultationPlanInputCopyWithImpl<$Res,
        _$CreateConsultationPlanInputImpl>
    implements _$$CreateConsultationPlanInputImplCopyWith<$Res> {
  __$$CreateConsultationPlanInputImplCopyWithImpl(
      _$CreateConsultationPlanInputImpl _value,
      $Res Function(_$CreateConsultationPlanInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateConsultationPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? durationInHours = freezed,
    Object? price = null,
    Object? priceCurrency = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? consultantProfileId = null,
  }) {
    return _then(_$CreateConsultationPlanInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String?,
      learningOutcomes: freezed == learningOutcomes
          ? _value._learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      consultantProfileId: null == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateConsultationPlanInputImpl
    implements _CreateConsultationPlanInput {
  const _$CreateConsultationPlanInputImpl(
      {required this.title,
      this.description,
      this.durationInHours = 1,
      required this.price,
      this.priceCurrency = "INR",
      this.language = "English",
      this.level = "Beginner",
      this.prerequisites = "None",
      this.materialProvided = "None",
      final List<String>? learningOutcomes = const <String>[],
      required this.consultantProfileId})
      : _learningOutcomes = learningOutcomes;

  factory _$CreateConsultationPlanInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateConsultationPlanInputImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final double? durationInHours;
  @override
  final int price;
  @override
  @JsonKey()
  final String? priceCurrency;
  @override
  @JsonKey()
  final String? language;
  @override
  @JsonKey()
  final String? level;
  @override
  @JsonKey()
  final String? prerequisites;
  @override
  @JsonKey()
  final String? materialProvided;
  final List<String>? _learningOutcomes;
  @override
  @JsonKey()
  List<String>? get learningOutcomes {
    final value = _learningOutcomes;
    if (value == null) return null;
    if (_learningOutcomes is EqualUnmodifiableListView)
      return _learningOutcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String consultantProfileId;

  @override
  String toString() {
    return 'CreateConsultationPlanInput(title: $title, description: $description, durationInHours: $durationInHours, price: $price, priceCurrency: $priceCurrency, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConsultationPlanInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInHours, durationInHours) ||
                other.durationInHours == durationInHours) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            const DeepCollectionEquality()
                .equals(other._learningOutcomes, _learningOutcomes) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      durationInHours,
      price,
      priceCurrency,
      language,
      level,
      prerequisites,
      materialProvided,
      const DeepCollectionEquality().hash(_learningOutcomes),
      consultantProfileId);

  /// Create a copy of CreateConsultationPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConsultationPlanInputImplCopyWith<_$CreateConsultationPlanInputImpl>
      get copyWith => __$$CreateConsultationPlanInputImplCopyWithImpl<
          _$CreateConsultationPlanInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateConsultationPlanInputImplToJson(
      this,
    );
  }
}

abstract class _CreateConsultationPlanInput
    implements CreateConsultationPlanInput {
  const factory _CreateConsultationPlanInput(
          {required final String title,
          final String? description,
          final double? durationInHours,
          required final int price,
          final String? priceCurrency,
          final String? language,
          final String? level,
          final String? prerequisites,
          final String? materialProvided,
          final List<String>? learningOutcomes,
          required final String consultantProfileId}) =
      _$CreateConsultationPlanInputImpl;

  factory _CreateConsultationPlanInput.fromJson(Map<String, dynamic> json) =
      _$CreateConsultationPlanInputImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  double? get durationInHours;
  @override
  int get price;
  @override
  String? get priceCurrency;
  @override
  String? get language;
  @override
  String? get level;
  @override
  String? get prerequisites;
  @override
  String? get materialProvided;
  @override
  List<String>? get learningOutcomes;
  @override
  String get consultantProfileId;

  /// Create a copy of CreateConsultationPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateConsultationPlanInputImplCopyWith<_$CreateConsultationPlanInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateConsultationPlanInput _$UpdateConsultationPlanInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateConsultationPlanInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateConsultationPlanInput {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get durationInHours => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get priceCurrency => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get prerequisites => throw _privateConstructorUsedError;
  String? get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this UpdateConsultationPlanInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateConsultationPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateConsultationPlanInputCopyWith<UpdateConsultationPlanInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateConsultationPlanInputCopyWith<$Res> {
  factory $UpdateConsultationPlanInputCopyWith(
          UpdateConsultationPlanInput value,
          $Res Function(UpdateConsultationPlanInput) then) =
      _$UpdateConsultationPlanInputCopyWithImpl<$Res,
          UpdateConsultationPlanInput>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      double? durationInHours,
      int? price,
      String? priceCurrency,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      String? consultantProfileId});
}

/// @nodoc
class _$UpdateConsultationPlanInputCopyWithImpl<$Res,
        $Val extends UpdateConsultationPlanInput>
    implements $UpdateConsultationPlanInputCopyWith<$Res> {
  _$UpdateConsultationPlanInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateConsultationPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInHours = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? consultantProfileId = freezed,
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateConsultationPlanInputImplCopyWith<$Res>
    implements $UpdateConsultationPlanInputCopyWith<$Res> {
  factory _$$UpdateConsultationPlanInputImplCopyWith(
          _$UpdateConsultationPlanInputImpl value,
          $Res Function(_$UpdateConsultationPlanInputImpl) then) =
      __$$UpdateConsultationPlanInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      double? durationInHours,
      int? price,
      String? priceCurrency,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      String? consultantProfileId});
}

/// @nodoc
class __$$UpdateConsultationPlanInputImplCopyWithImpl<$Res>
    extends _$UpdateConsultationPlanInputCopyWithImpl<$Res,
        _$UpdateConsultationPlanInputImpl>
    implements _$$UpdateConsultationPlanInputImplCopyWith<$Res> {
  __$$UpdateConsultationPlanInputImplCopyWithImpl(
      _$UpdateConsultationPlanInputImpl _value,
      $Res Function(_$UpdateConsultationPlanInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateConsultationPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInHours = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_$UpdateConsultationPlanInputImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as String?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as String?,
      learningOutcomes: freezed == learningOutcomes
          ? _value._learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateConsultationPlanInputImpl
    implements _UpdateConsultationPlanInput {
  const _$UpdateConsultationPlanInputImpl(
      {this.title,
      this.description,
      this.durationInHours,
      this.price,
      this.priceCurrency,
      this.language,
      this.level,
      this.prerequisites,
      this.materialProvided,
      final List<String>? learningOutcomes,
      this.consultantProfileId})
      : _learningOutcomes = learningOutcomes;

  factory _$UpdateConsultationPlanInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateConsultationPlanInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final double? durationInHours;
  @override
  final int? price;
  @override
  final String? priceCurrency;
  @override
  final String? language;
  @override
  final String? level;
  @override
  final String? prerequisites;
  @override
  final String? materialProvided;
  final List<String>? _learningOutcomes;
  @override
  List<String>? get learningOutcomes {
    final value = _learningOutcomes;
    if (value == null) return null;
    if (_learningOutcomes is EqualUnmodifiableListView)
      return _learningOutcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? consultantProfileId;

  @override
  String toString() {
    return 'UpdateConsultationPlanInput(title: $title, description: $description, durationInHours: $durationInHours, price: $price, priceCurrency: $priceCurrency, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateConsultationPlanInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInHours, durationInHours) ||
                other.durationInHours == durationInHours) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            const DeepCollectionEquality()
                .equals(other._learningOutcomes, _learningOutcomes) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      durationInHours,
      price,
      priceCurrency,
      language,
      level,
      prerequisites,
      materialProvided,
      const DeepCollectionEquality().hash(_learningOutcomes),
      consultantProfileId);

  /// Create a copy of UpdateConsultationPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateConsultationPlanInputImplCopyWith<_$UpdateConsultationPlanInputImpl>
      get copyWith => __$$UpdateConsultationPlanInputImplCopyWithImpl<
          _$UpdateConsultationPlanInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateConsultationPlanInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateConsultationPlanInput
    implements UpdateConsultationPlanInput {
  const factory _UpdateConsultationPlanInput(
      {final String? title,
      final String? description,
      final double? durationInHours,
      final int? price,
      final String? priceCurrency,
      final String? language,
      final String? level,
      final String? prerequisites,
      final String? materialProvided,
      final List<String>? learningOutcomes,
      final String? consultantProfileId}) = _$UpdateConsultationPlanInputImpl;

  factory _UpdateConsultationPlanInput.fromJson(Map<String, dynamic> json) =
      _$UpdateConsultationPlanInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  double? get durationInHours;
  @override
  int? get price;
  @override
  String? get priceCurrency;
  @override
  String? get language;
  @override
  String? get level;
  @override
  String? get prerequisites;
  @override
  String? get materialProvided;
  @override
  List<String>? get learningOutcomes;
  @override
  String? get consultantProfileId;

  /// Create a copy of UpdateConsultationPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateConsultationPlanInputImplCopyWith<_$UpdateConsultationPlanInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationPlanWhereUniqueInput _$ConsultationPlanWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultationPlanWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultationPlanWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ConsultationPlanWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationPlanWhereUniqueInputCopyWith<ConsultationPlanWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationPlanWhereUniqueInputCopyWith<$Res> {
  factory $ConsultationPlanWhereUniqueInputCopyWith(
          ConsultationPlanWhereUniqueInput value,
          $Res Function(ConsultationPlanWhereUniqueInput) then) =
      _$ConsultationPlanWhereUniqueInputCopyWithImpl<$Res,
          ConsultationPlanWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ConsultationPlanWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ConsultationPlanWhereUniqueInput>
    implements $ConsultationPlanWhereUniqueInputCopyWith<$Res> {
  _$ConsultationPlanWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationPlanWhereUniqueInput
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
abstract class _$$ConsultationPlanWhereUniqueInputImplCopyWith<$Res>
    implements $ConsultationPlanWhereUniqueInputCopyWith<$Res> {
  factory _$$ConsultationPlanWhereUniqueInputImplCopyWith(
          _$ConsultationPlanWhereUniqueInputImpl value,
          $Res Function(_$ConsultationPlanWhereUniqueInputImpl) then) =
      __$$ConsultationPlanWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ConsultationPlanWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ConsultationPlanWhereUniqueInputCopyWithImpl<$Res,
        _$ConsultationPlanWhereUniqueInputImpl>
    implements _$$ConsultationPlanWhereUniqueInputImplCopyWith<$Res> {
  __$$ConsultationPlanWhereUniqueInputImplCopyWithImpl(
      _$ConsultationPlanWhereUniqueInputImpl _value,
      $Res Function(_$ConsultationPlanWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ConsultationPlanWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationPlanWhereUniqueInputImpl
    implements _ConsultationPlanWhereUniqueInput {
  const _$ConsultationPlanWhereUniqueInputImpl({this.id});

  factory _$ConsultationPlanWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultationPlanWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ConsultationPlanWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationPlanWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ConsultationPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationPlanWhereUniqueInputImplCopyWith<
          _$ConsultationPlanWhereUniqueInputImpl>
      get copyWith => __$$ConsultationPlanWhereUniqueInputImplCopyWithImpl<
          _$ConsultationPlanWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationPlanWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultationPlanWhereUniqueInput
    implements ConsultationPlanWhereUniqueInput {
  const factory _ConsultationPlanWhereUniqueInput({final String? id}) =
      _$ConsultationPlanWhereUniqueInputImpl;

  factory _ConsultationPlanWhereUniqueInput.fromJson(
          Map<String, dynamic> json) =
      _$ConsultationPlanWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ConsultationPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationPlanWhereUniqueInputImplCopyWith<
          _$ConsultationPlanWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationPlanWhereInput _$ConsultationPlanWhereInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultationPlanWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultationPlanWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  FloatFilter? get durationInHours => throw _privateConstructorUsedError;
  IntFilter? get price => throw _privateConstructorUsedError;
  StringFilter? get priceCurrency => throw _privateConstructorUsedError;
  StringFilter? get language => throw _privateConstructorUsedError;
  StringFilter? get level => throw _privateConstructorUsedError;
  StringFilter? get prerequisites => throw _privateConstructorUsedError;
  StringFilter? get materialProvided => throw _privateConstructorUsedError;
  StringListFilter? get learningOutcomes => throw _privateConstructorUsedError;

  /// Filter by topics relation
  TopicListRelationFilter? get topics => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ConsultationPlanWhereInput>? get AND =>
      throw _privateConstructorUsedError;
  List<ConsultationPlanWhereInput>? get OR =>
      throw _privateConstructorUsedError;
  ConsultationPlanWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ConsultationPlanWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationPlanWhereInputCopyWith<ConsultationPlanWhereInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationPlanWhereInputCopyWith<$Res> {
  factory $ConsultationPlanWhereInputCopyWith(ConsultationPlanWhereInput value,
          $Res Function(ConsultationPlanWhereInput) then) =
      _$ConsultationPlanWhereInputCopyWithImpl<$Res,
          ConsultationPlanWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      FloatFilter? durationInHours,
      IntFilter? price,
      StringFilter? priceCurrency,
      StringFilter? language,
      StringFilter? level,
      StringFilter? prerequisites,
      StringFilter? materialProvided,
      StringListFilter? learningOutcomes,
      TopicListRelationFilter? topics,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultationPlanWhereInput>? AND,
      List<ConsultationPlanWhereInput>? OR,
      ConsultationPlanWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get description;
  $FloatFilterCopyWith<$Res>? get durationInHours;
  $IntFilterCopyWith<$Res>? get price;
  $StringFilterCopyWith<$Res>? get priceCurrency;
  $StringFilterCopyWith<$Res>? get language;
  $StringFilterCopyWith<$Res>? get level;
  $StringFilterCopyWith<$Res>? get prerequisites;
  $StringFilterCopyWith<$Res>? get materialProvided;
  $StringListFilterCopyWith<$Res>? get learningOutcomes;
  $TopicListRelationFilterCopyWith<$Res>? get topics;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ConsultationPlanWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ConsultationPlanWhereInputCopyWithImpl<$Res,
        $Val extends ConsultationPlanWhereInput>
    implements $ConsultationPlanWhereInputCopyWith<$Res> {
  _$ConsultationPlanWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInHours = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? topics = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as TopicListRelationFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
              as List<ConsultationPlanWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultationPlanWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultationPlanWhereInput
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

  /// Create a copy of ConsultationPlanWhereInput
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

  /// Create a copy of ConsultationPlanWhereInput
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

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get durationInHours {
    if (_value.durationInHours == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.durationInHours!, (value) {
      return _then(_value.copyWith(durationInHours: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get priceCurrency {
    if (_value.priceCurrency == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.priceCurrency!, (value) {
      return _then(_value.copyWith(priceCurrency: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get level {
    if (_value.level == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.level!, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get prerequisites {
    if (_value.prerequisites == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.prerequisites!, (value) {
      return _then(_value.copyWith(prerequisites: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get materialProvided {
    if (_value.materialProvided == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.materialProvided!, (value) {
      return _then(_value.copyWith(materialProvided: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringListFilterCopyWith<$Res>? get learningOutcomes {
    if (_value.learningOutcomes == null) {
      return null;
    }

    return $StringListFilterCopyWith<$Res>(_value.learningOutcomes!, (value) {
      return _then(_value.copyWith(learningOutcomes: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopicListRelationFilterCopyWith<$Res>? get topics {
    if (_value.topics == null) {
      return null;
    }

    return $TopicListRelationFilterCopyWith<$Res>(_value.topics!, (value) {
      return _then(_value.copyWith(topics: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile {
    if (_value.consultantProfile == null) {
      return null;
    }

    return $ConsultantProfileRelationFilterCopyWith<$Res>(
        _value.consultantProfile!, (value) {
      return _then(_value.copyWith(consultantProfile: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get consultantProfileId {
    if (_value.consultantProfileId == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.consultantProfileId!, (value) {
      return _then(_value.copyWith(consultantProfileId: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanWhereInput
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

  /// Create a copy of ConsultationPlanWhereInput
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

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ConsultationPlanWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultationPlanWhereInputImplCopyWith<$Res>
    implements $ConsultationPlanWhereInputCopyWith<$Res> {
  factory _$$ConsultationPlanWhereInputImplCopyWith(
          _$ConsultationPlanWhereInputImpl value,
          $Res Function(_$ConsultationPlanWhereInputImpl) then) =
      __$$ConsultationPlanWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      FloatFilter? durationInHours,
      IntFilter? price,
      StringFilter? priceCurrency,
      StringFilter? language,
      StringFilter? level,
      StringFilter? prerequisites,
      StringFilter? materialProvided,
      StringListFilter? learningOutcomes,
      TopicListRelationFilter? topics,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ConsultationPlanWhereInput>? AND,
      List<ConsultationPlanWhereInput>? OR,
      ConsultationPlanWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $FloatFilterCopyWith<$Res>? get durationInHours;
  @override
  $IntFilterCopyWith<$Res>? get price;
  @override
  $StringFilterCopyWith<$Res>? get priceCurrency;
  @override
  $StringFilterCopyWith<$Res>? get language;
  @override
  $StringFilterCopyWith<$Res>? get level;
  @override
  $StringFilterCopyWith<$Res>? get prerequisites;
  @override
  $StringFilterCopyWith<$Res>? get materialProvided;
  @override
  $StringListFilterCopyWith<$Res>? get learningOutcomes;
  @override
  $TopicListRelationFilterCopyWith<$Res>? get topics;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ConsultationPlanWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ConsultationPlanWhereInputImplCopyWithImpl<$Res>
    extends _$ConsultationPlanWhereInputCopyWithImpl<$Res,
        _$ConsultationPlanWhereInputImpl>
    implements _$$ConsultationPlanWhereInputImplCopyWith<$Res> {
  __$$ConsultationPlanWhereInputImplCopyWithImpl(
      _$ConsultationPlanWhereInputImpl _value,
      $Res Function(_$ConsultationPlanWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInHours = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? topics = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ConsultationPlanWhereInputImpl(
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as StringListFilter?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as TopicListRelationFilter?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfileRelationFilter?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
              as List<ConsultationPlanWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ConsultationPlanWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ConsultationPlanWhereInputImpl implements _ConsultationPlanWhereInput {
  const _$ConsultationPlanWhereInputImpl(
      {this.id,
      this.title,
      this.description,
      this.durationInHours,
      this.price,
      this.priceCurrency,
      this.language,
      this.level,
      this.prerequisites,
      this.materialProvided,
      this.learningOutcomes,
      this.topics,
      this.consultantProfile,
      this.consultantProfileId,
      this.createdAt,
      this.updatedAt,
      final List<ConsultationPlanWhereInput>? AND,
      final List<ConsultationPlanWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ConsultationPlanWhereInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultationPlanWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;
  @override
  final StringFilter? description;
  @override
  final FloatFilter? durationInHours;
  @override
  final IntFilter? price;
  @override
  final StringFilter? priceCurrency;
  @override
  final StringFilter? language;
  @override
  final StringFilter? level;
  @override
  final StringFilter? prerequisites;
  @override
  final StringFilter? materialProvided;
  @override
  final StringListFilter? learningOutcomes;

  /// Filter by topics relation
  @override
  final TopicListRelationFilter? topics;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  @override
  final StringFilter? consultantProfileId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ConsultationPlanWhereInput>? _AND;
  @override
  List<ConsultationPlanWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConsultationPlanWhereInput>? _OR;
  @override
  List<ConsultationPlanWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ConsultationPlanWhereInput? NOT;

  @override
  String toString() {
    return 'ConsultationPlanWhereInput(id: $id, title: $title, description: $description, durationInHours: $durationInHours, price: $price, priceCurrency: $priceCurrency, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, topics: $topics, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationPlanWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInHours, durationInHours) ||
                other.durationInHours == durationInHours) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            (identical(other.learningOutcomes, learningOutcomes) ||
                other.learningOutcomes == learningOutcomes) &&
            (identical(other.topics, topics) || other.topics == topics) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
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
        durationInHours,
        price,
        priceCurrency,
        language,
        level,
        prerequisites,
        materialProvided,
        learningOutcomes,
        topics,
        consultantProfile,
        consultantProfileId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationPlanWhereInputImplCopyWith<_$ConsultationPlanWhereInputImpl>
      get copyWith => __$$ConsultationPlanWhereInputImplCopyWithImpl<
          _$ConsultationPlanWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationPlanWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultationPlanWhereInput
    implements ConsultationPlanWhereInput {
  const factory _ConsultationPlanWhereInput(
          {final StringFilter? id,
          final StringFilter? title,
          final StringFilter? description,
          final FloatFilter? durationInHours,
          final IntFilter? price,
          final StringFilter? priceCurrency,
          final StringFilter? language,
          final StringFilter? level,
          final StringFilter? prerequisites,
          final StringFilter? materialProvided,
          final StringListFilter? learningOutcomes,
          final TopicListRelationFilter? topics,
          final ConsultantProfileRelationFilter? consultantProfile,
          final StringFilter? consultantProfileId,
          final DateTimeFilter? createdAt,
          final DateTimeFilter? updatedAt,
          final List<ConsultationPlanWhereInput>? AND,
          final List<ConsultationPlanWhereInput>? OR,
          final ConsultationPlanWhereInput? NOT}) =
      _$ConsultationPlanWhereInputImpl;

  factory _ConsultationPlanWhereInput.fromJson(Map<String, dynamic> json) =
      _$ConsultationPlanWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;
  @override
  StringFilter? get description;
  @override
  FloatFilter? get durationInHours;
  @override
  IntFilter? get price;
  @override
  StringFilter? get priceCurrency;
  @override
  StringFilter? get language;
  @override
  StringFilter? get level;
  @override
  StringFilter? get prerequisites;
  @override
  StringFilter? get materialProvided;
  @override
  StringListFilter? get learningOutcomes;

  /// Filter by topics relation
  @override
  TopicListRelationFilter? get topics;

  /// Filter by consultantProfile relation
  @override
  ConsultantProfileRelationFilter? get consultantProfile;
  @override
  StringFilter? get consultantProfileId;
  @override
  DateTimeFilter? get createdAt;
  @override
  DateTimeFilter? get updatedAt;
  @override
  List<ConsultationPlanWhereInput>? get AND;
  @override
  List<ConsultationPlanWhereInput>? get OR;
  @override
  ConsultationPlanWhereInput? get NOT;

  /// Create a copy of ConsultationPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationPlanWhereInputImplCopyWith<_$ConsultationPlanWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationPlanListRelationFilter _$ConsultationPlanListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultationPlanListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultationPlanListRelationFilter {
  /// At least one related record matches
  ConsultationPlanWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ConsultationPlanWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ConsultationPlanWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ConsultationPlanListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationPlanListRelationFilterCopyWith<
          ConsultationPlanListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationPlanListRelationFilterCopyWith<$Res> {
  factory $ConsultationPlanListRelationFilterCopyWith(
          ConsultationPlanListRelationFilter value,
          $Res Function(ConsultationPlanListRelationFilter) then) =
      _$ConsultationPlanListRelationFilterCopyWithImpl<$Res,
          ConsultationPlanListRelationFilter>;
  @useResult
  $Res call(
      {ConsultationPlanWhereInput? some,
      ConsultationPlanWhereInput? every,
      ConsultationPlanWhereInput? none});

  $ConsultationPlanWhereInputCopyWith<$Res>? get some;
  $ConsultationPlanWhereInputCopyWith<$Res>? get every;
  $ConsultationPlanWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ConsultationPlanListRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultationPlanListRelationFilter>
    implements $ConsultationPlanListRelationFilterCopyWith<$Res> {
  _$ConsultationPlanListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationPlanListRelationFilter
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
              as ConsultationPlanWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultationPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ConsultationPlanWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ConsultationPlanWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ConsultationPlanWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultationPlanListRelationFilterImplCopyWith<$Res>
    implements $ConsultationPlanListRelationFilterCopyWith<$Res> {
  factory _$$ConsultationPlanListRelationFilterImplCopyWith(
          _$ConsultationPlanListRelationFilterImpl value,
          $Res Function(_$ConsultationPlanListRelationFilterImpl) then) =
      __$$ConsultationPlanListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConsultationPlanWhereInput? some,
      ConsultationPlanWhereInput? every,
      ConsultationPlanWhereInput? none});

  @override
  $ConsultationPlanWhereInputCopyWith<$Res>? get some;
  @override
  $ConsultationPlanWhereInputCopyWith<$Res>? get every;
  @override
  $ConsultationPlanWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ConsultationPlanListRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultationPlanListRelationFilterCopyWithImpl<$Res,
        _$ConsultationPlanListRelationFilterImpl>
    implements _$$ConsultationPlanListRelationFilterImplCopyWith<$Res> {
  __$$ConsultationPlanListRelationFilterImplCopyWithImpl(
      _$ConsultationPlanListRelationFilterImpl _value,
      $Res Function(_$ConsultationPlanListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ConsultationPlanListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationPlanListRelationFilterImpl
    implements _ConsultationPlanListRelationFilter {
  const _$ConsultationPlanListRelationFilterImpl(
      {this.some, this.every, this.none});

  factory _$ConsultationPlanListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultationPlanListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ConsultationPlanWhereInput? some;

  /// All related records match
  @override
  final ConsultationPlanWhereInput? every;

  /// No related records match
  @override
  final ConsultationPlanWhereInput? none;

  @override
  String toString() {
    return 'ConsultationPlanListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationPlanListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ConsultationPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationPlanListRelationFilterImplCopyWith<
          _$ConsultationPlanListRelationFilterImpl>
      get copyWith => __$$ConsultationPlanListRelationFilterImplCopyWithImpl<
          _$ConsultationPlanListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationPlanListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultationPlanListRelationFilter
    implements ConsultationPlanListRelationFilter {
  const factory _ConsultationPlanListRelationFilter(
          {final ConsultationPlanWhereInput? some,
          final ConsultationPlanWhereInput? every,
          final ConsultationPlanWhereInput? none}) =
      _$ConsultationPlanListRelationFilterImpl;

  factory _ConsultationPlanListRelationFilter.fromJson(
          Map<String, dynamic> json) =
      _$ConsultationPlanListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ConsultationPlanWhereInput? get some;

  /// All related records match
  @override
  ConsultationPlanWhereInput? get every;

  /// No related records match
  @override
  ConsultationPlanWhereInput? get none;

  /// Create a copy of ConsultationPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationPlanListRelationFilterImplCopyWith<
          _$ConsultationPlanListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationPlanRelationFilter _$ConsultationPlanRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ConsultationPlanRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ConsultationPlanRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ConsultationPlanWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ConsultationPlanWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ConsultationPlanRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationPlanRelationFilterCopyWith<ConsultationPlanRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationPlanRelationFilterCopyWith<$Res> {
  factory $ConsultationPlanRelationFilterCopyWith(
          ConsultationPlanRelationFilter value,
          $Res Function(ConsultationPlanRelationFilter) then) =
      _$ConsultationPlanRelationFilterCopyWithImpl<$Res,
          ConsultationPlanRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultationPlanWhereInput? is_,
      ConsultationPlanWhereInput? isNot});

  $ConsultationPlanWhereInputCopyWith<$Res>? get is_;
  $ConsultationPlanWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ConsultationPlanRelationFilterCopyWithImpl<$Res,
        $Val extends ConsultationPlanRelationFilter>
    implements $ConsultationPlanRelationFilterCopyWith<$Res> {
  _$ConsultationPlanRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationPlanRelationFilter
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
              as ConsultationPlanWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ConsultationPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ConsultationPlanWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ConsultationPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationPlanWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ConsultationPlanWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultationPlanRelationFilterImplCopyWith<$Res>
    implements $ConsultationPlanRelationFilterCopyWith<$Res> {
  factory _$$ConsultationPlanRelationFilterImplCopyWith(
          _$ConsultationPlanRelationFilterImpl value,
          $Res Function(_$ConsultationPlanRelationFilterImpl) then) =
      __$$ConsultationPlanRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ConsultationPlanWhereInput? is_,
      ConsultationPlanWhereInput? isNot});

  @override
  $ConsultationPlanWhereInputCopyWith<$Res>? get is_;
  @override
  $ConsultationPlanWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ConsultationPlanRelationFilterImplCopyWithImpl<$Res>
    extends _$ConsultationPlanRelationFilterCopyWithImpl<$Res,
        _$ConsultationPlanRelationFilterImpl>
    implements _$$ConsultationPlanRelationFilterImplCopyWith<$Res> {
  __$$ConsultationPlanRelationFilterImplCopyWithImpl(
      _$ConsultationPlanRelationFilterImpl _value,
      $Res Function(_$ConsultationPlanRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ConsultationPlanRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ConsultationPlanWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationPlanRelationFilterImpl
    implements _ConsultationPlanRelationFilter {
  const _$ConsultationPlanRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ConsultationPlanRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultationPlanRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ConsultationPlanWhereInput? is_;

  /// Related record does not match
  @override
  final ConsultationPlanWhereInput? isNot;

  @override
  String toString() {
    return 'ConsultationPlanRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationPlanRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ConsultationPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationPlanRelationFilterImplCopyWith<
          _$ConsultationPlanRelationFilterImpl>
      get copyWith => __$$ConsultationPlanRelationFilterImplCopyWithImpl<
          _$ConsultationPlanRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationPlanRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ConsultationPlanRelationFilter
    implements ConsultationPlanRelationFilter {
  const factory _ConsultationPlanRelationFilter(
          {@JsonKey(name: 'is') final ConsultationPlanWhereInput? is_,
          final ConsultationPlanWhereInput? isNot}) =
      _$ConsultationPlanRelationFilterImpl;

  factory _ConsultationPlanRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ConsultationPlanRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ConsultationPlanWhereInput? get is_;

  /// Related record does not match
  @override
  ConsultationPlanWhereInput? get isNot;

  /// Create a copy of ConsultationPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationPlanRelationFilterImplCopyWith<
          _$ConsultationPlanRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationPlanOrderByInput _$ConsultationPlanOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ConsultationPlanOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ConsultationPlanOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get durationInHours => throw _privateConstructorUsedError;
  SortOrder? get price => throw _privateConstructorUsedError;
  SortOrder? get priceCurrency => throw _privateConstructorUsedError;
  SortOrder? get language => throw _privateConstructorUsedError;
  SortOrder? get level => throw _privateConstructorUsedError;
  SortOrder? get prerequisites => throw _privateConstructorUsedError;
  SortOrder? get materialProvided => throw _privateConstructorUsedError;
  SortOrder? get learningOutcomes => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsultationPlanOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationPlanOrderByInputCopyWith<ConsultationPlanOrderByInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationPlanOrderByInputCopyWith<$Res> {
  factory $ConsultationPlanOrderByInputCopyWith(
          ConsultationPlanOrderByInput value,
          $Res Function(ConsultationPlanOrderByInput) then) =
      _$ConsultationPlanOrderByInputCopyWithImpl<$Res,
          ConsultationPlanOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? durationInHours,
      SortOrder? price,
      SortOrder? priceCurrency,
      SortOrder? language,
      SortOrder? level,
      SortOrder? prerequisites,
      SortOrder? materialProvided,
      SortOrder? learningOutcomes,
      SortOrder? consultantProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ConsultationPlanOrderByInputCopyWithImpl<$Res,
        $Val extends ConsultationPlanOrderByInput>
    implements $ConsultationPlanOrderByInputCopyWith<$Res> {
  _$ConsultationPlanOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInHours = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? consultantProfileId = freezed,
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ConsultationPlanOrderByInputImplCopyWith<$Res>
    implements $ConsultationPlanOrderByInputCopyWith<$Res> {
  factory _$$ConsultationPlanOrderByInputImplCopyWith(
          _$ConsultationPlanOrderByInputImpl value,
          $Res Function(_$ConsultationPlanOrderByInputImpl) then) =
      __$$ConsultationPlanOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? durationInHours,
      SortOrder? price,
      SortOrder? priceCurrency,
      SortOrder? language,
      SortOrder? level,
      SortOrder? prerequisites,
      SortOrder? materialProvided,
      SortOrder? learningOutcomes,
      SortOrder? consultantProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ConsultationPlanOrderByInputImplCopyWithImpl<$Res>
    extends _$ConsultationPlanOrderByInputCopyWithImpl<$Res,
        _$ConsultationPlanOrderByInputImpl>
    implements _$$ConsultationPlanOrderByInputImplCopyWith<$Res> {
  __$$ConsultationPlanOrderByInputImplCopyWithImpl(
      _$ConsultationPlanOrderByInputImpl _value,
      $Res Function(_$ConsultationPlanOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? durationInHours = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ConsultationPlanOrderByInputImpl(
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      prerequisites: freezed == prerequisites
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      materialProvided: freezed == materialProvided
          ? _value.materialProvided
          : materialProvided // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      learningOutcomes: freezed == learningOutcomes
          ? _value.learningOutcomes
          : learningOutcomes // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
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
class _$ConsultationPlanOrderByInputImpl
    implements _ConsultationPlanOrderByInput {
  const _$ConsultationPlanOrderByInputImpl(
      {this.id,
      this.title,
      this.description,
      this.durationInHours,
      this.price,
      this.priceCurrency,
      this.language,
      this.level,
      this.prerequisites,
      this.materialProvided,
      this.learningOutcomes,
      this.consultantProfileId,
      this.createdAt,
      this.updatedAt});

  factory _$ConsultationPlanOrderByInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultationPlanOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? title;
  @override
  final SortOrder? description;
  @override
  final SortOrder? durationInHours;
  @override
  final SortOrder? price;
  @override
  final SortOrder? priceCurrency;
  @override
  final SortOrder? language;
  @override
  final SortOrder? level;
  @override
  final SortOrder? prerequisites;
  @override
  final SortOrder? materialProvided;
  @override
  final SortOrder? learningOutcomes;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ConsultationPlanOrderByInput(id: $id, title: $title, description: $description, durationInHours: $durationInHours, price: $price, priceCurrency: $priceCurrency, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationPlanOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationInHours, durationInHours) ||
                other.durationInHours == durationInHours) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            (identical(other.learningOutcomes, learningOutcomes) ||
                other.learningOutcomes == learningOutcomes) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
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
      durationInHours,
      price,
      priceCurrency,
      language,
      level,
      prerequisites,
      materialProvided,
      learningOutcomes,
      consultantProfileId,
      createdAt,
      updatedAt);

  /// Create a copy of ConsultationPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationPlanOrderByInputImplCopyWith<
          _$ConsultationPlanOrderByInputImpl>
      get copyWith => __$$ConsultationPlanOrderByInputImplCopyWithImpl<
          _$ConsultationPlanOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationPlanOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ConsultationPlanOrderByInput
    implements ConsultationPlanOrderByInput {
  const factory _ConsultationPlanOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? description,
      final SortOrder? durationInHours,
      final SortOrder? price,
      final SortOrder? priceCurrency,
      final SortOrder? language,
      final SortOrder? level,
      final SortOrder? prerequisites,
      final SortOrder? materialProvided,
      final SortOrder? learningOutcomes,
      final SortOrder? consultantProfileId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ConsultationPlanOrderByInputImpl;

  factory _ConsultationPlanOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ConsultationPlanOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get title;
  @override
  SortOrder? get description;
  @override
  SortOrder? get durationInHours;
  @override
  SortOrder? get price;
  @override
  SortOrder? get priceCurrency;
  @override
  SortOrder? get language;
  @override
  SortOrder? get level;
  @override
  SortOrder? get prerequisites;
  @override
  SortOrder? get materialProvided;
  @override
  SortOrder? get learningOutcomes;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ConsultationPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationPlanOrderByInputImplCopyWith<
          _$ConsultationPlanOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
