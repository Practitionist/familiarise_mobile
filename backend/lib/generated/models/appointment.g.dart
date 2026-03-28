// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      id: json['id'] as String,
      appointmentType:
          $enumDecode(_$AppointmentsTypeEnumMap, json['appointmentType']),
      slotsOfAppointment: (json['slotsOfAppointment'] as List<dynamic>)
          .map((e) => SlotOfAppointment.fromJson(e as Map<String, dynamic>))
          .toList(),
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      webinarId: json['webinarId'] as String?,
      classId: json['classId'] as String?,
      trialSession: json['trialSession'] == null
          ? null
          : TrialSession.fromJson(json['trialSession'] as Map<String, dynamic>),
      payment: (json['payment'] as List<dynamic>)
          .map((e) => Payment.fromJson(e as Map<String, dynamic>))
          .toList(),
      documents: (json['documents'] as List<dynamic>)
          .map((e) => AppointmentDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointmentType': _$AppointmentsTypeEnumMap[instance.appointmentType]!,
      'slotsOfAppointment': instance.slotsOfAppointment,
      'consultationId': instance.consultationId,
      'subscriptionId': instance.subscriptionId,
      'webinarId': instance.webinarId,
      'classId': instance.classId,
      'trialSession': instance.trialSession,
      'payment': instance.payment,
      'documents': instance.documents,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$AppointmentsTypeEnumMap = {
  AppointmentsType.consultation: 'CONSULTATION',
  AppointmentsType.subscription: 'SUBSCRIPTION',
  AppointmentsType.webinar: 'WEBINAR',
  AppointmentsType.classValue: 'CLASS',
  AppointmentsType.trial: 'TRIAL',
};

_$CreateAppointmentInputImpl _$$CreateAppointmentInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAppointmentInputImpl(
      appointmentType:
          $enumDecode(_$AppointmentsTypeEnumMap, json['appointmentType']),
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      webinarId: json['webinarId'] as String?,
      classId: json['classId'] as String?,
    );

Map<String, dynamic> _$$CreateAppointmentInputImplToJson(
        _$CreateAppointmentInputImpl instance) =>
    <String, dynamic>{
      'appointmentType': _$AppointmentsTypeEnumMap[instance.appointmentType]!,
      'consultationId': instance.consultationId,
      'subscriptionId': instance.subscriptionId,
      'webinarId': instance.webinarId,
      'classId': instance.classId,
    };

_$UpdateAppointmentInputImpl _$$UpdateAppointmentInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateAppointmentInputImpl(
      appointmentType: $enumDecodeNullable(
          _$AppointmentsTypeEnumMap, json['appointmentType']),
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      webinarId: json['webinarId'] as String?,
      classId: json['classId'] as String?,
    );

Map<String, dynamic> _$$UpdateAppointmentInputImplToJson(
        _$UpdateAppointmentInputImpl instance) =>
    <String, dynamic>{
      'appointmentType': _$AppointmentsTypeEnumMap[instance.appointmentType],
      'consultationId': instance.consultationId,
      'subscriptionId': instance.subscriptionId,
      'webinarId': instance.webinarId,
      'classId': instance.classId,
    };

_$AppointmentWhereUniqueInputImpl _$$AppointmentWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentWhereUniqueInputImpl(
      id: json['id'] as String?,
      consultationId: json['consultationId'] as String?,
      webinarId: json['webinarId'] as String?,
    );

Map<String, dynamic> _$$AppointmentWhereUniqueInputImplToJson(
        _$AppointmentWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consultationId': instance.consultationId,
      'webinarId': instance.webinarId,
    };

_$AppointmentWhereInputImpl _$$AppointmentWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      appointmentType: json['appointmentType'] == null
          ? null
          : AppointmentsTypeFilter.fromJson(
              json['appointmentType'] as Map<String, dynamic>),
      consultation: json['consultation'] == null
          ? null
          : ConsultationRelationFilter.fromJson(
              json['consultation'] as Map<String, dynamic>),
      consultationId: json['consultationId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultationId'] as Map<String, dynamic>),
      subscription: json['subscription'] == null
          ? null
          : SubscriptionRelationFilter.fromJson(
              json['subscription'] as Map<String, dynamic>),
      subscriptionId: json['subscriptionId'] == null
          ? null
          : StringFilter.fromJson(
              json['subscriptionId'] as Map<String, dynamic>),
      webinar: json['webinar'] == null
          ? null
          : WebinarRelationFilter.fromJson(
              json['webinar'] as Map<String, dynamic>),
      webinarId: json['webinarId'] == null
          ? null
          : StringFilter.fromJson(json['webinarId'] as Map<String, dynamic>),
      classRef: json['classRef'] == null
          ? null
          : ClassModelRelationFilter.fromJson(
              json['classRef'] as Map<String, dynamic>),
      classId: json['classId'] == null
          ? null
          : StringFilter.fromJson(json['classId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => AppointmentWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => AppointmentWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : AppointmentWhereInput.fromJson(json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppointmentWhereInputImplToJson(
        _$AppointmentWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'appointmentType': instance.appointmentType?.toJson(),
      'consultation': instance.consultation?.toJson(),
      'consultationId': instance.consultationId?.toJson(),
      'subscription': instance.subscription?.toJson(),
      'subscriptionId': instance.subscriptionId?.toJson(),
      'webinar': instance.webinar?.toJson(),
      'webinarId': instance.webinarId?.toJson(),
      'classRef': instance.classRef?.toJson(),
      'classId': instance.classId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$AppointmentListRelationFilterImpl
    _$$AppointmentListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$AppointmentListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : AppointmentWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : AppointmentWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : AppointmentWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AppointmentListRelationFilterImplToJson(
        _$AppointmentListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$AppointmentRelationFilterImpl _$$AppointmentRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : AppointmentWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : AppointmentWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppointmentRelationFilterImplToJson(
        _$AppointmentRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$AppointmentOrderByInputImpl _$$AppointmentOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      consultationId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultationId']),
      subscriptionId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['subscriptionId']),
      webinarId: $enumDecodeNullable(_$SortOrderEnumMap, json['webinarId']),
      classId: $enumDecodeNullable(_$SortOrderEnumMap, json['classId']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$AppointmentOrderByInputImplToJson(
        _$AppointmentOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'consultationId': _$SortOrderEnumMap[instance.consultationId],
      'subscriptionId': _$SortOrderEnumMap[instance.subscriptionId],
      'webinarId': _$SortOrderEnumMap[instance.webinarId],
      'classId': _$SortOrderEnumMap[instance.classId],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
