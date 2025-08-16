class User {
  final String id;
  final String? name;
  final String? email;
  final DateTime? emailVerified;
  final String? image;
  final String? phone;
  final String? address;
  final String? password;
  final String? passwordResetToken;
  final DateTime? passwordResetExpires;
  final bool onlineStatus;
  final String? currentTimezone;
  final bool? onboardingCompleted;
  final UserRole role;
  final String? consultantProfileId;
  final String? consulteeProfileId;
  final String? staffProfileId;
  final DateTime createdAt;
  final DateTime updatedAt;

  const User({
    required this.id,
    this.name,
    this.email,
    this.emailVerified,
    this.image,
    this.phone,
    this.address,
    this.password,
    this.passwordResetToken,
    this.passwordResetExpires,
    required this.onlineStatus,
    this.currentTimezone,
    this.onboardingCompleted,
    required this.role,
    this.consultantProfileId,
    this.consulteeProfileId,
    this.staffProfileId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] != null 
          ? DateTime.parse(json['emailVerified'] as String) 
          : null,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      password: json['password'] as String?,
      passwordResetToken: json['passwordResetToken'] as String?,
      passwordResetExpires: json['passwordResetExpires'] != null
          ? DateTime.parse(json['passwordResetExpires'] as String)
          : null,
      onlineStatus: json['onlineStatus'] as bool? ?? false,
      currentTimezone: json['currentTimezone'] as String?,
      onboardingCompleted: json['onboardingCompleted'] as bool?,
      role: json['role'] != null 
          ? UserRole.fromString(json['role'] as String)
          : UserRole.consultee,
      consultantProfileId: json['consultantProfileId'] as String?,
      consulteeProfileId: json['consulteeProfileId'] as String?,
      staffProfileId: json['staffProfileId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
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
      'password': password,
      'passwordResetToken': passwordResetToken,
      'passwordResetExpires': passwordResetExpires?.toIso8601String(),
      'onlineStatus': onlineStatus,
      'currentTimezone': currentTimezone,
      'onboardingCompleted': onboardingCompleted,
      'role': role.serverValue,
      'consultantProfileId': consultantProfileId,
      'consulteeProfileId': consulteeProfileId,
      'staffProfileId': staffProfileId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  User copyWith({
    String? id,
    String? name,
    String? email,
    DateTime? emailVerified,
    String? image,
    String? phone,
    String? address,
    String? password,
    String? passwordResetToken,
    DateTime? passwordResetExpires,
    bool? onlineStatus,
    String? currentTimezone,
    bool? onboardingCompleted,
    UserRole? role,
    String? consultantProfileId,
    String? consulteeProfileId,
    String? staffProfileId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      emailVerified: emailVerified ?? this.emailVerified,
      image: image ?? this.image,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      password: password ?? this.password,
      passwordResetToken: passwordResetToken ?? this.passwordResetToken,
      passwordResetExpires: passwordResetExpires ?? this.passwordResetExpires,
      onlineStatus: onlineStatus ?? this.onlineStatus,
      currentTimezone: currentTimezone ?? this.currentTimezone,
      onboardingCompleted: onboardingCompleted ?? this.onboardingCompleted,
      role: role ?? this.role,
      consultantProfileId: consultantProfileId ?? this.consultantProfileId,
      consulteeProfileId: consulteeProfileId ?? this.consulteeProfileId,
      staffProfileId: staffProfileId ?? this.staffProfileId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User &&
        other.id == id &&
        other.name == name &&
        other.email == email &&
        other.emailVerified == emailVerified &&
        other.image == image &&
        other.phone == phone &&
        other.address == address &&
        other.password == password &&
        other.passwordResetToken == passwordResetToken &&
        other.passwordResetExpires == passwordResetExpires &&
        other.onlineStatus == onlineStatus &&
        other.currentTimezone == currentTimezone &&
        other.onboardingCompleted == onboardingCompleted &&
        other.role == role &&
        other.consultantProfileId == consultantProfileId &&
        other.consulteeProfileId == consulteeProfileId &&
        other.staffProfileId == staffProfileId &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return Object.hashAll([
      id,
      name,
      email,
      emailVerified,
      image,
      phone,
      address,
      password,
      passwordResetToken,
      passwordResetExpires,
      onlineStatus,
      currentTimezone,
      onboardingCompleted,
      role,
      consultantProfileId,
      consulteeProfileId,
      staffProfileId,
      createdAt,
      updatedAt,
    ]);
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, role: $role, onlineStatus: $onlineStatus)';
  }
}

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

  String get serverValue {
    switch (this) {
      case UserRole.consultant:
        return 'CONSULTANT';
      case UserRole.consultee:
        return 'CONSULTEE';
      case UserRole.admin:
        return 'ADMIN';
      case UserRole.staff:
        return 'STAFF';
    }
  }

  static UserRole fromString(String value) {
    switch (value.toUpperCase()) {
      case 'CONSULTANT':
        return UserRole.consultant;
      case 'CONSULTEE':
        return UserRole.consultee;
      case 'ADMIN':
        return UserRole.admin;
      case 'STAFF':
        return UserRole.staff;
      default:
        return UserRole.consultee;
    }
  }
}