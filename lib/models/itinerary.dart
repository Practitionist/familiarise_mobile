class Itinerary {
  final String id;
  final int day;
  final String title;
  final String? description;
  final List<String> activities;
  final String? timeSlot;
  final String tourId;
  final DateTime createdAt;
  final DateTime updatedAt;

  Itinerary({
    required this.id,
    required this.day,
    required this.title,
    this.description,
    required this.activities,
    this.timeSlot,
    required this.tourId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Itinerary.fromJson(Map<String, dynamic> json) {
    return Itinerary(
      id: json['id'] as String,
      day: json['day'] as int,
      title: json['title'] as String,
      description: json['description'] as String?,
      activities: List<String>.from(json['activities'] as List),
      timeSlot: json['timeSlot'] as String?,
      tourId: json['tourId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'day': day,
      'title': title,
      'description': description,
      'activities': activities,
      'timeSlot': timeSlot,
      'tourId': tourId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}