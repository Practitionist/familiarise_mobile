import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';
import '../onboarding/domain_entity.dart';

part 'consultant.freezed.dart';
part 'consultant.g.dart';

/// Basic consultant info for list/grid views
@freezed
class Consultant with _$Consultant {
  const factory Consultant({
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
    ConsultantVerificationStatus? verificationStatus,
    int? profileCompletionPercentage,
    @Default([]) List<String> tags,
    String? domainId,
    DateTime? createdAt,
    // Nested data
    ConsultantUser? user,
    DomainEntity? domain,
    @Default([]) List<SubDomainEntity> subDomains,
    // Computed fields
    double? minPrice,
    @Default('INR') String priceCurrency,
  }) = _Consultant;

  const Consultant._();

  factory Consultant.fromJson(Map<String, dynamic> json) =>
      _$ConsultantFromJson(json);

  /// Display name from user or fallback
  String get displayName => user?.name ?? 'Consultant';

  /// Profile image URL
  String? get imageUrl => user?.image;

  /// Formatted rating (e.g., "4.5")
  String get formattedRating =>
      rating != null ? rating!.toStringAsFixed(1) : 'N/A';

  /// Formatted price (e.g., "From ₹2,000") - null if no price set
  String? get formattedMinPrice {
    if (minPrice == null) return null;
    final symbol = priceCurrency == 'INR' ? '₹' : '\$';
    return 'From $symbol${minPrice!.toStringAsFixed(0)}';
  }

  /// Subdomains as comma-separated string
  String? get formattedSubDomains {
    if (subDomains.isEmpty) return null;
    return subDomains.map((s) => s.name).join(', ');
  }

  /// Formatted experience (e.g., "5+ years")
  String get formattedExperience {
    if (experience == null) return 'N/A';
    final years = experience!.toInt();
    return '$years+ ${years == 1 ? 'year' : 'years'}';
  }
}

/// Minimal user info embedded in consultant
@freezed
class ConsultantUser with _$ConsultantUser {
  const factory ConsultantUser({
    String? name,
    String? image,
  }) = _ConsultantUser;

  factory ConsultantUser.fromJson(Map<String, dynamic> json) =>
      _$ConsultantUserFromJson(json);
}
