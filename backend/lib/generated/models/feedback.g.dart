// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackImpl _$$FeedbackImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num?)?.toInt(),
      category: json['category'] as String?,
      status: $enumDecodeNullable(_$FeedbackStatusEnumMap, json['status']) ??
          FeedbackStatus.pending,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$FeedbackImplToJson(_$FeedbackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'rating': instance.rating,
      'category': instance.category,
      'status': _$FeedbackStatusEnumMap[instance.status]!,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$FeedbackStatusEnumMap = {
  FeedbackStatus.pending: 'PENDING',
  FeedbackStatus.acknowledged: 'ACKNOWLEDGED',
  FeedbackStatus.inProgress: 'IN_PROGRESS',
  FeedbackStatus.resolved: 'RESOLVED',
  FeedbackStatus.closed: 'CLOSED',
};

_$CreateFeedbackInputImpl _$$CreateFeedbackInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateFeedbackInputImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num?)?.toInt(),
      category: json['category'] as String?,
      status: $enumDecodeNullable(_$FeedbackStatusEnumMap, json['status']) ??
          FeedbackStatus.pending,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CreateFeedbackInputImplToJson(
        _$CreateFeedbackInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'rating': instance.rating,
      'category': instance.category,
      'status': _$FeedbackStatusEnumMap[instance.status]!,
      'userId': instance.userId,
    };

_$UpdateFeedbackInputImpl _$$UpdateFeedbackInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateFeedbackInputImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      category: json['category'] as String?,
      status: $enumDecodeNullable(_$FeedbackStatusEnumMap, json['status']),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$UpdateFeedbackInputImplToJson(
        _$UpdateFeedbackInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'rating': instance.rating,
      'category': instance.category,
      'status': _$FeedbackStatusEnumMap[instance.status],
      'userId': instance.userId,
    };

_$FeedbackWhereUniqueInputImpl _$$FeedbackWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedbackWhereUniqueInputImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$FeedbackWhereUniqueInputImplToJson(
        _$FeedbackWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$FeedbackWhereInputImpl _$$FeedbackWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedbackWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : IntFilter.fromJson(json['rating'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : StringFilter.fromJson(json['category'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : FeedbackStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => FeedbackWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => FeedbackWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : FeedbackWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedbackWhereInputImplToJson(
        _$FeedbackWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title?.toJson(),
      'description': instance.description?.toJson(),
      'rating': instance.rating?.toJson(),
      'category': instance.category?.toJson(),
      'status': instance.status?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$FeedbackListRelationFilterImpl _$$FeedbackListRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedbackListRelationFilterImpl(
      some: json['some'] == null
          ? null
          : FeedbackWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      every: json['every'] == null
          ? null
          : FeedbackWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : FeedbackWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedbackListRelationFilterImplToJson(
        _$FeedbackListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$FeedbackRelationFilterImpl _$$FeedbackRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedbackRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : FeedbackWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : FeedbackWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedbackRelationFilterImplToJson(
        _$FeedbackRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$FeedbackOrderByInputImpl _$$FeedbackOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedbackOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      rating: $enumDecodeNullable(_$SortOrderEnumMap, json['rating']),
      category: $enumDecodeNullable(_$SortOrderEnumMap, json['category']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$FeedbackOrderByInputImplToJson(
        _$FeedbackOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'title': _$SortOrderEnumMap[instance.title],
      'description': _$SortOrderEnumMap[instance.description],
      'rating': _$SortOrderEnumMap[instance.rating],
      'category': _$SortOrderEnumMap[instance.category],
      'userId': _$SortOrderEnumMap[instance.userId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
