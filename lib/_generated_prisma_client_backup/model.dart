// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

enum UserRole implements _i1.PrismaEnum {
  consultant._('CONSULTANT'),
  consultee._('CONSULTEE'),
  admin._('ADMIN'),
  staff._('STAFF');

  const UserRole._(this.name);

  @override
  final String name;
}

class CookiePreference {
  const CookiePreference({
    this.id,
    this.userId,
    this.essential,
    this.analytics,
    this.marketing,
    this.user,
  });

  factory CookiePreference.fromJson(Map json) => CookiePreference(
    id: json['id'],
    userId: json['userId'],
    essential: json['essential'],
    analytics: json['analytics'],
    marketing: json['marketing'],
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
  );

  final String? id;

  final String? userId;

  final bool? essential;

  final bool? analytics;

  final bool? marketing;

  final _i2.User? user;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'essential': essential,
    'analytics': analytics,
    'marketing': marketing,
    'user': user?.toJson(),
  };
}

class NotificationPreference {
  const NotificationPreference({
    this.id,
    this.userId,
    this.allNotifications,
    this.mentions,
    this.directMessages,
    this.updates,
    this.user,
  });

  factory NotificationPreference.fromJson(Map json) => NotificationPreference(
    id: json['id'],
    userId: json['userId'],
    allNotifications: json['allNotifications'],
    mentions: json['mentions'],
    directMessages: json['directMessages'],
    updates: json['updates'],
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
  );

  final String? id;

  final String? userId;

  final bool? allNotifications;

  final bool? mentions;

  final bool? directMessages;

  final bool? updates;

  final _i2.User? user;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'allNotifications': allNotifications,
    'mentions': mentions,
    'directMessages': directMessages,
    'updates': updates,
    'user': user?.toJson(),
  };
}

enum PaymentGateway implements _i1.PrismaEnum {
  stripe._('STRIPE'),
  razorpay._('RAZORPAY'),
  lemonSqueezy._('LEMON_SQUEEZY'),
  xflow._('XFLOW'),
  card._('CARD');

  const PaymentGateway._(this.name);

  @override
  final String name;
}

enum PaymentStatus implements _i1.PrismaEnum {
  pending._('PENDING'),
  succeeded._('SUCCEEDED'),
  failed._('FAILED');

  const PaymentStatus._(this.name);

  @override
  final String name;
}

enum AppointmentsType implements _i1.PrismaEnum {
  consultation._('CONSULTATION'),
  subscription._('SUBSCRIPTION'),
  webinar._('WEBINAR'),
  $class._('CLASS');

  const AppointmentsType._(this.name);

  @override
  final String name;
}

enum Platform implements _i1.PrismaEnum {
  zoom._('ZOOM'),
  googleMeet._('GOOGLE_MEET'),
  microsoftTeams._('MICROSOFT_TEAMS'),
  stream._('STREAM'),
  custom._('CUSTOM');

  const Platform._(this.name);

  @override
  final String name;
}

class Recording {
  const Recording({
    this.id,
    this.title,
    this.recordingUrl,
    this.durationInMinutes,
    this.recordedAt,
    this.meetingSessionId,
    this.createdAt,
    this.updatedAt,
    this.meetingSession,
  });

  factory Recording.fromJson(Map json) => Recording(
    id: json['id'],
    title: json['title'],
    recordingUrl: json['recordingUrl'],
    durationInMinutes: json['durationInMinutes'],
    recordedAt: switch (json['recordedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['recordedAt'],
    },
    meetingSessionId: json['meetingSessionId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    meetingSession: json['meetingSession'] is Map
        ? _i2.MeetingSession.fromJson(json['meetingSession'])
        : null,
  );

  final String? id;

  final String? title;

  final String? recordingUrl;

  final int? durationInMinutes;

  final DateTime? recordedAt;

  final String? meetingSessionId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.MeetingSession? meetingSession;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'recordingUrl': recordingUrl,
    'durationInMinutes': durationInMinutes,
    'recordedAt': recordedAt?.toIso8601String(),
    'meetingSessionId': meetingSessionId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'meetingSession': meetingSession?.toJson(),
  };
}

class MeetingSession {
  const MeetingSession({
    this.id,
    this.streamCallId,
    this.platform,
    this.passcode,
    this.hostKeys,
    this.slotOfAppointmentId,
    this.createdAt,
    this.updatedAt,
    this.recordings,
    this.slotOfAppointment,
    this.$count,
  });

  factory MeetingSession.fromJson(Map json) => MeetingSession(
    id: json['id'],
    streamCallId: json['streamCallId'],
    platform: json['platform'] != null
        ? _i2.Platform.values.firstWhere((e) => e.name == json['platform'])
        : null,
    passcode: json['passcode'],
    hostKeys: json['hostKeys'] is Iterable
        ? (json['hostKeys'] as Iterable).whereType<String>()
        : null,
    slotOfAppointmentId: json['slotOfAppointmentId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    recordings: (json['recordings'] as Iterable?)?.map(
      (json) => _i2.Recording.fromJson(json),
    ),
    slotOfAppointment: json['slotOfAppointment'] is Map
        ? _i2.SlotOfAppointment.fromJson(json['slotOfAppointment'])
        : null,
    $count: json['_count'] is Map
        ? _i3.MeetingSessionCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? streamCallId;

  final _i2.Platform? platform;

  final String? passcode;

  final Iterable<String>? hostKeys;

  final String? slotOfAppointmentId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.Recording>? recordings;

  final _i2.SlotOfAppointment? slotOfAppointment;

  final _i3.MeetingSessionCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'streamCallId': streamCallId,
    'platform': platform?.name,
    'passcode': passcode,
    'hostKeys': hostKeys?.map((e) => e),
    'slotOfAppointmentId': slotOfAppointmentId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'recordings': recordings?.map((e) => e.toJson()),
    'slotOfAppointment': slotOfAppointment?.toJson(),
    '_count': $count?.toJson(),
  };
}

class SlotOfAppointment {
  const SlotOfAppointment({
    this.id,
    this.slotStartTimeInUTC,
    this.slotEndTimeInUTC,
    this.isTentative,
    this.appointmentId,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.appointment,
    this.meetingSession,
    this.$count,
  });

  factory SlotOfAppointment.fromJson(Map json) => SlotOfAppointment(
    id: json['id'],
    slotStartTimeInUTC: switch (json['slotStartTimeInUTC']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['slotStartTimeInUTC'],
    },
    slotEndTimeInUTC: switch (json['slotEndTimeInUTC']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['slotEndTimeInUTC'],
    },
    isTentative: json['isTentative'],
    appointmentId: json['appointmentId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    user: (json['user'] as Iterable?)?.map((json) => _i2.User.fromJson(json)),
    appointment: json['appointment'] is Map
        ? _i2.Appointment.fromJson(json['appointment'])
        : null,
    meetingSession: json['meetingSession'] is Map
        ? _i2.MeetingSession.fromJson(json['meetingSession'])
        : null,
    $count: json['_count'] is Map
        ? _i3.SlotOfAppointmentCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final DateTime? slotStartTimeInUTC;

  final DateTime? slotEndTimeInUTC;

  final bool? isTentative;

  final String? appointmentId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.User>? user;

  final _i2.Appointment? appointment;

  final _i2.MeetingSession? meetingSession;

  final _i3.SlotOfAppointmentCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'slotStartTimeInUTC': slotStartTimeInUTC?.toIso8601String(),
    'slotEndTimeInUTC': slotEndTimeInUTC?.toIso8601String(),
    'isTentative': isTentative,
    'appointmentId': appointmentId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'user': user?.map((e) => e.toJson()),
    'appointment': appointment?.toJson(),
    'meetingSession': meetingSession?.toJson(),
    '_count': $count?.toJson(),
  };
}

enum RequestStatus implements _i1.PrismaEnum {
  pending._('PENDING'),
  approved._('APPROVED'),
  scheduled._('SCHEDULED'),
  rejected._('REJECTED'),
  cancelled._('CANCELLED'),
  expired._('EXPIRED');

  const RequestStatus._(this.name);

  @override
  final String name;
}

enum ScheduleType implements _i1.PrismaEnum {
  weekly._('WEEKLY'),
  custom._('CUSTOM');

  const ScheduleType._(this.name);

