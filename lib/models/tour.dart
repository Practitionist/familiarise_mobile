class Tour {
  final String id;
  final String title;
  final String? description;
  final int duration;
  final double price;
  final String currency;
  final String? imageUrl;
  final double rating;
  final int reviewCount;
  final int maxGroupSize;
  final String destinationId;
  final DateTime createdAt;
  final DateTime updatedAt;

  Tour({
    required this.id,
    required this.title,
    this.description,
    required this.duration,
    required this.price,
    required this.currency,
    this.imageUrl,
    required this.rating,
    required this.reviewCount,
    required this.maxGroupSize,
    required this.destinationId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Tour.fromJson(Map<String, dynamic> json) {
    return Tour(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      duration: json['duration'] as int,
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      imageUrl: json['imageUrl'] as String?,
      rating: (json['rating'] as num).toDouble(),
      reviewCount: json['reviewCount'] as int,
      maxGroupSize: json['maxGroupSize'] as int,
      destinationId: json['destinationId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'duration': duration,
      'price': price,
      'currency': currency,
      'imageUrl': imageUrl,
      'rating': rating,
      'reviewCount': reviewCount,
      'maxGroupSize': maxGroupSize,
      'destinationId': destinationId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}