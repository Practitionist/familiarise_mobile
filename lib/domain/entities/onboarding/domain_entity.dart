import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain_entity.freezed.dart';
part 'domain_entity.g.dart';

/// A domain/category for consultants (e.g., Technology, Business, Health)
@freezed
class DomainEntity with _$DomainEntity {
  const factory DomainEntity({
    required String id,
    required String name,
    String? description,
    @Default([]) List<SubDomainEntity> subDomains,
  }) = _DomainEntity;

  factory DomainEntity.fromJson(Map<String, dynamic> json) =>
      _$DomainEntityFromJson(json);
}

/// A subdomain within a domain (e.g., Software Engineering within Technology)
@freezed
class SubDomainEntity with _$SubDomainEntity {
  const factory SubDomainEntity({
    required String id,
    required String name,
    String? description,
    required String domainId,
  }) = _SubDomainEntity;

  factory SubDomainEntity.fromJson(Map<String, dynamic> json) =>
      _$SubDomainEntityFromJson(json);
}
