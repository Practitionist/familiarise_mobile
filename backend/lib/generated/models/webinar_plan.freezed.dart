// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webinar_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebinarPlan _$WebinarPlanFromJson(Map<String, dynamic> json) {
  return _WebinarPlan.fromJson(json);
}

/// @nodoc
mixin _$WebinarPlan {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Topic>? get topics => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get priceCurrency => throw _privateConstructorUsedError;
  bool get certificateProvided => throw _privateConstructorUsedError;
  bool get recordingEnabled => throw _privateConstructorUsedError;
  RecordingStoragePolicy get recordingStoragePolicy =>
      throw _privateConstructorUsedError;
  double get durationInHours => throw _privateConstructorUsedError;
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
  List<Webinar> get webinars => throw _privateConstructorUsedError;
  List<PlanMaterial> get materials => throw _privateConstructorUsedError;
  List<WebinarCollaborator> get collaborators =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this WebinarPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarPlanCopyWith<WebinarPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarPlanCopyWith<$Res> {
  factory $WebinarPlanCopyWith(
          WebinarPlan value, $Res Function(WebinarPlan) then) =
      _$WebinarPlanCopyWithImpl<$Res, WebinarPlan>;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<Topic>? topics,
      String? description,
      int price,
      String priceCurrency,
      bool certificateProvided,
      bool recordingEnabled,
      RecordingStoragePolicy recordingStoragePolicy,
      double durationInHours,
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
      List<Webinar> webinars,
      List<PlanMaterial> materials,
      List<WebinarCollaborator> collaborators,
      DateTime createdAt,
      DateTime updatedAt});

  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class _$WebinarPlanCopyWithImpl<$Res, $Val extends WebinarPlan>
    implements $WebinarPlanCopyWith<$Res> {
  _$WebinarPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? topics = freezed,
    Object? description = freezed,
    Object? price = null,
    Object? priceCurrency = null,
    Object? certificateProvided = null,
    Object? recordingEnabled = null,
    Object? recordingStoragePolicy = null,
    Object? durationInHours = null,
    Object? maxParticipants = null,
    Object? language = null,
    Object? level = null,
    Object? prerequisites = null,
    Object? materialProvided = null,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? webinars = null,
    Object? materials = null,
    Object? collaborators = null,
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
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
      durationInHours: null == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double,
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
      webinars: null == webinars
          ? _value.webinars
          : webinars // ignore: cast_nullable_to_non_nullable
              as List<Webinar>,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<PlanMaterial>,
      collaborators: null == collaborators
          ? _value.collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaborator>,
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

  /// Create a copy of WebinarPlan
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
abstract class _$$WebinarPlanImplCopyWith<$Res>
    implements $WebinarPlanCopyWith<$Res> {
  factory _$$WebinarPlanImplCopyWith(
          _$WebinarPlanImpl value, $Res Function(_$WebinarPlanImpl) then) =
      __$$WebinarPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<Topic>? topics,
      String? description,
      int price,
      String priceCurrency,
      bool certificateProvided,
      bool recordingEnabled,
      RecordingStoragePolicy recordingStoragePolicy,
      double durationInHours,
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
      List<Webinar> webinars,
      List<PlanMaterial> materials,
      List<WebinarCollaborator> collaborators,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $ConsultantProfileCopyWith<$Res>? get consultantProfile;
}

/// @nodoc
class __$$WebinarPlanImplCopyWithImpl<$Res>
    extends _$WebinarPlanCopyWithImpl<$Res, _$WebinarPlanImpl>
    implements _$$WebinarPlanImplCopyWith<$Res> {
  __$$WebinarPlanImplCopyWithImpl(
      _$WebinarPlanImpl _value, $Res Function(_$WebinarPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? topics = freezed,
    Object? description = freezed,
    Object? price = null,
    Object? priceCurrency = null,
    Object? certificateProvided = null,
    Object? recordingEnabled = null,
    Object? recordingStoragePolicy = null,
    Object? durationInHours = null,
    Object? maxParticipants = null,
    Object? language = null,
    Object? level = null,
    Object? prerequisites = null,
    Object? materialProvided = null,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfile = freezed,
    Object? consultantProfileId = freezed,
    Object? webinars = null,
    Object? materials = null,
    Object? collaborators = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$WebinarPlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
      durationInHours: null == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double,
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
      webinars: null == webinars
          ? _value._webinars
          : webinars // ignore: cast_nullable_to_non_nullable
              as List<Webinar>,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<PlanMaterial>,
      collaborators: null == collaborators
          ? _value._collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<WebinarCollaborator>,
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
class _$WebinarPlanImpl implements _WebinarPlan {
  const _$WebinarPlanImpl(
      {required this.id,
      required this.title,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<Topic>? topics,
      this.description,
      required this.price,
      this.priceCurrency = "INR",
      this.certificateProvided = false,
      this.recordingEnabled = false,
      this.recordingStoragePolicy = RecordingStoragePolicy.streamOnly,
      this.durationInHours = 1,
      this.maxParticipants = 100,
      this.language = "English",
      this.level = "Beginner",
      this.prerequisites = "None",
      this.materialProvided = "None",
      final List<String>? learningOutcomes = const <String>[],
      this.imageUrl,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.consultantProfile,
      this.consultantProfileId,
      required final List<Webinar> webinars,
      required final List<PlanMaterial> materials,
      required final List<WebinarCollaborator> collaborators,
      required this.createdAt,
      required this.updatedAt})
      : _topics = topics,
        _learningOutcomes = learningOutcomes,
        _webinars = webinars,
        _materials = materials,
        _collaborators = collaborators;

  factory _$WebinarPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarPlanImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
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
  final String? description;
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
  final double durationInHours;
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
  final List<Webinar> _webinars;
  @override
  List<Webinar> get webinars {
    if (_webinars is EqualUnmodifiableListView) return _webinars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_webinars);
  }

  final List<PlanMaterial> _materials;
  @override
  List<PlanMaterial> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  final List<WebinarCollaborator> _collaborators;
  @override
  List<WebinarCollaborator> get collaborators {
    if (_collaborators is EqualUnmodifiableListView) return _collaborators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collaborators);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'WebinarPlan(id: $id, title: $title, topics: $topics, description: $description, price: $price, priceCurrency: $priceCurrency, certificateProvided: $certificateProvided, recordingEnabled: $recordingEnabled, recordingStoragePolicy: $recordingStoragePolicy, durationInHours: $durationInHours, maxParticipants: $maxParticipants, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, imageUrl: $imageUrl, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, webinars: $webinars, materials: $materials, collaborators: $collaborators, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
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
            (identical(other.durationInHours, durationInHours) ||
                other.durationInHours == durationInHours) &&
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
            const DeepCollectionEquality().equals(other._webinars, _webinars) &&
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
        const DeepCollectionEquality().hash(_topics),
        description,
        price,
        priceCurrency,
        certificateProvided,
        recordingEnabled,
        recordingStoragePolicy,
        durationInHours,
        maxParticipants,
        language,
        level,
        prerequisites,
        materialProvided,
        const DeepCollectionEquality().hash(_learningOutcomes),
        imageUrl,
        consultantProfile,
        consultantProfileId,
        const DeepCollectionEquality().hash(_webinars),
        const DeepCollectionEquality().hash(_materials),
        const DeepCollectionEquality().hash(_collaborators),
        createdAt,
        updatedAt
      ]);

  /// Create a copy of WebinarPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarPlanImplCopyWith<_$WebinarPlanImpl> get copyWith =>
      __$$WebinarPlanImplCopyWithImpl<_$WebinarPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarPlanImplToJson(
      this,
    );
  }
}

