class Appointment {
  final String id;
  final AppointmentType appointmentType;
  final String? consultationId;
  final String? subscriptionId;
  final String? webinarId;
  final String? classId;
  final DateTime createdAt;
  final DateTime updatedAt;

  // Additional UI fields
  final List<AppointmentSlot> slots;
  final String? title;
  final String? description;

  Appointment({
    required this.id,
    required this.appointmentType,
    this.consultationId,
    this.subscriptionId,
    this.webinarId,
    this.classId,
    required this.createdAt,
    required this.updatedAt,
    this.slots = const [],
    this.title,
    this.description,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      id: json['id'] as String,
      appointmentType: AppointmentType.values.firstWhere(
        (e) => e.toString().split('.').last == json['appointmentType'],
      ),
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      webinarId: json['webinarId'] as String?,
      classId: json['classId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      slots: (json['slots'] as List<dynamic>?)
              ?.map((item) => AppointmentSlot.fromJson(item as Map<String, dynamic>))
              .toList() ??
          [],
      title: json['title'] as String?,
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'appointmentType': appointmentType.toString().split('.').last,
      'consultationId': consultationId,
      'subscriptionId': subscriptionId,
      'webinarId': webinarId,
      'classId': classId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'slots': slots.map((item) => item.toJson()).toList(),
      'title': title,
      'description': description,
    };
  }
}

class AppointmentSlot {
  final String id;
  final DateTime slotStartTimeInUTC;
  final DateTime slotEndTimeInUTC;
  final bool isTentative;
  final String appointmentId;
  final DateTime createdAt;
  final DateTime updatedAt;

  AppointmentSlot({
    required this.id,
    required this.slotStartTimeInUTC,
    required this.slotEndTimeInUTC,
    required this.isTentative,
    required this.appointmentId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AppointmentSlot.fromJson(Map<String, dynamic> json) {
    return AppointmentSlot(
      id: json['id'] as String,
      slotStartTimeInUTC: DateTime.parse(json['slotStartTimeInUTC'] as String),
      slotEndTimeInUTC: DateTime.parse(json['slotEndTimeInUTC'] as String),
      isTentative: json['isTentative'] as bool,
      appointmentId: json['appointmentId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slotStartTimeInUTC': slotStartTimeInUTC.toIso8601String(),
      'slotEndTimeInUTC': slotEndTimeInUTC.toIso8601String(),
      'isTentative': isTentative,
      'appointmentId': appointmentId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  Duration get duration => slotEndTimeInUTC.difference(slotStartTimeInUTC);
}

enum AppointmentType {
  consultation,
  subscription,
  webinar,
  classType,
}