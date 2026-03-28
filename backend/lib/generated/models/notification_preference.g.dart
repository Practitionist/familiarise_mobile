// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationPreferenceImpl _$$NotificationPreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationPreferenceImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      allNotifications: json['allNotifications'] as bool? ?? true,
      inAppEnabled: json['inAppEnabled'] as bool? ?? true,
      emailEnabled: json['emailEnabled'] as bool? ?? true,
      pushEnabled: json['pushEnabled'] as bool? ?? false,
      mentions: json['mentions'] as bool? ?? false,
      directMessages: json['directMessages'] as bool? ?? false,
      updates: json['updates'] as bool? ?? false,
      appointmentReminders: json['appointmentReminders'] as bool? ?? true,
      paymentNotifications: json['paymentNotifications'] as bool? ?? true,
      supportUpdates: json['supportUpdates'] as bool? ?? true,
      feedbackAlerts: json['feedbackAlerts'] as bool? ?? true,
      trialNotifications: json['trialNotifications'] as bool? ?? true,
      subscriptionAlerts: json['subscriptionAlerts'] as bool? ?? true,
      marketingEmails: json['marketingEmails'] as bool? ?? false,
      quietHoursEnabled: json['quietHoursEnabled'] as bool? ?? false,
      quietHoursStart: json['quietHoursStart'] as String?,
      quietHoursEnd: json['quietHoursEnd'] as String?,
      quietHoursTimezone: json['quietHoursTimezone'] as String?,
    );

Map<String, dynamic> _$$NotificationPreferenceImplToJson(
        _$NotificationPreferenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'allNotifications': instance.allNotifications,
      'inAppEnabled': instance.inAppEnabled,
      'emailEnabled': instance.emailEnabled,
      'pushEnabled': instance.pushEnabled,
      'mentions': instance.mentions,
      'directMessages': instance.directMessages,
      'updates': instance.updates,
      'appointmentReminders': instance.appointmentReminders,
      'paymentNotifications': instance.paymentNotifications,
      'supportUpdates': instance.supportUpdates,
      'feedbackAlerts': instance.feedbackAlerts,
      'trialNotifications': instance.trialNotifications,
      'subscriptionAlerts': instance.subscriptionAlerts,
      'marketingEmails': instance.marketingEmails,
      'quietHoursEnabled': instance.quietHoursEnabled,
      'quietHoursStart': instance.quietHoursStart,
      'quietHoursEnd': instance.quietHoursEnd,
      'quietHoursTimezone': instance.quietHoursTimezone,
    };

_$CreateNotificationPreferenceInputImpl
    _$$CreateNotificationPreferenceInputImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateNotificationPreferenceInputImpl(
          userId: json['userId'] as String,
          allNotifications: json['allNotifications'] as bool? ?? true,
          inAppEnabled: json['inAppEnabled'] as bool? ?? true,
          emailEnabled: json['emailEnabled'] as bool? ?? true,
          pushEnabled: json['pushEnabled'] as bool? ?? false,
          mentions: json['mentions'] as bool? ?? false,
          directMessages: json['directMessages'] as bool? ?? false,
          updates: json['updates'] as bool? ?? false,
          appointmentReminders: json['appointmentReminders'] as bool? ?? true,
          paymentNotifications: json['paymentNotifications'] as bool? ?? true,
          supportUpdates: json['supportUpdates'] as bool? ?? true,
          feedbackAlerts: json['feedbackAlerts'] as bool? ?? true,
          trialNotifications: json['trialNotifications'] as bool? ?? true,
          subscriptionAlerts: json['subscriptionAlerts'] as bool? ?? true,
          marketingEmails: json['marketingEmails'] as bool? ?? false,
          quietHoursEnabled: json['quietHoursEnabled'] as bool? ?? false,
          quietHoursStart: json['quietHoursStart'] as String?,
          quietHoursEnd: json['quietHoursEnd'] as String?,
          quietHoursTimezone: json['quietHoursTimezone'] as String?,
        );

