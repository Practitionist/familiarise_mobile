import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/explore/consultation_plan.dart';

part 'consultation_plan_model.freezed.dart';
part 'consultation_plan_model.g.dart';

/// Data model for consultation plan from API
@freezed
class ConsultationPlanModel with _$ConsultationPlanModel {
  const factory ConsultationPlanModel({
    required String id,
    required String title,
    String? description,
    double? durationInHours,
    required double price,
    @Default('INR') String priceCurrency,
    String? language,
    String? level,
    @Default([]) List<String> prerequisites,
    @Default([]) List<String> materialProvided,
    @Default([]) List<String> learningOutcomes,
    String? createdAt,
  }) = _ConsultationPlanModel;

  const ConsultationPlanModel._();

  factory ConsultationPlanModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultationPlanModelFromJson(json);

  /// Convert to domain entity
  ConsultationPlan toEntity() => ConsultationPlan(
        id: id,
        title: title,
        description: description,
        durationInHours: durationInHours,
        price: price,
        priceCurrency: priceCurrency,
        language: language,
        level: level,
        prerequisites: prerequisites,
        materialProvided: materialProvided,
        learningOutcomes: learningOutcomes,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
      );
}
