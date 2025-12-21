import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';
import '../../../domain/entities/explore/subscription_plan.dart';

part 'subscription_plan_model.freezed.dart';
part 'subscription_plan_model.g.dart';

/// Data model for subscription plan from API
@freezed
class SubscriptionPlanModel with _$SubscriptionPlanModel {
  const factory SubscriptionPlanModel({
    required String id,
    required String title,
    String? description,
    int? durationInMonths,
    required double price,
    @Default('INR') String priceCurrency,
    int? callsPerWeek,
    double? sessionDurationInHours,
    int? totalSessions,
    double? totalHours,
    String? emailSupport,
    String? language,
    String? level,
    String? prerequisites,
    String? materialProvided,
    @Default([]) List<String> learningOutcomes,
    String? createdAt,
  }) = _SubscriptionPlanModel;

  const SubscriptionPlanModel._();

  factory SubscriptionPlanModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanModelFromJson(json);

  /// Convert to domain entity
  SubscriptionPlan toEntity() => SubscriptionPlan(
        id: id,
        title: title,
        description: description,
        durationInMonths: durationInMonths,
        price: price,
        priceCurrency: priceCurrency,
        callsPerWeek: callsPerWeek,
        sessionDurationInHours: sessionDurationInHours,
        totalSessions: totalSessions,
        totalHours: totalHours,
        emailSupport: _parseEmailSupport(emailSupport),
        language: language,
        level: level,
        prerequisites: prerequisites,
        materialProvided: materialProvided,
        learningOutcomes: learningOutcomes,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
      );

  /// Parse email support string to enum
  PlanEmailSupport? _parseEmailSupport(String? value) {
    if (value == null) return null;
    return switch (value.toLowerCase()) {
      'general' => PlanEmailSupport.general,
      'priority' => PlanEmailSupport.priority,
      'dedicated' => PlanEmailSupport.dedicated,
      _ => null,
    };
  }
}