Map<String, dynamic> _$$CreateNotificationPreferenceInputImplToJson(
        _$CreateNotificationPreferenceInputImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'allNotifications': instance.allNotifications,
      'inAppEnabled': instance.inAppEnabled,
      'emailEnabled': instance.emailEnabled,
      'pushEnabled': instance.pushEnabled,
      'mentions': instance.mentions,
      'directMessages': instance.directMessages,
      'updates': instance.updates,
      'appointmentReminders': instance.appointmentReminders,
      'paymentNotifications': instance.paymentNotifications,
      'supportUpdates': instance.supportUpdates,
      'feedbackAlerts': instance.feedbackAlerts,
      'trialNotifications': instance.trialNotifications,
      'subscriptionAlerts': instance.subscriptionAlerts,
      'marketingEmails': instance.marketingEmails,
      'quietHoursEnabled': instance.quietHoursEnabled,
      'quietHoursStart': instance.quietHoursStart,
      'quietHoursEnd': instance.quietHoursEnd,
      'quietHoursTimezone': instance.quietHoursTimezone,
    };

_$UpdateNotificationPreferenceInputImpl
    _$$UpdateNotificationPreferenceInputImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateNotificationPreferenceInputImpl(
          userId: json['userId'] as String?,
          allNotifications: json['allNotifications'] as bool?,
          inAppEnabled: json['inAppEnabled'] as bool?,
          emailEnabled: json['emailEnabled'] as bool?,
          pushEnabled: json['pushEnabled'] as bool?,
          mentions: json['mentions'] as bool?,
          directMessages: json['directMessages'] as bool?,
          updates: json['updates'] as bool?,
          appointmentReminders: json['appointmentReminders'] as bool?,
          paymentNotifications: json['paymentNotifications'] as bool?,
          supportUpdates: json['supportUpdates'] as bool?,
          feedbackAlerts: json['feedbackAlerts'] as bool?,
          trialNotifications: json['trialNotifications'] as bool?,
          subscriptionAlerts: json['subscriptionAlerts'] as bool?,
          marketingEmails: json['marketingEmails'] as bool?,
          quietHoursEnabled: json['quietHoursEnabled'] as bool?,
          quietHoursStart: json['quietHoursStart'] as String?,
          quietHoursEnd: json['quietHoursEnd'] as String?,
          quietHoursTimezone: json['quietHoursTimezone'] as String?,
        );

Map<String, dynamic> _$$UpdateNotificationPreferenceInputImplToJson(
        _$UpdateNotificationPreferenceInputImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'allNotifications': instance.allNotifications,
      'inAppEnabled': instance.inAppEnabled,
      'emailEnabled': instance.emailEnabled,
      'pushEnabled': instance.pushEnabled,
      'mentions': instance.mentions,
      'directMessages': instance.directMessages,
      'updates': instance.updates,
      'appointmentReminders': instance.appointmentReminders,
      'paymentNotifications': instance.paymentNotifications,
      'supportUpdates': instance.supportUpdates,
      'feedbackAlerts': instance.feedbackAlerts,
      'trialNotifications': instance.trialNotifications,
      'subscriptionAlerts': instance.subscriptionAlerts,
      'marketingEmails': instance.marketingEmails,
      'quietHoursEnabled': instance.quietHoursEnabled,
      'quietHoursStart': instance.quietHoursStart,
      'quietHoursEnd': instance.quietHoursEnd,
      'quietHoursTimezone': instance.quietHoursTimezone,
    };

_$NotificationPreferenceWhereUniqueInputImpl
    _$$NotificationPreferenceWhereUniqueInputImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationPreferenceWhereUniqueInputImpl(
          id: json['id'] as String?,
          userId: json['userId'] as String?,
        );

