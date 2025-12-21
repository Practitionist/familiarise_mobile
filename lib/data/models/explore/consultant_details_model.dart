import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';
import '../../../domain/entities/explore/consultant_details.dart';
import 'consultant_model.dart';
import 'consultation_plan_model.dart';
import 'review_model.dart';
import 'subscription_plan_model.dart';

part 'consultant_details_model.freezed.dart';
part 'consultant_details_model.g.dart';

/// Data model for full consultant details from API
@freezed
class ConsultantDetailsModel with _$ConsultantDetailsModel {
  const factory ConsultantDetailsModel({
    required String id,
    required String userId,
    String? headline,
    String? description,
    double? rating,
    double? experience,
    @Default([]) List<String> languages,
    @Default([]) List<String> toolsAndTechnologies,
    int? totalMenteesHelped,
    bool? isVerified,
    String? domainId,
    String? mentoringStyle,
    @Default([]) List<String> sessionTypes,
    String? websiteUrl,
    String? twitterUrl,
    String? githubUrl,
    String? videoIntroUrl,
    String? createdAt,
    String? updatedAt,
    // Nested data
    ConsultantUserDetailsModel? user,
    DomainModelSimple? domain,
    @Default([]) List<SubDomainModelSimple> subDomains,
    @Default([]) List<ConsultationPlanModel> consultationPlans,
    @Default([]) List<SubscriptionPlanModel> subscriptionPlans,
    ReviewSummaryModel? reviewSummary,
  }) = _ConsultantDetailsModel;

  const ConsultantDetailsModel._();

  factory ConsultantDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultantDetailsModelFromJson(json);

  /// Convert to domain entity
  ConsultantDetails toEntity() => ConsultantDetails(
        id: id,
        userId: userId,
        headline: headline,
        description: description,
        rating: rating,
        experience: experience,
        languages: languages,
        toolsAndTechnologies: toolsAndTechnologies,
        totalMenteesHelped: totalMenteesHelped,
        isVerified: isVerified,
        domainId: domainId,
        mentoringStyle: mentoringStyle,
        sessionTypes: _parseSessionTypes(sessionTypes),
        websiteUrl: websiteUrl,
        twitterUrl: twitterUrl,
        githubUrl: githubUrl,
        videoIntroUrl: videoIntroUrl,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt!) : null,
        user: user?.toEntity(),
        domain: domain?.toEntity(),
        subDomains: subDomains.map((s) => s.toEntity()).toList(),
        consultationPlans: consultationPlans.map((p) => p.toEntity()).toList(),
        subscriptionPlans: subscriptionPlans.map((p) => p.toEntity()).toList(),
        reviewSummary: reviewSummary?.toEntity(),
      );

  /// Parse session types from strings
  List<SessionType> _parseSessionTypes(List<String> types) {
    return types.map((t) {
      return switch (t.toLowerCase()) {
        'oneonone' || 'one_on_one' => SessionType.oneOnOne,
        'group' => SessionType.group,
        'asyncreview' || 'async_review' => SessionType.asyncReview,
        _ => SessionType.oneOnOne,
      };
    }).toList();
  }
}

/// Detailed user data for consultant profile
@freezed
class ConsultantUserDetailsModel with _$ConsultantUserDetailsModel {
  const factory ConsultantUserDetailsModel({
    String? name,
    String? image,
    String? email,
    String? timezone,
  }) = _ConsultantUserDetailsModel;

  const ConsultantUserDetailsModel._();

  factory ConsultantUserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultantUserDetailsModelFromJson(json);

  /// Convert to domain entity
  ConsultantUserDetails toEntity() => ConsultantUserDetails(
        name: name,
        image: image,
        email: email,
        timezone: timezone,
      );
}
