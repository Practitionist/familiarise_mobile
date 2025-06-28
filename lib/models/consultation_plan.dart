class ConsultationPlan {
  final String id;
  final String title;
  final String? description;
  final double durationInHours;
  final int price;
  final String language;
  final String level;
  final String? prerequisites;
  final String? materialProvided;
  final List<String> learningOutcomes;
  final String consultantProfileId;
  final DateTime createdAt;
  final DateTime updatedAt;

  // Additional UI fields
  final String? consultantName;
  final String? consultantImage;
  final double? consultantRating;
  final int? reviewCount;

  ConsultationPlan({
    required this.id,
    required this.title,
    this.description,
    required this.durationInHours,
    required this.price,
    required this.language,
    required this.level,
    this.prerequisites,
    this.materialProvided,
    required this.learningOutcomes,
    required this.consultantProfileId,
    required this.createdAt,
    required this.updatedAt,
    this.consultantName,
    this.consultantImage,
    this.consultantRating,
    this.reviewCount,
  });

  factory ConsultationPlan.fromJson(Map<String, dynamic> json) {
    return ConsultationPlan(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      durationInHours: (json['durationInHours'] as num).toDouble(),
      price: json['price'] as int,
      language: json['language'] as String,
      level: json['level'] as String,
      prerequisites: json['prerequisites'] as String?,
      materialProvided: json['materialProvided'] as String?,
      learningOutcomes: (json['learningOutcomes'] as List<dynamic>).cast<String>(),
      consultantProfileId: json['consultantProfileId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      consultantName: json['consultantName'] as String?,
      consultantImage: json['consultantImage'] as String?,
      consultantRating: (json['consultantRating'] as num?)?.toDouble(),
      reviewCount: json['reviewCount'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'durationInHours': durationInHours,
      'price': price,
      'language': language,
      'level': level,
      'prerequisites': prerequisites,
      'materialProvided': materialProvided,
      'learningOutcomes': learningOutcomes,
      'consultantProfileId': consultantProfileId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'consultantName': consultantName,
      'consultantImage': consultantImage,
      'consultantRating': consultantRating,
      'reviewCount': reviewCount,
    };
  }

  String get formattedPrice => '\$$price';
  String get formattedDuration => '${durationInHours}h';
}