Map<String, dynamic> _$$NotificationPreferenceWhereUniqueInputImplToJson(
        _$NotificationPreferenceWhereUniqueInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

_$NotificationPreferenceWhereInputImpl
    _$$NotificationPreferenceWhereInputImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationPreferenceWhereInputImpl(
          id: json['id'] == null
              ? null
              : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
          user: json['user'] == null
              ? null
              : UserRelationFilter.fromJson(
                  json['user'] as Map<String, dynamic>),
          userId: json['userId'] == null
              ? null
              : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
          allNotifications: json['allNotifications'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['allNotifications'] as Map<String, dynamic>),
          inAppEnabled: json['inAppEnabled'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['inAppEnabled'] as Map<String, dynamic>),
          emailEnabled: json['emailEnabled'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['emailEnabled'] as Map<String, dynamic>),
          pushEnabled: json['pushEnabled'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['pushEnabled'] as Map<String, dynamic>),
          mentions: json['mentions'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['mentions'] as Map<String, dynamic>),
          directMessages: json['directMessages'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['directMessages'] as Map<String, dynamic>),
          updates: json['updates'] == null
              ? null
              : BooleanFilter.fromJson(json['updates'] as Map<String, dynamic>),
          appointmentReminders: json['appointmentReminders'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['appointmentReminders'] as Map<String, dynamic>),
          paymentNotifications: json['paymentNotifications'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['paymentNotifications'] as Map<String, dynamic>),
          supportUpdates: json['supportUpdates'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['supportUpdates'] as Map<String, dynamic>),
          feedbackAlerts: json['feedbackAlerts'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['feedbackAlerts'] as Map<String, dynamic>),
          trialNotifications: json['trialNotifications'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['trialNotifications'] as Map<String, dynamic>),
          subscriptionAlerts: json['subscriptionAlerts'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['subscriptionAlerts'] as Map<String, dynamic>),
          marketingEmails: json['marketingEmails'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['marketingEmails'] as Map<String, dynamic>),
          quietHoursEnabled: json['quietHoursEnabled'] == null
              ? null
              : BooleanFilter.fromJson(
                  json['quietHoursEnabled'] as Map<String, dynamic>),
          quietHoursStart: json['quietHoursStart'] == null
              ? null
              : StringFilter.fromJson(
                  json['quietHoursStart'] as Map<String, dynamic>),
          quietHoursEnd: json['quietHoursEnd'] == null
              ? null
              : StringFilter.fromJson(
                  json['quietHoursEnd'] as Map<String, dynamic>),
          quietHoursTimezone: json['quietHoursTimezone'] == null
              ? null
              : StringFilter.fromJson(
                  json['quietHoursTimezone'] as Map<String, dynamic>),
          AND: (json['AND'] as List<dynamic>?)
              ?.map((e) => NotificationPreferenceWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          OR: (json['OR'] as List<dynamic>?)
              ?.map((e) => NotificationPreferenceWhereInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          NOT: json['NOT'] == null
              ? null
              : NotificationPreferenceWhereInput.fromJson(
                  json['NOT'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$NotificationPreferenceWhereInputImplToJson(
        _$NotificationPreferenceWhereInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'user': instance.user?.toJson(),
      'userId': instance.userId?.toJson(),
      'allNotifications': instance.allNotifications?.toJson(),
      'inAppEnabled': instance.inAppEnabled?.toJson(),
      'emailEnabled': instance.emailEnabled?.toJson(),
      'pushEnabled': instance.pushEnabled?.toJson(),
      'mentions': instance.mentions?.toJson(),
      'directMessages': instance.directMessages?.toJson(),
      'updates': instance.updates?.toJson(),
      'appointmentReminders': instance.appointmentReminders?.toJson(),
      'paymentNotifications': instance.paymentNotifications?.toJson(),
      'supportUpdates': instance.supportUpdates?.toJson(),
      'feedbackAlerts': instance.feedbackAlerts?.toJson(),
      'trialNotifications': instance.trialNotifications?.toJson(),
      'subscriptionAlerts': instance.subscriptionAlerts?.toJson(),
      'marketingEmails': instance.marketingEmails?.toJson(),
      'quietHoursEnabled': instance.quietHoursEnabled?.toJson(),
      'quietHoursStart': instance.quietHoursStart?.toJson(),
      'quietHoursEnd': instance.quietHoursEnd?.toJson(),
      'quietHoursTimezone': instance.quietHoursTimezone?.toJson(),
      'AND': instance.AND?.map((e) => e.toJson()).toList(),
      'OR': instance.OR?.map((e) => e.toJson()).toList(),
      'NOT': instance.NOT?.toJson(),
    };

_$NotificationPreferenceListRelationFilterImpl
    _$$NotificationPreferenceListRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationPreferenceListRelationFilterImpl(
          some: json['some'] == null
              ? null
              : NotificationPreferenceWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          every: json['every'] == null
              ? null
              : NotificationPreferenceWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : NotificationPreferenceWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$NotificationPreferenceListRelationFilterImplToJson(
        _$NotificationPreferenceListRelationFilterImpl instance) =>
    <String, dynamic>{
      'some': instance.some,
      'every': instance.every,
      'none': instance.none,
    };

_$NotificationPreferenceRelationFilterImpl
    _$$NotificationPreferenceRelationFilterImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationPreferenceRelationFilterImpl(
          is_: json['is'] == null
              ? null
              : NotificationPreferenceWhereInput.fromJson(
                  json['is'] as Map<String, dynamic>),
          isNot: json['isNot'] == null
              ? null
              : NotificationPreferenceWhereInput.fromJson(
                  json['isNot'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$NotificationPreferenceRelationFilterImplToJson(
        _$NotificationPreferenceRelationFilterImpl instance) =>
    <String, dynamic>{
      'is': instance.is_,
      'isNot': instance.isNot,
    };

_$NotificationPreferenceOrderByInputImpl
    _$$NotificationPreferenceOrderByInputImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationPreferenceOrderByInputImpl(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
          allNotifications:
              $enumDecodeNullable(_$SortOrderEnumMap, json['allNotifications']),
          inAppEnabled:
              $enumDecodeNullable(_$SortOrderEnumMap, json['inAppEnabled']),
          emailEnabled:
              $enumDecodeNullable(_$SortOrderEnumMap, json['emailEnabled']),
          pushEnabled:
              $enumDecodeNullable(_$SortOrderEnumMap, json['pushEnabled']),
          mentions: $enumDecodeNullable(_$SortOrderEnumMap, json['mentions']),
          directMessages:
              $enumDecodeNullable(_$SortOrderEnumMap, json['directMessages']),
          updates: $enumDecodeNullable(_$SortOrderEnumMap, json['updates']),
          appointmentReminders: $enumDecodeNullable(
              _$SortOrderEnumMap, json['appointmentReminders']),
          paymentNotifications: $enumDecodeNullable(
              _$SortOrderEnumMap, json['paymentNotifications']),
          supportUpdates:
              $enumDecodeNullable(_$SortOrderEnumMap, json['supportUpdates']),
          feedbackAlerts:
              $enumDecodeNullable(_$SortOrderEnumMap, json['feedbackAlerts']),
          trialNotifications: $enumDecodeNullable(
              _$SortOrderEnumMap, json['trialNotifications']),
          subscriptionAlerts: $enumDecodeNullable(
              _$SortOrderEnumMap, json['subscriptionAlerts']),
          marketingEmails:
              $enumDecodeNullable(_$SortOrderEnumMap, json['marketingEmails']),
          quietHoursEnabled: $enumDecodeNullable(
              _$SortOrderEnumMap, json['quietHoursEnabled']),
          quietHoursStart:
              $enumDecodeNullable(_$SortOrderEnumMap, json['quietHoursStart']),
          quietHoursEnd:
              $enumDecodeNullable(_$SortOrderEnumMap, json['quietHoursEnd']),
          quietHoursTimezone: $enumDecodeNullable(
              _$SortOrderEnumMap, json['quietHoursTimezone']),
        );

Map<String, dynamic> _$$NotificationPreferenceOrderByInputImplToJson(
        _$NotificationPreferenceOrderByInputImpl instance) =>
    <String, dynamic>{
      'id': _$SortOrderEnumMap[instance.id],
      'userId': _$SortOrderEnumMap[instance.userId],
      'allNotifications': _$SortOrderEnumMap[instance.allNotifications],
      'inAppEnabled': _$SortOrderEnumMap[instance.inAppEnabled],
      'emailEnabled': _$SortOrderEnumMap[instance.emailEnabled],
      'pushEnabled': _$SortOrderEnumMap[instance.pushEnabled],
      'mentions': _$SortOrderEnumMap[instance.mentions],
      'directMessages': _$SortOrderEnumMap[instance.directMessages],
      'updates': _$SortOrderEnumMap[instance.updates],
      'appointmentReminders': _$SortOrderEnumMap[instance.appointmentReminders],
      'paymentNotifications': _$SortOrderEnumMap[instance.paymentNotifications],
      'supportUpdates': _$SortOrderEnumMap[instance.supportUpdates],
      'feedbackAlerts': _$SortOrderEnumMap[instance.feedbackAlerts],
      'trialNotifications': _$SortOrderEnumMap[instance.trialNotifications],
      'subscriptionAlerts': _$SortOrderEnumMap[instance.subscriptionAlerts],
      'marketingEmails': _$SortOrderEnumMap[instance.marketingEmails],
      'quietHoursEnabled': _$SortOrderEnumMap[instance.quietHoursEnabled],
      'quietHoursStart': _$SortOrderEnumMap[instance.quietHoursStart],
      'quietHoursEnd': _$SortOrderEnumMap[instance.quietHoursEnd],
      'quietHoursTimezone': _$SortOrderEnumMap[instance.quietHoursTimezone],
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
