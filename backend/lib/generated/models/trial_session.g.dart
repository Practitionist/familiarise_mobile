// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trial_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrialSessionImpl _$$TrialSessionImplFromJson(Map<String, dynamic> json) =>
    _$TrialSessionImpl(
      id: json['id'] as String,
      status:
          $enumDecodeNullable(_$TrialSessionStatusEnumMap, json['status']) ??
              TrialSessionStatus.pending,
      notes: json['notes'] as String?,
      consulteeProfileId: json['consulteeProfileId'] as String,
      consultantProfileId: json['consultantProfileId'] as String,
      subscriptionPlanId: json['subscriptionPlanId'] as String,
      appointmentId: json['appointmentId'] as String?,
      convertedToSubscriptionId: json['convertedToSubscriptionId'] as String?,
      requestedAt: DateTime.parse(json['requestedAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TrialSessionImplToJson(_$TrialSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$TrialSessionStatusEnumMap[instance.status]!,
      'notes': instance.notes,
      'consulteeProfileId': instance.consulteeProfileId,
      'consultantProfileId': instance.consultantProfileId,
      'subscriptionPlanId': instance.subscriptionPlanId,
      'appointmentId': instance.appointmentId,
      'convertedToSubscriptionId': instance.convertedToSubscriptionId,
      'requestedAt': instance.requestedAt.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$TrialSessionStatusEnumMap = {
  TrialSessionStatus.pending: 'PENDING',
  TrialSessionStatus.scheduled: 'SCHEDULED',
  TrialSessionStatus.completed: 'COMPLETED',
  TrialSessionStatus.converted: 'CONVERTED',
  TrialSessionStatus.cancelled: 'CANCELLED',
  TrialSessionStatus.rejected: 'REJECTED',
};

_$CreateTrialSessionInputImpl _$$CreateTrialSessionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTrialSessionInputImpl(
      status:
          $enumDecodeNullable(_$TrialSessionStatusEnumMap, json['status']) ??
              TrialSessionStatus.pending,
      notes: json['notes'] as String?,
      consulteeProfileId: json['consulteeProfileId'] as String,
      consultantProfileId: json['consultantProfileId'] as String,
      subscriptionPlanId: json['subscriptionPlanId'] as String,
      appointmentId: json['appointmentId'] as String?,
      convertedToSubscriptionId: json['convertedToSubscriptionId'] as String?,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$$CreateTrialSessionInputImplToJson(
        _$CreateTrialSessionInputImpl instance) =>
    <String, dynamic>{
      'status': _$TrialSessionStatusEnumMap[instance.status]!,
      'notes': instance.notes,
      'consulteeProfileId': instance.consulteeProfileId,
      'consultantProfileId': instance.consultantProfileId,
      'subscriptionPlanId': instance.subscriptionPlanId,
      'appointmentId': instance.appointmentId,
      'convertedToSubscriptionId': instance.convertedToSubscriptionId,
      'completedAt': instance.completedAt?.toIso8601String(),
    };

_$UpdateTrialSessionInputImpl _$$UpdateTrialSessionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTrialSessionInputImpl(
      status: $enumDecodeNullable(_$TrialSessionStatusEnumMap, json['status']),
      notes: json['notes'] as String?,
      consulteeProfileId: json['consulteeProfileId'] as String?,
      consultantProfileId: json['consultantProfileId'] as String?,
      subscriptionPlanId: json['subscriptionPlanId'] as String?,
      appointmentId: json['appointmentId'] as String?,
      convertedToSubscriptionId: json['convertedToSubscriptionId'] as String?,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$$UpdateTrialSessionInputImplToJson(
        _$UpdateTrialSessionInputImpl instance) =>
    <String, dynamic>{
      'status': _$TrialSessionStatusEnumMap[instance.status],
      'notes': instance.notes,
      'consulteeProfileId': instance.consulteeProfileId,
      'consultantProfileId': instance.consultantProfileId,
      'subscriptionPlanId': instance.subscriptionPlanId,
      'appointmentId': instance.appointmentId,
      'convertedToSubscriptionId': instance.convertedToSubscriptionId,
      'completedAt': instance.completedAt?.toIso8601String(),
    };

_$TrialSessionWhereUniqueInputImpl _$$TrialSessionWhereUniqueInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TrialSessionWhereUniqueInputImpl(
      id: json['id'] as String?,
      appointmentId: json['appointmentId'] as String?,
      convertedToSubscriptionId: json['convertedToSubscriptionId'] as String?,
    );

Map<String, dynamic> _$$TrialSessionWhereUniqueInputImplToJson(
        _$TrialSessionWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointmentId': instance.appointmentId,
      'convertedToSubscriptionId': instance.convertedToSubscriptionId,
    };

_$TrialSessionWhereInputImpl _$$TrialSessionWhereInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TrialSessionWhereInputImpl(
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : TrialSessionStatusFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      notes: json['notes'] == null
          ? null
          : StringFilter.fromJson(json['notes'] as Map<String, dynamic>),
      consulteeProfile: json['consulteeProfile'] == null
          ? null
          : ConsulteeProfileRelationFilter.fromJson(
              json['consulteeProfile'] as Map<String, dynamic>),
      consulteeProfileId: json['consulteeProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consulteeProfileId'] as Map<String, dynamic>),
      consultantProfile: json['consultantProfile'] == null
          ? null
          : ConsultantProfileRelationFilter.fromJson(
              json['consultantProfile'] as Map<String, dynamic>),
      consultantProfileId: json['consultantProfileId'] == null
          ? null
          : StringFilter.fromJson(
              json['consultantProfileId'] as Map<String, dynamic>),
      subscriptionPlan: json['subscriptionPlan'] == null
          ? null
          : SubscriptionPlanRelationFilter.fromJson(
              json['subscriptionPlan'] as Map<String, dynamic>),
      subscriptionPlanId: json['subscriptionPlanId'] == null
          ? null
          : StringFilter.fromJson(
              json['subscriptionPlanId'] as Map<String, dynamic>),
      appointment: json['appointment'] == null
          ? null
          : AppointmentRelationFilter.fromJson(
              json['appointment'] as Map<String, dynamic>),
      appointmentId: json['appointmentId'] == null
          ? null
          : StringFilter.fromJson(
              json['appointmentId'] as Map<String, dynamic>),
      convertedToSubscription: json['convertedToSubscription'] == null
          ? null
          : SubscriptionRelationFilter.fromJson(
              json['convertedToSubscription'] as Map<String, dynamic>),
      convertedToSubscriptionId: json['convertedToSubscriptionId'] == null
          ? null
          : StringFilter.fromJson(
              json['convertedToSubscriptionId'] as Map<String, dynamic>),
      requestedAt: json['requestedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['requestedAt'] as Map<String, dynamic>),
      completedAt: json['completedAt'] == null
          ? null
          : DateTimeFilter.fromJson(
              json['completedAt'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTimeFilter.fromJson(json['updatedAt'] as Map<String, dynamic>),
      AND: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => TrialSessionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      OR: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => TrialSessionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      NOT: json['NOT'] == null
          ? null
          : TrialSessionWhereInput.fromJson(
              json['NOT'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrialSessionWhereInputImplToJson(
        _$TrialSessionWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'status': instance.status?.toJson(),
      'notes': instance.notes?.toJson(),
      'consulteeProfile': instance.consulteeProfile?.toJson(),
      'consulteeProfileId': instance.consulteeProfileId?.toJson(),
      'consultantProfile': instance.consultantProfile?.toJson(),
      'consultantProfileId': instance.consultantProfileId?.toJson(),
      'subscriptionPlan': instance.subscriptionPlan?.toJson(),
      'subscriptionPlanId': instance.subscriptionPlanId?.toJson(),
      'appointment': instance.appointment?.toJson(),
      'appointmentId': instance.appointmentId?.toJson(),
      'convertedToSubscription': instance.convertedToSubscription?.toJson(),
      'convertedToSubscriptionId': instance.convertedToSubscriptionId?.toJson(),
      'requestedAt': instance.requestedAt?.toJson(),
      'completedAt': instance.completedAt?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$TrialSessionListRelationFilterImpl
    _$$TrialSessionListRelationFilterImplFromJson(Map<String, dynamic> json) =>
        _$TrialSessionListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : TrialSessionWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : TrialSessionWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : TrialSessionWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TrialSessionListRelationFilterImplToJson(
        _$TrialSessionListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$TrialSessionRelationFilterImpl _$$TrialSessionRelationFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$TrialSessionRelationFilterImpl(
      is_: json['is'] == null
          ? null
          : TrialSessionWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : TrialSessionWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrialSessionRelationFilterImplToJson(
        _$TrialSessionRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$TrialSessionOrderByInputImpl _$$TrialSessionOrderByInputImplFromJson(
        Map<String, dynamic> json) =>
    _$TrialSessionOrderByInputImpl(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      notes: $enumDecodeNullable(_$SortOrderEnumMap, json['notes']),
      consulteeProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consulteeProfileId']),
      consultantProfileId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['consultantProfileId']),
      subscriptionPlanId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['subscriptionPlanId']),
      appointmentId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['appointmentId']),
      convertedToSubscriptionId: $enumDecodeNullable(
          _$SortOrderEnumMap, json['convertedToSubscriptionId']),
      requestedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['requestedAt']),
      completedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['completedAt']),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['createdAt']),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updatedAt']),
    );

Map<String, dynamic> _$$TrialSessionOrderByInputImplToJson(
        _$TrialSessionOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'notes': _$SortOrderEnumMap[instance.notes],
      'consulteeProfileId': _$SortOrderEnumMap[instance.consulteeProfileId],
      'consultantProfileId': _$SortOrderEnumMap[instance.consultantProfileId],
      'subscriptionPlanId': _$SortOrderEnumMap[instance.subscriptionPlanId],
      'appointmentId': _$SortOrderEnumMap[instance.appointmentId],
      'convertedToSubscriptionId':
          _$SortOrderEnumMap[instance.convertedToSubscriptionId],
      'requestedAt': _$SortOrderEnumMap[instance.requestedAt],
      'completedAt': _$SortOrderEnumMap[instance.completedAt],
      'createdAt': _$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$SortOrderEnumMap[instance.updatedAt],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
