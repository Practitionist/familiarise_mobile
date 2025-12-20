import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';
import '../onboarding/domain_entity.dart';
import 'consultation_plan.dart';
import 'review.dart';
import 'subscription_plan.dart';

part 'consultant_details.freezed.dart';
part 'consultant_details.g.dart';

/// Full consultant details for profile screen
@freezed
class ConsultantDetails with _$ConsultantDetails {
  const factory ConsultantDetails({
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
    @Default([]) List<SessionType> sessionTypes,
    String? websiteUrl,
    String? twitterUrl,
    String? githubUrl,
    String? videoIntroUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    // Nested data
    ConsultantUserDetails? user,
    DomainEntity? domain,
    @Default([]) List<SubDomainEntity> subDomains,
    @Default([]) List<ConsultationPlan> consultationPlans,
    @Default([]) List<SubscriptionPlan> subscriptionPlans,
    ReviewSummary? reviewSummary,
  }) = _ConsultantDetails;

  const ConsultantDetails._();

  factory ConsultantDetails.fromJson(Map<String, dynamic> json) =>
      _$ConsultantDetailsFromJson(json);

  /// Display name from user or fallback
  String get displayName => user?.name ?? 'Consultant';

  /// Profile image URL
  String? get imageUrl => user?.image;

  /// Email
  String? get email => user?.email;

  /// Timezone
  String? get timezone => user?.timezone;

  /// Formatted rating (e.g., "4.5")
  String get formattedRating =>
      rating != null ? rating!.toStringAsFixed(1) : 'N/A';

  /// Formatted experience (e.g., "5+ years")
  String get formattedExperience {
    if (experience == null) return 'N/A';
    final years = experience!.toInt();
    return '$years+ ${years == 1 ? 'year' : 'years'}';
  }

  /// Check if has social links
  bool get hasSocialLinks =>
      websiteUrl != null || twitterUrl != null || githubUrl != null;

  /// Minimum price from all plans
  double? get minPrice {
    final allPrices = <double>[
      ...consultationPlans.map((p) => p.price),
      ...subscriptionPlans.map((p) => p.price),
    ];
    if (allPrices.isEmpty) return null;
    return allPrices.reduce((a, b) => a < b ? a : b);
  }
}

/// Detailed user info for consultant profile
@freezed
class ConsultantUserDetails with _$ConsultantUserDetails {
  const factory ConsultantUserDetails({
    String? name,
    String? image,
    String? email,
    String? timezone,
  }) = _ConsultantUserDetails;

  factory ConsultantUserDetails.fromJson(Map<String, dynamic> json) =>
      _$ConsultantUserDetailsFromJson(json);
}
