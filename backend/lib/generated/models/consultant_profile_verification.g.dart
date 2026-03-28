// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultant_profile_verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultantProfileVerificationImpl
    _$$ConsultantProfileVerificationImplFromJson(Map<String, dynamic> json) =>
        _$ConsultantProfileVerificationImpl(
          id: json['id'] as String,
          status: $enumDecodeNullable(
                  _$ProfileVerificationStatusEnumMap, json['status']) ??
              ProfileVerificationStatus.pending,
          consultantProfileId: json['consultantProfileId'] as String,
          submittedAt: DateTime.parse(json['submittedAt'] as String),
          notes: json['notes'] as String?,
          reviewedAt: json['reviewedAt'] == null
              ? null
              : DateTime.parse(json['reviewedAt'] as String),
          reviewedById: json['reviewedById'] as String?,
          reviewNotes: json['reviewNotes'] as String?,
          rejectionReason: json['rejectionReason'] as String?,
          feedbackDetails: json['feedbackDetails'] as String?,
          documents: (json['documents'] as List<dynamic>)
              .map((e) => ProfileVerificationDocument.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          createdAt: DateTime.parse(json['createdAt'] as String),
          updatedAt: DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$$ConsultantProfileVerificationImplToJson(
        _$ConsultantProfileVerificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$ProfileVerificationStatusEnumMap[instance.status]!,
      'consultantProfileId': instance.consultantProfileId,
      'submittedAt': instance.submittedAt.toIso8601String(),
      'notes': instance.notes,
      'reviewedAt': instance.reviewedAt?.toIso8601String(),
      'reviewedById': instance.reviewedById,
      'reviewNotes': instance.reviewNotes,
      'rejectionReason': instance.rejectionReason,
      'feedbackDetails': instance.feedbackDetails,
      'documents': instance.documents,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ProfileVerificationStatusEnumMap = {
  ProfileVerificationStatus.pending: 'PENDING',
  ProfileVerificationStatus.approved: 'APPROVED',
  ProfileVerificationStatus.rejected: 'REJECTED',
  ProfileVerificationStatus.needsInfo: 'NEEDS_INFO',
  ProfileVerificationStatus.superseded: 'SUPERSEDED',
};

_$CreateConsultantProfileVerificationInputImpl
    _$$CreateConsultantProfileVerificationInputImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateConsultantProfileVerificationInputImpl(
          status: $enumDecodeNullable(
                  _$ProfileVerificationStatusEnumMap, json['status']) ??
              ProfileVerificationStatus.pending,
          consultantProfileId: json['consultantProfileId'] as String,
          notes: json['notes'] as String?,
          reviewedAt: json['reviewedAt'] == null
              ? null
              : DateTime.parse(json['reviewedAt'] as String),
          reviewedById: json['reviewedById'] as String?,
          reviewNotes: json['reviewNotes'] as String?,
          rejectionReason: json['rejectionReason'] as String?,
          feedbackDetails: json['feedbackDetails'] as String?,
        );

Map<String, dynamic> _$$CreateConsultantProfileVerificationInputImplToJson(
        _$CreateConsultantProfileVerificationInputImpl instance) =>
    <String, dynamic>{
      'status': _$ProfileVerificationStatusEnumMap[instance.status]!,
      'consultantProfileId': instance.consultantProfileId,
      'notes': instance.notes,
      'reviewedAt': instance.reviewedAt?.toIso8601String(),
      'reviewedById': instance.reviewedById,
      'reviewNotes': instance.reviewNotes,
      'rejectionReason': instance.rejectionReason,
      'feedbackDetails': instance.feedbackDetails,
    };

_$UpdateConsultantProfileVerificationInputImpl
    _$$UpdateConsultantProfileVerificationInputImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateConsultantProfileVerificationInputImpl(
          status: $enumDecodeNullable(
              _$ProfileVerificationStatusEnumMap, json['status']),
          consultantProfileId: json['consultantProfileId'] as String?,
          notes: json['notes'] as String?,
          reviewedAt: json['reviewedAt'] == null
              ? null
              : DateTime.parse(json['reviewedAt'] as String),
          reviewedById: json['reviewedById'] as String?,
          reviewNotes: json['reviewNotes'] as String?,
          rejectionReason: json['rejectionReason'] as String?,
          feedbackDetails: json['feedbackDetails'] as String?,
        );

Map<String, dynamic> _$$UpdateConsultantProfileVerificationInputImplToJson(
        _$UpdateConsultantProfileVerificationInputImpl instance) =>
    <String, dynamic>{
      'status': _$ProfileVerificationStatusEnumMap[instance.status],
      'consultantProfileId': instance.consultantProfileId,
      'notes': instance.notes,
      'reviewedAt': instance.reviewedAt?.toIso8601String(),
      'reviewedById': instance.reviewedById,
      'reviewNotes': instance.reviewNotes,
      'rejectionReason': instance.rejectionReason,
      'feedbackDetails': instance.feedbackDetails,
    };

_$ConsultantProfileVerificationWhereUniqueInputImpl
    _$$ConsultantProfileVerificationWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantProfileVerificationWhereUniqueInputImpl(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$ConsultantProfileVerificationWhereUniqueInputImplToJson(
        _$ConsultantProfileVerificationWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$ConsultantProfileVerificationWhereInputImpl
    _$$ConsultantProfileVerificationWhereInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantProfileVerificationWhereInputImpl(
          id: json['id'] == null
              ? null
              : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : ProfileVerificationStatusFilter.fromJson(
                  json['status'] as Map<String, dynamic>),
          consultantProfileId: json['consultantProfileId'] == null
              ? null
              : StringFilter.fromJson(
                  json['consultantProfileId'] as Map<String, dynamic>),
          consultantProfile: json['consultantProfile'] == null
              ? null
              : ConsultantProfileRelationFilter.fromJson(
                  json['consultantProfile'] as Map<String, dynamic>),
          submittedAt: json['submittedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['submittedAt'] as Map<String, dynamic>),
          notes: json['notes'] == null
              ? null
              : StringFilter.fromJson(json['notes'] as Map<String, dynamic>),
          reviewedAt: json['reviewedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['reviewedAt'] as Map<String, dynamic>),
          reviewedById: json['reviewedById'] == null
              ? null
              : StringFilter.fromJson(
                  json['reviewedById'] as Map<String, dynamic>),
          reviewNotes: json['reviewNotes'] == null
              ? null
              : StringFilter.fromJson(
                  json['reviewNotes'] as Map<String, dynamic>),
          rejectionReason: json['rejectionReason'] == null
              ? null
              : StringFilter.fromJson(
                  json['rejectionReason'] as Map<String, dynamic>),
          feedbackDetails: json['feedbackDetails'] == null
              ? null
              : StringFilter.fromJson(
                  json['feedbackDetails'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['createdAt'] as Map<String, dynamic>),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTimeFilter.fromJson(
                  json['updatedAt'] as Map<String, dynamic>),
          AND: (json['AND'] as List<dynamic>?)
              ?.map((e) => ConsultantProfileVerificationWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          OR: (json['OR'] as List<dynamic>?)
              ?.map((e) => ConsultantProfileVerificationWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          NOT: json['NOT'] == null
              ? null
              : ConsultantProfileVerificationWhereInput.fromJson(
                  json['NOT'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultantProfileVerificationWhereInputImplToJson(
        _$ConsultantProfileVerificationWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'status': instance.status?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'submittedAt': instance.submittedAt?.toJson(),
      'notes': instance.notes?.toJson(),
      'reviewedAt': instance.reviewedAt?.toJson(),
      'reviewedById': instance.reviewedById?.toJson(),
      'reviewNotes': instance.reviewNotes?.toJson(),
      'rejectionReason': instance.rejectionReason?.toJson(),
      'feedbackDetails': instance.feedbackDetails?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$ConsultantProfileVerificationListRelationFilterImpl
    _$$ConsultantProfileVerificationListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantProfileVerificationListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : ConsultantProfileVerificationWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : ConsultantProfileVerificationWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : ConsultantProfileVerificationWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$ConsultantProfileVerificationListRelationFilterImplToJson(
            _$ConsultantProfileVerificationListRelationFilterImpl instance) =>
        <String, dynamic>{
          'some': instance.some,
          'every': instance.every,
          'none': instance.none,
        };

_$ConsultantProfileVerificationRelationFilterImpl
    _$$ConsultantProfileVerificationRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantProfileVerificationRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : ConsultantProfileVerificationWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : ConsultantProfileVerificationWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultantProfileVerificationRelationFilterImplToJson(
        _$ConsultantProfileVerificationRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$ConsultantProfileVerificationOrderByInputImpl
    _$$ConsultantProfileVerificationOrderByInputImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultantProfileVerificationOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          consultantProfileId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['consultantProfileId']),
          submittedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['submittedAt']),
          notes: $enumDecodeNullable(_$SortOrderEnumMap, json['notes']),
          reviewedAt:
              $enumDecodeNullable(_$SortOrderEnumMap, json['reviewedAt']),
          reviewedById:
              $enumDecodeNullable(_$SortOrderEnumMap, json['reviewedById']),
          reviewNotes:
              $enumDecodeNullable(_$SortOrderEnumMap, json['reviewNotes']),
          rejectionReason:
              $enumDecodeNullable(_$SortOrderEnumMap, json['rejectionReason']),
          feedbackDetails:
              $enumDecodeNullable(_$SortOrderEnumMap, json['feedbackDetails']),
          createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
          updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
        );

Map<String, dynamic> _$$ConsultantProfileVerificationOrderByInputImplToJson(
        _$ConsultantProfileVerificationOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'submittedAt': _$SortOrderEnumMap[instance.submittedAt],
      'notes': _$SortOrderEnumMap[instance.notes],
      'reviewedAt': _$SortOrderEnumMap[instance.reviewedAt],
      'reviewedById': _$SortOrderEnumMap[instance.reviewedById],
      'reviewNotes': _$SortOrderEnumMap[instance.reviewNotes],
      'rejectionReason': _$SortOrderEnumMap[instance.rejectionReason],
      'feedbackDetails': _$SortOrderEnumMap[instance.feedbackDetails],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
