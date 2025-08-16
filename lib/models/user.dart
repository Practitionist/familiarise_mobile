enum UserRole { 
  consultant, 
  consultee, 
  admin, 
  staff;

  String get displayName {
    switch (this) {
      case UserRole.consultant:
        return 'Consultant';
      case UserRole.consultee:
        return 'Consultee';
      case UserRole.admin:
        return 'Admin';
      case UserRole.staff:
        return 'Staff';
    }
  }
}

class User {
  final String id;
  final String? name;
  final String? email;
  final DateTime? emailVerified;
  final String? image;
  final String? phone;
  final String? address;
  final bool onlineStatus;
  final String? currentTimezone;
  final bool? onboardingCompleted;
  final UserRole? role;
  final String? consultantProfileId;
  final String? consulteeProfileId;
  final String? staffProfileId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  User({
    required this.id,
    this.name,
    this.email,
    this.emailVerified,
    this.image,
    this.phone,
    this.address,
    this.onlineStatus = false,
    this.currentTimezone,
    this.onboardingCompleted,
    this.role,
    this.consultantProfileId,
    this.consulteeProfileId,
    this.staffProfileId,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      emailVerified: json['emailVerified'] != null 
          ? DateTime.parse(json['emailVerified']) 
          : null,
      image: json['image'],
      phone: json['phone'],
      address: json['address'],
      onlineStatus: json['onlineStatus'] ?? false,
      currentTimezone: json['currentTimezone'],
      onboardingCompleted: json['onboardingCompleted'],
      role: json['role'] != null 
          ? UserRole.values.firstWhere((e) => e.name.toUpperCase() == json['role']) 
          : null,
      consultantProfileId: json['consultantProfileId'],
      consulteeProfileId: json['consulteeProfileId'],
      staffProfileId: json['staffProfileId'],
      createdAt: json['createdAt'] != null 
          ? DateTime.parse(json['createdAt']) 
          : null,
      updatedAt: json['updatedAt'] != null 
          ? DateTime.parse(json['updatedAt']) 
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'emailVerified': emailVerified?.toIso8601String(),
      'image': image,
      'phone': phone,
      'address': address,
      'onlineStatus': onlineStatus,
      'currentTimezone': currentTimezone,
      'onboardingCompleted': onboardingCompleted,
      'role': role?.name.toUpperCase(),
      'consultantProfileId': consultantProfileId,
      'consulteeProfileId': consulteeProfileId,
      'staffProfileId': staffProfileId,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  // Helper getters
  String get displayName => name ?? email ?? 'User';
}

enum ConsultationMode { video, audio, inPerson }

class ConsultantProfile {
  final String id;
  final String? description;
  final String? qualifications;
  final String? specialization;
  final double? experience;
  final double rating;
  final String domainId;
  final String userId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  
  // User information (joined from users table)
  final String? name;
  final String? email;
  final String? image;

  ConsultantProfile({
    required this.id,
    this.description,
    this.qualifications,
    this.specialization,
    this.experience,
    this.rating = 0,
    required this.domainId,
    required this.userId,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.email,
    this.image,
  });

  factory ConsultantProfile.fromJson(Map<String, dynamic> json) {
    // Extract user data if present (when joined)
    final userData = json['users'] as Map<String, dynamic>?;
    
    return ConsultantProfile(
      id: json['id'],
      description: json['description'],
      qualifications: json['qualifications'],
      specialization: json['specialization'],
      experience: json['experience']?.toDouble(),
      rating: json['rating']?.toDouble() ?? 0,
      domainId: json['domainId'],
      userId: json['userId'],
      createdAt: json['createdAt'] != null 
          ? DateTime.parse(json['createdAt']) 
          : null,
      updatedAt: json['updatedAt'] != null 
          ? DateTime.parse(json['updatedAt']) 
          : null,
      // User information from joined table
      name: userData?['name'],
      email: userData?['email'],
      image: userData?['image'],
    );
  }
}

class ConsulteeProfile {
  final String id;
  final String? education;
  final String? occupation;
  final String? aboutMe;
  final ConsultationMode? preferredCommunicationMethod;
  final String? preferredLanguage;
  final String? specialRequirements;
  final String? interests;
  final String? goals;
  final String userId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ConsulteeProfile({
    required this.id,
    this.education,
    this.occupation,
    this.aboutMe,
    this.preferredCommunicationMethod,
    this.preferredLanguage,
    this.specialRequirements,
    this.interests,
    this.goals,
    required this.userId,
    this.createdAt,
    this.updatedAt,
  });

  factory ConsulteeProfile.fromJson(Map<String, dynamic> json) {
    return ConsulteeProfile(
      id: json['id'],
      education: json['education'],
      occupation: json['occupation'],
      aboutMe: json['aboutMe'],
      preferredCommunicationMethod: json['preferredCommunicationMethod'] != null
          ? ConsultationMode.values.firstWhere(
              (e) => e.name.toUpperCase() == json['preferredCommunicationMethod'])
          : null,
      preferredLanguage: json['preferredLanguage'],
      specialRequirements: json['specialRequirements'],
      interests: json['interests'],
      goals: json['goals'],
      userId: json['userId'],
      createdAt: json['createdAt'] != null 
          ? DateTime.parse(json['createdAt']) 
          : null,
      updatedAt: json['updatedAt'] != null 
          ? DateTime.parse(json['updatedAt']) 
          : null,
    );
  }
}