abstract class _WebinarPlan implements WebinarPlan {
  const factory _WebinarPlan(
      {required final String id,
      required final String title,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<Topic>? topics,
      final String? description,
      required final int price,
      final String priceCurrency,
      final bool certificateProvided,
      final bool recordingEnabled,
      final RecordingStoragePolicy recordingStoragePolicy,
      final double durationInHours,
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
      required final List<Webinar> webinars,
      required final List<PlanMaterial> materials,
      required final List<WebinarCollaborator> collaborators,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$WebinarPlanImpl;

  factory _WebinarPlan.fromJson(Map<String, dynamic> json) =
      _$WebinarPlanImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Topic>? get topics;
  @override
  String? get description;
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
  double get durationInHours;
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
  List<Webinar> get webinars;
  @override
  List<PlanMaterial> get materials;
  @override
  List<WebinarCollaborator> get collaborators;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of WebinarPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarPlanImplCopyWith<_$WebinarPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateWebinarPlanInput _$CreateWebinarPlanInputFromJson(
    Map<String, dynamic> json) {
  return _CreateWebinarPlanInput.fromJson(json);
}

/// @nodoc
mixin _$CreateWebinarPlanInput {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get priceCurrency => throw _privateConstructorUsedError;
  bool? get certificateProvided => throw _privateConstructorUsedError;
  bool? get recordingEnabled => throw _privateConstructorUsedError;
  RecordingStoragePolicy get recordingStoragePolicy =>
      throw _privateConstructorUsedError;
  double? get durationInHours => throw _privateConstructorUsedError;
  int? get maxParticipants => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get prerequisites => throw _privateConstructorUsedError;
  String? get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this CreateWebinarPlanInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateWebinarPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateWebinarPlanInputCopyWith<CreateWebinarPlanInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWebinarPlanInputCopyWith<$Res> {
  factory $CreateWebinarPlanInputCopyWith(CreateWebinarPlanInput value,
          $Res Function(CreateWebinarPlanInput) then) =
      _$CreateWebinarPlanInputCopyWithImpl<$Res, CreateWebinarPlanInput>;
  @useResult
  $Res call(
      {String title,
      String? description,
      int price,
      String? priceCurrency,
      bool? certificateProvided,
      bool? recordingEnabled,
      RecordingStoragePolicy recordingStoragePolicy,
      double? durationInHours,
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
class _$CreateWebinarPlanInputCopyWithImpl<$Res,
        $Val extends CreateWebinarPlanInput>
    implements $CreateWebinarPlanInputCopyWith<$Res> {
  _$CreateWebinarPlanInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateWebinarPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? price = null,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? recordingStoragePolicy = null,
    Object? durationInHours = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$CreateWebinarPlanInputImplCopyWith<$Res>
    implements $CreateWebinarPlanInputCopyWith<$Res> {
  factory _$$CreateWebinarPlanInputImplCopyWith(
          _$CreateWebinarPlanInputImpl value,
          $Res Function(_$CreateWebinarPlanInputImpl) then) =
      __$$CreateWebinarPlanInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      int price,
      String? priceCurrency,
      bool? certificateProvided,
      bool? recordingEnabled,
      RecordingStoragePolicy recordingStoragePolicy,
      double? durationInHours,
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
class __$$CreateWebinarPlanInputImplCopyWithImpl<$Res>
    extends _$CreateWebinarPlanInputCopyWithImpl<$Res,
        _$CreateWebinarPlanInputImpl>
    implements _$$CreateWebinarPlanInputImplCopyWith<$Res> {
  __$$CreateWebinarPlanInputImplCopyWithImpl(
      _$CreateWebinarPlanInputImpl _value,
      $Res Function(_$CreateWebinarPlanInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateWebinarPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? price = null,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? recordingStoragePolicy = null,
    Object? durationInHours = freezed,
    Object? maxParticipants = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_$CreateWebinarPlanInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$CreateWebinarPlanInputImpl implements _CreateWebinarPlanInput {
  const _$CreateWebinarPlanInputImpl(
      {required this.title,
      this.description,
      required this.price,
      this.priceCurrency = "INR",
      this.certificateProvided = false,
      this.recordingEnabled = false,
      this.recordingStoragePolicy = RecordingStoragePolicy.streamOnly,
      this.durationInHours = 1,
      this.maxParticipants = 100,
      this.language = "English",
      this.level = "Beginner",
      this.prerequisites = "None",
      this.materialProvided = "None",
      final List<String>? learningOutcomes = const <String>[],
      this.imageUrl,
      this.consultantProfileId})
      : _learningOutcomes = learningOutcomes;

  factory _$CreateWebinarPlanInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateWebinarPlanInputImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
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
  final double? durationInHours;
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
    return 'CreateWebinarPlanInput(title: $title, description: $description, price: $price, priceCurrency: $priceCurrency, certificateProvided: $certificateProvided, recordingEnabled: $recordingEnabled, recordingStoragePolicy: $recordingStoragePolicy, durationInHours: $durationInHours, maxParticipants: $maxParticipants, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, imageUrl: $imageUrl, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWebinarPlanInputImpl &&
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
            (identical(other.durationInHours, durationInHours) ||
                other.durationInHours == durationInHours) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      price,
      priceCurrency,
      certificateProvided,
      recordingEnabled,
      recordingStoragePolicy,
      durationInHours,
      maxParticipants,
      language,
      level,
      prerequisites,
      materialProvided,
      const DeepCollectionEquality().hash(_learningOutcomes),
      imageUrl,
      consultantProfileId);

  /// Create a copy of CreateWebinarPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWebinarPlanInputImplCopyWith<_$CreateWebinarPlanInputImpl>
      get copyWith => __$$CreateWebinarPlanInputImplCopyWithImpl<
          _$CreateWebinarPlanInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWebinarPlanInputImplToJson(
      this,
    );
  }
}

abstract class _CreateWebinarPlanInput implements CreateWebinarPlanInput {
  const factory _CreateWebinarPlanInput(
      {required final String title,
      final String? description,
      required final int price,
      final String? priceCurrency,
      final bool? certificateProvided,
      final bool? recordingEnabled,
      final RecordingStoragePolicy recordingStoragePolicy,
      final double? durationInHours,
      final int? maxParticipants,
      final String? language,
      final String? level,
      final String? prerequisites,
      final String? materialProvided,
      final List<String>? learningOutcomes,
      final String? imageUrl,
      final String? consultantProfileId}) = _$CreateWebinarPlanInputImpl;

  factory _CreateWebinarPlanInput.fromJson(Map<String, dynamic> json) =
      _$CreateWebinarPlanInputImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
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
  double? get durationInHours;
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

  /// Create a copy of CreateWebinarPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateWebinarPlanInputImplCopyWith<_$CreateWebinarPlanInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateWebinarPlanInput _$UpdateWebinarPlanInputFromJson(
    Map<String, dynamic> json) {
  return _UpdateWebinarPlanInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateWebinarPlanInput {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get priceCurrency => throw _privateConstructorUsedError;
  bool? get certificateProvided => throw _privateConstructorUsedError;
  bool? get recordingEnabled => throw _privateConstructorUsedError;
  RecordingStoragePolicy? get recordingStoragePolicy =>
      throw _privateConstructorUsedError;
  double? get durationInHours => throw _privateConstructorUsedError;
  int? get maxParticipants => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get prerequisites => throw _privateConstructorUsedError;
  String? get materialProvided => throw _privateConstructorUsedError;
  List<String>? get learningOutcomes => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get consultantProfileId => throw _privateConstructorUsedError;

  /// Serializes this UpdateWebinarPlanInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateWebinarPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateWebinarPlanInputCopyWith<UpdateWebinarPlanInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWebinarPlanInputCopyWith<$Res> {
  factory $UpdateWebinarPlanInputCopyWith(UpdateWebinarPlanInput value,
          $Res Function(UpdateWebinarPlanInput) then) =
      _$UpdateWebinarPlanInputCopyWithImpl<$Res, UpdateWebinarPlanInput>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      int? price,
      String? priceCurrency,
      bool? certificateProvided,
      bool? recordingEnabled,
      RecordingStoragePolicy? recordingStoragePolicy,
      double? durationInHours,
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
class _$UpdateWebinarPlanInputCopyWithImpl<$Res,
        $Val extends UpdateWebinarPlanInput>
    implements $UpdateWebinarPlanInputCopyWith<$Res> {
  _$UpdateWebinarPlanInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateWebinarPlanInput
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
    Object? durationInHours = freezed,
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$UpdateWebinarPlanInputImplCopyWith<$Res>
    implements $UpdateWebinarPlanInputCopyWith<$Res> {
  factory _$$UpdateWebinarPlanInputImplCopyWith(
          _$UpdateWebinarPlanInputImpl value,
          $Res Function(_$UpdateWebinarPlanInputImpl) then) =
      __$$UpdateWebinarPlanInputImplCopyWithImpl<$Res>;
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
      double? durationInHours,
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
class __$$UpdateWebinarPlanInputImplCopyWithImpl<$Res>
    extends _$UpdateWebinarPlanInputCopyWithImpl<$Res,
        _$UpdateWebinarPlanInputImpl>
    implements _$$UpdateWebinarPlanInputImplCopyWith<$Res> {
  __$$UpdateWebinarPlanInputImplCopyWithImpl(
      _$UpdateWebinarPlanInputImpl _value,
      $Res Function(_$UpdateWebinarPlanInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateWebinarPlanInput
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
    Object? durationInHours = freezed,
    Object? maxParticipants = freezed,
    Object? language = freezed,
    Object? level = freezed,
    Object? prerequisites = freezed,
    Object? materialProvided = freezed,
    Object? learningOutcomes = freezed,
    Object? imageUrl = freezed,
    Object? consultantProfileId = freezed,
  }) {
    return _then(_$UpdateWebinarPlanInputImpl(
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$UpdateWebinarPlanInputImpl implements _UpdateWebinarPlanInput {
  const _$UpdateWebinarPlanInputImpl(
      {this.title,
      this.description,
      this.price,
      this.priceCurrency,
      this.certificateProvided,
      this.recordingEnabled,
      this.recordingStoragePolicy,
      this.durationInHours,
      this.maxParticipants,
      this.language,
      this.level,
      this.prerequisites,
      this.materialProvided,
      final List<String>? learningOutcomes,
      this.imageUrl,
      this.consultantProfileId})
      : _learningOutcomes = learningOutcomes;

  factory _$UpdateWebinarPlanInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateWebinarPlanInputImplFromJson(json);

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
  final double? durationInHours;
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
    return 'UpdateWebinarPlanInput(title: $title, description: $description, price: $price, priceCurrency: $priceCurrency, certificateProvided: $certificateProvided, recordingEnabled: $recordingEnabled, recordingStoragePolicy: $recordingStoragePolicy, durationInHours: $durationInHours, maxParticipants: $maxParticipants, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, imageUrl: $imageUrl, consultantProfileId: $consultantProfileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWebinarPlanInputImpl &&
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
            (identical(other.durationInHours, durationInHours) ||
                other.durationInHours == durationInHours) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      price,
      priceCurrency,
      certificateProvided,
      recordingEnabled,
      recordingStoragePolicy,
      durationInHours,
      maxParticipants,
      language,
      level,
      prerequisites,
      materialProvided,
      const DeepCollectionEquality().hash(_learningOutcomes),
      imageUrl,
      consultantProfileId);

  /// Create a copy of UpdateWebinarPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWebinarPlanInputImplCopyWith<_$UpdateWebinarPlanInputImpl>
      get copyWith => __$$UpdateWebinarPlanInputImplCopyWithImpl<
          _$UpdateWebinarPlanInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateWebinarPlanInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateWebinarPlanInput implements UpdateWebinarPlanInput {
  const factory _UpdateWebinarPlanInput(
      {final String? title,
      final String? description,
      final int? price,
      final String? priceCurrency,
      final bool? certificateProvided,
      final bool? recordingEnabled,
      final RecordingStoragePolicy? recordingStoragePolicy,
      final double? durationInHours,
      final int? maxParticipants,
      final String? language,
      final String? level,
      final String? prerequisites,
      final String? materialProvided,
      final List<String>? learningOutcomes,
      final String? imageUrl,
      final String? consultantProfileId}) = _$UpdateWebinarPlanInputImpl;

  factory _UpdateWebinarPlanInput.fromJson(Map<String, dynamic> json) =
      _$UpdateWebinarPlanInputImpl.fromJson;

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
  double? get durationInHours;
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

  /// Create a copy of UpdateWebinarPlanInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWebinarPlanInputImplCopyWith<_$UpdateWebinarPlanInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarPlanWhereUniqueInput _$WebinarPlanWhereUniqueInputFromJson(
    Map<String, dynamic> json) {
  return _WebinarPlanWhereUniqueInput.fromJson(json);
}

/// @nodoc
mixin _$WebinarPlanWhereUniqueInput {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this WebinarPlanWhereUniqueInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarPlanWhereUniqueInputCopyWith<WebinarPlanWhereUniqueInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarPlanWhereUniqueInputCopyWith<$Res> {
  factory $WebinarPlanWhereUniqueInputCopyWith(
          WebinarPlanWhereUniqueInput value,
          $Res Function(WebinarPlanWhereUniqueInput) then) =
      _$WebinarPlanWhereUniqueInputCopyWithImpl<$Res,
          WebinarPlanWhereUniqueInput>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$WebinarPlanWhereUniqueInputCopyWithImpl<$Res,
        $Val extends WebinarPlanWhereUniqueInput>
    implements $WebinarPlanWhereUniqueInputCopyWith<$Res> {
  _$WebinarPlanWhereUniqueInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarPlanWhereUniqueInput
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
abstract class _$$WebinarPlanWhereUniqueInputImplCopyWith<$Res>
    implements $WebinarPlanWhereUniqueInputCopyWith<$Res> {
  factory _$$WebinarPlanWhereUniqueInputImplCopyWith(
          _$WebinarPlanWhereUniqueInputImpl value,
          $Res Function(_$WebinarPlanWhereUniqueInputImpl) then) =
      __$$WebinarPlanWhereUniqueInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$WebinarPlanWhereUniqueInputImplCopyWithImpl<$Res>
    extends _$WebinarPlanWhereUniqueInputCopyWithImpl<$Res,
        _$WebinarPlanWhereUniqueInputImpl>
    implements _$$WebinarPlanWhereUniqueInputImplCopyWith<$Res> {
  __$$WebinarPlanWhereUniqueInputImplCopyWithImpl(
      _$WebinarPlanWhereUniqueInputImpl _value,
      $Res Function(_$WebinarPlanWhereUniqueInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$WebinarPlanWhereUniqueInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarPlanWhereUniqueInputImpl
    implements _WebinarPlanWhereUniqueInput {
  const _$WebinarPlanWhereUniqueInputImpl({this.id});

  factory _$WebinarPlanWhereUniqueInputImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebinarPlanWhereUniqueInputImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'WebinarPlanWhereUniqueInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarPlanWhereUniqueInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of WebinarPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarPlanWhereUniqueInputImplCopyWith<_$WebinarPlanWhereUniqueInputImpl>
      get copyWith => __$$WebinarPlanWhereUniqueInputImplCopyWithImpl<
          _$WebinarPlanWhereUniqueInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarPlanWhereUniqueInputImplToJson(
      this,
    );
  }
}

abstract class _WebinarPlanWhereUniqueInput
    implements WebinarPlanWhereUniqueInput {
  const factory _WebinarPlanWhereUniqueInput({final String? id}) =
      _$WebinarPlanWhereUniqueInputImpl;

  factory _WebinarPlanWhereUniqueInput.fromJson(Map<String, dynamic> json) =
      _$WebinarPlanWhereUniqueInputImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of WebinarPlanWhereUniqueInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarPlanWhereUniqueInputImplCopyWith<_$WebinarPlanWhereUniqueInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarPlanWhereInput _$WebinarPlanWhereInputFromJson(
    Map<String, dynamic> json) {
  return _WebinarPlanWhereInput.fromJson(json);
}

/// @nodoc
mixin _$WebinarPlanWhereInput {
  StringFilter? get id => throw _privateConstructorUsedError;
  StringFilter? get title => throw _privateConstructorUsedError;

  /// Filter by topics relation
  TopicListRelationFilter? get topics => throw _privateConstructorUsedError;
  StringFilter? get description => throw _privateConstructorUsedError;
  IntFilter? get price => throw _privateConstructorUsedError;
  StringFilter? get priceCurrency => throw _privateConstructorUsedError;
  BooleanFilter? get certificateProvided => throw _privateConstructorUsedError;
  BooleanFilter? get recordingEnabled => throw _privateConstructorUsedError;
  RecordingStoragePolicyFilter? get recordingStoragePolicy =>
      throw _privateConstructorUsedError;
  FloatFilter? get durationInHours => throw _privateConstructorUsedError;
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
  List<WebinarPlanWhereInput>? get AND => throw _privateConstructorUsedError;
  List<WebinarPlanWhereInput>? get OR => throw _privateConstructorUsedError;
  WebinarPlanWhereInput? get NOT => throw _privateConstructorUsedError;

  /// Serializes this WebinarPlanWhereInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarPlanWhereInputCopyWith<WebinarPlanWhereInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarPlanWhereInputCopyWith<$Res> {
  factory $WebinarPlanWhereInputCopyWith(WebinarPlanWhereInput value,
          $Res Function(WebinarPlanWhereInput) then) =
      _$WebinarPlanWhereInputCopyWithImpl<$Res, WebinarPlanWhereInput>;
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      TopicListRelationFilter? topics,
      StringFilter? description,
      IntFilter? price,
      StringFilter? priceCurrency,
      BooleanFilter? certificateProvided,
      BooleanFilter? recordingEnabled,
      RecordingStoragePolicyFilter? recordingStoragePolicy,
      FloatFilter? durationInHours,
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
      List<WebinarPlanWhereInput>? AND,
      List<WebinarPlanWhereInput>? OR,
      WebinarPlanWhereInput? NOT});

  $StringFilterCopyWith<$Res>? get id;
  $StringFilterCopyWith<$Res>? get title;
  $TopicListRelationFilterCopyWith<$Res>? get topics;
  $StringFilterCopyWith<$Res>? get description;
  $IntFilterCopyWith<$Res>? get price;
  $StringFilterCopyWith<$Res>? get priceCurrency;
  $BooleanFilterCopyWith<$Res>? get certificateProvided;
  $BooleanFilterCopyWith<$Res>? get recordingEnabled;
  $RecordingStoragePolicyFilterCopyWith<$Res>? get recordingStoragePolicy;
  $FloatFilterCopyWith<$Res>? get durationInHours;
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
  $WebinarPlanWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class _$WebinarPlanWhereInputCopyWithImpl<$Res,
        $Val extends WebinarPlanWhereInput>
    implements $WebinarPlanWhereInputCopyWith<$Res> {
  _$WebinarPlanWhereInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? topics = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? recordingStoragePolicy = freezed,
    Object? durationInHours = freezed,
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
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as TopicListRelationFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
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
              as List<WebinarPlanWhereInput>?,
      OR: freezed == OR
          ? _value.OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WebinarPlanWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WebinarPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
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

  /// Create a copy of WebinarPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanWhereInputCopyWith<$Res>? get NOT {
    if (_value.NOT == null) {
      return null;
    }

    return $WebinarPlanWhereInputCopyWith<$Res>(_value.NOT!, (value) {
      return _then(_value.copyWith(NOT: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarPlanWhereInputImplCopyWith<$Res>
    implements $WebinarPlanWhereInputCopyWith<$Res> {
  factory _$$WebinarPlanWhereInputImplCopyWith(
          _$WebinarPlanWhereInputImpl value,
          $Res Function(_$WebinarPlanWhereInputImpl) then) =
      __$$WebinarPlanWhereInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringFilter? id,
      StringFilter? title,
      TopicListRelationFilter? topics,
      StringFilter? description,
      IntFilter? price,
      StringFilter? priceCurrency,
      BooleanFilter? certificateProvided,
      BooleanFilter? recordingEnabled,
      RecordingStoragePolicyFilter? recordingStoragePolicy,
      FloatFilter? durationInHours,
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
      List<WebinarPlanWhereInput>? AND,
      List<WebinarPlanWhereInput>? OR,
      WebinarPlanWhereInput? NOT});

  @override
  $StringFilterCopyWith<$Res>? get id;
  @override
  $StringFilterCopyWith<$Res>? get title;
  @override
  $TopicListRelationFilterCopyWith<$Res>? get topics;
  @override
  $StringFilterCopyWith<$Res>? get description;
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
  $FloatFilterCopyWith<$Res>? get durationInHours;
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
  $WebinarPlanWhereInputCopyWith<$Res>? get NOT;
}

/// @nodoc
class __$$WebinarPlanWhereInputImplCopyWithImpl<$Res>
    extends _$WebinarPlanWhereInputCopyWithImpl<$Res,
        _$WebinarPlanWhereInputImpl>
    implements _$$WebinarPlanWhereInputImplCopyWith<$Res> {
  __$$WebinarPlanWhereInputImplCopyWithImpl(_$WebinarPlanWhereInputImpl _value,
      $Res Function(_$WebinarPlanWhereInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? topics = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? priceCurrency = freezed,
    Object? certificateProvided = freezed,
    Object? recordingEnabled = freezed,
    Object? recordingStoragePolicy = freezed,
    Object? durationInHours = freezed,
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
    return _then(_$WebinarPlanWhereInputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as TopicListRelationFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
              as FloatFilter?,
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
              as List<WebinarPlanWhereInput>?,
      OR: freezed == OR
          ? _value._OR
          : OR // ignore: cast_nullable_to_non_nullable
              as List<WebinarPlanWhereInput>?,
      NOT: freezed == NOT
          ? _value.NOT
          : NOT // ignore: cast_nullable_to_non_nullable
              as WebinarPlanWhereInput?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WebinarPlanWhereInputImpl implements _WebinarPlanWhereInput {
  const _$WebinarPlanWhereInputImpl(
      {this.id,
      this.title,
      this.topics,
      this.description,
      this.price,
      this.priceCurrency,
      this.certificateProvided,
      this.recordingEnabled,
      this.recordingStoragePolicy,
      this.durationInHours,
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
      final List<WebinarPlanWhereInput>? AND,
      final List<WebinarPlanWhereInput>? OR,
      this.NOT})
      : _AND = AND,
        _OR = OR;

  factory _$WebinarPlanWhereInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarPlanWhereInputImplFromJson(json);

  @override
  final StringFilter? id;
  @override
  final StringFilter? title;

  /// Filter by topics relation
  @override
  final TopicListRelationFilter? topics;
  @override
  final StringFilter? description;
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
  final FloatFilter? durationInHours;
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
  final List<WebinarPlanWhereInput>? _AND;
  @override
  List<WebinarPlanWhereInput>? get AND {
    final value = _AND;
    if (value == null) return null;
    if (_AND is EqualUnmodifiableListView) return _AND;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WebinarPlanWhereInput>? _OR;
  @override
  List<WebinarPlanWhereInput>? get OR {
    final value = _OR;
    if (value == null) return null;
    if (_OR is EqualUnmodifiableListView) return _OR;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WebinarPlanWhereInput? NOT;

  @override
  String toString() {
    return 'WebinarPlanWhereInput(id: $id, title: $title, topics: $topics, description: $description, price: $price, priceCurrency: $priceCurrency, certificateProvided: $certificateProvided, recordingEnabled: $recordingEnabled, recordingStoragePolicy: $recordingStoragePolicy, durationInHours: $durationInHours, maxParticipants: $maxParticipants, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, imageUrl: $imageUrl, consultantProfile: $consultantProfile, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt, AND: $AND, OR: $OR, NOT: $NOT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarPlanWhereInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.topics, topics) || other.topics == topics) &&
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
            (identical(other.durationInHours, durationInHours) ||
                other.durationInHours == durationInHours) &&
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
        topics,
        description,
        price,
        priceCurrency,
        certificateProvided,
        recordingEnabled,
        recordingStoragePolicy,
        durationInHours,
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

  /// Create a copy of WebinarPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarPlanWhereInputImplCopyWith<_$WebinarPlanWhereInputImpl>
      get copyWith => __$$WebinarPlanWhereInputImplCopyWithImpl<
          _$WebinarPlanWhereInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarPlanWhereInputImplToJson(
      this,
    );
  }
}

abstract class _WebinarPlanWhereInput implements WebinarPlanWhereInput {
  const factory _WebinarPlanWhereInput(
      {final StringFilter? id,
      final StringFilter? title,
      final TopicListRelationFilter? topics,
      final StringFilter? description,
      final IntFilter? price,
      final StringFilter? priceCurrency,
      final BooleanFilter? certificateProvided,
      final BooleanFilter? recordingEnabled,
      final RecordingStoragePolicyFilter? recordingStoragePolicy,
      final FloatFilter? durationInHours,
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
      final List<WebinarPlanWhereInput>? AND,
      final List<WebinarPlanWhereInput>? OR,
      final WebinarPlanWhereInput? NOT}) = _$WebinarPlanWhereInputImpl;

  factory _WebinarPlanWhereInput.fromJson(Map<String, dynamic> json) =
      _$WebinarPlanWhereInputImpl.fromJson;

  @override
  StringFilter? get id;
  @override
  StringFilter? get title;

  /// Filter by topics relation
  @override
  TopicListRelationFilter? get topics;
  @override
  StringFilter? get description;
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
  FloatFilter? get durationInHours;
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
  List<WebinarPlanWhereInput>? get AND;
  @override
  List<WebinarPlanWhereInput>? get OR;
  @override
  WebinarPlanWhereInput? get NOT;

  /// Create a copy of WebinarPlanWhereInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarPlanWhereInputImplCopyWith<_$WebinarPlanWhereInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarPlanListRelationFilter _$WebinarPlanListRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WebinarPlanListRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WebinarPlanListRelationFilter {
  /// At least one related record matches
  WebinarPlanWhereInput? get some => throw _privateConstructorUsedError;

  /// All related records match
  WebinarPlanWhereInput? get every => throw _privateConstructorUsedError;

  /// No related records match
  WebinarPlanWhereInput? get none => throw _privateConstructorUsedError;

  /// Serializes this WebinarPlanListRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarPlanListRelationFilterCopyWith<WebinarPlanListRelationFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarPlanListRelationFilterCopyWith<$Res> {
  factory $WebinarPlanListRelationFilterCopyWith(
          WebinarPlanListRelationFilter value,
          $Res Function(WebinarPlanListRelationFilter) then) =
      _$WebinarPlanListRelationFilterCopyWithImpl<$Res,
          WebinarPlanListRelationFilter>;
  @useResult
  $Res call(
      {WebinarPlanWhereInput? some,
      WebinarPlanWhereInput? every,
      WebinarPlanWhereInput? none});

  $WebinarPlanWhereInputCopyWith<$Res>? get some;
  $WebinarPlanWhereInputCopyWith<$Res>? get every;
  $WebinarPlanWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class _$WebinarPlanListRelationFilterCopyWithImpl<$Res,
        $Val extends WebinarPlanListRelationFilter>
    implements $WebinarPlanListRelationFilterCopyWith<$Res> {
  _$WebinarPlanListRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarPlanListRelationFilter
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
              as WebinarPlanWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WebinarPlanWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WebinarPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebinarPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanWhereInputCopyWith<$Res>? get some {
    if (_value.some == null) {
      return null;
    }

    return $WebinarPlanWhereInputCopyWith<$Res>(_value.some!, (value) {
      return _then(_value.copyWith(some: value) as $Val);
    });
  }

  /// Create a copy of WebinarPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanWhereInputCopyWith<$Res>? get every {
    if (_value.every == null) {
      return null;
    }

    return $WebinarPlanWhereInputCopyWith<$Res>(_value.every!, (value) {
      return _then(_value.copyWith(every: value) as $Val);
    });
  }

  /// Create a copy of WebinarPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanWhereInputCopyWith<$Res>? get none {
    if (_value.none == null) {
      return null;
    }

    return $WebinarPlanWhereInputCopyWith<$Res>(_value.none!, (value) {
      return _then(_value.copyWith(none: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarPlanListRelationFilterImplCopyWith<$Res>
    implements $WebinarPlanListRelationFilterCopyWith<$Res> {
  factory _$$WebinarPlanListRelationFilterImplCopyWith(
          _$WebinarPlanListRelationFilterImpl value,
          $Res Function(_$WebinarPlanListRelationFilterImpl) then) =
      __$$WebinarPlanListRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebinarPlanWhereInput? some,
      WebinarPlanWhereInput? every,
      WebinarPlanWhereInput? none});

  @override
  $WebinarPlanWhereInputCopyWith<$Res>? get some;
  @override
  $WebinarPlanWhereInputCopyWith<$Res>? get every;
  @override
  $WebinarPlanWhereInputCopyWith<$Res>? get none;
}

/// @nodoc
class __$$WebinarPlanListRelationFilterImplCopyWithImpl<$Res>
    extends _$WebinarPlanListRelationFilterCopyWithImpl<$Res,
        _$WebinarPlanListRelationFilterImpl>
    implements _$$WebinarPlanListRelationFilterImplCopyWith<$Res> {
  __$$WebinarPlanListRelationFilterImplCopyWithImpl(
      _$WebinarPlanListRelationFilterImpl _value,
      $Res Function(_$WebinarPlanListRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? some = freezed,
    Object? every = freezed,
    Object? none = freezed,
  }) {
    return _then(_$WebinarPlanListRelationFilterImpl(
      some: freezed == some
          ? _value.some
          : some // ignore: cast_nullable_to_non_nullable
              as WebinarPlanWhereInput?,
      every: freezed == every
          ? _value.every
          : every // ignore: cast_nullable_to_non_nullable
              as WebinarPlanWhereInput?,
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as WebinarPlanWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarPlanListRelationFilterImpl
    implements _WebinarPlanListRelationFilter {
  const _$WebinarPlanListRelationFilterImpl({this.some, this.every, this.none});

  factory _$WebinarPlanListRelationFilterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebinarPlanListRelationFilterImplFromJson(json);

  /// At least one related record matches
  @override
  final WebinarPlanWhereInput? some;

  /// All related records match
  @override
  final WebinarPlanWhereInput? every;

  /// No related records match
  @override
  final WebinarPlanWhereInput? none;

  @override
  String toString() {
    return 'WebinarPlanListRelationFilter(some: $some, every: $every, none: $none)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarPlanListRelationFilterImpl &&
            (identical(other.some, some) || other.some == some) &&
            (identical(other.every, every) || other.every == every) &&
            (identical(other.none, none) || other.none == none));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, some, every, none);

  /// Create a copy of WebinarPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarPlanListRelationFilterImplCopyWith<
          _$WebinarPlanListRelationFilterImpl>
      get copyWith => __$$WebinarPlanListRelationFilterImplCopyWithImpl<
          _$WebinarPlanListRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarPlanListRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WebinarPlanListRelationFilter
    implements WebinarPlanListRelationFilter {
  const factory _WebinarPlanListRelationFilter(
      {final WebinarPlanWhereInput? some,
      final WebinarPlanWhereInput? every,
      final WebinarPlanWhereInput? none}) = _$WebinarPlanListRelationFilterImpl;

  factory _WebinarPlanListRelationFilter.fromJson(Map<String, dynamic> json) =
      _$WebinarPlanListRelationFilterImpl.fromJson;

  /// At least one related record matches
  @override
  WebinarPlanWhereInput? get some;

  /// All related records match
  @override
  WebinarPlanWhereInput? get every;

  /// No related records match
  @override
  WebinarPlanWhereInput? get none;

  /// Create a copy of WebinarPlanListRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarPlanListRelationFilterImplCopyWith<
          _$WebinarPlanListRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarPlanRelationFilter _$WebinarPlanRelationFilterFromJson(
    Map<String, dynamic> json) {
  return _WebinarPlanRelationFilter.fromJson(json);
}

/// @nodoc
mixin _$WebinarPlanRelationFilter {
  /// Related record matches
  @JsonKey(name: 'is')
  WebinarPlanWhereInput? get is_ => throw _privateConstructorUsedError;

  /// Related record does not match
  WebinarPlanWhereInput? get isNot => throw _privateConstructorUsedError;

  /// Serializes this WebinarPlanRelationFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarPlanRelationFilterCopyWith<WebinarPlanRelationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarPlanRelationFilterCopyWith<$Res> {
  factory $WebinarPlanRelationFilterCopyWith(WebinarPlanRelationFilter value,
          $Res Function(WebinarPlanRelationFilter) then) =
      _$WebinarPlanRelationFilterCopyWithImpl<$Res, WebinarPlanRelationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WebinarPlanWhereInput? is_,
      WebinarPlanWhereInput? isNot});

  $WebinarPlanWhereInputCopyWith<$Res>? get is_;
  $WebinarPlanWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class _$WebinarPlanRelationFilterCopyWithImpl<$Res,
        $Val extends WebinarPlanRelationFilter>
    implements $WebinarPlanRelationFilterCopyWith<$Res> {
  _$WebinarPlanRelationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarPlanRelationFilter
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
              as WebinarPlanWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WebinarPlanWhereInput?,
    ) as $Val);
  }

  /// Create a copy of WebinarPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanWhereInputCopyWith<$Res>? get is_ {
    if (_value.is_ == null) {
      return null;
    }

    return $WebinarPlanWhereInputCopyWith<$Res>(_value.is_!, (value) {
      return _then(_value.copyWith(is_: value) as $Val);
    });
  }

  /// Create a copy of WebinarPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebinarPlanWhereInputCopyWith<$Res>? get isNot {
    if (_value.isNot == null) {
      return null;
    }

    return $WebinarPlanWhereInputCopyWith<$Res>(_value.isNot!, (value) {
      return _then(_value.copyWith(isNot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarPlanRelationFilterImplCopyWith<$Res>
    implements $WebinarPlanRelationFilterCopyWith<$Res> {
  factory _$$WebinarPlanRelationFilterImplCopyWith(
          _$WebinarPlanRelationFilterImpl value,
          $Res Function(_$WebinarPlanRelationFilterImpl) then) =
      __$$WebinarPlanRelationFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is') WebinarPlanWhereInput? is_,
      WebinarPlanWhereInput? isNot});

  @override
  $WebinarPlanWhereInputCopyWith<$Res>? get is_;
  @override
  $WebinarPlanWhereInputCopyWith<$Res>? get isNot;
}

/// @nodoc
class __$$WebinarPlanRelationFilterImplCopyWithImpl<$Res>
    extends _$WebinarPlanRelationFilterCopyWithImpl<$Res,
        _$WebinarPlanRelationFilterImpl>
    implements _$$WebinarPlanRelationFilterImplCopyWith<$Res> {
  __$$WebinarPlanRelationFilterImplCopyWithImpl(
      _$WebinarPlanRelationFilterImpl _value,
      $Res Function(_$WebinarPlanRelationFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_ = freezed,
    Object? isNot = freezed,
  }) {
    return _then(_$WebinarPlanRelationFilterImpl(
      is_: freezed == is_
          ? _value.is_
          : is_ // ignore: cast_nullable_to_non_nullable
              as WebinarPlanWhereInput?,
      isNot: freezed == isNot
          ? _value.isNot
          : isNot // ignore: cast_nullable_to_non_nullable
              as WebinarPlanWhereInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarPlanRelationFilterImpl implements _WebinarPlanRelationFilter {
  const _$WebinarPlanRelationFilterImpl(
      {@JsonKey(name: 'is') this.is_, this.isNot});

  factory _$WebinarPlanRelationFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarPlanRelationFilterImplFromJson(json);

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  final WebinarPlanWhereInput? is_;

  /// Related record does not match
  @override
  final WebinarPlanWhereInput? isNot;

  @override
  String toString() {
    return 'WebinarPlanRelationFilter(is_: $is_, isNot: $isNot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarPlanRelationFilterImpl &&
            (identical(other.is_, is_) || other.is_ == is_) &&
            (identical(other.isNot, isNot) || other.isNot == isNot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, is_, isNot);

  /// Create a copy of WebinarPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarPlanRelationFilterImplCopyWith<_$WebinarPlanRelationFilterImpl>
      get copyWith => __$$WebinarPlanRelationFilterImplCopyWithImpl<
          _$WebinarPlanRelationFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarPlanRelationFilterImplToJson(
      this,
    );
  }
}

abstract class _WebinarPlanRelationFilter implements WebinarPlanRelationFilter {
  const factory _WebinarPlanRelationFilter(
      {@JsonKey(name: 'is') final WebinarPlanWhereInput? is_,
      final WebinarPlanWhereInput? isNot}) = _$WebinarPlanRelationFilterImpl;

  factory _WebinarPlanRelationFilter.fromJson(Map<String, dynamic> json) =
      _$WebinarPlanRelationFilterImpl.fromJson;

  /// Related record matches
  @override
  @JsonKey(name: 'is')
  WebinarPlanWhereInput? get is_;

  /// Related record does not match
  @override
  WebinarPlanWhereInput? get isNot;

  /// Create a copy of WebinarPlanRelationFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarPlanRelationFilterImplCopyWith<_$WebinarPlanRelationFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarPlanOrderByInput _$WebinarPlanOrderByInputFromJson(
    Map<String, dynamic> json) {
  return _WebinarPlanOrderByInput.fromJson(json);
}

/// @nodoc
mixin _$WebinarPlanOrderByInput {
  SortOrder? get id => throw _privateConstructorUsedError;
  SortOrder? get title => throw _privateConstructorUsedError;
  SortOrder? get description => throw _privateConstructorUsedError;
  SortOrder? get price => throw _privateConstructorUsedError;
  SortOrder? get priceCurrency => throw _privateConstructorUsedError;
  SortOrder? get certificateProvided => throw _privateConstructorUsedError;
  SortOrder? get recordingEnabled => throw _privateConstructorUsedError;
  SortOrder? get durationInHours => throw _privateConstructorUsedError;
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

  /// Serializes this WebinarPlanOrderByInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebinarPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebinarPlanOrderByInputCopyWith<WebinarPlanOrderByInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarPlanOrderByInputCopyWith<$Res> {
  factory $WebinarPlanOrderByInputCopyWith(WebinarPlanOrderByInput value,
          $Res Function(WebinarPlanOrderByInput) then) =
      _$WebinarPlanOrderByInputCopyWithImpl<$Res, WebinarPlanOrderByInput>;
  @useResult
  $Res call(
      {SortOrder? id,
      SortOrder? title,
      SortOrder? description,
      SortOrder? price,
      SortOrder? priceCurrency,
      SortOrder? certificateProvided,
      SortOrder? recordingEnabled,
      SortOrder? durationInHours,
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
class _$WebinarPlanOrderByInputCopyWithImpl<$Res,
        $Val extends WebinarPlanOrderByInput>
    implements $WebinarPlanOrderByInputCopyWith<$Res> {
  _$WebinarPlanOrderByInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebinarPlanOrderByInput
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
    Object? durationInHours = freezed,
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WebinarPlanOrderByInputImplCopyWith<$Res>
    implements $WebinarPlanOrderByInputCopyWith<$Res> {
  factory _$$WebinarPlanOrderByInputImplCopyWith(
          _$WebinarPlanOrderByInputImpl value,
          $Res Function(_$WebinarPlanOrderByInputImpl) then) =
      __$$WebinarPlanOrderByInputImplCopyWithImpl<$Res>;
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
      SortOrder? durationInHours,
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
class __$$WebinarPlanOrderByInputImplCopyWithImpl<$Res>
    extends _$WebinarPlanOrderByInputCopyWithImpl<$Res,
        _$WebinarPlanOrderByInputImpl>
    implements _$$WebinarPlanOrderByInputImplCopyWith<$Res> {
  __$$WebinarPlanOrderByInputImplCopyWithImpl(
      _$WebinarPlanOrderByInputImpl _value,
      $Res Function(_$WebinarPlanOrderByInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebinarPlanOrderByInput
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
    Object? durationInHours = freezed,
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
    return _then(_$WebinarPlanOrderByInputImpl(
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
      durationInHours: freezed == durationInHours
          ? _value.durationInHours
          : durationInHours // ignore: cast_nullable_to_non_nullable
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
class _$WebinarPlanOrderByInputImpl implements _WebinarPlanOrderByInput {
  const _$WebinarPlanOrderByInputImpl(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.priceCurrency,
      this.certificateProvided,
      this.recordingEnabled,
      this.durationInHours,
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

  factory _$WebinarPlanOrderByInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarPlanOrderByInputImplFromJson(json);

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
  final SortOrder? durationInHours;
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
    return 'WebinarPlanOrderByInput(id: $id, title: $title, description: $description, price: $price, priceCurrency: $priceCurrency, certificateProvided: $certificateProvided, recordingEnabled: $recordingEnabled, durationInHours: $durationInHours, maxParticipants: $maxParticipants, language: $language, level: $level, prerequisites: $prerequisites, materialProvided: $materialProvided, learningOutcomes: $learningOutcomes, imageUrl: $imageUrl, consultantProfileId: $consultantProfileId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarPlanOrderByInputImpl &&
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
            (identical(other.durationInHours, durationInHours) ||
                other.durationInHours == durationInHours) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      price,
      priceCurrency,
      certificateProvided,
      recordingEnabled,
      durationInHours,
      maxParticipants,
      language,
      level,
      prerequisites,
      materialProvided,
      learningOutcomes,
      imageUrl,
      consultantProfileId,
      createdAt,
      updatedAt);

  /// Create a copy of WebinarPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarPlanOrderByInputImplCopyWith<_$WebinarPlanOrderByInputImpl>
      get copyWith => __$$WebinarPlanOrderByInputImplCopyWithImpl<
          _$WebinarPlanOrderByInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarPlanOrderByInputImplToJson(
      this,
    );
  }
}

abstract class _WebinarPlanOrderByInput implements WebinarPlanOrderByInput {
  const factory _WebinarPlanOrderByInput(
      {final SortOrder? id,
      final SortOrder? title,
      final SortOrder? description,
      final SortOrder? price,
      final SortOrder? priceCurrency,
      final SortOrder? certificateProvided,
      final SortOrder? recordingEnabled,
      final SortOrder? durationInHours,
      final SortOrder? maxParticipants,
      final SortOrder? language,
      final SortOrder? level,
      final SortOrder? prerequisites,
      final SortOrder? materialProvided,
      final SortOrder? learningOutcomes,
      final SortOrder? imageUrl,
      final SortOrder? consultantProfileId,
      final SortOrder? createdAt,
      final SortOrder? updatedAt}) = _$WebinarPlanOrderByInputImpl;

  factory _WebinarPlanOrderByInput.fromJson(Map<String, dynamic> json) =
      _$WebinarPlanOrderByInputImpl.fromJson;

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
  SortOrder? get durationInHours;
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

  /// Create a copy of WebinarPlanOrderByInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebinarPlanOrderByInputImplCopyWith<_$WebinarPlanOrderByInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