  @override
  final String name;
}

class SubDomain {
  const SubDomain({
    this.id,
    this.name,
    this.domainId,
    this.createdAt,
    this.updatedAt,
    this.domain,
    this.consultantProfiles,
    this.$count,
  });

  factory SubDomain.fromJson(Map json) => SubDomain(
    id: json['id'],
    name: json['name'],
    domainId: json['domainId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    domain: json['domain'] is Map ? _i2.Domain.fromJson(json['domain']) : null,
    consultantProfiles: (json['consultantProfiles'] as Iterable?)?.map(
      (json) => _i2.ConsultantProfile.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.SubDomainCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? name;

  final String? domainId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.Domain? domain;

  final Iterable<_i2.ConsultantProfile>? consultantProfiles;

  final _i3.SubDomainCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'domainId': domainId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'domain': domain?.toJson(),
    'consultantProfiles': consultantProfiles?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class Tag {
  const Tag({
    this.id,
    this.name,
    this.domainId,
    this.createdAt,
    this.updatedAt,
    this.domain,
    this.consultantProfiles,
    this.$count,
  });

  factory Tag.fromJson(Map json) => Tag(
    id: json['id'],
    name: json['name'],
    domainId: json['domainId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    domain: json['domain'] is Map ? _i2.Domain.fromJson(json['domain']) : null,
    consultantProfiles: (json['consultantProfiles'] as Iterable?)?.map(
      (json) => _i2.ConsultantProfile.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.TagCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? name;

  final String? domainId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.Domain? domain;

  final Iterable<_i2.ConsultantProfile>? consultantProfiles;

  final _i3.TagCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'domainId': domainId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'domain': domain?.toJson(),
    'consultantProfiles': consultantProfiles?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class Domain {
  const Domain({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.subDomains,
    this.tags,
    this.consultantProfiles,
    this.$count,
  });

  factory Domain.fromJson(Map json) => Domain(
    id: json['id'],
    name: json['name'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    subDomains: (json['subDomains'] as Iterable?)?.map(
      (json) => _i2.SubDomain.fromJson(json),
    ),
    tags: (json['tags'] as Iterable?)?.map((json) => _i2.Tag.fromJson(json)),
    consultantProfiles: (json['consultantProfiles'] as Iterable?)?.map(
      (json) => _i2.ConsultantProfile.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.DomainCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.SubDomain>? subDomains;

  final Iterable<_i2.Tag>? tags;

  final Iterable<_i2.ConsultantProfile>? consultantProfiles;

  final _i3.DomainCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'subDomains': subDomains?.map((e) => e.toJson()),
    'tags': tags?.map((e) => e.toJson()),
    'consultantProfiles': consultantProfiles?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

enum ConsultationMode implements _i1.PrismaEnum {
  video._('VIDEO'),
  audio._('AUDIO'),
  inPerson._('IN_PERSON');

  const ConsultationMode._(this.name);

  @override
  final String name;
}

enum PlanEmailSupport implements _i1.PrismaEnum {
  general._('GENERAL'),
  priority._('PRIORITY'),
  dedicated._('DEDICATED');

  const PlanEmailSupport._(this.name);

  @override
  final String name;
}

class SubscriptionPlan {
  const SubscriptionPlan({
    this.id,
    this.title,
    this.description,
    this.durationInMonths,
    this.price,
    this.callsPerWeek,
    this.sessionDurationInHours,
    this.videoMeetings,
    this.emailSupport,
    this.language,
    this.level,
    this.prerequisites,
    this.materialProvided,
    this.learningOutcomes,
    this.consultantProfileId,
    this.createdAt,
    this.updatedAt,
    this.consultantProfile,
    this.subscriptions,
    this.$count,
  });

  factory SubscriptionPlan.fromJson(Map json) => SubscriptionPlan(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    durationInMonths: json['durationInMonths'],
    price: json['price'],
    callsPerWeek: json['callsPerWeek'],
    sessionDurationInHours: json['sessionDurationInHours'],
    videoMeetings: json['videoMeetings'],
    emailSupport: json['emailSupport'] != null
        ? _i2.PlanEmailSupport.values.firstWhere(
            (e) => e.name == json['emailSupport'],
          )
        : null,
    language: json['language'],
    level: json['level'],
    prerequisites: json['prerequisites'],
    materialProvided: json['materialProvided'],
    learningOutcomes: json['learningOutcomes'] is Iterable
        ? (json['learningOutcomes'] as Iterable).whereType<String>()
        : null,
    consultantProfileId: json['consultantProfileId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    consultantProfile: json['consultantProfile'] is Map
        ? _i2.ConsultantProfile.fromJson(json['consultantProfile'])
        : null,
    subscriptions: (json['subscriptions'] as Iterable?)?.map(
      (json) => _i2.Subscription.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.SubscriptionPlanCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? title;

  final String? description;

  final int? durationInMonths;

  final int? price;

  final int? callsPerWeek;

  final double? sessionDurationInHours;

  final int? videoMeetings;

  final _i2.PlanEmailSupport? emailSupport;

  final String? language;

  final String? level;

  final String? prerequisites;

  final String? materialProvided;

  final Iterable<String>? learningOutcomes;

  final String? consultantProfileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ConsultantProfile? consultantProfile;

  final Iterable<_i2.Subscription>? subscriptions;

  final _i3.SubscriptionPlanCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'durationInMonths': durationInMonths,
    'price': price,
    'callsPerWeek': callsPerWeek,
    'sessionDurationInHours': sessionDurationInHours,
    'videoMeetings': videoMeetings,
    'emailSupport': emailSupport?.name,
    'language': language,
    'level': level,
    'prerequisites': prerequisites,
    'materialProvided': materialProvided,
    'learningOutcomes': learningOutcomes?.map((e) => e),
    'consultantProfileId': consultantProfileId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'consultantProfile': consultantProfile?.toJson(),
    'subscriptions': subscriptions?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class Subscription {
  const Subscription({
    this.id,
    this.startDate,
    this.endDate,
    this.requestStatus,
    this.requestedById,
    this.requestedAt,
    this.requestNotes,
    this.feedbackFromConsultee,
    this.feedbackFromConsultant,
    this.rating,
    this.subscriptionPlanId,
    this.createdAt,
    this.updatedAt,
    this.requestedBy,
    this.subscriptionPlan,
    this.appointments,
    this.$count,
  });

  factory Subscription.fromJson(Map json) => Subscription(
    id: json['id'],
    startDate: switch (json['startDate']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['startDate'],
    },
    endDate: switch (json['endDate']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['endDate'],
    },
    requestStatus: json['requestStatus'] != null
        ? _i2.RequestStatus.values.firstWhere(
            (e) => e.name == json['requestStatus'],
          )
        : null,
    requestedById: json['requestedById'],
    requestedAt: switch (json['requestedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['requestedAt'],
    },
    requestNotes: json['requestNotes'],
    feedbackFromConsultee: json['feedbackFromConsultee'],
    feedbackFromConsultant: json['feedbackFromConsultant'],
    rating: json['rating'],
    subscriptionPlanId: json['subscriptionPlanId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    requestedBy: json['requestedBy'] is Map
        ? _i2.ConsulteeProfile.fromJson(json['requestedBy'])
        : null,
    subscriptionPlan: json['subscriptionPlan'] is Map
        ? _i2.SubscriptionPlan.fromJson(json['subscriptionPlan'])
        : null,
    appointments: (json['appointments'] as Iterable?)?.map(
      (json) => _i2.Appointment.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.SubscriptionCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final DateTime? startDate;

  final DateTime? endDate;

  final _i2.RequestStatus? requestStatus;

  final String? requestedById;

  final DateTime? requestedAt;

  final String? requestNotes;

  final String? feedbackFromConsultee;

  final String? feedbackFromConsultant;

  final double? rating;

  final String? subscriptionPlanId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ConsulteeProfile? requestedBy;

  final _i2.SubscriptionPlan? subscriptionPlan;

  final Iterable<_i2.Appointment>? appointments;

  final _i3.SubscriptionCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'startDate': startDate?.toIso8601String(),
    'endDate': endDate?.toIso8601String(),
    'requestStatus': requestStatus?.name,
    'requestedById': requestedById,
    'requestedAt': requestedAt?.toIso8601String(),
    'requestNotes': requestNotes,
    'feedbackFromConsultee': feedbackFromConsultee,
    'feedbackFromConsultant': feedbackFromConsultant,
    'rating': rating,
    'subscriptionPlanId': subscriptionPlanId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'requestedBy': requestedBy?.toJson(),
    'subscriptionPlan': subscriptionPlan?.toJson(),
    'appointments': appointments?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class ConsulteeProfile {
  const ConsulteeProfile({
    this.id,
    this.education,
    this.occupation,
    this.aboutMe,
    this.preferredCommunicationMethod,
    this.preferredLanguage,
    this.specialRequirements,
    this.interests,
    this.goals,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.consultationRequests,
    this.subscriptionRequests,
    this.consultantReviews,
    this.user,
    this.$count,
  });

  factory ConsulteeProfile.fromJson(Map json) => ConsulteeProfile(
    id: json['id'],
    education: json['education'],
    occupation: json['occupation'],
    aboutMe: json['aboutMe'],
    preferredCommunicationMethod: json['preferredCommunicationMethod'] != null
        ? _i2.ConsultationMode.values.firstWhere(
            (e) => e.name == json['preferredCommunicationMethod'],
          )
        : null,
    preferredLanguage: json['preferredLanguage'],
    specialRequirements: json['specialRequirements'],
    interests: json['interests'],
    goals: json['goals'],
    userId: json['userId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    consultationRequests: (json['consultationRequests'] as Iterable?)?.map(
      (json) => _i2.Consultation.fromJson(json),
    ),
    subscriptionRequests: (json['subscriptionRequests'] as Iterable?)?.map(
      (json) => _i2.Subscription.fromJson(json),
    ),
    consultantReviews: (json['consultantReviews'] as Iterable?)?.map(
      (json) => _i2.ConsultantReview.fromJson(json),
    ),
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
    $count: json['_count'] is Map
        ? _i3.ConsulteeProfileCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? education;

  final String? occupation;

  final String? aboutMe;

  final _i2.ConsultationMode? preferredCommunicationMethod;

  final String? preferredLanguage;

  final String? specialRequirements;

  final String? interests;

  final String? goals;

  final String? userId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.Consultation>? consultationRequests;

  final Iterable<_i2.Subscription>? subscriptionRequests;

  final Iterable<_i2.ConsultantReview>? consultantReviews;

  final _i2.User? user;

  final _i3.ConsulteeProfileCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'education': education,
    'occupation': occupation,
    'aboutMe': aboutMe,
    'preferredCommunicationMethod': preferredCommunicationMethod?.name,
    'preferredLanguage': preferredLanguage,
    'specialRequirements': specialRequirements,
    'interests': interests,
    'goals': goals,
    'userId': userId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'consultationRequests': consultationRequests?.map((e) => e.toJson()),
    'subscriptionRequests': subscriptionRequests?.map((e) => e.toJson()),
    'consultantReviews': consultantReviews?.map((e) => e.toJson()),
    'user': user?.toJson(),
    '_count': $count?.toJson(),
  };
}

class ConsultantReview {
  const ConsultantReview({
    this.id,
    this.rating,
    this.reviewDescription,
    this.consultantProfileId,
    this.consulteeProfileId,
    this.createdAt,
    this.updatedAt,
    this.consultantProfile,
    this.consulteeProfile,
  });

  factory ConsultantReview.fromJson(Map json) => ConsultantReview(
    id: json['id'],
    rating: json['rating'],
    reviewDescription: json['reviewDescription'],
    consultantProfileId: json['consultantProfileId'],
    consulteeProfileId: json['consulteeProfileId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    consultantProfile: json['consultantProfile'] is Map
        ? _i2.ConsultantProfile.fromJson(json['consultantProfile'])
        : null,
    consulteeProfile: json['consulteeProfile'] is Map
        ? _i2.ConsulteeProfile.fromJson(json['consulteeProfile'])
        : null,
  );

  final String? id;

  final int? rating;

  final String? reviewDescription;

  final String? consultantProfileId;

  final String? consulteeProfileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ConsultantProfile? consultantProfile;

  final _i2.ConsulteeProfile? consulteeProfile;

  Map<String, dynamic> toJson() => {
    'id': id,
    'rating': rating,
    'reviewDescription': reviewDescription,
    'consultantProfileId': consultantProfileId,
    'consulteeProfileId': consulteeProfileId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'consultantProfile': consultantProfile?.toJson(),
    'consulteeProfile': consulteeProfile?.toJson(),
  };
}

enum DayOfWeek implements _i1.PrismaEnum {
  monday._('MONDAY'),
  tuesday._('TUESDAY'),
  wednesday._('WEDNESDAY'),
  thursday._('THURSDAY'),
  friday._('FRIDAY'),
  saturday._('SATURDAY'),
  sunday._('SUNDAY');

  const DayOfWeek._(this.name);

  @override
  final String name;
}

class SlotOfAvailabilityWeekly {
  const SlotOfAvailabilityWeekly({
    this.id,
    this.dayOfWeekforStartTimeInUTC,
    this.slotStartTimeInUTC,
    this.dayOfWeekforEndTimeInUTC,
    this.slotEndTimeInUTC,
    this.consultantProfileId,
    this.createdAt,
    this.updatedAt,
    this.consultantProfile,
  });

  factory SlotOfAvailabilityWeekly.fromJson(Map json) =>
      SlotOfAvailabilityWeekly(
        id: json['id'],
        dayOfWeekforStartTimeInUTC: json['dayOfWeekforStartTimeInUTC'] != null
            ? _i2.DayOfWeek.values.firstWhere(
                (e) => e.name == json['dayOfWeekforStartTimeInUTC'],
              )
            : null,
        slotStartTimeInUTC: switch (json['slotStartTimeInUTC']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['slotStartTimeInUTC'],
        },
        dayOfWeekforEndTimeInUTC: json['dayOfWeekforEndTimeInUTC'] != null
            ? _i2.DayOfWeek.values.firstWhere(
                (e) => e.name == json['dayOfWeekforEndTimeInUTC'],
              )
            : null,
        slotEndTimeInUTC: switch (json['slotEndTimeInUTC']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['slotEndTimeInUTC'],
        },
        consultantProfileId: json['consultantProfileId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt'],
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt'],
        },
        consultantProfile: json['consultantProfile'] is Map
            ? _i2.ConsultantProfile.fromJson(json['consultantProfile'])
            : null,
      );

  final String? id;

  final _i2.DayOfWeek? dayOfWeekforStartTimeInUTC;

  final DateTime? slotStartTimeInUTC;

  final _i2.DayOfWeek? dayOfWeekforEndTimeInUTC;

  final DateTime? slotEndTimeInUTC;

  final String? consultantProfileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ConsultantProfile? consultantProfile;

  Map<String, dynamic> toJson() => {
    'id': id,
    'dayOfWeekforStartTimeInUTC': dayOfWeekforStartTimeInUTC?.name,
    'slotStartTimeInUTC': slotStartTimeInUTC?.toIso8601String(),
    'dayOfWeekforEndTimeInUTC': dayOfWeekforEndTimeInUTC?.name,
    'slotEndTimeInUTC': slotEndTimeInUTC?.toIso8601String(),
    'consultantProfileId': consultantProfileId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'consultantProfile': consultantProfile?.toJson(),
  };
}

class SlotOfAvailabilityCustom {
  const SlotOfAvailabilityCustom({
    this.id,
    this.slotStartTimeInUTC,
    this.slotEndTimeInUTC,
    this.consultantProfileId,
    this.createdAt,
    this.updatedAt,
    this.consultantProfile,
  });

  factory SlotOfAvailabilityCustom.fromJson(Map json) =>
      SlotOfAvailabilityCustom(
        id: json['id'],
        slotStartTimeInUTC: switch (json['slotStartTimeInUTC']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['slotStartTimeInUTC'],
        },
        slotEndTimeInUTC: switch (json['slotEndTimeInUTC']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['slotEndTimeInUTC'],
        },
        consultantProfileId: json['consultantProfileId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt'],
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt'],
        },
        consultantProfile: json['consultantProfile'] is Map
            ? _i2.ConsultantProfile.fromJson(json['consultantProfile'])
            : null,
      );

  final String? id;

  final DateTime? slotStartTimeInUTC;

  final DateTime? slotEndTimeInUTC;

  final String? consultantProfileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ConsultantProfile? consultantProfile;

  Map<String, dynamic> toJson() => {
    'id': id,
    'slotStartTimeInUTC': slotStartTimeInUTC?.toIso8601String(),
    'slotEndTimeInUTC': slotEndTimeInUTC?.toIso8601String(),
    'consultantProfileId': consultantProfileId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'consultantProfile': consultantProfile?.toJson(),
  };
}

class ClassContent {
  const ClassContent({
    this.id,
    this.title,
    this.description,
    this.contentType,
    this.contentUrl,
    this.order,
    this.hoursAllotted,
    this.classPlanId,
    this.createdAt,
    this.updatedAt,
    this.classPlan,
  });

  factory ClassContent.fromJson(Map json) => ClassContent(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    contentType: json['contentType'],
    contentUrl: json['contentUrl'],
    order: json['order'],
    hoursAllotted: json['hoursAllotted'],
    classPlanId: json['classPlanId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    classPlan: json['classPlan'] is Map
        ? _i2.ClassPlan.fromJson(json['classPlan'])
        : null,
  );

  final String? id;

  final String? title;

  final String? description;

  final String? contentType;

  final String? contentUrl;

  final int? order;

  final double? hoursAllotted;

  final String? classPlanId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ClassPlan? classPlan;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'contentType': contentType,
    'contentUrl': contentUrl,
    'order': order,
    'hoursAllotted': hoursAllotted,
    'classPlanId': classPlanId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'classPlan': classPlan?.toJson(),
  };
}

enum ClassStatus implements _i1.PrismaEnum {
  scheduled._('SCHEDULED'),
  inProgress._('IN_PROGRESS'),
  completed._('COMPLETED'),
  cancelled._('CANCELLED');

  const ClassStatus._(this.name);

  @override
  final String name;
}

enum WebinarStatus implements _i1.PrismaEnum {
  scheduled._('SCHEDULED'),
  inProgress._('IN_PROGRESS'),
  completed._('COMPLETED'),
  cancelled._('CANCELLED');

  const WebinarStatus._(this.name);

  @override
  final String name;
}

class Webinar {
  const Webinar({
    this.id,
    this.status,
    this.feedbackSummary,
    this.webinarPlanId,
    this.createdAt,
    this.updatedAt,
    this.waitlist,
    this.webinarPlan,
    this.appointment,
    this.$count,
  });

  factory Webinar.fromJson(Map json) => Webinar(
    id: json['id'],
    status: json['status'] != null
        ? _i2.WebinarStatus.values.firstWhere((e) => e.name == json['status'])
        : null,
    feedbackSummary: json['feedbackSummary'],
    webinarPlanId: json['webinarPlanId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    waitlist: (json['waitlist'] as Iterable?)?.map(
      (json) => _i2.Waitlist.fromJson(json),
    ),
    webinarPlan: json['webinarPlan'] is Map
        ? _i2.WebinarPlan.fromJson(json['webinarPlan'])
        : null,
    appointment: json['appointment'] is Map
        ? _i2.Appointment.fromJson(json['appointment'])
        : null,
    $count: json['_count'] is Map
        ? _i3.WebinarCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final _i2.WebinarStatus? status;

  final String? feedbackSummary;

  final String? webinarPlanId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.Waitlist>? waitlist;

  final _i2.WebinarPlan? webinarPlan;

  final _i2.Appointment? appointment;

  final _i3.WebinarCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'status': status?.name,
    'feedbackSummary': feedbackSummary,
    'webinarPlanId': webinarPlanId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'waitlist': waitlist?.map((e) => e.toJson()),
    'webinarPlan': webinarPlan?.toJson(),
    'appointment': appointment?.toJson(),
    '_count': $count?.toJson(),
  };
}

class Waitlist {
  const Waitlist({
    this.id,
    this.joinedAt,
    this.userId,
    this.webinarId,
    this.classId,
    this.user,
    this.webinar,
    this.$class,
  });

  factory Waitlist.fromJson(Map json) => Waitlist(
    id: json['id'],
    joinedAt: switch (json['joinedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['joinedAt'],
    },
    userId: json['userId'],
    webinarId: json['webinarId'],
    classId: json['classId'],
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
    webinar: json['webinar'] is Map
        ? _i2.Webinar.fromJson(json['webinar'])
        : null,
    $class: json['class'] is Map ? _i2.Class.fromJson(json['class']) : null,
  );

  final String? id;

  final DateTime? joinedAt;

  final String? userId;

  final String? webinarId;

  final String? classId;

  final _i2.User? user;

  final _i2.Webinar? webinar;

  final _i2.Class? $class;

  Map<String, dynamic> toJson() => {
    'id': id,
    'joinedAt': joinedAt?.toIso8601String(),
    'userId': userId,
    'webinarId': webinarId,
    'classId': classId,
    'user': user?.toJson(),
    'webinar': webinar?.toJson(),
    'class': $class?.toJson(),
  };
}

class Class {
  const Class({
    this.id,
    this.startDate,
    this.endDate,
    this.status,
    this.recordingUrls,
    this.feedbackSummary,
    this.classPlanId,
    this.createdAt,
    this.updatedAt,
    this.waitlist,
    this.classPlan,
    this.appointments,
    this.$count,
  });

  factory Class.fromJson(Map json) => Class(
    id: json['id'],
    startDate: switch (json['startDate']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['startDate'],
    },
    endDate: switch (json['endDate']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['endDate'],
    },
    status: json['status'] != null
        ? _i2.ClassStatus.values.firstWhere((e) => e.name == json['status'])
        : null,
    recordingUrls: json['recordingUrls'] is Iterable
        ? (json['recordingUrls'] as Iterable).whereType<String>()
        : null,
    feedbackSummary: json['feedbackSummary'],
    classPlanId: json['classPlanId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    waitlist: (json['waitlist'] as Iterable?)?.map(
      (json) => _i2.Waitlist.fromJson(json),
    ),
    classPlan: json['classPlan'] is Map
        ? _i2.ClassPlan.fromJson(json['classPlan'])
        : null,
    appointments: (json['appointments'] as Iterable?)?.map(
      (json) => _i2.Appointment.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.ClassCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final DateTime? startDate;

  final DateTime? endDate;

  final _i2.ClassStatus? status;

  final Iterable<String>? recordingUrls;

  final String? feedbackSummary;

  final String? classPlanId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.Waitlist>? waitlist;

  final _i2.ClassPlan? classPlan;

  final Iterable<_i2.Appointment>? appointments;

  final _i3.ClassCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'startDate': startDate?.toIso8601String(),
    'endDate': endDate?.toIso8601String(),
    'status': status?.name,
    'recordingUrls': recordingUrls?.map((e) => e),
    'feedbackSummary': feedbackSummary,
    'classPlanId': classPlanId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'waitlist': waitlist?.map((e) => e.toJson()),
    'classPlan': classPlan?.toJson(),
    'appointments': appointments?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class ClassPlan {
  const ClassPlan({
    this.id,
    this.title,
    this.description,
    this.price,
    this.priceCurrency,
    this.certificateProvided,
    this.durationInMonths,
    this.callsPerWeek,
    this.videoMeetings,
    this.emailSupport,
    this.maxParticipants,
    this.language,
    this.level,
    this.prerequisites,
    this.materialProvided,
    this.learningOutcomes,
    this.consultantProfileId,
    this.createdAt,
    this.updatedAt,
    this.topics,
    this.classContents,
    this.consultantProfile,
    this.classes,
    this.$count,
  });

  factory ClassPlan.fromJson(Map json) => ClassPlan(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    price: json['price'],
    priceCurrency: json['priceCurrency'],
    certificateProvided: json['certificateProvided'],
    durationInMonths: json['durationInMonths'],
    callsPerWeek: json['callsPerWeek'],
    videoMeetings: json['videoMeetings'],
    emailSupport: json['emailSupport'] != null
        ? _i2.PlanEmailSupport.values.firstWhere(
            (e) => e.name == json['emailSupport'],
          )
        : null,
    maxParticipants: json['maxParticipants'],
    language: json['language'],
    level: json['level'],
    prerequisites: json['prerequisites'],
    materialProvided: json['materialProvided'],
    learningOutcomes: json['learningOutcomes'] is Iterable
        ? (json['learningOutcomes'] as Iterable).whereType<String>()
        : null,
    consultantProfileId: json['consultantProfileId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    topics: (json['topics'] as Iterable?)?.map(
      (json) => _i2.Topic.fromJson(json),
    ),
    classContents: (json['classContents'] as Iterable?)?.map(
      (json) => _i2.ClassContent.fromJson(json),
    ),
    consultantProfile: json['consultantProfile'] is Map
        ? _i2.ConsultantProfile.fromJson(json['consultantProfile'])
        : null,
    classes: (json['classes'] as Iterable?)?.map(
      (json) => _i2.Class.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.ClassPlanCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? title;

  final String? description;

  final int? price;

  final String? priceCurrency;

  final bool? certificateProvided;

  final int? durationInMonths;

  final int? callsPerWeek;

  final int? videoMeetings;

  final _i2.PlanEmailSupport? emailSupport;

  final int? maxParticipants;

  final String? language;

  final String? level;

  final String? prerequisites;

  final String? materialProvided;

  final Iterable<String>? learningOutcomes;

  final String? consultantProfileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.Topic>? topics;

  final Iterable<_i2.ClassContent>? classContents;

  final _i2.ConsultantProfile? consultantProfile;

  final Iterable<_i2.Class>? classes;

  final _i3.ClassPlanCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'price': price,
    'priceCurrency': priceCurrency,
    'certificateProvided': certificateProvided,
    'durationInMonths': durationInMonths,
    'callsPerWeek': callsPerWeek,
    'videoMeetings': videoMeetings,
    'emailSupport': emailSupport?.name,
    'maxParticipants': maxParticipants,
    'language': language,
    'level': level,
    'prerequisites': prerequisites,
    'materialProvided': materialProvided,
    'learningOutcomes': learningOutcomes?.map((e) => e),
    'consultantProfileId': consultantProfileId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'topics': topics?.map((e) => e.toJson()),
    'classContents': classContents?.map((e) => e.toJson()),
    'consultantProfile': consultantProfile?.toJson(),
    'classes': classes?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class Topic {
  const Topic({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.webinarPlans,
    this.classPlans,
    this.$count,
  });

  factory Topic.fromJson(Map json) => Topic(
    id: json['id'],
    name: json['name'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    webinarPlans: (json['webinarPlans'] as Iterable?)?.map(
      (json) => _i2.WebinarPlan.fromJson(json),
    ),
    classPlans: (json['classPlans'] as Iterable?)?.map(
      (json) => _i2.ClassPlan.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.TopicCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? name;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.WebinarPlan>? webinarPlans;

  final Iterable<_i2.ClassPlan>? classPlans;

  final _i3.TopicCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'webinarPlans': webinarPlans?.map((e) => e.toJson()),
    'classPlans': classPlans?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class WebinarPlan {
  const WebinarPlan({
    this.id,
    this.title,
    this.description,
    this.price,
    this.priceCurrency,
    this.certificateProvided,
    this.durationInHours,
    this.maxParticipants,
    this.language,
    this.level,
    this.prerequisites,
    this.materialProvided,
    this.learningOutcomes,
    this.consultantProfileId,
    this.createdAt,
    this.updatedAt,
    this.topics,
    this.consultantProfile,
    this.webinars,
    this.$count,
  });

  factory WebinarPlan.fromJson(Map json) => WebinarPlan(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    price: json['price'],
    priceCurrency: json['priceCurrency'],
    certificateProvided: json['certificateProvided'],
    durationInHours: json['durationInHours'],
    maxParticipants: json['maxParticipants'],
    language: json['language'],
    level: json['level'],
    prerequisites: json['prerequisites'],
    materialProvided: json['materialProvided'],
    learningOutcomes: json['learningOutcomes'] is Iterable
        ? (json['learningOutcomes'] as Iterable).whereType<String>()
        : null,
    consultantProfileId: json['consultantProfileId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    topics: (json['topics'] as Iterable?)?.map(
      (json) => _i2.Topic.fromJson(json),
    ),
    consultantProfile: json['consultantProfile'] is Map
        ? _i2.ConsultantProfile.fromJson(json['consultantProfile'])
        : null,
    webinars: (json['webinars'] as Iterable?)?.map(
      (json) => _i2.Webinar.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.WebinarPlanCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? title;

  final String? description;

  final int? price;

  final String? priceCurrency;

  final bool? certificateProvided;

  final double? durationInHours;

  final int? maxParticipants;

  final String? language;

  final String? level;

  final String? prerequisites;

  final String? materialProvided;

  final Iterable<String>? learningOutcomes;

  final String? consultantProfileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.Topic>? topics;

  final _i2.ConsultantProfile? consultantProfile;

  final Iterable<_i2.Webinar>? webinars;

  final _i3.WebinarPlanCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'price': price,
    'priceCurrency': priceCurrency,
    'certificateProvided': certificateProvided,
    'durationInHours': durationInHours,
    'maxParticipants': maxParticipants,
    'language': language,
    'level': level,
    'prerequisites': prerequisites,
    'materialProvided': materialProvided,
    'learningOutcomes': learningOutcomes?.map((e) => e),
    'consultantProfileId': consultantProfileId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'topics': topics?.map((e) => e.toJson()),
    'consultantProfile': consultantProfile?.toJson(),
    'webinars': webinars?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class ConsultantProfile {
  const ConsultantProfile({
    this.id,
    this.description,
    this.qualifications,
    this.specialization,
    this.experience,
    this.rating,
    this.domainId,
    this.scheduleType,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.domain,
    this.subDomains,
    this.tags,
    this.reviews,
    this.slotsOfAvailabilityWeekly,
    this.slotsOfAvailabilityCustom,
    this.consultationPlans,
    this.subscriptionPlans,
    this.webinarPlans,
    this.classPlans,
    this.user,
    this.$count,
  });

  factory ConsultantProfile.fromJson(Map json) => ConsultantProfile(
    id: json['id'],
    description: json['description'],
    qualifications: json['qualifications'],
    specialization: json['specialization'],
    experience: json['experience'],
    rating: json['rating'],
    domainId: json['domainId'],
    scheduleType: json['scheduleType'] != null
        ? _i2.ScheduleType.values.firstWhere(
            (e) => e.name == json['scheduleType'],
          )
        : null,
    userId: json['userId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    domain: json['domain'] is Map ? _i2.Domain.fromJson(json['domain']) : null,
    subDomains: (json['subDomains'] as Iterable?)?.map(
      (json) => _i2.SubDomain.fromJson(json),
    ),
    tags: (json['tags'] as Iterable?)?.map((json) => _i2.Tag.fromJson(json)),
    reviews: (json['reviews'] as Iterable?)?.map(
      (json) => _i2.ConsultantReview.fromJson(json),
    ),
    slotsOfAvailabilityWeekly: (json['slotsOfAvailabilityWeekly'] as Iterable?)
        ?.map((json) => _i2.SlotOfAvailabilityWeekly.fromJson(json)),
    slotsOfAvailabilityCustom: (json['slotsOfAvailabilityCustom'] as Iterable?)
        ?.map((json) => _i2.SlotOfAvailabilityCustom.fromJson(json)),
    consultationPlans: (json['consultationPlans'] as Iterable?)?.map(
      (json) => _i2.ConsultationPlan.fromJson(json),
    ),
    subscriptionPlans: (json['subscriptionPlans'] as Iterable?)?.map(
      (json) => _i2.SubscriptionPlan.fromJson(json),
    ),
    webinarPlans: (json['webinarPlans'] as Iterable?)?.map(
      (json) => _i2.WebinarPlan.fromJson(json),
    ),
    classPlans: (json['classPlans'] as Iterable?)?.map(
      (json) => _i2.ClassPlan.fromJson(json),
    ),
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
    $count: json['_count'] is Map
        ? _i3.ConsultantProfileCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? description;

  final String? qualifications;

  final String? specialization;

  final double? experience;

  final double? rating;

  final String? domainId;

  final _i2.ScheduleType? scheduleType;

  final String? userId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.Domain? domain;

  final Iterable<_i2.SubDomain>? subDomains;

  final Iterable<_i2.Tag>? tags;

  final Iterable<_i2.ConsultantReview>? reviews;

  final Iterable<_i2.SlotOfAvailabilityWeekly>? slotsOfAvailabilityWeekly;

  final Iterable<_i2.SlotOfAvailabilityCustom>? slotsOfAvailabilityCustom;

  final Iterable<_i2.ConsultationPlan>? consultationPlans;

  final Iterable<_i2.SubscriptionPlan>? subscriptionPlans;

  final Iterable<_i2.WebinarPlan>? webinarPlans;

  final Iterable<_i2.ClassPlan>? classPlans;

  final _i2.User? user;

  final _i3.ConsultantProfileCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'description': description,
    'qualifications': qualifications,
    'specialization': specialization,
    'experience': experience,
    'rating': rating,
    'domainId': domainId,
    'scheduleType': scheduleType?.name,
    'userId': userId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'domain': domain?.toJson(),
    'subDomains': subDomains?.map((e) => e.toJson()),
    'tags': tags?.map((e) => e.toJson()),
    'reviews': reviews?.map((e) => e.toJson()),
    'slotsOfAvailabilityWeekly': slotsOfAvailabilityWeekly?.map(
      (e) => e.toJson(),
    ),
    'slotsOfAvailabilityCustom': slotsOfAvailabilityCustom?.map(
      (e) => e.toJson(),
    ),
    'consultationPlans': consultationPlans?.map((e) => e.toJson()),
    'subscriptionPlans': subscriptionPlans?.map((e) => e.toJson()),
    'webinarPlans': webinarPlans?.map((e) => e.toJson()),
    'classPlans': classPlans?.map((e) => e.toJson()),
    'user': user?.toJson(),
    '_count': $count?.toJson(),
  };
}

class ConsultationPlan {
  const ConsultationPlan({
    this.id,
    this.title,
    this.description,
    this.durationInHours,
    this.price,
    this.language,
    this.level,
    this.prerequisites,
    this.materialProvided,
    this.learningOutcomes,
    this.consultantProfileId,
    this.createdAt,
    this.updatedAt,
    this.consultantProfile,
    this.consultations,
    this.$count,
  });

  factory ConsultationPlan.fromJson(Map json) => ConsultationPlan(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    durationInHours: json['durationInHours'],
    price: json['price'],
    language: json['language'],
    level: json['level'],
    prerequisites: json['prerequisites'],
    materialProvided: json['materialProvided'],
    learningOutcomes: json['learningOutcomes'] is Iterable
        ? (json['learningOutcomes'] as Iterable).whereType<String>()
        : null,
    consultantProfileId: json['consultantProfileId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    consultantProfile: json['consultantProfile'] is Map
        ? _i2.ConsultantProfile.fromJson(json['consultantProfile'])
        : null,
    consultations: (json['consultations'] as Iterable?)?.map(
      (json) => _i2.Consultation.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.ConsultationPlanCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? title;

  final String? description;

  final double? durationInHours;

  final int? price;

  final String? language;

  final String? level;

  final String? prerequisites;

  final String? materialProvided;

  final Iterable<String>? learningOutcomes;

  final String? consultantProfileId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ConsultantProfile? consultantProfile;

  final Iterable<_i2.Consultation>? consultations;

  final _i3.ConsultationPlanCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'durationInHours': durationInHours,
    'price': price,
    'language': language,
    'level': level,
    'prerequisites': prerequisites,
    'materialProvided': materialProvided,
    'learningOutcomes': learningOutcomes?.map((e) => e),
    'consultantProfileId': consultantProfileId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'consultantProfile': consultantProfile?.toJson(),
    'consultations': consultations?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class Consultation {
  const Consultation({
    this.id,
    this.consultationPlanId,
    this.requestStatus,
    this.requestedById,
    this.requestedAt,
    this.requestNotes,
    this.directlyBooked,
    this.feedbackFromConsultee,
    this.feedbackFromConsultant,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.consultationPlan,
    this.requestedBy,
    this.appointment,
  });

  factory Consultation.fromJson(Map json) => Consultation(
    id: json['id'],
    consultationPlanId: json['consultationPlanId'],
    requestStatus: json['requestStatus'] != null
        ? _i2.RequestStatus.values.firstWhere(
            (e) => e.name == json['requestStatus'],
          )
        : null,
    requestedById: json['requestedById'],
    requestedAt: switch (json['requestedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['requestedAt'],
    },
    requestNotes: json['requestNotes'],
    directlyBooked: json['directlyBooked'],
    feedbackFromConsultee: json['feedbackFromConsultee'],
    feedbackFromConsultant: json['feedbackFromConsultant'],
    rating: json['rating'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    consultationPlan: json['consultationPlan'] is Map
        ? _i2.ConsultationPlan.fromJson(json['consultationPlan'])
        : null,
    requestedBy: json['requestedBy'] is Map
        ? _i2.ConsulteeProfile.fromJson(json['requestedBy'])
        : null,
    appointment: json['appointment'] is Map
        ? _i2.Appointment.fromJson(json['appointment'])
        : null,
  );

  final String? id;

  final String? consultationPlanId;

  final _i2.RequestStatus? requestStatus;

  final String? requestedById;

  final DateTime? requestedAt;

  final String? requestNotes;

  final bool? directlyBooked;

  final String? feedbackFromConsultee;

  final String? feedbackFromConsultant;

  final double? rating;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.ConsultationPlan? consultationPlan;

  final _i2.ConsulteeProfile? requestedBy;

  final _i2.Appointment? appointment;

  Map<String, dynamic> toJson() => {
    'id': id,
    'consultationPlanId': consultationPlanId,
    'requestStatus': requestStatus?.name,
    'requestedById': requestedById,
    'requestedAt': requestedAt?.toIso8601String(),
    'requestNotes': requestNotes,
    'directlyBooked': directlyBooked,
    'feedbackFromConsultee': feedbackFromConsultee,
    'feedbackFromConsultant': feedbackFromConsultant,
    'rating': rating,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'consultationPlan': consultationPlan?.toJson(),
    'requestedBy': requestedBy?.toJson(),
    'appointment': appointment?.toJson(),
  };
}

class Appointment {
  const Appointment({
    this.id,
    this.appointmentType,
    this.consultationId,
    this.subscriptionId,
    this.webinarId,
    this.classId,
    this.createdAt,
    this.updatedAt,
    this.slotsOfAppointment,
    this.consultation,
    this.subscription,
    this.webinar,
    this.$class,
    this.payment,
    this.$count,
  });

  factory Appointment.fromJson(Map json) => Appointment(
    id: json['id'],
    appointmentType: json['appointmentType'] != null
        ? _i2.AppointmentsType.values.firstWhere(
            (e) => e.name == json['appointmentType'],
          )
        : null,
    consultationId: json['consultationId'],
    subscriptionId: json['subscriptionId'],
    webinarId: json['webinarId'],
    classId: json['classId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    slotsOfAppointment: (json['slotsOfAppointment'] as Iterable?)?.map(
      (json) => _i2.SlotOfAppointment.fromJson(json),
    ),
    consultation: json['consultation'] is Map
        ? _i2.Consultation.fromJson(json['consultation'])
        : null,
    subscription: json['subscription'] is Map
        ? _i2.Subscription.fromJson(json['subscription'])
        : null,
    webinar: json['webinar'] is Map
        ? _i2.Webinar.fromJson(json['webinar'])
        : null,
    $class: json['class'] is Map ? _i2.Class.fromJson(json['class']) : null,
    payment: (json['payment'] as Iterable?)?.map(
      (json) => _i2.Payment.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.AppointmentCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final _i2.AppointmentsType? appointmentType;

  final String? consultationId;

  final String? subscriptionId;

  final String? webinarId;

  final String? classId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.SlotOfAppointment>? slotsOfAppointment;

  final _i2.Consultation? consultation;

  final _i2.Subscription? subscription;

  final _i2.Webinar? webinar;

  final _i2.Class? $class;

  final Iterable<_i2.Payment>? payment;

  final _i3.AppointmentCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'appointmentType': appointmentType?.name,
    'consultationId': consultationId,
    'subscriptionId': subscriptionId,
    'webinarId': webinarId,
    'classId': classId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'slotsOfAppointment': slotsOfAppointment?.map((e) => e.toJson()),
    'consultation': consultation?.toJson(),
    'subscription': subscription?.toJson(),
    'webinar': webinar?.toJson(),
    'class': $class?.toJson(),
    'payment': payment?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

enum DiscountType implements _i1.PrismaEnum {
  percentage._('PERCENTAGE'),
  fixedAmount._('FIXED_AMOUNT'),
  freeShipping._('FREE_SHIPPING');

  const DiscountType._(this.name);

  @override
  final String name;
}

class DiscountCode {
  const DiscountCode({
    this.id,
    this.code,
    this.description,
    this.discountType,
    this.discountValue,
    this.createdAt,
    this.updatedAt,
    this.payment,
    this.$count,
  });

  factory DiscountCode.fromJson(Map json) => DiscountCode(
    id: json['id'],
    code: json['code'],
    description: json['description'],
    discountType: json['discountType'] != null
        ? _i2.DiscountType.values.firstWhere(
            (e) => e.name == json['discountType'],
          )
        : null,
    discountValue: json['discountValue'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    payment: (json['Payment'] as Iterable?)?.map(
      (json) => _i2.Payment.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.DiscountCodeCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? code;

  final String? description;

  final _i2.DiscountType? discountType;

  final double? discountValue;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.Payment>? payment;

  final _i3.DiscountCodeCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'code': code,
    'description': description,
    'discountType': discountType?.name,
    'discountValue': discountValue,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'Payment': payment?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class Payment {
  const Payment({
    this.id,
    this.amount,
    this.currency,
    this.description,
    this.receiptUrl,
    this.paymentMethod,
    this.paymentIntent,
    this.paymentGateway,
    this.paymentStatus,
    this.expiresAt,
    this.userId,
    this.appointmentId,
    this.discountCodeId,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.appointment,
    this.discountCode,
  });

  factory Payment.fromJson(Map json) => Payment(
    id: json['id'],
    amount: json['amount'],
    currency: json['currency'],
    description: json['description'],
    receiptUrl: json['receiptUrl'],
    paymentMethod: json['paymentMethod'],
    paymentIntent: json['paymentIntent'],
    paymentGateway: json['paymentGateway'] != null
        ? _i2.PaymentGateway.values.firstWhere(
            (e) => e.name == json['paymentGateway'],
          )
        : null,
    paymentStatus: json['paymentStatus'] != null
        ? _i2.PaymentStatus.values.firstWhere(
            (e) => e.name == json['paymentStatus'],
          )
        : null,
    expiresAt: switch (json['expiresAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['expiresAt'],
    },
    userId: json['userId'],
    appointmentId: json['appointmentId'],
    discountCodeId: json['discountCodeId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
    appointment: json['appointment'] is Map
        ? _i2.Appointment.fromJson(json['appointment'])
        : null,
    discountCode: json['discountCode'] is Map
        ? _i2.DiscountCode.fromJson(json['discountCode'])
        : null,
  );

  final String? id;

  final int? amount;

  final String? currency;

  final String? description;

  final String? receiptUrl;

  final String? paymentMethod;

  final String? paymentIntent;

  final _i2.PaymentGateway? paymentGateway;

  final _i2.PaymentStatus? paymentStatus;

  final DateTime? expiresAt;

  final String? userId;

  final String? appointmentId;

  final String? discountCodeId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.User? user;

  final _i2.Appointment? appointment;

  final _i2.DiscountCode? discountCode;

  Map<String, dynamic> toJson() => {
    'id': id,
    'amount': amount,
    'currency': currency,
    'description': description,
    'receiptUrl': receiptUrl,
    'paymentMethod': paymentMethod,
    'paymentIntent': paymentIntent,
    'paymentGateway': paymentGateway?.name,
    'paymentStatus': paymentStatus?.name,
    'expiresAt': expiresAt?.toIso8601String(),
    'userId': userId,
    'appointmentId': appointmentId,
    'discountCodeId': discountCodeId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'user': user?.toJson(),
    'appointment': appointment?.toJson(),
    'discountCode': discountCode?.toJson(),
  };
}

class StaffProfile {
  const StaffProfile({
    this.id,
    this.department,
    this.position,
    this.permissions,
    this.responsibilities,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory StaffProfile.fromJson(Map json) => StaffProfile(
    id: json['id'],
    department: json['department'],
    position: json['position'],
    permissions: json['permissions'],
    responsibilities: json['responsibilities'],
    userId: json['userId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
  );

  final String? id;

  final String? department;

  final String? position;

  final Object? permissions;

  final Object? responsibilities;

  final String? userId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.User? user;

  Map<String, dynamic> toJson() => {
    'id': id,
    'department': department,
    'position': position,
    'permissions': permissions,
    'responsibilities': responsibilities,
    'userId': userId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'user': user?.toJson(),
  };
}

enum FeedbackStatus implements _i1.PrismaEnum {
  pending._('PENDING'),
  acknowledged._('ACKNOWLEDGED'),
  inProgress._('IN_PROGRESS'),
  resolved._('RESOLVED'),
  closed._('CLOSED');

  const FeedbackStatus._(this.name);

  @override
  final String name;
}

class Feedback {
  const Feedback({
    this.id,
    this.title,
    this.description,
    this.rating,
    this.category,
    this.status,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory Feedback.fromJson(Map json) => Feedback(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    rating: json['rating'],
    category: json['category'],
    status: json['status'] != null
        ? _i2.FeedbackStatus.values.firstWhere((e) => e.name == json['status'])
        : null,
    userId: json['userId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
  );

  final String? id;

  final String? title;

  final String? description;

  final int? rating;

  final String? category;

  final _i2.FeedbackStatus? status;

  final String? userId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.User? user;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'rating': rating,
    'category': category,
    'status': status?.name,
    'userId': userId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'user': user?.toJson(),
  };
}

enum SupportPriority implements _i1.PrismaEnum {
  low._('LOW'),
  medium._('MEDIUM'),
  high._('HIGH'),
  urgent._('URGENT');

  const SupportPriority._(this.name);

  @override
  final String name;
}

enum SupportTicketStatus implements _i1.PrismaEnum {
  open._('OPEN'),
  inProgress._('IN_PROGRESS'),
  onHold._('ON_HOLD'),
  resolved._('RESOLVED'),
  closed._('CLOSED');

  const SupportTicketStatus._(this.name);

  @override
  final String name;
}

class SupportResponse {
  const SupportResponse({
    this.id,
    this.message,
    this.supportTicketId,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.supportTicket,
    this.user,
  });

  factory SupportResponse.fromJson(Map json) => SupportResponse(
    id: json['id'],
    message: json['message'],
    supportTicketId: json['supportTicketId'],
    userId: json['userId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    supportTicket: json['supportTicket'] is Map
        ? _i2.SupportTicket.fromJson(json['supportTicket'])
        : null,
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
  );

  final String? id;

  final String? message;

  final String? supportTicketId;

  final String? userId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.SupportTicket? supportTicket;

  final _i2.User? user;

  Map<String, dynamic> toJson() => {
    'id': id,
    'message': message,
    'supportTicketId': supportTicketId,
    'userId': userId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'supportTicket': supportTicket?.toJson(),
    'user': user?.toJson(),
  };
}

class SupportTicket {
  const SupportTicket({
    this.id,
    this.title,
    this.description,
    this.priority,
    this.status,
    this.category,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.responses,
    this.$count,
  });

  factory SupportTicket.fromJson(Map json) => SupportTicket(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    priority: json['priority'] != null
        ? _i2.SupportPriority.values.firstWhere(
            (e) => e.name == json['priority'],
          )
        : null,
    status: json['status'] != null
        ? _i2.SupportTicketStatus.values.firstWhere(
            (e) => e.name == json['status'],
          )
        : null,
    category: json['category'],
    userId: json['userId'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
    responses: (json['responses'] as Iterable?)?.map(
      (json) => _i2.SupportResponse.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.SupportTicketCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? title;

  final String? description;

  final _i2.SupportPriority? priority;

  final _i2.SupportTicketStatus? status;

  final String? category;

  final String? userId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.User? user;

  final Iterable<_i2.SupportResponse>? responses;

  final _i3.SupportTicketCountOutputType? $count;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'priority': priority?.name,
    'status': status?.name,
    'category': category,
    'userId': userId,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'user': user?.toJson(),
    'responses': responses?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class Account {
  const Account({
    this.id,
    this.userId,
    this.type,
    this.provider,
    this.providerAccountId,
    this.refreshToken,
    this.accessToken,
    this.expiresAt,
    this.tokenType,
    this.scope,
    this.idToken,
    this.sessionState,
    this.user,
  });

  factory Account.fromJson(Map json) => Account(
    id: json['id'],
    userId: json['userId'],
    type: json['type'],
    provider: json['provider'],
    providerAccountId: json['providerAccountId'],
    refreshToken: json['refresh_token'],
    accessToken: json['access_token'],
    expiresAt: json['expires_at'],
    tokenType: json['token_type'],
    scope: json['scope'],
    idToken: json['id_token'],
    sessionState: json['session_state'],
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
  );

  final String? id;

  final String? userId;

  final String? type;

  final String? provider;

  final String? providerAccountId;

  final String? refreshToken;

  final String? accessToken;

  final int? expiresAt;

  final String? tokenType;

  final String? scope;

  final String? idToken;

  final String? sessionState;

  final _i2.User? user;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userId': userId,
    'type': type,
    'provider': provider,
    'providerAccountId': providerAccountId,
    'refresh_token': refreshToken,
    'access_token': accessToken,
    'expires_at': expiresAt,
    'token_type': tokenType,
    'scope': scope,
    'id_token': idToken,
    'session_state': sessionState,
    'user': user?.toJson(),
  };
}

class Session {
  const Session({
    this.id,
    this.sessionToken,
    this.userId,
    this.expires,
    this.user,
  });

  factory Session.fromJson(Map json) => Session(
    id: json['id'],
    sessionToken: json['sessionToken'],
    userId: json['userId'],
    expires: switch (json['expires']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['expires'],
    },
    user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
  );

  final String? id;

  final String? sessionToken;

  final String? userId;

  final DateTime? expires;

  final _i2.User? user;

  Map<String, dynamic> toJson() => {
    'id': id,
    'sessionToken': sessionToken,
    'userId': userId,
    'expires': expires?.toIso8601String(),
    'user': user?.toJson(),
  };
}

class User {
  const User({
    this.id,
    this.name,
    this.email,
    this.emailVerified,
    this.image,
    this.phone,
    this.address,
    this.password,
    this.passwordResetToken,
    this.passwordResetExpires,
    this.onlineStatus,
    this.currentTimezone,
    this.onboardingCompleted,
    this.role,
    this.consultantProfileId,
    this.consulteeProfileId,
    this.staffProfileId,
    this.cookiePreferences,
    this.notificationPreferences,
    this.payment,
    this.consultantProfile,
    this.consulteeProfile,
    this.staffProfile,
    this.slotsOfAppointment,
    this.waitlist,
    this.feedbacks,
    this.supportTickets,
    this.supportResponses,
    this.accounts,
    this.sessions,
    this.$count,
  });

  factory User.fromJson(Map json) => User(
    id: json['id'],
    name: json['name'],
    email: json['email'],
    emailVerified: switch (json['emailVerified']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['emailVerified'],
    },
    image: json['image'],
    phone: json['phone'],
    address: json['address'],
    password: json['password'],
    passwordResetToken: json['passwordResetToken'],
    passwordResetExpires: switch (json['passwordResetExpires']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['passwordResetExpires'],
    },
    onlineStatus: json['onlineStatus'],
    currentTimezone: json['currentTimezone'],
    onboardingCompleted: json['onboardingCompleted'],
    role: json['role'] != null
        ? _i2.UserRole.values.firstWhere((e) => e.name == json['role'])
        : null,
    consultantProfileId: json['consultantProfileId'],
    consulteeProfileId: json['consulteeProfileId'],
    staffProfileId: json['staffProfileId'],
    cookiePreferences: json['cookiePreferences'] is Map
        ? _i2.CookiePreference.fromJson(json['cookiePreferences'])
        : null,
    notificationPreferences: json['notificationPreferences'] is Map
        ? _i2.NotificationPreference.fromJson(json['notificationPreferences'])
        : null,
    payment: (json['Payment'] as Iterable?)?.map(
      (json) => _i2.Payment.fromJson(json),
    ),
    consultantProfile: json['consultantProfile'] is Map
        ? _i2.ConsultantProfile.fromJson(json['consultantProfile'])
        : null,
    consulteeProfile: json['consulteeProfile'] is Map
        ? _i2.ConsulteeProfile.fromJson(json['consulteeProfile'])
        : null,
    staffProfile: json['staffProfile'] is Map
        ? _i2.StaffProfile.fromJson(json['staffProfile'])
        : null,
    slotsOfAppointment: (json['slotsOfAppointment'] as Iterable?)?.map(
      (json) => _i2.SlotOfAppointment.fromJson(json),
    ),
    waitlist: (json['Waitlist'] as Iterable?)?.map(
      (json) => _i2.Waitlist.fromJson(json),
    ),
    feedbacks: (json['feedbacks'] as Iterable?)?.map(
      (json) => _i2.Feedback.fromJson(json),
    ),
    supportTickets: (json['supportTickets'] as Iterable?)?.map(
      (json) => _i2.SupportTicket.fromJson(json),
    ),
    supportResponses: (json['supportResponses'] as Iterable?)?.map(
      (json) => _i2.SupportResponse.fromJson(json),
    ),
    accounts: (json['accounts'] as Iterable?)?.map(
      (json) => _i2.Account.fromJson(json),
    ),
    sessions: (json['sessions'] as Iterable?)?.map(
      (json) => _i2.Session.fromJson(json),
    ),
    $count: json['_count'] is Map
        ? _i3.UserCountOutputType.fromJson(json['_count'])
        : null,
  );

  final String? id;

  final String? name;

  final String? email;

  final DateTime? emailVerified;

  final String? image;

  final String? phone;

  final String? address;

  final String? password;

  final String? passwordResetToken;

  final DateTime? passwordResetExpires;

  final bool? onlineStatus;

  final String? currentTimezone;

  final bool? onboardingCompleted;

  final _i2.UserRole? role;

  final String? consultantProfileId;

  final String? consulteeProfileId;

  final String? staffProfileId;

  final _i2.CookiePreference? cookiePreferences;

  final _i2.NotificationPreference? notificationPreferences;

  final Iterable<_i2.Payment>? payment;

  final _i2.ConsultantProfile? consultantProfile;

  final _i2.ConsulteeProfile? consulteeProfile;

  final _i2.StaffProfile? staffProfile;

  final Iterable<_i2.SlotOfAppointment>? slotsOfAppointment;

  final Iterable<_i2.Waitlist>? waitlist;

  final Iterable<_i2.Feedback>? feedbacks;

  final Iterable<_i2.SupportTicket>? supportTickets;

  final Iterable<_i2.SupportResponse>? supportResponses;

  final Iterable<_i2.Account>? accounts;

  final Iterable<_i2.Session>? sessions;

  final _i3.UserCountOutputType? $count;

  Map<String, dynamic> toJson() => {
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
    'role': role?.name,
    'consultantProfileId': consultantProfileId,
    'consulteeProfileId': consulteeProfileId,
    'staffProfileId': staffProfileId,
    'cookiePreferences': cookiePreferences?.toJson(),
    'notificationPreferences': notificationPreferences?.toJson(),
    'Payment': payment?.map((e) => e.toJson()),
    'consultantProfile': consultantProfile?.toJson(),
    'consulteeProfile': consulteeProfile?.toJson(),
    'staffProfile': staffProfile?.toJson(),
    'slotsOfAppointment': slotsOfAppointment?.map((e) => e.toJson()),
    'Waitlist': waitlist?.map((e) => e.toJson()),
    'feedbacks': feedbacks?.map((e) => e.toJson()),
    'supportTickets': supportTickets?.map((e) => e.toJson()),
    'supportResponses': supportResponses?.map((e) => e.toJson()),
    'accounts': accounts?.map((e) => e.toJson()),
    'sessions': sessions?.map((e) => e.toJson()),
    '_count': $count?.toJson(),
  };
}

class VerificationToken {
  const VerificationToken({this.identifier, this.token, this.expires});

  factory VerificationToken.fromJson(Map json) => VerificationToken(
    identifier: json['identifier'],
    token: json['token'],
    expires: switch (json['expires']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['expires'],
    },
  );

  final String? identifier;

  final String? token;

  final DateTime? expires;

  Map<String, dynamic> toJson() => {
    'identifier': identifier,
    'token': token,
    'expires': expires?.toIso8601String(),
  };
}

class Newsletter {
  const Newsletter({this.id, this.email, this.createdAt, this.updatedAt});

  factory Newsletter.fromJson(Map json) => Newsletter(
    id: json['id'],
    email: json['email'],
    createdAt: switch (json['createdAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['createdAt'],
    },
    updatedAt: switch (json['updatedAt']) {
      DateTime value => value,
      String value => DateTime.parse(value),
      _ => json['updatedAt'],
    },
  );

  final String? id;

  final String? email;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
  };
}
