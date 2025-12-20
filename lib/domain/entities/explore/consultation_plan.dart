import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_plan.freezed.dart';
part 'consultation_plan.g.dart';

/// A consultation plan offered by a consultant
@freezed
class ConsultationPlan with _$ConsultationPlan {
  const factory ConsultationPlan({
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
    DateTime? createdAt,
  }) = _ConsultationPlan;

  const ConsultationPlan._();

  factory ConsultationPlan.fromJson(Map<String, dynamic> json) =>
      _$ConsultationPlanFromJson(json);

  /// Formatted price (e.g., "₹2,000")
  String get formattedPrice {
    final symbol = priceCurrency == 'INR' ? '₹' : '\$';
    return '$symbol${price.toStringAsFixed(0)}';
  }

  /// Formatted duration (e.g., "1.5 hours")
  String get formattedDuration {
    if (durationInHours == null) return 'Flexible';
    final hours = durationInHours!;
    if (hours == 1) return '1 hour';
    if (hours == hours.toInt()) return '${hours.toInt()} hours';
    return '$hours hours';
  }
}
