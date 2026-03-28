// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassPlan _$ClassPlanFromJson(Map<String, dynamic> json) {
  return _ClassPlan.fromJson(json);
}

/// @nodoc
mixin _$ClassPlan {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Topic>? get topics => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassContent>? get classContents => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get priceCurrency => throw _privateConstructorUsedError;
  bool get certificateProvided => throw _privateConstructorUsedError;
  bool get recordingEnabled => throw _privateConstructorUsedError;
  RecordingStoragePolicy get recordingStoragePolicy =>
      throw _privateConstructorUsedError;
  int get durationInMonths => throw _privateConstructorUsedError;
  int get meetingsPerWeek => throw _privateConstructorUsedError;
  double get sessionDurationInHours => throw _privateConstructorUsedError;
  int get totalSessions => throw _privateConstructorUsedError;
  double get totalHours => throw _privateConstructorUsedError;
  PlanEmailSupport get emailSupport => throw _privateConstructorUsedError;
  int get maxParticipants => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get prerequisites => throw _privateConstructorUsedError;
  String get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile =>
      throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassModel>? get classes => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<PlanMaterial>? get materials => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassCollaborator>? get collaborators =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ClassPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassPlanCopyWith<ClassPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassPlanCopyWith<$Res> {
  factory $ClassPlanCopyWith(ClassPlan value, $Res Function(ClassPlan) then) =
      _$ClassPlanCopyWithImpl<$Res, ClassPlan>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<Topic>? topics,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassContent>? classContents,
      int price,
      String priceCurrency,
      bool certificateProvided,
      bool recordingEnabled,
      RecordingStoragePolicy recordingStoragePolicy,
      int durationInMonths,
      int meetingsPerWeek,
      double sessionDurationInHours,
      int totalSessions,
      double totalHours,
      PlanEmailSupport emailSupport,
      int maxParticipants,
      String language,
      String level,
      String prerequisites,
      String materialProvided,
      List<String>? learningOutcomes,
      String? imageUrl,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String? consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassModel>? classes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<PlanMaterial>? materials,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassCollaborator>? collaborators,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$ClassPlanCopyWithImpl<$Res, $Val extends ClassPlan>
    implements $ClassPlanCopyWith<$Res> {
  _$ClassPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? topics = freezed,
    Object? classContents = freezed,
    Object? price = null,
    Object? priceCurrency = null,
    Object? certificateProvided = null,
    Object? recordingEnabled = null,
    Object? recordingStoragePolicy = null,
    Object? durationInMonths = null,
    Object? meetingsPerWeek = null,
    Object? sessionDurationInHours = null,
    Object? totalSessions = null,
    Object? totalHours = null,
    Object? emailSupport = null,
    Object? maxParticipants = null,
    Object? language = null,
    Object? level = null,
    Object? prerequisites = null,
    Object? materialProvided = null,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? classes = freezed,
    Object? materials = freezed,
    Object? collaborators = freezed,
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
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>?,
      classContents: freezed == classContents
          ? _value.classContents
          : classContents // ignore: cast_nullable_to_non_nullable
              as List<ClassContent>?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: null == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      certificateProvided: null == certificateProvided
          ? _value.certificateProvided
          : certificateProvided // ignore: cast_nullable_to_non_nullable
              as bool,
      recordingEnabled: null == recordingEnabled
          ? _value.recordingEnabled
          : recordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      recordingStoragePolicy: null == recordingStoragePolicy
          ? _value.recordingStoragePolicy
          : recordingStoragePolicy // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicy,
      durationInMonths: null == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int,
      meetingsPerWeek: null == meetingsPerWeek
          ? _value.meetingsPerWeek
          : meetingsPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      sessionDurationInHours: null == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double,
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      totalHours: null == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double,
      emailSupport: null == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      classes: freezed == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<ClassModel>?,
      materials: freezed == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<PlanMaterial>?,
      collaborators: freezed == collaborators
          ? _value.collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaborator>?,
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

  /// Create a copy of ClassPlan
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
abstract class _$$ClassPlanImplCopyWith<$Res>
    implements $ClassPlanCopyWith<$Res> {
  factory _$$ClassPlanImplCopyWith(
          _$ClassPlanImpl value, $Res Function(_$ClassPlanImpl) then) =
      __$$ClassPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<Topic>? topics,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassContent>? classContents,
      int price,
      String priceCurrency,
      bool certificateProvided,
      bool recordingEnabled,
      RecordingStoragePolicy recordingStoragePolicy,
      int durationInMonths,
      int meetingsPerWeek,
      double sessionDurationInHours,
      int totalSessions,
      double totalHours,
      PlanEmailSupport emailSupport,
      int maxParticipants,
      String language,
      String level,
      String prerequisites,
      String materialProvided,
      List<String>? learningOutcomes,
      String? imageUrl,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ConsultantProfile? consultantProfile,
      String? consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassModel>? classes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<PlanMaterial>? materials,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<ClassCollaborator>? collaborators,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$ClassPlanImplCopyWithImpl<$Res>
    extends _$ClassPlanCopyWithImpl<$Res, _$ClassPlanImpl>
    implements _$$ClassPlanImplCopyWith<$Res> {
  __$$ClassPlanImplCopyWithImpl(
      _$ClassPlanImpl _value, $Res Function(_$ClassPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? topics = freezed,
    Object? classContents = freezed,
    Object? price = null,
    Object? priceCurrency = null,
    Object? certificateProvided = null,
    Object? recordingEnabled = null,
    Object? recordingStoragePolicy = null,
    Object? durationInMonths = null,
    Object? meetingsPerWeek = null,
    Object? sessionDurationInHours = null,
    Object? totalSessions = null,
    Object? totalHours = null,
    Object? emailSupport = null,
    Object? maxParticipants = null,
    Object? language = null,
    Object? level = null,
    Object? prerequisites = null,
    Object? materialProvided = null,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? classes = freezed,
    Object? materials = freezed,
    Object? collaborators = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ClassPlanImpl(
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
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>?,
      classContents: freezed == classContents
          ? _value._classContents
          : classContents // ignore: cast_nullable_to_non_nullable
              as List<ClassContent>?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: null == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      certificateProvided: null == certificateProvided
          ? _value.certificateProvided
          : certificateProvided // ignore: cast_nullable_to_non_nullable
              as bool,
      recordingEnabled: null == recordingEnabled
          ? _value.recordingEnabled
          : recordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      recordingStoragePolicy: null == recordingStoragePolicy
          ? _value.recordingStoragePolicy
          : recordingStoragePolicy // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicy,
      durationInMonths: null == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int,
      meetingsPerWeek: null == meetingsPerWeek
          ? _value.meetingsPerWeek
          : meetingsPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      sessionDurationInHours: null == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double,
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      totalHours: null == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double,
      emailSupport: null == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfile: freezed == consultantProfile
          ? _value.consultantProfile
          : consultantProfile // ignore: cast_nullable_to_non_nullable
              as ConsultantProfile?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
      classes: freezed == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<ClassModel>?,
      materials: freezed == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<PlanMaterial>?,
      collaborators: freezed == collaborators
          ? _value._collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<ClassCollaborator>?,
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
class _$ClassPlanImpl implements _ClassPlan {
  const _$ClassPlanImpl(
      {required this.id,
      required this.title,
      required this.description,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<Topic>? topics,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassContent>? classContents,
      required this.price,
      this.priceCurrency = "INR",
      this.certificateProvided = false,
      this.recordingEnabled = false,
      this.recordingStoragePolicy = RecordingStoragePolicy.streamOnly,
      this.durationInMonths = 1,
      this.meetingsPerWeek = 1,
      this.sessionDurationInHours = 1.0,
      this.totalSessions = 4,
      this.totalHours = 4.0,
      this.emailSupport = PlanEmailSupport.general,
      this.maxParticipants = 1,
      this.language = "English",
      this.level = "Beginner",
      this.prerequisites = "None",
      this.materialProvided = "None",
      final List<String>? learningOutcomes = const <String>[],
      this.imageUrl,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      this.consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassModel>? classes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<PlanMaterial>? materials,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassCollaborator>? collaborators,
      required this.createdAt,
      required this.updatedAt})
      : _topics = topics,
        _classContents = classContents,
        _learningOutcomes = learningOutcomes,
        _classes = classes,
        _materials = materials,
        _collaborators = collaborators;

  factory _$ClassPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassPlanImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
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

  final List<ClassContent>? _classContents;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassContent>? get classContents {
    final value = _classContents;
    if (value == null) return null;
    if (_classContents is EqualUnmodifiableListView) return _classContents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int price;
  @override
  @JsonKey()
  final String priceCurrency;
  @override
  @JsonKey()
  final bool certificateProvided;
  @override
  @JsonKey()
  final bool recordingEnabled;
  @override
  @JsonKey()
  final RecordingStoragePolicy recordingStoragePolicy;
  @override
  @JsonKey()
  final int durationInMonths;
  @override
  @JsonKey()
  final int meetingsPerWeek;
  @override
  @JsonKey()
  final double sessionDurationInHours;
  @override
  @JsonKey()
  final int totalSessions;
  @override
  @JsonKey()
  final double totalHours;
  @override
  @JsonKey()
  final PlanEmailSupport emailSupport;
  @override
  @JsonKey()
  final int maxParticipants;
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

  @override
  final String? imageUrl;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ConsultantProfile? consultantProfile;
  @override
  final String? consultantProfileId;
  final List<ClassModel>? _classes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassModel>? get classes {
    final value = _classes;
    if (value == null) return null;
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PlanMaterial>? _materials;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<PlanMaterial>? get materials {
    final value = _materials;
    if (value == null) return null;
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClassCollaborator>? _collaborators;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassCollaborator>? get collaborators {
    final value = _collaborators;
    if (value == null) return null;
    if (_collaborators is EqualUnmodifiableListView) return _collaborators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ClassPlan(id: $id, title: $title, description: $description, topics: $topics, classContents: $classContents, price: $price, priceCurrency: $priceCurrency, certificateProvided: $certificateProvided, recordingEnabled: $recordingEnabled, recordingStoragePolicy: $recordingStoragePolicy, durationInMonths: $durationInMonths, meetingsPerWeek: $meetingsPerWeek, sessionDurationInHours: $sessionDurationInHours, totalSessions: $totalSessions, totalHours: $totalHours, emailSupport: $emailSupport, maxParticipants: $maxParticipants, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, imageUrl: $imageUrl, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, classes: $classes, materials: $materials, collaborators: $collaborators, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality()
                .equals(other._classContents, _classContents) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.certificateProvided, certificateProvided) ||
                other.certificateProvided == certificateProvided) &&
            (identical(other.recordingEnabled, recordingEnabled) ||
                other.recordingEnabled == recordingEnabled) &&
            (identical(other.recordingStoragePolicy, recordingStoragePolicy) ||
                other.recordingStoragePolicy == recordingStoragePolicy) &&
            (identical(other.durationInMonths, durationInMonths) ||
                other.durationInMonths == durationInMonths) &&
            (identical(other.meetingsPerWeek, meetingsPerWeek) ||
                other.meetingsPerWeek == meetingsPerWeek) &&
            (identical(other.sessionDurationInHours, sessionDurationInHours) ||
                other.sessionDurationInHours == sessionDurationInHours) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.emailSupport, emailSupport) ||
                other.emailSupport == emailSupport) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            const DeepCollectionEquality()
                .equals(other._learningOutcomes, _learningOutcomes) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.consultantProfile, consultantProfile) ||
                other.consultantProfile == consultantProfile) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._collaborators, _collaborators) &&
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
        title,
        description,
        const DeepCollectionEquality().hash(_topics),
        const DeepCollectionEquality().hash(_classContents),
        price,
        priceCurrency,
        certificateProvided,
        recordingEnabled,
        recordingStoragePolicy,
        durationInMonths,
        meetingsPerWeek,
        sessionDurationInHours,
        totalSessions,
        totalHours,
        emailSupport,
        maxParticipants,
        language,
        level,
        prerequisites,
        materialProvided,
        const DeepCollectionEquality().hash(_learningOutcomes),
        imageUrl,
        consultantProfile,
        consultantProfileId,
        const DeepCollectionEquality().hash(_classes),
        const DeepCollectionEquality().hash(_materials),
        const DeepCollectionEquality().hash(_collaborators),
        createdAt,
        updatedAt
      ]);

  /// Create a copy of ClassPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassPlanImplCopyWith<_$ClassPlanImpl> get copyWith =>
      __$$ClassPlanImplCopyWithImpl<_$ClassPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassPlanImplToJson(
      this,
    );
  }
}

abstract class _ClassPlan implements ClassPlan {
  const factory _ClassPlan(
      {required final String id,
      required final String title,
      required final String description,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<Topic>? topics,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassContent>? classContents,
      required final int price,
      final String priceCurrency,
      final bool certificateProvided,
      final bool recordingEnabled,
      final RecordingStoragePolicy recordingStoragePolicy,
      final int durationInMonths,
      final int meetingsPerWeek,
      final double sessionDurationInHours,
      final int totalSessions,
      final double totalHours,
      final PlanEmailSupport emailSupport,
      final int maxParticipants,
      final String language,
      final String level,
      final String prerequisites,
      final String materialProvided,
      final List<String>? learningOutcomes,
      final String? imageUrl,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ConsultantProfile? consultantProfile,
      final String? consultantProfileId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassModel>? classes,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<PlanMaterial>? materials,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<ClassCollaborator>? collaborators,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ClassPlanImpl;

  factory _ClassPlan.fromJson(Map<String, dynamic> json) =
      _$ClassPlanImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Topic>? get topics;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassContent>? get classContents;
  @override
  int get price;
  @override
  String get priceCurrency;
  @override
  bool get certificateProvided;
  @override
  bool get recordingEnabled;
  @override
  RecordingStoragePolicy get recordingStoragePolicy;
  @override
  int get durationInMonths;
  @override
  int get meetingsPerWeek;
  @override
  double get sessionDurationInHours;
  @override
  int get totalSessions;
  @override
  double get totalHours;
  @override
  PlanEmailSupport get emailSupport;
  @override
  int get maxParticipants;
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
  String? get imageUrl;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ConsultantProfile? get consultantProfile;
  @override
  String? get consultantProfileId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassModel>? get classes;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<PlanMaterial>? get materials;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ClassCollaborator>? get collaborators;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of ClassPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassPlanImplCopyWith<_$ClassPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateClassPlanInput _$CreateClassPlanInputFromJson(Map<String, dynamic> json) {
  return _CreateClassPlanInput.fromJson(json);
}

/// @nodoc
mixin _$CreateClassPlanInput {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get priceCurrency => throw _privateConstructorUsedError;
  bool? get certificateProvided => throw _privateConstructorUsedError;
  bool? get recordingEnabled => throw _privateConstructorUsedError;
  RecordingStoragePolicy get recordingStoragePolicy =>
      throw _privateConstructorUsedError;
  int? get durationInMonths => throw _privateConstructorUsedError;
  int? get meetingsPerWeek => throw _privateConstructorUsedError;
  double? get sessionDurationInHours => throw _privateConstructorUsedError;
  int? get totalSessions => throw _privateConstructorUsedError;
  double? get totalHours => throw _privateConstructorUsedError;
  PlanEmailSupport get emailSupport => throw _privateConstructorUsedError;
  int? get maxParticipants => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get prerequisites => throw _privateConstructorUsedError;
  String? get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this CreateClassPlanInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateClassPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateClassPlanInputCopyWith<CreateClassPlanInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClassPlanInputCopyWith<$Res> {
  factory $CreateClassPlanInputCopyWith(CreateClassPlanInput value,
          $Res Function(CreateClassPlanInput) then) =
      _$CreateClassPlanInputCopyWithImpl<$Res, CreateClassPlanInput>;
  @useResult
  $Res call(
      {String title,
      String description,
      int price,
      String? priceCurrency,
      bool? certificateProvided,
      bool? recordingEnabled,
      RecordingStoragePolicy recordingStoragePolicy,
      int? durationInMonths,
      int? meetingsPerWeek,
      double? sessionDurationInHours,
      int? totalSessions,
      double? totalHours,
      PlanEmailSupport emailSupport,
      int? maxParticipants,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      String? imageUrl,
      String? consultantProfileId});
}

/// @nodoc
class _$CreateClassPlanInputCopyWithImpl<$Res,
        $Val extends CreateClassPlanInput>
    implements $CreateClassPlanInputCopyWith<$Res> {
  _$CreateClassPlanInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateClassPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? recordingStoragePolicy = null,
    Object? durationInMonths = freezed,
    Object? meetingsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = null,
    Object? maxParticipants = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfileId = freezed,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      certificateProvided: freezed == certificateProvided
          ? _value.certificateProvided
          : certificateProvided // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingEnabled: freezed == recordingEnabled
          ? _value.recordingEnabled
          : recordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingStoragePolicy: null == recordingStoragePolicy
          ? _value.recordingStoragePolicy
          : recordingStoragePolicy // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicy,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      meetingsPerWeek: freezed == meetingsPerWeek
          ? _value.meetingsPerWeek
          : meetingsPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double?,
      emailSupport: null == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport,
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateClassPlanInputImplCopyWith<$Res>
    implements $CreateClassPlanInputCopyWith<$Res> {
  factory _$$CreateClassPlanInputImplCopyWith(_$CreateClassPlanInputImpl value,
          $Res Function(_$CreateClassPlanInputImpl) then) =
      __$$CreateClassPlanInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      int price,
      String? priceCurrency,
      bool? certificateProvided,
      bool? recordingEnabled,
      RecordingStoragePolicy recordingStoragePolicy,
      int? durationInMonths,
      int? meetingsPerWeek,
      double? sessionDurationInHours,
      int? totalSessions,
      double? totalHours,
      PlanEmailSupport emailSupport,
      int? maxParticipants,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      String? imageUrl,
      String? consultantProfileId});
}

/// @nodoc
class __$$CreateClassPlanInputImplCopyWithImpl<$Res>
    extends _$CreateClassPlanInputCopyWithImpl<$Res, _$CreateClassPlanInputImpl>
    implements _$$CreateClassPlanInputImplCopyWith<$Res> {
  __$$CreateClassPlanInputImplCopyWithImpl(_$CreateClassPlanInputImpl _value,
      $Res Function(_$CreateClassPlanInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateClassPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? recordingStoragePolicy = null,
    Object? durationInMonths = freezed,
    Object? meetingsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = null,
    Object? maxParticipants = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_$CreateClassPlanInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      certificateProvided: freezed == certificateProvided
          ? _value.certificateProvided
          : certificateProvided // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingEnabled: freezed == recordingEnabled
          ? _value.recordingEnabled
          : recordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingStoragePolicy: null == recordingStoragePolicy
          ? _value.recordingStoragePolicy
          : recordingStoragePolicy // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicy,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      meetingsPerWeek: freezed == meetingsPerWeek
          ? _value.meetingsPerWeek
          : meetingsPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double?,
      emailSupport: null == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport,
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateClassPlanInputImpl implements _CreateClassPlanInput {
  const _$CreateClassPlanInputImpl(
      {required this.title,
      required this.description,
      required this.price,
      this.priceCurrency = "INR",
      this.certificateProvided = false,
      this.recordingEnabled = false,
      this.recordingStoragePolicy = RecordingStoragePolicy.streamOnly,
      this.durationInMonths = 1,
      this.meetingsPerWeek = 1,
      this.sessionDurationInHours = 1.0,
      this.totalSessions = 4,
      this.totalHours = 4.0,
      this.emailSupport = PlanEmailSupport.general,
      this.maxParticipants = 1,
      this.language = "English",
      this.level = "Beginner",
      this.prerequisites = "None",
      this.materialProvided = "None",
      final List<String>? learningOutcomes = const <String>[],
      this.imageUrl,
      this.consultantProfileId})
      : _learningOutcomes = learningOutcomes;

  factory _$CreateClassPlanInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateClassPlanInputImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final int price;
  @override
  @JsonKey()
  final String? priceCurrency;
  @override
  @JsonKey()
  final bool? certificateProvided;
  @override
  @JsonKey()
  final bool? recordingEnabled;
  @override
  @JsonKey()
  final RecordingStoragePolicy recordingStoragePolicy;
  @override
  @JsonKey()
  final int? durationInMonths;
  @override
  @JsonKey()
  final int? meetingsPerWeek;
  @override
  @JsonKey()
  final double? sessionDurationInHours;
  @override
  @JsonKey()
  final int? totalSessions;
  @override
  @JsonKey()
  final double? totalHours;
  @override
  @JsonKey()
  final PlanEmailSupport emailSupport;
  @override
  @JsonKey()
  final int? maxParticipants;
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
  final String? imageUrl;
  @override
  final String? consultantProfileId;

  @override
  String toString() {
    return 'CreateClassPlanInput(title: $title, description: $description, price: $price, priceCurrency: $priceCurrency, certificateProvided: $certificateProvided, recordingEnabled: $recordingEnabled, recordingStoragePolicy: $recordingStoragePolicy, durationInMonths: $durationInMonths, meetingsPerWeek: $meetingsPerWeek, sessionDurationInHours: $sessionDurationInHours, totalSessions: $totalSessions, totalHours: $totalHours, emailSupport: $emailSupport, maxParticipants: $maxParticipants, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, imageUrl: $imageUrl, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateClassPlanInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.certificateProvided, certificateProvided) ||
                other.certificateProvided == certificateProvided) &&
            (identical(other.recordingEnabled, recordingEnabled) ||
                other.recordingEnabled == recordingEnabled) &&
            (identical(other.recordingStoragePolicy, recordingStoragePolicy) ||
                other.recordingStoragePolicy == recordingStoragePolicy) &&
            (identical(other.durationInMonths, durationInMonths) ||
                other.durationInMonths == durationInMonths) &&
            (identical(other.meetingsPerWeek, meetingsPerWeek) ||
                other.meetingsPerWeek == meetingsPerWeek) &&
            (identical(other.sessionDurationInHours, sessionDurationInHours) ||
                other.sessionDurationInHours == sessionDurationInHours) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.emailSupport, emailSupport) ||
                other.emailSupport == emailSupport) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            const DeepCollectionEquality()
                .equals(other._learningOutcomes, _learningOutcomes) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        description,
        price,
        priceCurrency,
        certificateProvided,
        recordingEnabled,
        recordingStoragePolicy,
        durationInMonths,
        meetingsPerWeek,
        sessionDurationInHours,
        totalSessions,
        totalHours,
        emailSupport,
        maxParticipants,
        language,
        level,
        prerequisites,
        materialProvided,
        const DeepCollectionEquality().hash(_learningOutcomes),
        imageUrl,
        consultantProfileId
      ]);

  /// Create a copy of CreateClassPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateClassPlanInputImplCopyWith<_$CreateClassPlanInputImpl>
      get copyWith =>
          __$$CreateClassPlanInputImplCopyWithImpl<_$CreateClassPlanInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateClassPlanInputImplToJson(
      this,
    );
  }
}

abstract class _CreateClassPlanInput implements CreateClassPlanInput {
  const factory _CreateClassPlanInput(
      {required final String title,
      required final String description,
      required final int price,
      final String? priceCurrency,
      final bool? certificateProvided,
      final bool? recordingEnabled,
      final RecordingStoragePolicy recordingStoragePolicy,
      final int? durationInMonths,
      final int? meetingsPerWeek,
      final double? sessionDurationInHours,
      final int? totalSessions,
      final double? totalHours,
      final PlanEmailSupport emailSupport,
      final int? maxParticipants,
      final String? language,
      final String? level,
      final String? prerequisites,
      final String? materialProvided,
      final List<String>? learningOutcomes,
      final String? imageUrl,
      final String? consultantProfileId}) = _$CreateClassPlanInputImpl;

  factory _CreateClassPlanInput.fromJson(Map<String, dynamic> json) =
      _$CreateClassPlanInputImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int get price;
  @override
  String? get priceCurrency;
  @override
  bool? get certificateProvided;
  @override
  bool? get recordingEnabled;
  @override
  RecordingStoragePolicy get recordingStoragePolicy;
  @override
  int? get durationInMonths;
  @override
  int? get meetingsPerWeek;
  @override
  double? get sessionDurationInHours;
  @override
  int? get totalSessions;
  @override
  double? get totalHours;
  @override
  PlanEmailSupport get emailSupport;
  @override
  int? get maxParticipants;
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
  String? get imageUrl;
  @override
  String? get consultantProfileId;

  /// Create a copy of CreateClassPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateClassPlanInputImplCopyWith<_$CreateClassPlanInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateClassPlanInput _$UpdateClassPlanInputFromJson(Map<String, dynamic> json) {
  return _UpdateClassPlanInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateClassPlanInput {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get priceCurrency => throw _privateConstructorUsedError;
  bool? get certificateProvided => throw _privateConstructorUsedError;
  bool? get recordingEnabled => throw _privateConstructorUsedError;
  RecordingStoragePolicy? get recordingStoragePolicy =>
      throw _privateConstructorUsedError;
  int? get durationInMonths => throw _privateConstructorUsedError;
  int? get meetingsPerWeek => throw _privateConstructorUsedError;
  double? get sessionDurationInHours => throw _privateConstructorUsedError;
  int? get totalSessions => throw _privateConstructorUsedError;
  double? get totalHours => throw _privateConstructorUsedError;
  PlanEmailSupport? get emailSupport => throw _privateConstructorUsedError;
  int? get maxParticipants => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get prerequisites => throw _privateConstructorUsedError;
  String? get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this UpdateClassPlanInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateClassPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateClassPlanInputCopyWith<UpdateClassPlanInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateClassPlanInputCopyWith<$Res> {
  factory $UpdateClassPlanInputCopyWith(UpdateClassPlanInput value,
          $Res Function(UpdateClassPlanInput) then) =
      _$UpdateClassPlanInputCopyWithImpl<$Res, UpdateClassPlanInput>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      int? price,
      String? priceCurrency,
      bool? certificateProvided,
      bool? recordingEnabled,
      RecordingStoragePolicy? recordingStoragePolicy,
      int? durationInMonths,
      int? meetingsPerWeek,
      double? sessionDurationInHours,
      int? totalSessions,
      double? totalHours,
      PlanEmailSupport? emailSupport,
      int? maxParticipants,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      String? imageUrl,
      String? consultantProfileId});
}

/// @nodoc
class _$UpdateClassPlanInputCopyWithImpl<$Res,
        $Val extends UpdateClassPlanInput>
    implements $UpdateClassPlanInputCopyWith<$Res> {
  _$UpdateClassPlanInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateClassPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? recordingStoragePolicy = freezed,
    Object? durationInMonths = freezed,
    Object? meetingsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = freezed,
    Object? maxParticipants = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      certificateProvided: freezed == certificateProvided
          ? _value.certificateProvided
          : certificateProvided // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingEnabled: freezed == recordingEnabled
          ? _value.recordingEnabled
          : recordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingStoragePolicy: freezed == recordingStoragePolicy
          ? _value.recordingStoragePolicy
          : recordingStoragePolicy // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicy?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      meetingsPerWeek: freezed == meetingsPerWeek
          ? _value.meetingsPerWeek
          : meetingsPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double?,
      emailSupport: freezed == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport?,
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateClassPlanInputImplCopyWith<$Res>
    implements $UpdateClassPlanInputCopyWith<$Res> {
  factory _$$UpdateClassPlanInputImplCopyWith(_$UpdateClassPlanInputImpl value,
          $Res Function(_$UpdateClassPlanInputImpl) then) =
      __$$UpdateClassPlanInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      int? price,
      String? priceCurrency,
      bool? certificateProvided,
      bool? recordingEnabled,
      RecordingStoragePolicy? recordingStoragePolicy,
      int? durationInMonths,
      int? meetingsPerWeek,
      double? sessionDurationInHours,
      int? totalSessions,
      double? totalHours,
      PlanEmailSupport? emailSupport,
      int? maxParticipants,
      String? language,
      String? level,
      String? prerequisites,
      String? materialProvided,
      List<String>? learningOutcomes,
      String? imageUrl,
      String? consultantProfileId});
}

/// @nodoc
class __$$UpdateClassPlanInputImplCopyWithImpl<$Res>
    extends _$UpdateClassPlanInputCopyWithImpl<$Res, _$UpdateClassPlanInputImpl>
    implements _$$UpdateClassPlanInputImplCopyWith<$Res> {
  __$$UpdateClassPlanInputImplCopyWithImpl(_$UpdateClassPlanInputImpl _value,
      $Res Function(_$UpdateClassPlanInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateClassPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? recordingStoragePolicy = freezed,
    Object? durationInMonths = freezed,
    Object? meetingsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = freezed,
    Object? maxParticipants = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_$UpdateClassPlanInputImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      certificateProvided: freezed == certificateProvided
          ? _value.certificateProvided
          : certificateProvided // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingEnabled: freezed == recordingEnabled
          ? _value.recordingEnabled
          : recordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      recordingStoragePolicy: freezed == recordingStoragePolicy
          ? _value.recordingStoragePolicy
          : recordingStoragePolicy // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicy?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      meetingsPerWeek: freezed == meetingsPerWeek
          ? _value.meetingsPerWeek
          : meetingsPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as double?,
      emailSupport: freezed == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupport?,
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      consultantProfileId: freezed == consultantProfileId
          ? _value.consultantProfileId
          : consultantProfileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateClassPlanInputImpl implements _UpdateClassPlanInput {
  const _$UpdateClassPlanInputImpl(
      {this.title,
      this.description,
      this.price,
      this.priceCurrency,
      this.certificateProvided,
      this.recordingEnabled,
      this.recordingStoragePolicy,
      this.durationInMonths,
      this.meetingsPerWeek,
      this.sessionDurationInHours,
      this.totalSessions,
      this.totalHours,
      this.emailSupport,
      this.maxParticipants,
      this.language,
      this.level,
      this.prerequisites,
      this.materialProvided,
      final List<String>? learningOutcomes,
      this.imageUrl,
      this.consultantProfileId})
      : _learningOutcomes = learningOutcomes;

  factory _$UpdateClassPlanInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateClassPlanInputImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? price;
  @override
  final String? priceCurrency;
  @override
  final bool? certificateProvided;
  @override
  final bool? recordingEnabled;
  @override
  final RecordingStoragePolicy? recordingStoragePolicy;
  @override
  final int? durationInMonths;
  @override
  final int? meetingsPerWeek;
  @override
  final double? sessionDurationInHours;
  @override
  final int? totalSessions;
  @override
  final double? totalHours;
  @override
  final PlanEmailSupport? emailSupport;
  @override
  final int? maxParticipants;
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
  final String? imageUrl;
  @override
  final String? consultantProfileId;

  @override
  String toString() {
    return 'UpdateClassPlanInput(title: $title, description: $description, price: $price, priceCurrency: $priceCurrency, certificateProvided: $certificateProvided, recordingEnabled: $recordingEnabled, recordingStoragePolicy: $recordingStoragePolicy, durationInMonths: $durationInMonths, meetingsPerWeek: $meetingsPerWeek, sessionDurationInHours: $sessionDurationInHours, totalSessions: $totalSessions, totalHours: $totalHours, emailSupport: $emailSupport, maxParticipants: $maxParticipants, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, imageUrl: $imageUrl, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateClassPlanInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.certificateProvided, certificateProvided) ||
                other.certificateProvided == certificateProvided) &&
            (identical(other.recordingEnabled, recordingEnabled) ||
                other.recordingEnabled == recordingEnabled) &&
            (identical(other.recordingStoragePolicy, recordingStoragePolicy) ||
                other.recordingStoragePolicy == recordingStoragePolicy) &&
            (identical(other.durationInMonths, durationInMonths) ||
                other.durationInMonths == durationInMonths) &&
            (identical(other.meetingsPerWeek, meetingsPerWeek) ||
                other.meetingsPerWeek == meetingsPerWeek) &&
            (identical(other.sessionDurationInHours, sessionDurationInHours) ||
                other.sessionDurationInHours == sessionDurationInHours) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.emailSupport, emailSupport) ||
                other.emailSupport == emailSupport) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            const DeepCollectionEquality()
                .equals(other._learningOutcomes, _learningOutcomes) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        description,
        price,
        priceCurrency,
        certificateProvided,
        recordingEnabled,
        recordingStoragePolicy,
        durationInMonths,
        meetingsPerWeek,
        sessionDurationInHours,
        totalSessions,
        totalHours,
        emailSupport,
        maxParticipants,
        language,
        level,
        prerequisites,
        materialProvided,
        const DeepCollectionEquality().hash(_learningOutcomes),
        imageUrl,
        consultantProfileId
      ]);

  /// Create a copy of UpdateClassPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateClassPlanInputImplCopyWith<_$UpdateClassPlanInputImpl>
      get copyWith =>
          __$$UpdateClassPlanInputImplCopyWithImpl<_$UpdateClassPlanInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateClassPlanInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateClassPlanInput implements UpdateClassPlanInput {
  const factory _UpdateClassPlanInput(
      {final String? title,
      final String? description,
      final int? price,
      final String? priceCurrency,
      final bool? certificateProvided,
      final bool? recordingEnabled,
      final RecordingStoragePolicy? recordingStoragePolicy,
      final int? durationInMonths,
      final int? meetingsPerWeek,
      final double? sessionDurationInHours,
      final int? totalSessions,
      final double? totalHours,
      final PlanEmailSupport? emailSupport,
      final int? maxParticipants,
      final String? language,
      final String? level,
      final String? prerequisites,
      final String? materialProvided,
      final List<String>? learningOutcomes,
      final String? imageUrl,
      final String? consultantProfileId}) = _$UpdateClassPlanInputImpl;

  factory _UpdateClassPlanInput.fromJson(Map<String, dynamic> json) =
      _$UpdateClassPlanInputImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get price;
  @override
  String? get priceCurrency;
  @override
  bool? get certificateProvided;
  @override
  bool? get recordingEnabled;
  @override
  RecordingStoragePolicy? get recordingStoragePolicy;
  @override
  int? get durationInMonths;
  @override
  int? get meetingsPerWeek;
  @override
  double? get sessionDurationInHours;
  @override
  int? get totalSessions;
  @override
  double? get totalHours;
  @override
  PlanEmailSupport? get emailSupport;
  @override
  int? get maxParticipants;
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
  String? get imageUrl;
  @override
  String? get consultantProfileId;

  /// Create a copy of UpdateClassPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateClassPlanInputImplCopyWith<_$UpdateClassPlanInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassPlanWhereUniqueInput _$ClassPlanWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _ClassPlanWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$ClassPlanWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this ClassPlanWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassPlanWhereUniqueInputCopyWith<ClassPlanWhereUniqueInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassPlanWhereUniqueInputCopyWith<$Res> {
  factory $ClassPlanWhereUniqueInputCopyWith(ClassPlanWhereUniqueInput value,
          $Res Function(ClassPlanWhereUniqueInput) then) =
      _$ClassPlanWhereUniqueInputCopyWithImpl<$Res, ClassPlanWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$ClassPlanWhereUniqueInputCopyWithImpl<$Res,
        $Val extends ClassPlanWhereUniqueInput>
    implements $ClassPlanWhereUniqueInputCopyWith<$Res> {
  _$ClassPlanWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassPlanWhereUniqueInput
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
abstract class _$$ClassPlanWhereUniqueInputImplCopyWith<$Res>
    implements $ClassPlanWhereUniqueInputCopyWith<$Res> {
  factory _$$ClassPlanWhereUniqueInputImplCopyWith(
          _$ClassPlanWhereUniqueInputImpl value,
          $Res Function(_$ClassPlanWhereUniqueInputImpl) then) =
      __$$ClassPlanWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$ClassPlanWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$ClassPlanWhereUniqueInputCopyWithImpl<$Res,
        _$ClassPlanWhereUniqueInputImpl>
    implements _$$ClassPlanWhereUniqueInputImplCopyWith<$Res> {
  __$$ClassPlanWhereUniqueInputImplCopyWithImpl(
      _$ClassPlanWhereUniqueInputImpl _value,
      $Res Function(_$ClassPlanWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ClassPlanWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassPlanWhereUniqueInputImpl implements _ClassPlanWhereUniqueInput {
  const _$ClassPlanWhereUniqueInputImpl({this.id});

  factory _$ClassPlanWhereUniqueInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassPlanWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'ClassPlanWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassPlanWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ClassPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassPlanWhereUniqueInputImplCopyWith<_$ClassPlanWhereUniqueInputImpl>
      get copyWith => __$$ClassPlanWhereUniqueInputImplCopyWithImpl<
          _$ClassPlanWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassPlanWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _ClassPlanWhereUniqueInput implements ClassPlanWhereUniqueInput {
  const factory _ClassPlanWhereUniqueInput({final String? id}) =
      _$ClassPlanWhereUniqueInputImpl;

  factory _ClassPlanWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$ClassPlanWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of ClassPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassPlanWhereUniqueInputImplCopyWith<_$ClassPlanWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassPlanWhereInput _$ClassPlanWhereInputFromJson(Map<String, dynamic> json) {
  return _ClassPlanWhereInput.fromJson(json);
}

/// @nodoc
mixin _$ClassPlanWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;

  /// Filter by topics relation
  TopicListRelationFilter? get topics => throw _privateConstructorUsedError;
  IntFilter? get price => throw _privateConstructorUsedError;
  StringFilter? get priceCurrency => throw _privateConstructorUsedError;
  BooleanFilter? get certificateProvided => throw _privateConstructorUsedError;
  BooleanFilter? get recordingEnabled => throw _privateConstructorUsedError;
  RecordingStoragePolicyFilter? get recordingStoragePolicy =>
      throw _privateConstructorUsedError;
  IntFilter? get durationInMonths => throw _privateConstructorUsedError;
  IntFilter? get meetingsPerWeek => throw _privateConstructorUsedError;
  FloatFilter? get sessionDurationInHours => throw _privateConstructorUsedError;
  IntFilter? get totalSessions => throw _privateConstructorUsedError;
  FloatFilter? get totalHours => throw _privateConstructorUsedError;
  PlanEmailSupportFilter? get emailSupport =>
      throw _privateConstructorUsedError;
  IntFilter? get maxParticipants => throw _privateConstructorUsedError;
  StringFilter? get language => throw _privateConstructorUsedError;
  StringFilter? get level => throw _privateConstructorUsedError;
  StringFilter? get prerequisites => throw _privateConstructorUsedError;
  StringFilter? get materialProvided => throw _privateConstructorUsedError;
  StringListFilter? get learningOutcomes => throw _privateConstructorUsedError;
  StringFilter? get imageUrl => throw _privateConstructorUsedError;

  /// Filter by consultantProfile relation
  ConsultantProfileRelationFilter? get consultantProfile =>
      throw _privateConstructorUsedError;
  StringFilter? get consultantProfileId => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  DateTimeFilter? get updatedAt => throw _privateConstructorUsedError;
  List<ClassPlanWhereInput>? get AND => throw _privateConstructorUsedError;
  List<ClassPlanWhereInput>? get OR => throw _privateConstructorUsedError;
  ClassPlanWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this ClassPlanWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassPlanWhereInputCopyWith<ClassPlanWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassPlanWhereInputCopyWith<$Res> {
  factory $ClassPlanWhereInputCopyWith(
          ClassPlanWhereInput value, $Res Function(ClassPlanWhereInput) then) =
      _$ClassPlanWhereInputCopyWithImpl<$Res, ClassPlanWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      TopicListRelationFilter? topics,
      IntFilter? price,
      StringFilter? priceCurrency,
      BooleanFilter? certificateProvided,
      BooleanFilter? recordingEnabled,
      RecordingStoragePolicyFilter? recordingStoragePolicy,
      IntFilter? durationInMonths,
      IntFilter? meetingsPerWeek,
      FloatFilter? sessionDurationInHours,
      IntFilter? totalSessions,
      FloatFilter? totalHours,
      PlanEmailSupportFilter? emailSupport,
      IntFilter? maxParticipants,
      StringFilter? language,
      StringFilter? level,
      StringFilter? prerequisites,
      StringFilter? materialProvided,
      StringListFilter? learningOutcomes,
      StringFilter? imageUrl,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ClassPlanWhereInput>? AND,
      List<ClassPlanWhereInput>? OR,
      ClassPlanWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $StringFilterCopyWith<$Res>? get description;
  $TopicListRelationFilterCopyWith<$Res>? get topics;
  $IntFilterCopyWith<$Res>? get price;
  $StringFilterCopyWith<$Res>? get priceCurrency;
  $BooleanFilterCopyWith<$Res>? get certificateProvided;
  $BooleanFilterCopyWith<$Res>? get recordingEnabled;
  $RecordingStoragePolicyFilterCopyWith<$Res>? get recordingStoragePolicy;
  $IntFilterCopyWith<$Res>? get durationInMonths;
  $IntFilterCopyWith<$Res>? get meetingsPerWeek;
  $FloatFilterCopyWith<$Res>? get sessionDurationInHours;
  $IntFilterCopyWith<$Res>? get totalSessions;
  $FloatFilterCopyWith<$Res>? get totalHours;
  $PlanEmailSupportFilterCopyWith<$Res>? get emailSupport;
  $IntFilterCopyWith<$Res>? get maxParticipants;
  $StringFilterCopyWith<$Res>? get language;
  $StringFilterCopyWith<$Res>? get level;
  $StringFilterCopyWith<$Res>? get prerequisites;
  $StringFilterCopyWith<$Res>? get materialProvided;
  $StringListFilterCopyWith<$Res>? get learningOutcomes;
  $StringFilterCopyWith<$Res>? get imageUrl;
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  $ClassPlanWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$ClassPlanWhereInputCopyWithImpl<$Res, $Val extends ClassPlanWhereInput>
    implements $ClassPlanWhereInputCopyWith<$Res> {
  _$ClassPlanWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? topics = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? recordingStoragePolicy = freezed,
    Object? durationInMonths = freezed,
    Object? meetingsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = freezed,
    Object? maxParticipants = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
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
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as TopicListRelationFilter?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      certificateProvided: freezed == certificateProvided
          ? _value.certificateProvided
          : certificateProvided // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      recordingEnabled: freezed == recordingEnabled
          ? _value.recordingEnabled
          : recordingEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      recordingStoragePolicy: freezed == recordingStoragePolicy
          ? _value.recordingStoragePolicy
          : recordingStoragePolicy // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicyFilter?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      meetingsPerWeek: freezed == meetingsPerWeek
          ? _value.meetingsPerWeek
          : meetingsPerWeek // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      emailSupport: freezed == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupportFilter?,
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
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
              as List<ClassPlanWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ClassPlanWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ClassPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get certificateProvided {
    if (_value.certificateProvided == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.certificateProvided!, (value) {
      return _then(_value.copyWith(certificateProvided: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanFilterCopyWith<$Res>? get recordingEnabled {
    if (_value.recordingEnabled == null) {
      return null;
    }

    return $BooleanFilterCopyWith<$Res>(_value.recordingEnabled!, (value) {
      return _then(_value.copyWith(recordingEnabled: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordingStoragePolicyFilterCopyWith<$Res>? get recordingStoragePolicy {
    if (_value.recordingStoragePolicy == null) {
      return null;
    }

    return $RecordingStoragePolicyFilterCopyWith<$Res>(
        _value.recordingStoragePolicy!, (value) {
      return _then(_value.copyWith(recordingStoragePolicy: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get durationInMonths {
    if (_value.durationInMonths == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.durationInMonths!, (value) {
      return _then(_value.copyWith(durationInMonths: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get meetingsPerWeek {
    if (_value.meetingsPerWeek == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.meetingsPerWeek!, (value) {
      return _then(_value.copyWith(meetingsPerWeek: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get sessionDurationInHours {
    if (_value.sessionDurationInHours == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.sessionDurationInHours!, (value) {
      return _then(_value.copyWith(sessionDurationInHours: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get totalSessions {
    if (_value.totalSessions == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.totalSessions!, (value) {
      return _then(_value.copyWith(totalSessions: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FloatFilterCopyWith<$Res>? get totalHours {
    if (_value.totalHours == null) {
      return null;
    }

    return $FloatFilterCopyWith<$Res>(_value.totalHours!, (value) {
      return _then(_value.copyWith(totalHours: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanEmailSupportFilterCopyWith<$Res>? get emailSupport {
    if (_value.emailSupport == null) {
      return null;
    }

    return $PlanEmailSupportFilterCopyWith<$Res>(_value.emailSupport!, (value) {
      return _then(_value.copyWith(emailSupport: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntFilterCopyWith<$Res>? get maxParticipants {
    if (_value.maxParticipants == null) {
      return null;
    }

    return $IntFilterCopyWith<$Res>(_value.maxParticipants!, (value) {
      return _then(_value.copyWith(maxParticipants: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringFilterCopyWith<$Res>? get imageUrl {
    if (_value.imageUrl == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.imageUrl!, (value) {
      return _then(_value.copyWith(imageUrl: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
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

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $ClassPlanWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassPlanWhereInputImplCopyWith<$Res>
    implements $ClassPlanWhereInputCopyWith<$Res> {
  factory _$$ClassPlanWhereInputImplCopyWith(_$ClassPlanWhereInputImpl value,
          $Res Function(_$ClassPlanWhereInputImpl) then) =
      __$$ClassPlanWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      StringFilter? description,
      TopicListRelationFilter? topics,
      IntFilter? price,
      StringFilter? priceCurrency,
      BooleanFilter? certificateProvided,
      BooleanFilter? recordingEnabled,
      RecordingStoragePolicyFilter? recordingStoragePolicy,
      IntFilter? durationInMonths,
      IntFilter? meetingsPerWeek,
      FloatFilter? sessionDurationInHours,
      IntFilter? totalSessions,
      FloatFilter? totalHours,
      PlanEmailSupportFilter? emailSupport,
      IntFilter? maxParticipants,
      StringFilter? language,
      StringFilter? level,
      StringFilter? prerequisites,
      StringFilter? materialProvided,
      StringListFilter? learningOutcomes,
      StringFilter? imageUrl,
      ConsultantProfileRelationFilter? consultantProfile,
      StringFilter? consultantProfileId,
      DateTimeFilter? createdAt,
      DateTimeFilter? updatedAt,
      List<ClassPlanWhereInput>? AND,
      List<ClassPlanWhereInput>? OR,
      ClassPlanWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $StringFilterCopyWith<$Res>? get description;
  @override
  $TopicListRelationFilterCopyWith<$Res>? get topics;
  @override
  $IntFilterCopyWith<$Res>? get price;
  @override
  $StringFilterCopyWith<$Res>? get priceCurrency;
  @override
  $BooleanFilterCopyWith<$Res>? get certificateProvided;
  @override
  $BooleanFilterCopyWith<$Res>? get recordingEnabled;
  @override
  $RecordingStoragePolicyFilterCopyWith<$Res>? get recordingStoragePolicy;
  @override
  $IntFilterCopyWith<$Res>? get durationInMonths;
  @override
  $IntFilterCopyWith<$Res>? get meetingsPerWeek;
  @override
  $FloatFilterCopyWith<$Res>? get sessionDurationInHours;
  @override
  $IntFilterCopyWith<$Res>? get totalSessions;
  @override
  $FloatFilterCopyWith<$Res>? get totalHours;
  @override
  $PlanEmailSupportFilterCopyWith<$Res>? get emailSupport;
  @override
  $IntFilterCopyWith<$Res>? get maxParticipants;
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
  $StringFilterCopyWith<$Res>? get imageUrl;
  @override
  $ConsultantProfileRelationFilterCopyWith<$Res>? get consultantProfile;
  @override
  $StringFilterCopyWith<$Res>? get consultantProfileId;
  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $DateTimeFilterCopyWith<$Res>? get updatedAt;
  @override
  $ClassPlanWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$ClassPlanWhereInputImplCopyWithImpl<$Res>
    extends _$ClassPlanWhereInputCopyWithImpl<$Res, _$ClassPlanWhereInputImpl>
    implements _$$ClassPlanWhereInputImplCopyWith<$Res> {
  __$$ClassPlanWhereInputImplCopyWithImpl(_$ClassPlanWhereInputImpl _value,
      $Res Function(_$ClassPlanWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? topics = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? recordingStoragePolicy = freezed,
    Object? durationInMonths = freezed,
    Object? meetingsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? emailSupport = freezed,
    Object? maxParticipants = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? AND = freezed,
    Object? OR = freezed,
    Object? NOT = freezed,
  }) {
    return _then(_$ClassPlanWhereInputImpl(
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
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as TopicListRelationFilter?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      certificateProvided: freezed == certificateProvided
          ? _value.certificateProvided
          : certificateProvided // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      recordingEnabled: freezed == recordingEnabled
          ? _value.recordingEnabled
          : recordingEnabled // ignore: cast_nullable_to_non_nullable
              as BooleanFilter?,
      recordingStoragePolicy: freezed == recordingStoragePolicy
          ? _value.recordingStoragePolicy
          : recordingStoragePolicy // ignore: cast_nullable_to_non_nullable
              as RecordingStoragePolicyFilter?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      meetingsPerWeek: freezed == meetingsPerWeek
          ? _value.meetingsPerWeek
          : meetingsPerWeek // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
      emailSupport: freezed == emailSupport
          ? _value.emailSupport
          : emailSupport // ignore: cast_nullable_to_non_nullable
              as PlanEmailSupportFilter?,
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as IntFilter?,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
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
              as List<ClassPlanWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<ClassPlanWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as ClassPlanWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ClassPlanWhereInputImpl implements _ClassPlanWhereInput {
  const _$ClassPlanWhereInputImpl(
      {this.id,
      this.title,
      this.description,
      this.topics,
      this.price,
      this.priceCurrency,
      this.certificateProvided,
      this.recordingEnabled,
      this.recordingStoragePolicy,
      this.durationInMonths,
      this.meetingsPerWeek,
      this.sessionDurationInHours,
      this.totalSessions,
      this.totalHours,
      this.emailSupport,
      this.maxParticipants,
      this.language,
      this.level,
      this.prerequisites,
      this.materialProvided,
      this.learningOutcomes,
      this.imageUrl,
      this.consultantProfile,
      this.consultantProfileId,
      this.createdAt,
      this.updatedAt,
      final List<ClassPlanWhereInput>? AND,
      final List<ClassPlanWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$ClassPlanWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassPlanWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;
  @override
  final StringFilter? description;

  /// Filter by topics relation
  @override
  final TopicListRelationFilter? topics;
  @override
  final IntFilter? price;
  @override
  final StringFilter? priceCurrency;
  @override
  final BooleanFilter? certificateProvided;
  @override
  final BooleanFilter? recordingEnabled;
  @override
  final RecordingStoragePolicyFilter? recordingStoragePolicy;
  @override
  final IntFilter? durationInMonths;
  @override
  final IntFilter? meetingsPerWeek;
  @override
  final FloatFilter? sessionDurationInHours;
  @override
  final IntFilter? totalSessions;
  @override
  final FloatFilter? totalHours;
  @override
  final PlanEmailSupportFilter? emailSupport;
  @override
  final IntFilter? maxParticipants;
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
  @override
  final StringFilter? imageUrl;

  /// Filter by consultantProfile relation
  @override
  final ConsultantProfileRelationFilter? consultantProfile;
  @override
  final StringFilter? consultantProfileId;
  @override
  final DateTimeFilter? createdAt;
  @override
  final DateTimeFilter? updatedAt;
  final List<ClassPlanWhereInput>? _AND;
  @override
  List<ClassPlanWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClassPlanWhereInput>? _OR;
  @override
  List<ClassPlanWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ClassPlanWhereInput? NOT;

  @override
  String toString() {
    return 'ClassPlanWhereInput(id: $id, title: $title, description: $description, topics: $topics, price: $price, priceCurrency: $priceCurrency, certificateProvided: $certificateProvided, recordingEnabled: $recordingEnabled, recordingStoragePolicy: $recordingStoragePolicy, durationInMonths: $durationInMonths, meetingsPerWeek: $meetingsPerWeek, sessionDurationInHours: $sessionDurationInHours, totalSessions: $totalSessions, totalHours: $totalHours, emailSupport: $emailSupport, maxParticipants: $maxParticipants, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, imageUrl: $imageUrl, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassPlanWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.topics, topics) || other.topics == topics) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.certificateProvided, certificateProvided) ||
                other.certificateProvided == certificateProvided) &&
            (identical(other.recordingEnabled, recordingEnabled) ||
                other.recordingEnabled == recordingEnabled) &&
            (identical(other.recordingStoragePolicy, recordingStoragePolicy) ||
                other.recordingStoragePolicy == recordingStoragePolicy) &&
            (identical(other.durationInMonths, durationInMonths) ||
                other.durationInMonths == durationInMonths) &&
            (identical(other.meetingsPerWeek, meetingsPerWeek) ||
                other.meetingsPerWeek == meetingsPerWeek) &&
            (identical(other.sessionDurationInHours, sessionDurationInHours) ||
                other.sessionDurationInHours == sessionDurationInHours) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.emailSupport, emailSupport) ||
                other.emailSupport == emailSupport) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            (identical(other.learningOutcomes, learningOutcomes) ||
                other.learningOutcomes == learningOutcomes) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
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
        topics,
        price,
        priceCurrency,
        certificateProvided,
        recordingEnabled,
        recordingStoragePolicy,
        durationInMonths,
        meetingsPerWeek,
        sessionDurationInHours,
        totalSessions,
        totalHours,
        emailSupport,
        maxParticipants,
        language,
        level,
        prerequisites,
        materialProvided,
        learningOutcomes,
        imageUrl,
        consultantProfile,
        consultantProfileId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_AND),
        const DeepCollectionEquality().hash(_OR),
        NOT
      ]);

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassPlanWhereInputImplCopyWith<_$ClassPlanWhereInputImpl> get copyWith =>
      __$$ClassPlanWhereInputImplCopyWithImpl<_$ClassPlanWhereInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassPlanWhereInputImplToJson(
      this,
    );
  }
}

abstract class _ClassPlanWhereInput implements ClassPlanWhereInput {
  const factory _ClassPlanWhereInput(
      {final StringFilter? id,
      final StringFilter? title,
      final StringFilter? description,
      final TopicListRelationFilter? topics,
      final IntFilter? price,
      final StringFilter? priceCurrency,
      final BooleanFilter? certificateProvided,
      final BooleanFilter? recordingEnabled,
      final RecordingStoragePolicyFilter? recordingStoragePolicy,
      final IntFilter? durationInMonths,
      final IntFilter? meetingsPerWeek,
      final FloatFilter? sessionDurationInHours,
      final IntFilter? totalSessions,
      final FloatFilter? totalHours,
      final PlanEmailSupportFilter? emailSupport,
      final IntFilter? maxParticipants,
      final StringFilter? language,
      final StringFilter? level,
      final StringFilter? prerequisites,
      final StringFilter? materialProvided,
      final StringListFilter? learningOutcomes,
      final StringFilter? imageUrl,
      final ConsultantProfileRelationFilter? consultantProfile,
      final StringFilter? consultantProfileId,
      final DateTimeFilter? createdAt,
      final DateTimeFilter? updatedAt,
      final List<ClassPlanWhereInput>? AND,
      final List<ClassPlanWhereInput>? OR,
      final ClassPlanWhereInput? NOT}) = _$ClassPlanWhereInputImpl;

  factory _ClassPlanWhereInput.fromJson(Map<String, dynamic> json) =
      _$ClassPlanWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;
  @override
  StringFilter? get description;

  /// Filter by topics relation
  @override
  TopicListRelationFilter? get topics;
  @override
  IntFilter? get price;
  @override
  StringFilter? get priceCurrency;
  @override
  BooleanFilter? get certificateProvided;
  @override
  BooleanFilter? get recordingEnabled;
  @override
  RecordingStoragePolicyFilter? get recordingStoragePolicy;
  @override
  IntFilter? get durationInMonths;
  @override
  IntFilter? get meetingsPerWeek;
  @override
  FloatFilter? get sessionDurationInHours;
  @override
  IntFilter? get totalSessions;
  @override
  FloatFilter? get totalHours;
  @override
  PlanEmailSupportFilter? get emailSupport;
  @override
  IntFilter? get maxParticipants;
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
  @override
  StringFilter? get imageUrl;

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
  List<ClassPlanWhereInput>? get AND;
  @override
  List<ClassPlanWhereInput>? get OR;
  @override
  ClassPlanWhereInput? get NOT;

  /// Create a copy of ClassPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassPlanWhereInputImplCopyWith<_$ClassPlanWhereInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassPlanListRelationFilter _$ClassPlanListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ClassPlanListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ClassPlanListRelationFilter {
  /// At least one related record matches
  ClassPlanWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  ClassPlanWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  ClassPlanWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this ClassPlanListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassPlanListRelationFilterCopyWith<ClassPlanListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassPlanListRelationFilterCopyWith<$Res> {
  factory $ClassPlanListRelationFilterCopyWith(
          ClassPlanListRelationFilter value,
          $Res Function(ClassPlanListRelationFilter) then) =
      _$ClassPlanListRelationFilterCopyWithImpl<$Res,
          ClassPlanListRelationFilter>;
  @useResult
  $Res call(
      {ClassPlanWhereInput? some,
      ClassPlanWhereInput? every,
      ClassPlanWhereInput? none});

  $ClassPlanWhereInputCopyWith<$Res>? get some;
  $ClassPlanWhereInputCopyWith<$Res>? get every;
  $ClassPlanWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$ClassPlanListRelationFilterCopyWithImpl<$Res,
        $Val extends ClassPlanListRelationFilter>
    implements $ClassPlanListRelationFilterCopyWith<$Res> {
  _$ClassPlanListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassPlanListRelationFilter
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
              as ClassPlanWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ClassPlanWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ClassPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $ClassPlanWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $ClassPlanWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $ClassPlanWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassPlanListRelationFilterImplCopyWith<$Res>
    implements $ClassPlanListRelationFilterCopyWith<$Res> {
  factory _$$ClassPlanListRelationFilterImplCopyWith(
          _$ClassPlanListRelationFilterImpl value,
          $Res Function(_$ClassPlanListRelationFilterImpl) then) =
      __$$ClassPlanListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ClassPlanWhereInput? some,
      ClassPlanWhereInput? every,
      ClassPlanWhereInput? none});

  @override
  $ClassPlanWhereInputCopyWith<$Res>? get some;
  @override
  $ClassPlanWhereInputCopyWith<$Res>? get every;
  @override
  $ClassPlanWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$ClassPlanListRelationFilterImplCopyWithImpl<$Res>
    extends _$ClassPlanListRelationFilterCopyWithImpl<$Res,
        _$ClassPlanListRelationFilterImpl>
    implements _$$ClassPlanListRelationFilterImplCopyWith<$Res> {
  __$$ClassPlanListRelationFilterImplCopyWithImpl(
      _$ClassPlanListRelationFilterImpl _value,
      $Res Function(_$ClassPlanListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$ClassPlanListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as ClassPlanWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as ClassPlanWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as ClassPlanWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassPlanListRelationFilterImpl
    implements _ClassPlanListRelationFilter {
  const _$ClassPlanListRelationFilterImpl({this.some, this.every, this.none});

  factory _$ClassPlanListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassPlanListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final ClassPlanWhereInput? some;

  /// All related records match
  @override
  final ClassPlanWhereInput? every;

  /// No related records match
  @override
  final ClassPlanWhereInput? none;

  @override
  String toString() {
    return 'ClassPlanListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassPlanListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of ClassPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassPlanListRelationFilterImplCopyWith<_$ClassPlanListRelationFilterImpl>
      get copyWith => __$$ClassPlanListRelationFilterImplCopyWithImpl<
          _$ClassPlanListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassPlanListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ClassPlanListRelationFilter
    implements ClassPlanListRelationFilter {
  const factory _ClassPlanListRelationFilter(
      {final ClassPlanWhereInput? some,
      final ClassPlanWhereInput? every,
      final ClassPlanWhereInput? none}) = _$ClassPlanListRelationFilterImpl;

  factory _ClassPlanListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ClassPlanListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  ClassPlanWhereInput? get some;

  /// All related records match
  @override
  ClassPlanWhereInput? get every;

  /// No related records match
  @override
  ClassPlanWhereInput? get none;

  /// Create a copy of ClassPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassPlanListRelationFilterImplCopyWith<_$ClassPlanListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassPlanRelationFilter _$ClassPlanRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _ClassPlanRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$ClassPlanRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  ClassPlanWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  ClassPlanWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this ClassPlanRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassPlanRelationFilterCopyWith<ClassPlanRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassPlanRelationFilterCopyWith<$Res> {
  factory $ClassPlanRelationFilterCopyWith(ClassPlanRelationFilter value,
          $Res Function(ClassPlanRelationFilter) then) =
      _$ClassPlanRelationFilterCopyWithImpl<$Res, ClassPlanRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ClassPlanWhereInput? is_,
      ClassPlanWhereInput? isNot});

  $ClassPlanWhereInputCopyWith<$Res>? get is_;
  $ClassPlanWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$ClassPlanRelationFilterCopyWithImpl<$Res,
        $Val extends ClassPlanRelationFilter>
    implements $ClassPlanRelationFilterCopyWith<$Res> {
  _$ClassPlanRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassPlanRelationFilter
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
              as ClassPlanWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ClassPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of ClassPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $ClassPlanWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of ClassPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassPlanWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $ClassPlanWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassPlanRelationFilterImplCopyWith<$Res>
    implements $ClassPlanRelationFilterCopyWith<$Res> {
  factory _$$ClassPlanRelationFilterImplCopyWith(
          _$ClassPlanRelationFilterImpl value,
          $Res Function(_$ClassPlanRelationFilterImpl) then) =
      __$$ClassPlanRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') ClassPlanWhereInput? is_,
      ClassPlanWhereInput? isNot});

  @override
  $ClassPlanWhereInputCopyWith<$Res>? get is_;
  @override
  $ClassPlanWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$ClassPlanRelationFilterImplCopyWithImpl<$Res>
    extends _$ClassPlanRelationFilterCopyWithImpl<$Res,
        _$ClassPlanRelationFilterImpl>
    implements _$$ClassPlanRelationFilterImplCopyWith<$Res> {
  __$$ClassPlanRelationFilterImplCopyWithImpl(
      _$ClassPlanRelationFilterImpl _value,
      $Res Function(_$ClassPlanRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$ClassPlanRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as ClassPlanWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as ClassPlanWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassPlanRelationFilterImpl implements _ClassPlanRelationFilter {
  const _$ClassPlanRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$ClassPlanRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassPlanRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final ClassPlanWhereInput? is_;

  /// Related record does not match
  @override
  final ClassPlanWhereInput? isNot;

  @override
  String toString() {
    return 'ClassPlanRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassPlanRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of ClassPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassPlanRelationFilterImplCopyWith<_$ClassPlanRelationFilterImpl>
      get copyWith => __$$ClassPlanRelationFilterImplCopyWithImpl<
          _$ClassPlanRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassPlanRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _ClassPlanRelationFilter implements ClassPlanRelationFilter {
  const factory _ClassPlanRelationFilter(
      {@JsonKey(name: 'is') final ClassPlanWhereInput? is_,
      final ClassPlanWhereInput? isNot}) = _$ClassPlanRelationFilterImpl;

  factory _ClassPlanRelationFilter.fromJson(Map<String, dynamic> json) =
      _$ClassPlanRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  ClassPlanWhereInput? get is_;

  /// Related record does not match
  @override
  ClassPlanWhereInput? get isNot;

  /// Create a copy of ClassPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassPlanRelationFilterImplCopyWith<_$ClassPlanRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassPlanOrderByInput _$ClassPlanOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _ClassPlanOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$ClassPlanOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get price => throw _privateConstructorUsedError;
  SortOrder? get priceCurrency => throw _privateConstructorUsedError;
  SortOrder? get certificateProvided => throw _privateConstructorUsedError;
  SortOrder? get recordingEnabled => throw _privateConstructorUsedError;
  SortOrder? get durationInMonths => throw _privateConstructorUsedError;
  SortOrder? get meetingsPerWeek => throw _privateConstructorUsedError;
  SortOrder? get sessionDurationInHours => throw _privateConstructorUsedError;
  SortOrder? get totalSessions => throw _privateConstructorUsedError;
  SortOrder? get totalHours => throw _privateConstructorUsedError;
  SortOrder? get maxParticipants => throw _privateConstructorUsedError;
  SortOrder? get language => throw _privateConstructorUsedError;
  SortOrder? get level => throw _privateConstructorUsedError;
  SortOrder? get prerequisites => throw _privateConstructorUsedError;
  SortOrder? get materialProvided => throw _privateConstructorUsedError;
  SortOrder? get learningOutcomes => throw _privateConstructorUsedError;
  SortOrder? get imageUrl => throw _privateConstructorUsedError;
  SortOrder? get consultantProfileId => throw _privateConstructorUsedError;
  SortOrder? get createdAt => throw _privateConstructorUsedError;
  SortOrder? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ClassPlanOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassPlanOrderByInputCopyWith<ClassPlanOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassPlanOrderByInputCopyWith<$Res> {
  factory $ClassPlanOrderByInputCopyWith(ClassPlanOrderByInput value,
          $Res Function(ClassPlanOrderByInput) then) =
      _$ClassPlanOrderByInputCopyWithImpl<$Res, ClassPlanOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? price,
      SortOrder? priceCurrency,
      SortOrder? certificateProvided,
      SortOrder? recordingEnabled,
      SortOrder? durationInMonths,
      SortOrder? meetingsPerWeek,
      SortOrder? sessionDurationInHours,
      SortOrder? totalSessions,
      SortOrder? totalHours,
      SortOrder? maxParticipants,
      SortOrder? language,
      SortOrder? level,
      SortOrder? prerequisites,
      SortOrder? materialProvided,
      SortOrder? learningOutcomes,
      SortOrder? imageUrl,
      SortOrder? consultantProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class _$ClassPlanOrderByInputCopyWithImpl<$Res,
        $Val extends ClassPlanOrderByInput>
    implements $ClassPlanOrderByInputCopyWith<$Res> {
  _$ClassPlanOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? durationInMonths = freezed,
    Object? meetingsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? maxParticipants = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      certificateProvided: freezed == certificateProvided
          ? _value.certificateProvided
          : certificateProvided // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordingEnabled: freezed == recordingEnabled
          ? _value.recordingEnabled
          : recordingEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      meetingsPerWeek: freezed == meetingsPerWeek
          ? _value.meetingsPerWeek
          : meetingsPerWeek // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ClassPlanOrderByInputImplCopyWith<$Res>
    implements $ClassPlanOrderByInputCopyWith<$Res> {
  factory _$$ClassPlanOrderByInputImplCopyWith(
          _$ClassPlanOrderByInputImpl value,
          $Res Function(_$ClassPlanOrderByInputImpl) then) =
      __$$ClassPlanOrderByInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? price,
      SortOrder? priceCurrency,
      SortOrder? certificateProvided,
      SortOrder? recordingEnabled,
      SortOrder? durationInMonths,
      SortOrder? meetingsPerWeek,
      SortOrder? sessionDurationInHours,
      SortOrder? totalSessions,
      SortOrder? totalHours,
      SortOrder? maxParticipants,
      SortOrder? language,
      SortOrder? level,
      SortOrder? prerequisites,
      SortOrder? materialProvided,
      SortOrder? learningOutcomes,
      SortOrder? imageUrl,
      SortOrder? consultantProfileId,
      SortOrder? createdAt,
      SortOrder? updatedAt});
}

/// @nodoc
class __$$ClassPlanOrderByInputImplCopyWithImpl<$Res>
    extends _$ClassPlanOrderByInputCopyWithImpl<$Res,
        _$ClassPlanOrderByInputImpl>
    implements _$$ClassPlanOrderByInputImplCopyWith<$Res> {
  __$$ClassPlanOrderByInputImplCopyWithImpl(_$ClassPlanOrderByInputImpl _value,
      $Res Function(_$ClassPlanOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? durationInMonths = freezed,
    Object? meetingsPerWeek = freezed,
    Object? sessionDurationInHours = freezed,
    Object? totalSessions = freezed,
    Object? totalHours = freezed,
    Object? maxParticipants = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfileId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ClassPlanOrderByInputImpl(
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      certificateProvided: freezed == certificateProvided
          ? _value.certificateProvided
          : certificateProvided // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      recordingEnabled: freezed == recordingEnabled
          ? _value.recordingEnabled
          : recordingEnabled // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      durationInMonths: freezed == durationInMonths
          ? _value.durationInMonths
          : durationInMonths // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      meetingsPerWeek: freezed == meetingsPerWeek
          ? _value.meetingsPerWeek
          : meetingsPerWeek // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      sessionDurationInHours: freezed == sessionDurationInHours
          ? _value.sessionDurationInHours
          : sessionDurationInHours // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      totalHours: freezed == totalHours
          ? _value.totalHours
          : totalHours // ignore: cast_nullable_to_non_nullable
              as SortOrder?,
      maxParticipants: freezed == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
class _$ClassPlanOrderByInputImpl implements _ClassPlanOrderByInput {
  const _$ClassPlanOrderByInputImpl(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.priceCurrency,
      this.certificateProvided,
      this.recordingEnabled,
      this.durationInMonths,
      this.meetingsPerWeek,
      this.sessionDurationInHours,
      this.totalSessions,
      this.totalHours,
      this.maxParticipants,
      this.language,
      this.level,
      this.prerequisites,
      this.materialProvided,
      this.learningOutcomes,
      this.imageUrl,
      this.consultantProfileId,
      this.createdAt,
      this.updatedAt});

  factory _$ClassPlanOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassPlanOrderByInputImplFromJson(json);

  @override
  final SortOrder? id;
  @override
  final SortOrder? title;
  @override
  final SortOrder? description;
  @override
  final SortOrder? price;
  @override
  final SortOrder? priceCurrency;
  @override
  final SortOrder? certificateProvided;
  @override
  final SortOrder? recordingEnabled;
  @override
  final SortOrder? durationInMonths;
  @override
  final SortOrder? meetingsPerWeek;
  @override
  final SortOrder? sessionDurationInHours;
  @override
  final SortOrder? totalSessions;
  @override
  final SortOrder? totalHours;
  @override
  final SortOrder? maxParticipants;
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
  final SortOrder? imageUrl;
  @override
  final SortOrder? consultantProfileId;
  @override
  final SortOrder? createdAt;
  @override
  final SortOrder? updatedAt;

  @override
  String toString() {
    return 'ClassPlanOrderByInput(id: $id, title: $title, description: $description, price: $price, priceCurrency: $priceCurrency, certificateProvided: $certificateProvided, recordingEnabled: $recordingEnabled, durationInMonths: $durationInMonths, meetingsPerWeek: $meetingsPerWeek, sessionDurationInHours: $sessionDurationInHours, totalSessions: $totalSessions, totalHours: $totalHours, maxParticipants: $maxParticipants, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, imageUrl: $imageUrl, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassPlanOrderByInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.certificateProvided, certificateProvided) ||
                other.certificateProvided == certificateProvided) &&
            (identical(other.recordingEnabled, recordingEnabled) ||
                other.recordingEnabled == recordingEnabled) &&
            (identical(other.durationInMonths, durationInMonths) ||
                other.durationInMonths == durationInMonths) &&
            (identical(other.meetingsPerWeek, meetingsPerWeek) ||
                other.meetingsPerWeek == meetingsPerWeek) &&
            (identical(other.sessionDurationInHours, sessionDurationInHours) ||
                other.sessionDurationInHours == sessionDurationInHours) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.totalHours, totalHours) ||
                other.totalHours == totalHours) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.prerequisites, prerequisites) ||
                other.prerequisites == prerequisites) &&
            (identical(other.materialProvided, materialProvided) ||
                other.materialProvided == materialProvided) &&
            (identical(other.learningOutcomes, learningOutcomes) ||
                other.learningOutcomes == learningOutcomes) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.consultantProfileId, consultantProfileId) ||
                other.consultantProfileId == consultantProfileId) &&
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
        title,
        description,
        price,
        priceCurrency,
        certificateProvided,
        recordingEnabled,
        durationInMonths,
        meetingsPerWeek,
        sessionDurationInHours,
        totalSessions,
        totalHours,
        maxParticipants,
        language,
        level,
        prerequisites,
        materialProvided,
        learningOutcomes,
        imageUrl,
        consultantProfileId,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of ClassPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassPlanOrderByInputImplCopyWith<_$ClassPlanOrderByInputImpl>
      get copyWith => __$$ClassPlanOrderByInputImplCopyWithImpl<
          _$ClassPlanOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassPlanOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _ClassPlanOrderByInput implements ClassPlanOrderByInput {
  const factory _ClassPlanOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? description,
      final SortOrder? price,
      final SortOrder? priceCurrency,
      final SortOrder? certificateProvided,
      final SortOrder? recordingEnabled,
      final SortOrder? durationInMonths,
      final SortOrder? meetingsPerWeek,
      final SortOrder? sessionDurationInHours,
      final SortOrder? totalSessions,
      final SortOrder? totalHours,
      final SortOrder? maxParticipants,
      final SortOrder? language,
      final SortOrder? level,
      final SortOrder? prerequisites,
      final SortOrder? materialProvided,
      final SortOrder? learningOutcomes,
      final SortOrder? imageUrl,
      final SortOrder? consultantProfileId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$ClassPlanOrderByInputImpl;

  factory _ClassPlanOrderByInput.fromJson(Map<String, dynamic> json) =
      _$ClassPlanOrderByInputImpl.fromJson;

  @override
  SortOrder? get id;
  @override
  SortOrder? get title;
  @override
  SortOrder? get description;
  @override
  SortOrder? get price;
  @override
  SortOrder? get priceCurrency;
  @override
  SortOrder? get certificateProvided;
  @override
  SortOrder? get recordingEnabled;
  @override
  SortOrder? get durationInMonths;
  @override
  SortOrder? get meetingsPerWeek;
  @override
  SortOrder? get sessionDurationInHours;
  @override
  SortOrder? get totalSessions;
  @override
  SortOrder? get totalHours;
  @override
  SortOrder? get maxParticipants;
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
  SortOrder? get imageUrl;
  @override
  SortOrder? get consultantProfileId;
  @override
  SortOrder? get createdAt;
  @override
  SortOrder? get updatedAt;

  /// Create a copy of ClassPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassPlanOrderByInputImplCopyWith<_$ClassPlanOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
