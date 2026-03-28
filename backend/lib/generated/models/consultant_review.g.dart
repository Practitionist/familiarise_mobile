// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultant_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultantReviewImpl _$$ConsultantReviewImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultantReviewImpl(
      id: json['id'] as String,
      rating: (json['rating'] as num?)?.toInt() ?? 0,
      reviewDescription: json['reviewDescription'] as String?,
      consultantProfileId: json['consultantProfileId'] as String,
      consulteeProfileId: json['consulteeProfileId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ConsultantReviewImplToJson(
        _$ConsultantReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'reviewDescription': instance.reviewDescription,
      'consultantProfileId': instance.consultantProfileId,
      'consulteeProfileId': instance.consulteeProfileId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$CreateConsultantReviewInputImpl _$$CreateConsultantReviewInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateConsultantReviewInputImpl(
      rating: (json['rating'] as num?)?.toInt() ?? 0,
      reviewDescription: json['reviewDescription'] as String?,
      consultantProfileId: json['consultantProfileId'] as String,
      consulteeProfileId: json['consulteeProfileId'] as String,
    );

Map<String, dynamic> _$$CreateConsultantReviewInputImplToJson(
        _$CreateConsultantReviewInputImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'reviewDescription': instance.reviewDescription,
      'consultantProfileId': instance.consultantProfileId,
      'consulteeProfileId': instance.consulteeProfileId,
    };

_$UpdateConsultantReviewInputImpl _$$UpdateConsultantReviewInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateConsultantReviewInputImpl(
      rating: (json['rating'] as num?)?.toInt(),
      reviewDescription: json['reviewDescription'] as String?,
      consultantProfileId: json['consultantProfileId'] as String?,
      consulteeProfileId: json['consulteeProfileId'] as String?,
    );

Map<String, dynamic> _$$UpdateConsultantReviewInputImplToJson(
        _$UpdateConsultantReviewInputImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'reviewDescription': instance.reviewDescription,
      'consultantProfileId': instance.consultantProfileId,
      'consulteeProfileId': instance.consulteeProfileId,
    };

_$ConsultantReviewWhereUniqueInputImpl
    _$$ConsultantReviewWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantReviewWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$ConsultantReviewWhereUniqueInputImplToJson(
        _$ConsultantReviewWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ConsultantReviewWhereInputImpl _$$ConsultantReviewWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultantReviewWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : IntFilter.fromJson(json['rating'] as Map<String, dynamic>),
      reviewDescription: json['reviewDescription'] == null
          ? null
          : StringFilter.fromJson(
              json['reviewDescription'] as Map<String, dynamic>),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      consulteeProfile: json['consulteeProfile'] == null
          ? null
          : ConsulteeProfileRelationFilter.fromJson(
              json['consulteeProfile'] as Map<String, dynamic>),
      consulteeProfileId: json['consulteeProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consulteeProfileId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              ConsultantReviewWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              ConsultantReviewWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : ConsultantReviewWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsultantReviewWhereInputImplToJson(
        _$ConsultantReviewWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'rating': instance.rating?.toJson(),
      'reviewDescription': instance.reviewDescription?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'consulteeProfile': instance.consulteeProfile?.toJson(),
      'consulteeProfileId': instance.consulteeProfileId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ConsultantReviewListRelationFilterImpl
    _$$ConsultantReviewListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantReviewListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ConsultantReviewWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ConsultantReviewWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ConsultantReviewWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultantReviewListRelationFilterImplToJson(
        _$ConsultantReviewListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$ConsultantReviewRelationFilterImpl
    _$$ConsultantReviewRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$ConsultantReviewRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ConsultantReviewWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ConsultantReviewWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultantReviewRelationFilterImplToJson(
        _$ConsultantReviewRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ConsultantReviewOrderByInputImpl _$$ConsultantReviewOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultantReviewOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      rating: $enumDecodeNullable(_$SortOrderEnumMap, json['rating']),
      reviewDescription:
          $enumDecodeNullable(_$SortOrderEnumMap, json['reviewDescription']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      consulteeProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consulteeProfileId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$ConsultantReviewOrderByInputImplToJson(
        _$ConsultantReviewOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'rating': _$SortOrderEnumMap[instance.rating],
      'reviewDescription': _$SortOrderEnumMap[instance.reviewDescription],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'consulteeProfileId': _$SortOrderEnumMap[instance.consulteeProfileId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
