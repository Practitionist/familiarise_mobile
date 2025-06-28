class ConsultantProfile {
  final String id;
  final String? description;
  final String? qualifications;
  final String? specialization;
  final double? experience;
  final double rating;
  final String domainId;
  final String userId;
  final DateTime createdAt;
  final DateTime updatedAt;

  // Additional fields for UI
  final String? name;
  final String? image;
  final String? domainName;
  final List<String> subDomains;
  final List<String> tags;
  final int reviewCount;

  ConsultantProfile({
    required this.id,
    this.description,
    this.qualifications,
    this.specialization,
    this.experience,
    required this.rating,
    required this.domainId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    this.name,
    this.image,
    this.domainName,
    this.subDomains = const [],
    this.tags = const [],
    this.reviewCount = 0,
  });

  factory ConsultantProfile.fromJson(Map<String, dynamic> json) {
    return ConsultantProfile(
      id: json['id'] as String,
      description: json['description'] as String?,
      qualifications: json['qualifications'] as String?,
      specialization: json['specialization'] as String?,
      experience: json['experience'] as double?,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      domainId: json['domainId'] as String,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      name: json['name'] as String?,
      image: json['image'] as String?,
      domainName: json['domainName'] as String?,
      subDomains: (json['subDomains'] as List<dynamic>?)?.cast<String>() ?? [],
      tags: (json['tags'] as List<dynamic>?)?.cast<String>() ?? [],
      reviewCount: json['reviewCount'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'qualifications': qualifications,
      'specialization': specialization,
      'experience': experience,
      'rating': rating,
      'domainId': domainId,
      'userId': userId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'name': name,
      'image': image,
      'domainName': domainName,
      'subDomains': subDomains,
      'tags': tags,
      'reviewCount': reviewCount,
    };
  }
}