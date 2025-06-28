class Domain {
  final String id;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  // Additional UI fields
  final List<SubDomain> subDomains;
  final int consultantCount;

  Domain({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    this.subDomains = const [],
    this.consultantCount = 0,
  });

  factory Domain.fromJson(Map<String, dynamic> json) {
    return Domain(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      subDomains: (json['subDomains'] as List<dynamic>?)
              ?.map((item) => SubDomain.fromJson(item as Map<String, dynamic>))
              .toList() ??
          [],
      consultantCount: json['consultantCount'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'subDomains': subDomains.map((item) => item.toJson()).toList(),
      'consultantCount': consultantCount,
    };
  }
}

class SubDomain {
  final String id;
  final String name;
  final String domainId;
  final DateTime createdAt;
  final DateTime updatedAt;

  SubDomain({
    required this.id,
    required this.name,
    required this.domainId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SubDomain.fromJson(Map<String, dynamic> json) {
    return SubDomain(
      id: json['id'] as String,
      name: json['name'] as String,
      domainId: json['domainId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'domainId': domainId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}