import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';
import '../../../domain/entities/explore/consultant.dart';
import '../../../domain/entities/onboarding/domain_entity.dart';

part 'consultant_model.freezed.dart';
part 'consultant_model.g.dart';

/// Data model for consultant from API
@freezed
class ConsultantModel with _$ConsultantModel {
  const factory ConsultantModel({
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
    String? verificationStatus,
    int? profileCompletionPercentage,
    @Default([]) List<String> tags,
    String? domainId,
    String? createdAt,
    // Nested data
    ConsultantUserModel? user,
    DomainModelSimple? domain,
    @Default([]) List<SubDomainModelSimple> subDomains,
    // Computed fields
    double? minPrice,
    @Default('INR') String priceCurrency,
  }) = _ConsultantModel;

  const ConsultantModel._();

  factory ConsultantModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultantModelFromJson(json);

  /// Convert to domain entity
  Consultant toEntity() => Consultant(
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
        verificationStatus: _parseVerificationStatus(verificationStatus),
        profileCompletionPercentage: profileCompletionPercentage,
        tags: tags,
        domainId: domainId,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
        user: user?.toEntity(),
        domain: domain?.toEntity(),
        subDomains: subDomains.map((s) => s.toEntity()).toList(),
        minPrice: minPrice,
        priceCurrency: priceCurrency,
      );

  ConsultantVerificationStatus? _parseVerificationStatus(String? value) {
    if (value == null) return null;
    return switch (value.toUpperCase()) {
      'PENDING_VERIFICATION' =>
        ConsultantVerificationStatus.pendingVerification,
      'UNDER_REVIEW' => ConsultantVerificationStatus.underReview,
      'VERIFIED' => ConsultantVerificationStatus.verified,
      'REJECTED' => ConsultantVerificationStatus.rejected,
      _ => null,
    };
  }
}

/// User data embedded in consultant
@freezed
class ConsultantUserModel with _$ConsultantUserModel {
  const factory ConsultantUserModel({
    String? name,
    String? image,
  }) = _ConsultantUserModel;

  const ConsultantUserModel._();

  factory ConsultantUserModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultantUserModelFromJson(json);

  /// Convert to domain entity
  ConsultantUser toEntity() => ConsultantUser(
        name: name,
        image: image,
      );
}

/// Simple domain model for API response
@freezed
class DomainModelSimple with _$DomainModelSimple {
  const factory DomainModelSimple({
    required String id,
    required String name,
  }) = _DomainModelSimple;

  const DomainModelSimple._();

  factory DomainModelSimple.fromJson(Map<String, dynamic> json) =>
      _$DomainModelSimpleFromJson(json);

  /// Convert to domain entity
  DomainEntity toEntity() => DomainEntity(id: id, name: name);
}

/// Simple subdomain model for API response
@freezed
class SubDomainModelSimple with _$SubDomainModelSimple {
  const factory SubDomainModelSimple({
    required String id,
    required String name,
    required String domainId,
  }) = _SubDomainModelSimple;

  const SubDomainModelSimple._();

  factory SubDomainModelSimple.fromJson(Map<String, dynamic> json) =>
      _$SubDomainModelSimpleFromJson(json);

  /// Convert to domain entity
  SubDomainEntity toEntity() => SubDomainEntity(
        id: id,
        name: name,
        domainId: domainId,
      );
}
