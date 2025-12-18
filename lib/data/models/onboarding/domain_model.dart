import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/onboarding/domain_entity.dart';

part 'domain_model.freezed.dart';
part 'domain_model.g.dart';

/// Data transfer object for Domain from API
@freezed
class DomainModel with _$DomainModel {
  const factory DomainModel({
    required String id,
    required String name,
    String? description,
    @Default([]) List<SubDomainModel> subDomains,
  }) = _DomainModel;

  const DomainModel._();

  factory DomainModel.fromJson(Map<String, dynamic> json) =>
      _$DomainModelFromJson(json);

  /// Convert to domain entity
  DomainEntity toEntity() => DomainEntity(
        id: id,
        name: name,
        description: description,
        subDomains: subDomains.map((s) => s.toEntity()).toList(),
      );
}

/// Data transfer object for SubDomain from API
@freezed
class SubDomainModel with _$SubDomainModel {
  const factory SubDomainModel({
    required String id,
    required String name,
    String? description,
    required String domainId,
  }) = _SubDomainModel;

  const SubDomainModel._();

  factory SubDomainModel.fromJson(Map<String, dynamic> json) =>
      _$SubDomainModelFromJson(json);

  /// Convert to domain entity
  SubDomainEntity toEntity() => SubDomainEntity(
        id: id,
        name: name,
        description: description,
        domainId: domainId,
      );
}
