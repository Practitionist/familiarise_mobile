class UserProfile {
  final String id;
  final String? userId;
  final String? gender;
  final DateTime? dateOfBirth;
  final String? bloodType;
  final int? height; // in cm
  final int? weight; // in kg
  final List<String> chronicDiseases;
  final List<String> allergies;
  final List<Surgery> surgeries;
  final HealthMetrics? healthMetrics;
  final String? profileImage;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const UserProfile({
    required this.id,
    this.userId,
    this.gender,
    this.dateOfBirth,
    this.bloodType,
    this.height,
    this.weight,
    this.chronicDiseases = const [],
    this.allergies = const [],
    this.surgeries = const [],
    this.healthMetrics,
    this.profileImage,
    this.createdAt,
    this.updatedAt,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] as String,
      userId: json['user_id'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['date_of_birth'] != null 
          ? DateTime.parse(json['date_of_birth'] as String) 
          : null,
      bloodType: json['blood_type'] as String?,
      height: json['height'] as int?,
      weight: json['weight'] as int?,
      chronicDiseases: (json['chronic_diseases'] as List<dynamic>?)
          ?.map((e) => e as String).toList() ?? [],
      allergies: (json['allergies'] as List<dynamic>?)
          ?.map((e) => e as String).toList() ?? [],
      surgeries: (json['surgeries'] as List<dynamic>?)
          ?.map((e) => Surgery.fromJson(e as Map<String, dynamic>)).toList() ?? [],
      healthMetrics: json['health_metrics'] != null 
          ? HealthMetrics.fromJson(json['health_metrics'] as Map<String, dynamic>)
          : null,
      profileImage: json['profile_image'] as String?,
      createdAt: json['created_at'] != null 
          ? DateTime.parse(json['created_at'] as String) 
          : null,
      updatedAt: json['updated_at'] != null 
          ? DateTime.parse(json['updated_at'] as String) 
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'gender': gender,
      'date_of_birth': dateOfBirth?.toIso8601String(),
      'blood_type': bloodType,
      'height': height,
      'weight': weight,
      'chronic_diseases': chronicDiseases,
      'allergies': allergies,
      'surgeries': surgeries.map((e) => e.toJson()).toList(),
      'health_metrics': healthMetrics?.toJson(),
      'profile_image': profileImage,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }

  UserProfile copyWith({
    String? id,
    String? userId,
    String? gender,
    DateTime? dateOfBirth,
    String? bloodType,
    int? height,
    int? weight,
    List<String>? chronicDiseases,
    List<String>? allergies,
    List<Surgery>? surgeries,
    HealthMetrics? healthMetrics,
    String? profileImage,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserProfile(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      bloodType: bloodType ?? this.bloodType,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      chronicDiseases: chronicDiseases ?? this.chronicDiseases,
      allergies: allergies ?? this.allergies,
      surgeries: surgeries ?? this.surgeries,
      healthMetrics: healthMetrics ?? this.healthMetrics,
      profileImage: profileImage ?? this.profileImage,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  // Helper methods for UI display
  String get displayGender => gender ?? 'Not specified';
  String get displayBloodType => bloodType ?? 'Unknown';
  String get displayHeight => height != null ? '$height cm' : 'Not specified';
  String get displayWeight => weight != null ? '$weight kg' : 'Not specified';
  
  String get formattedDateOfBirth {
    if (dateOfBirth == null) return 'Not specified';
    return '${dateOfBirth!.day.toString().padLeft(2, '0')}/${dateOfBirth!.month.toString().padLeft(2, '0')}/${dateOfBirth!.year}';
  }

  int? get age {
    if (dateOfBirth == null) return null;
    final now = DateTime.now();
    int age = now.year - dateOfBirth!.year;
    if (now.month < dateOfBirth!.month || 
        (now.month == dateOfBirth!.month && now.day < dateOfBirth!.day)) {
      age--;
    }
    return age;
  }

  bool get hasCompleteBasicInfo {
    return gender != null && 
           dateOfBirth != null && 
           bloodType != null && 
           height != null && 
           weight != null;
  }
}

class Surgery {
  final String name;
  final DateTime? date;
  final String? notes;

  const Surgery({
    required this.name,
    this.date,
    this.notes,
  });

  factory Surgery.fromJson(Map<String, dynamic> json) {
    return Surgery(
      name: json['name'] as String,
      date: json['date'] != null ? DateTime.parse(json['date'] as String) : null,
      notes: json['notes'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'date': date?.toIso8601String(),
      'notes': notes,
    };
  }

  String get displayDate {
    if (date == null) return 'Unknown date';
    return '${date!.year}';
  }

  String get displayName {
    String display = name;
    if (date != null) {
      display += ' (${displayDate})';
    }
    return display;
  }
}

class HealthMetrics {
  final int? heartRate; // bpm
  final List<HeartRateReading> heartRateHistory;
  final DateTime? lastUpdated;

  const HealthMetrics({
    this.heartRate,
    this.heartRateHistory = const [],
    this.lastUpdated,
  });

  factory HealthMetrics.fromJson(Map<String, dynamic> json) {
    return HealthMetrics(
      heartRate: json['heart_rate'] as int?,
      heartRateHistory: (json['heart_rate_history'] as List<dynamic>?)
          ?.map((e) => HeartRateReading.fromJson(e as Map<String, dynamic>)).toList() ?? [],
      lastUpdated: json['last_updated'] != null 
          ? DateTime.parse(json['last_updated'] as String) 
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'heart_rate': heartRate,
      'heart_rate_history': heartRateHistory.map((e) => e.toJson()).toList(),
      'last_updated': lastUpdated?.toIso8601String(),
    };
  }

  String get displayHeartRate {
    if (heartRate == null) return '--';
    return '$heartRate bpm';
  }
}

class HeartRateReading {
  final int value; // bpm
  final DateTime timestamp;

  const HeartRateReading({
    required this.value,
    required this.timestamp,
  });

  factory HeartRateReading.fromJson(Map<String, dynamic> json) {
    return HeartRateReading(
      value: json['value'] as int,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}