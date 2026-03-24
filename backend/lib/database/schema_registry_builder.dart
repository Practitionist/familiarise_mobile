import 'package:prisma_flutter_connector/runtime_server.dart';

SchemaRegistry buildSchemaRegistry() {
  final schema = SchemaRegistry();

  // ConsultantProfile relations
  schema.registerModel(ModelSchema(
    name: 'ConsultantProfile',
    tableName: 'ConsultantProfile',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'domainId': const FieldInfo(
          name: 'domainId', columnName: 'domainId', type: 'String'),
      'headline': const FieldInfo(
          name: 'headline', columnName: 'headline', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'rating':
          const FieldInfo(name: 'rating', columnName: 'rating', type: 'Float'),
      'experience': const FieldInfo(
          name: 'experience', columnName: 'experience', type: 'Float'),
      'languages': const FieldInfo(
          name: 'languages', columnName: 'languages', type: 'Json'),
      'toolsAndTechnologies': const FieldInfo(
          name: 'toolsAndTechnologies',
          columnName: 'toolsAndTechnologies',
          type: 'Json'),
      'totalMenteesHelped': const FieldInfo(
          name: 'totalMenteesHelped',
          columnName: 'totalMenteesHelped',
          type: 'Int'),
      'isVerified': const FieldInfo(
          name: 'isVerified', columnName: 'isVerified', type: 'Boolean'),
      'websiteUrl': const FieldInfo(
          name: 'websiteUrl', columnName: 'websiteUrl', type: 'String'),
      'twitterUrl': const FieldInfo(
          name: 'twitterUrl', columnName: 'twitterUrl', type: 'String'),
      'githubUrl': const FieldInfo(
          name: 'githubUrl', columnName: 'githubUrl', type: 'String'),
      'videoIntroUrl': const FieldInfo(
          name: 'videoIntroUrl', columnName: 'videoIntroUrl', type: 'String'),
      'mentoringStyle': const FieldInfo(
          name: 'mentoringStyle', columnName: 'mentoringStyle', type: 'String'),
      'sessionTypes': const FieldInfo(
          name: 'sessionTypes', columnName: 'sessionTypes', type: 'Json'),
      'scheduleType': const FieldInfo(
          name: 'scheduleType', columnName: 'scheduleType', type: 'String'),
      'profileCompletionPercentage': const FieldInfo(
          name: 'profileCompletionPercentage',
          columnName: 'profileCompletionPercentage',
          type: 'Int'),
      'verificationStatus': const FieldInfo(
          name: 'verificationStatus',
          columnName: 'verificationStatus',
          type: 'String'),
      'totalRevenue': const FieldInfo(
          name: 'totalRevenue', columnName: 'totalRevenue', type: 'Int'),
      'pendingRevenue': const FieldInfo(
          name: 'pendingRevenue', columnName: 'pendingRevenue', type: 'Int'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
      'domain': RelationInfo.oneToOne(
        name: 'domain',
        targetModel: 'Domain',
        foreignKey: 'domainId',
        isOwner: true,
      ),
      'subDomains': RelationInfo.manyToMany(
        name: 'subDomains',
        targetModel: 'SubDomain',
        joinTable: '_ConsultantProfileToSubDomain',
        joinColumn: 'A',
        inverseJoinColumn: 'B',
      ),
      'consultationPlans': RelationInfo.oneToMany(
        name: 'consultationPlans',
        targetModel: 'ConsultationPlan',
        foreignKey: 'consultantProfileId',
      ),
      'reviews': RelationInfo.oneToMany(
        name: 'reviews',
        targetModel: 'ConsultantReview',
        foreignKey: 'consultantProfileId',
      ),
    },
  ));

  // User model (users table — @@map('users'))
  schema.registerModel(ModelSchema(
    name: 'users',
    tableName: 'users',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'name': const FieldInfo(name: 'name', columnName: 'name', type: 'String'),
      'email':
          const FieldInfo(name: 'email', columnName: 'email', type: 'String'),
      'emailVerified': const FieldInfo(
          name: 'emailVerified', columnName: 'emailVerified', type: 'Boolean'),
      'image':
          const FieldInfo(name: 'image', columnName: 'image', type: 'String'),
      'phone':
          const FieldInfo(name: 'phone', columnName: 'phone', type: 'String'),
      'address': const FieldInfo(
          name: 'address', columnName: 'address', type: 'String'),
      'onlineStatus': const FieldInfo(
          name: 'onlineStatus', columnName: 'onlineStatus', type: 'Boolean'),
      'timezone': const FieldInfo(
          name: 'timezone', columnName: 'timezone', type: 'String'),
      'onboardingCompleted': const FieldInfo(
          name: 'onboardingCompleted',
          columnName: 'onboardingCompleted',
          type: 'Boolean'),
      'role': const FieldInfo(name: 'role', columnName: 'role', type: 'String'),
      'dateOfBirth': const FieldInfo(
          name: 'dateOfBirth', columnName: 'dateOfBirth', type: 'DateTime'),
      'gender':
          const FieldInfo(name: 'gender', columnName: 'gender', type: 'String'),
      'city': const FieldInfo(name: 'city', columnName: 'city', type: 'String'),
      'country': const FieldInfo(
          name: 'country', columnName: 'country', type: 'String'),
      'linkedinUrl': const FieldInfo(
          name: 'linkedinUrl', columnName: 'linkedinUrl', type: 'String'),
      'bio': const FieldInfo(name: 'bio', columnName: 'bio', type: 'String'),
      'profileDisplayImage': const FieldInfo(
          name: 'profileDisplayImage',
          columnName: 'profileDisplayImage',
          type: 'String'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'consulteeProfileId': const FieldInfo(
          name: 'consulteeProfileId',
          columnName: 'consulteeProfileId',
          type: 'String'),
      'staffProfileId': const FieldInfo(
          name: 'staffProfileId', columnName: 'staffProfileId', type: 'String'),
      'adminProfileId': const FieldInfo(
          name: 'adminProfileId', columnName: 'adminProfileId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
  ));

  // Domain model
  // Note: Fields must match the actual Prisma schema (no description column)
  schema.registerModel(ModelSchema(
    name: 'Domain',
    tableName: 'Domain',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'name': const FieldInfo(name: 'name', columnName: 'name', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'subDomains': RelationInfo.oneToMany(
        name: 'subDomains',
        targetModel: 'SubDomain',
        foreignKey: 'domainId',
      ),
    },
  ));

  // SubDomain model
  schema.registerModel(ModelSchema(
    name: 'SubDomain',
    tableName: 'SubDomain',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'name': const FieldInfo(name: 'name', columnName: 'name', type: 'String'),
      'domainId': const FieldInfo(
          name: 'domainId', columnName: 'domainId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'domain': RelationInfo.oneToOne(
        name: 'domain',
        targetModel: 'Domain',
        foreignKey: 'domainId',
        isOwner: true,
      ),
    },
  ));

  // ConsultationPlan model (extended for booking)
  schema.registerModel(ModelSchema(
    name: 'ConsultationPlan',
    tableName: 'ConsultationPlan',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'title':
          const FieldInfo(name: 'title', columnName: 'title', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'price': const FieldInfo(name: 'price', columnName: 'price', type: 'Int'),
      'priceCurrency': const FieldInfo(
          name: 'priceCurrency', columnName: 'priceCurrency', type: 'String'),
      'durationInHours': const FieldInfo(
          name: 'durationInHours',
          columnName: 'durationInHours',
          type: 'Float'),
      'language': const FieldInfo(
          name: 'language', columnName: 'language', type: 'String'),
      'level':
          const FieldInfo(name: 'level', columnName: 'level', type: 'String'),
      'prerequisites': const FieldInfo(
          name: 'prerequisites', columnName: 'prerequisites', type: 'String'),
      'materialProvided': const FieldInfo(
          name: 'materialProvided',
          columnName: 'materialProvided',
          type: 'String'),
      'learningOutcomes': const FieldInfo(
          name: 'learningOutcomes',
          columnName: 'learningOutcomes',
          type: 'Json'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'consultantProfile': RelationInfo.oneToOne(
        name: 'consultantProfile',
        targetModel: 'ConsultantProfile',
        foreignKey: 'consultantProfileId',
        isOwner: true,
      ),
    },
  ));

  // ConsultantReview model
  schema.registerModel(ModelSchema(
    name: 'ConsultantReview',
    tableName: 'ConsultantReview',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'consulteeProfileId': const FieldInfo(
          name: 'consulteeProfileId',
          columnName: 'consulteeProfileId',
          type: 'String'),
      'rating':
          const FieldInfo(name: 'rating', columnName: 'rating', type: 'Int'),
      'reviewDescription': const FieldInfo(
          name: 'reviewDescription',
          columnName: 'reviewDescription',
          type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'consulteeProfile': RelationInfo.oneToOne(
        name: 'consulteeProfile',
        targetModel: 'ConsulteeProfile',
        foreignKey: 'consulteeProfileId',
        isOwner: true,
      ),
    },
  ));

  // ConsulteeProfile model
  schema.registerModel(ModelSchema(
    name: 'ConsulteeProfile',
    tableName: 'ConsulteeProfile',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'occupation': const FieldInfo(
          name: 'occupation', columnName: 'occupation', type: 'String'),
      'aboutMe': const FieldInfo(
          name: 'aboutMe', columnName: 'aboutMe', type: 'String'),
      'careerStage': const FieldInfo(
          name: 'careerStage', columnName: 'careerStage', type: 'String'),
      'currentCompany': const FieldInfo(
          name: 'currentCompany', columnName: 'currentCompany', type: 'String'),
      'industry': const FieldInfo(
          name: 'industry', columnName: 'industry', type: 'String'),
      'skillsToDevelop': const FieldInfo(
          name: 'skillsToDevelop', columnName: 'skillsToDevelop', type: 'Json'),
      'linkedinUrl': const FieldInfo(
          name: 'linkedinUrl', columnName: 'linkedinUrl', type: 'String'),
      'budgetPreference': const FieldInfo(
          name: 'budgetPreference',
          columnName: 'budgetPreference',
          type: 'String'),
      'preferredCommunicationMethod': const FieldInfo(
          name: 'preferredCommunicationMethod',
          columnName: 'preferredCommunicationMethod',
          type: 'String'),
      'preferredLanguage': const FieldInfo(
          name: 'preferredLanguage',
          columnName: 'preferredLanguage',
          type: 'String'),
      'goals':
          const FieldInfo(name: 'goals', columnName: 'goals', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // ==================== Phase 5: Booking Models ====================

  // SubscriptionPlan model
  schema.registerModel(ModelSchema(
    name: 'SubscriptionPlan',
    tableName: 'SubscriptionPlan',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'title':
          const FieldInfo(name: 'title', columnName: 'title', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'price': const FieldInfo(name: 'price', columnName: 'price', type: 'Int'),
      'priceCurrency': const FieldInfo(
          name: 'priceCurrency', columnName: 'priceCurrency', type: 'String'),
      'durationInMonths': const FieldInfo(
          name: 'durationInMonths',
          columnName: 'durationInMonths',
          type: 'Int'),
      'callsPerWeek': const FieldInfo(
          name: 'callsPerWeek', columnName: 'callsPerWeek', type: 'Int'),
      'sessionDurationInHours': const FieldInfo(
          name: 'sessionDurationInHours',
          columnName: 'sessionDurationInHours',
          type: 'Float'),
      'totalSessions': const FieldInfo(
          name: 'totalSessions', columnName: 'totalSessions', type: 'Int'),
      'totalHours': const FieldInfo(
          name: 'totalHours', columnName: 'totalHours', type: 'Float'),
      'emailSupport': const FieldInfo(
          name: 'emailSupport', columnName: 'emailSupport', type: 'String'),
      'freeTrialEnabled': const FieldInfo(
          name: 'freeTrialEnabled',
          columnName: 'freeTrialEnabled',
          type: 'Boolean'),
      'freeTrialDurationMinutes': const FieldInfo(
          name: 'freeTrialDurationMinutes',
          columnName: 'freeTrialDurationMinutes',
          type: 'Int'),
      'language': const FieldInfo(
          name: 'language', columnName: 'language', type: 'String'),
      'level':
          const FieldInfo(name: 'level', columnName: 'level', type: 'String'),
      'prerequisites': const FieldInfo(
          name: 'prerequisites', columnName: 'prerequisites', type: 'String'),
      'materialProvided': const FieldInfo(
          name: 'materialProvided',
          columnName: 'materialProvided',
          type: 'String'),
      'learningOutcomes': const FieldInfo(
          name: 'learningOutcomes',
          columnName: 'learningOutcomes',
          type: 'Json'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'consultantProfile': RelationInfo.oneToOne(
        name: 'consultantProfile',
        targetModel: 'ConsultantProfile',
        foreignKey: 'consultantProfileId',
        isOwner: true,
      ),
    },
  ));

  // Consultation model (booking request)
  schema.registerModel(ModelSchema(
    name: 'Consultation',
    tableName: 'Consultation',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'consultationPlanId': const FieldInfo(
          name: 'consultationPlanId',
          columnName: 'consultationPlanId',
          type: 'String'),
      'requestedById': const FieldInfo(
          name: 'requestedById', columnName: 'requestedById', type: 'String'),
      'requestStatus': const FieldInfo(
          name: 'requestStatus', columnName: 'requestStatus', type: 'String'),
      'requestNotes': const FieldInfo(
          name: 'requestNotes', columnName: 'requestNotes', type: 'String'),
      'bookingSource': const FieldInfo(
          name: 'bookingSource', columnName: 'bookingSource', type: 'String'),
      'pendingPaymentUrl': const FieldInfo(
          name: 'pendingPaymentUrl',
          columnName: 'pendingPaymentUrl',
          type: 'String'),
      'feedbackFromConsultee': const FieldInfo(
          name: 'feedbackFromConsultee',
          columnName: 'feedbackFromConsultee',
          type: 'String'),
      'feedbackFromConsultant': const FieldInfo(
          name: 'feedbackFromConsultant',
          columnName: 'feedbackFromConsultant',
          type: 'String'),
      'rating':
          const FieldInfo(name: 'rating', columnName: 'rating', type: 'Float'),
      'cancellationReason': const FieldInfo(
          name: 'cancellationReason',
          columnName: 'cancellationReason',
          type: 'String'),
      'cancellationNotes': const FieldInfo(
          name: 'cancellationNotes',
          columnName: 'cancellationNotes',
          type: 'String'),
      'cancelledAt': const FieldInfo(
          name: 'cancelledAt', columnName: 'cancelledAt', type: 'DateTime'),
      'cancelledBy': const FieldInfo(
          name: 'cancelledBy', columnName: 'cancelledBy', type: 'String'),
      'requestedAt': const FieldInfo(
          name: 'requestedAt', columnName: 'requestedAt', type: 'DateTime'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'consultationPlan': RelationInfo.oneToOne(
        name: 'consultationPlan',
        targetModel: 'ConsultationPlan',
        foreignKey: 'consultationPlanId',
        isOwner: true,
      ),
      'requestedBy': RelationInfo.oneToOne(
        name: 'requestedBy',
        targetModel: 'ConsulteeProfile',
        foreignKey: 'requestedById',
        isOwner: true,
      ),
    },
  ));

  // Subscription model (subscription booking request)
  schema.registerModel(ModelSchema(
    name: 'Subscription',
    tableName: 'Subscription',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'subscriptionPlanId': const FieldInfo(
          name: 'subscriptionPlanId',
          columnName: 'subscriptionPlanId',
          type: 'String'),
      'requestedById': const FieldInfo(
          name: 'requestedById', columnName: 'requestedById', type: 'String'),
      'requestStatus': const FieldInfo(
          name: 'requestStatus', columnName: 'requestStatus', type: 'String'),
      'requestNotes': const FieldInfo(
          name: 'requestNotes', columnName: 'requestNotes', type: 'String'),
      'bookingSource': const FieldInfo(
          name: 'bookingSource', columnName: 'bookingSource', type: 'String'),
      'pendingPaymentUrl': const FieldInfo(
          name: 'pendingPaymentUrl',
          columnName: 'pendingPaymentUrl',
          type: 'String'),
      'feedbackFromConsultee': const FieldInfo(
          name: 'feedbackFromConsultee',
          columnName: 'feedbackFromConsultee',
          type: 'String'),
      'feedbackFromConsultant': const FieldInfo(
          name: 'feedbackFromConsultant',
          columnName: 'feedbackFromConsultant',
          type: 'String'),
      'rating':
          const FieldInfo(name: 'rating', columnName: 'rating', type: 'Float'),
      'cancellationReason': const FieldInfo(
          name: 'cancellationReason',
          columnName: 'cancellationReason',
          type: 'String'),
      'cancellationNotes': const FieldInfo(
          name: 'cancellationNotes',
          columnName: 'cancellationNotes',
          type: 'String'),
      'cancelledAt': const FieldInfo(
          name: 'cancelledAt', columnName: 'cancelledAt', type: 'DateTime'),
      'cancelledBy': const FieldInfo(
          name: 'cancelledBy', columnName: 'cancelledBy', type: 'String'),
      'schedulingPeriodStartsAt': const FieldInfo(
          name: 'schedulingPeriodStartsAt',
          columnName: 'schedulingPeriodStartsAt',
          type: 'DateTime'),
      'schedulingPeriodEndsAt': const FieldInfo(
          name: 'schedulingPeriodEndsAt',
          columnName: 'schedulingPeriodEndsAt',
          type: 'DateTime'),
      'schedulingTimezone': const FieldInfo(
          name: 'schedulingTimezone',
          columnName: 'schedulingTimezone',
          type: 'String'),
      'requestedAt': const FieldInfo(
          name: 'requestedAt', columnName: 'requestedAt', type: 'DateTime'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'subscriptionPlan': RelationInfo.oneToOne(
        name: 'subscriptionPlan',
        targetModel: 'SubscriptionPlan',
        foreignKey: 'subscriptionPlanId',
        isOwner: true,
      ),
      'requestedBy': RelationInfo.oneToOne(
        name: 'requestedBy',
        targetModel: 'ConsulteeProfile',
        foreignKey: 'requestedById',
        isOwner: true,
      ),
    },
  ));

  // TrialSession model (free trial session for subscription plans)
  schema.registerModel(ModelSchema(
    name: 'TrialSession',
    tableName: 'TrialSession',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'status':
          const FieldInfo(name: 'status', columnName: 'status', type: 'String'),
      'notes':
          const FieldInfo(name: 'notes', columnName: 'notes', type: 'String'),
      'consulteeProfileId': const FieldInfo(
          name: 'consulteeProfileId',
          columnName: 'consulteeProfileId',
          type: 'String'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'subscriptionPlanId': const FieldInfo(
          name: 'subscriptionPlanId',
          columnName: 'subscriptionPlanId',
          type: 'String'),
      'appointmentId': const FieldInfo(
          name: 'appointmentId', columnName: 'appointmentId', type: 'String'),
      'convertedToSubscriptionId': const FieldInfo(
          name: 'convertedToSubscriptionId',
          columnName: 'convertedToSubscriptionId',
          type: 'String'),
      'requestedAt': const FieldInfo(
          name: 'requestedAt', columnName: 'requestedAt', type: 'DateTime'),
      'completedAt': const FieldInfo(
          name: 'completedAt', columnName: 'completedAt', type: 'DateTime'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'subscriptionPlan': RelationInfo.oneToOne(
        name: 'subscriptionPlan',
        targetModel: 'SubscriptionPlan',
        foreignKey: 'subscriptionPlanId',
        isOwner: true,
      ),
      'consulteeProfile': RelationInfo.oneToOne(
        name: 'consulteeProfile',
        targetModel: 'ConsulteeProfile',
        foreignKey: 'consulteeProfileId',
        isOwner: true,
      ),
      'consultantProfile': RelationInfo.oneToOne(
        name: 'consultantProfile',
        targetModel: 'ConsultantProfile',
        foreignKey: 'consultantProfileId',
        isOwner: true,
      ),
      'appointment': RelationInfo.oneToOne(
        name: 'appointment',
        targetModel: 'Appointment',
        foreignKey: 'appointmentId',
        isOwner: true,
      ),
      'convertedToSubscription': RelationInfo.oneToOne(
        name: 'convertedToSubscription',
        targetModel: 'Subscription',
        foreignKey: 'convertedToSubscriptionId',
        isOwner: true,
      ),
    },
  ));

  // Appointment model
  schema.registerModel(ModelSchema(
    name: 'Appointment',
    tableName: 'Appointment',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'appointmentType': const FieldInfo(
          name: 'appointmentType',
          columnName: 'appointmentType',
          type: 'String'),
      'consultationId': const FieldInfo(
          name: 'consultationId', columnName: 'consultationId', type: 'String'),
      'subscriptionId': const FieldInfo(
          name: 'subscriptionId', columnName: 'subscriptionId', type: 'String'),
      'webinarId': const FieldInfo(
          name: 'webinarId', columnName: 'webinarId', type: 'String'),
      'classId': const FieldInfo(
          name: 'classId', columnName: 'classId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'consultation': RelationInfo.oneToOne(
        name: 'consultation',
        targetModel: 'Consultation',
        foreignKey: 'consultationId',
        isOwner: true,
      ),
      'subscription': RelationInfo.oneToOne(
        name: 'subscription',
        targetModel: 'Subscription',
        foreignKey: 'subscriptionId',
        isOwner: true,
      ),
      'webinar': RelationInfo.oneToOne(
        name: 'webinar',
        targetModel: 'Webinar',
        foreignKey: 'webinarId',
        isOwner: true,
      ),
      'class': RelationInfo.oneToOne(
        name: 'class',
        targetModel: 'Class',
        foreignKey: 'classId',
        isOwner: true,
      ),
      'slots': RelationInfo.oneToMany(
        name: 'slots',
        targetModel: 'SlotOfAppointment',
        foreignKey: 'appointmentId',
      ),
    },
  ));

  // SlotOfAppointment model
  schema.registerModel(ModelSchema(
    name: 'SlotOfAppointment',
    tableName: 'SlotOfAppointment',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'appointmentId': const FieldInfo(
          name: 'appointmentId', columnName: 'appointmentId', type: 'String'),
      'startsAt': const FieldInfo(
          name: 'startsAt', columnName: 'startsAt', type: 'DateTime'),
      'endsAt': const FieldInfo(
          name: 'endsAt', columnName: 'endsAt', type: 'DateTime'),
      'isTentative': const FieldInfo(
          name: 'isTentative', columnName: 'isTentative', type: 'Boolean'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'appointment': RelationInfo.oneToOne(
        name: 'appointment',
        targetModel: 'Appointment',
        foreignKey: 'appointmentId',
        isOwner: true,
      ),
      // M2M relation to users via _SlotOfAppointmentToUser join table
      'user': RelationInfo.manyToMany(
        name: 'user',
        targetModel: 'users',
        joinTable: '_SlotOfAppointmentToUser',
        joinColumn: 'A',
        inverseJoinColumn: 'B',
      ),
    },
  ));

  // SlotOfAvailabilityCustom model (one-time availability slots)
  schema.registerModel(ModelSchema(
    name: 'SlotOfAvailabilityCustom',
    tableName: 'SlotOfAvailabilityCustom',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'startsAt': const FieldInfo(
          name: 'startsAt', columnName: 'startsAt', type: 'DateTime'),
      'endsAt': const FieldInfo(
          name: 'endsAt', columnName: 'endsAt', type: 'DateTime'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
  ));

  // SlotOfAvailabilityWeekly model (recurring weekly slots)
  schema.registerModel(ModelSchema(
    name: 'SlotOfAvailabilityWeekly',
    tableName: 'SlotOfAvailabilityWeekly',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'startDay': const FieldInfo(
          name: 'startDay', columnName: 'startDay', type: 'String'),
      'startTimeUtc': const FieldInfo(
          name: 'startTimeUtc', columnName: 'startTimeUtc', type: 'Int'),
      'endDay':
          const FieldInfo(name: 'endDay', columnName: 'endDay', type: 'String'),
      'endTimeUtc': const FieldInfo(
          name: 'endTimeUtc', columnName: 'endTimeUtc', type: 'Int'),
      'utcOffsetMinutes': const FieldInfo(
          name: 'utcOffsetMinutes',
          columnName: 'utcOffsetMinutes',
          type: 'Int'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
  ));

  // ==================== Support Models ====================

  // SupportTicket model
  schema.registerModel(ModelSchema(
    name: 'SupportTicket',
    tableName: 'SupportTicket',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'title':
          const FieldInfo(name: 'title', columnName: 'title', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'priority': const FieldInfo(
          name: 'priority', columnName: 'priority', type: 'String'),
      'status':
          const FieldInfo(name: 'status', columnName: 'status', type: 'String'),
      'category': const FieldInfo(
          name: 'category', columnName: 'category', type: 'String'),
      'issueType': const FieldInfo(
          name: 'issueType', columnName: 'issueType', type: 'String'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'consultationId': const FieldInfo(
          name: 'consultationId', columnName: 'consultationId', type: 'String'),
      'subscriptionId': const FieldInfo(
          name: 'subscriptionId', columnName: 'subscriptionId', type: 'String'),
      'paymentId': const FieldInfo(
          name: 'paymentId', columnName: 'paymentId', type: 'String'),
      'refundId': const FieldInfo(
          name: 'refundId', columnName: 'refundId', type: 'String'),
      'assignedToId': const FieldInfo(
          name: 'assignedToId', columnName: 'assignedToId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // SupportResponse model
  schema.registerModel(ModelSchema(
    name: 'SupportResponse',
    tableName: 'SupportResponse',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'supportTicketId': const FieldInfo(
          name: 'supportTicketId',
          columnName: 'supportTicketId',
          type: 'String'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'message': const FieldInfo(
          name: 'message', columnName: 'message', type: 'String'),
      'isInternal': const FieldInfo(
          name: 'isInternal', columnName: 'isInternal', type: 'Boolean'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'supportTicket': RelationInfo.oneToOne(
        name: 'supportTicket',
        targetModel: 'SupportTicket',
        foreignKey: 'supportTicketId',
        isOwner: true,
      ),
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // SupportTicketAttachment model
  schema.registerModel(ModelSchema(
    name: 'SupportTicketAttachment',
    tableName: 'SupportTicketAttachment',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'fileName': const FieldInfo(
          name: 'fileName', columnName: 'fileName', type: 'String'),
      'originalName': const FieldInfo(
          name: 'originalName', columnName: 'originalName', type: 'String'),
      'fileSize': const FieldInfo(
          name: 'fileSize', columnName: 'fileSize', type: 'Int'),
      'mimeType': const FieldInfo(
          name: 'mimeType', columnName: 'mimeType', type: 'String'),
      'fileUrl': const FieldInfo(
          name: 'fileUrl', columnName: 'fileUrl', type: 'String'),
      'storagePath': const FieldInfo(
          name: 'storagePath', columnName: 'storagePath', type: 'String'),
      'ticketId': const FieldInfo(
          name: 'ticketId', columnName: 'ticketId', type: 'String'),
      'uploadedAt': const FieldInfo(
          name: 'uploadedAt', columnName: 'uploadedAt', type: 'DateTime'),
    },
    relations: {
      'ticket': RelationInfo.oneToOne(
        name: 'ticket',
        targetModel: 'SupportTicket',
        foreignKey: 'ticketId',
        isOwner: true,
      ),
    },
  ));

  // MeetingSession model
  schema.registerModel(ModelSchema(
    name: 'MeetingSession',
    tableName: 'MeetingSession',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'streamCallId': const FieldInfo(
          name: 'streamCallId', columnName: 'streamCallId', type: 'String'),
      'platform': const FieldInfo(
          name: 'platform', columnName: 'platform', type: 'String'),
      'passcode': const FieldInfo(
          name: 'passcode', columnName: 'passcode', type: 'String'),
      'hostKeys': const FieldInfo(
          name: 'hostKeys', columnName: 'hostKeys', type: 'Json'),
      'isRecording': const FieldInfo(
          name: 'isRecording', columnName: 'isRecording', type: 'Boolean'),
      'recordingStartedAt': const FieldInfo(
          name: 'recordingStartedAt',
          columnName: 'recordingStartedAt',
          type: 'DateTime'),
      'recordingStartedBy': const FieldInfo(
          name: 'recordingStartedBy',
          columnName: 'recordingStartedBy',
          type: 'String'),
      'endedAt': const FieldInfo(
          name: 'endedAt', columnName: 'endedAt', type: 'DateTime'),
      'endedReason': const FieldInfo(
          name: 'endedReason', columnName: 'endedReason', type: 'String'),
      'slotOfAppointmentId': const FieldInfo(
          name: 'slotOfAppointmentId',
          columnName: 'slotOfAppointmentId',
          type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'slotOfAppointment': RelationInfo.oneToOne(
        name: 'slotOfAppointment',
        targetModel: 'SlotOfAppointment',
        foreignKey: 'slotOfAppointmentId',
        isOwner: true,
      ),
    },
  ));

  // WebinarPlan model
  schema.registerModel(ModelSchema(
    name: 'WebinarPlan',
    tableName: 'WebinarPlan',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'title':
          const FieldInfo(name: 'title', columnName: 'title', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'price': const FieldInfo(name: 'price', columnName: 'price', type: 'Int'),
      'priceCurrency': const FieldInfo(
          name: 'priceCurrency', columnName: 'priceCurrency', type: 'String'),
      'certificateProvided': const FieldInfo(
          name: 'certificateProvided',
          columnName: 'certificateProvided',
          type: 'Boolean'),
      'durationInHours': const FieldInfo(
          name: 'durationInHours',
          columnName: 'durationInHours',
          type: 'Float'),
      'maxParticipants': const FieldInfo(
          name: 'maxParticipants', columnName: 'maxParticipants', type: 'Int'),
      'language': const FieldInfo(
          name: 'language', columnName: 'language', type: 'String'),
      'level':
          const FieldInfo(name: 'level', columnName: 'level', type: 'String'),
      'prerequisites': const FieldInfo(
          name: 'prerequisites', columnName: 'prerequisites', type: 'String'),
      'materialProvided': const FieldInfo(
          name: 'materialProvided',
          columnName: 'materialProvided',
          type: 'String'),
      'recordingEnabled': const FieldInfo(
          name: 'recordingEnabled',
          columnName: 'recordingEnabled',
          type: 'Boolean'),
      'learningOutcomes': const FieldInfo(
          name: 'learningOutcomes',
          columnName: 'learningOutcomes',
          type: 'Json'),
      'imageUrl': const FieldInfo(
          name: 'imageUrl', columnName: 'imageUrl', type: 'String'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'consultantProfile': RelationInfo.oneToOne(
        name: 'consultantProfile',
        targetModel: 'ConsultantProfile',
        foreignKey: 'consultantProfileId',
        isOwner: true,
      ),
      'webinars': RelationInfo.oneToMany(
        name: 'webinars',
        targetModel: 'Webinar',
        foreignKey: 'webinarPlanId',
      ),
    },
  ));

  // Webinar model
  schema.registerModel(ModelSchema(
    name: 'Webinar',
    tableName: 'Webinar',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'status':
          const FieldInfo(name: 'status', columnName: 'status', type: 'String'),
      'feedbackSummary': const FieldInfo(
          name: 'feedbackSummary',
          columnName: 'feedbackSummary',
          type: 'String'),
      'webinarPlanId': const FieldInfo(
          name: 'webinarPlanId', columnName: 'webinarPlanId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'webinarPlan': RelationInfo.oneToOne(
        name: 'webinarPlan',
        targetModel: 'WebinarPlan',
        foreignKey: 'webinarPlanId',
        isOwner: true,
      ),
      'appointment': RelationInfo.oneToOne(
        name: 'appointment',
        targetModel: 'Appointment',
        foreignKey: 'webinarId',
        isOwner: false,
      ),
    },
  ));

  // ClassPlan model
  schema.registerModel(ModelSchema(
    name: 'ClassPlan',
    tableName: 'ClassPlan',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'title':
          const FieldInfo(name: 'title', columnName: 'title', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'price': const FieldInfo(name: 'price', columnName: 'price', type: 'Int'),
      'priceCurrency': const FieldInfo(
          name: 'priceCurrency', columnName: 'priceCurrency', type: 'String'),
      'certificateProvided': const FieldInfo(
          name: 'certificateProvided',
          columnName: 'certificateProvided',
          type: 'Boolean'),
      'durationInMonths': const FieldInfo(
          name: 'durationInMonths',
          columnName: 'durationInMonths',
          type: 'Int'),
      'meetingsPerWeek': const FieldInfo(
          name: 'meetingsPerWeek', columnName: 'meetingsPerWeek', type: 'Int'),
      'sessionDurationInHours': const FieldInfo(
          name: 'sessionDurationInHours',
          columnName: 'sessionDurationInHours',
          type: 'Float'),
      'totalSessions': const FieldInfo(
          name: 'totalSessions', columnName: 'totalSessions', type: 'Int'),
      'totalHours': const FieldInfo(
          name: 'totalHours', columnName: 'totalHours', type: 'Float'),
      'emailSupport': const FieldInfo(
          name: 'emailSupport', columnName: 'emailSupport', type: 'String'),
      'maxParticipants': const FieldInfo(
          name: 'maxParticipants', columnName: 'maxParticipants', type: 'Int'),
      'language': const FieldInfo(
          name: 'language', columnName: 'language', type: 'String'),
      'level':
          const FieldInfo(name: 'level', columnName: 'level', type: 'String'),
      'prerequisites': const FieldInfo(
          name: 'prerequisites', columnName: 'prerequisites', type: 'String'),
      'materialProvided': const FieldInfo(
          name: 'materialProvided',
          columnName: 'materialProvided',
          type: 'String'),
      'recordingEnabled': const FieldInfo(
          name: 'recordingEnabled',
          columnName: 'recordingEnabled',
          type: 'Boolean'),
      'learningOutcomes': const FieldInfo(
          name: 'learningOutcomes',
          columnName: 'learningOutcomes',
          type: 'Json'),
      'imageUrl': const FieldInfo(
          name: 'imageUrl', columnName: 'imageUrl', type: 'String'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'consultantProfile': RelationInfo.oneToOne(
        name: 'consultantProfile',
        targetModel: 'ConsultantProfile',
        foreignKey: 'consultantProfileId',
        isOwner: true,
      ),
      'classes': RelationInfo.oneToMany(
        name: 'classes',
        targetModel: 'Class',
        foreignKey: 'classPlanId',
      ),
    },
  ));

  // Class model
  schema.registerModel(ModelSchema(
    name: 'Class',
    tableName: 'Class',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'schedulingPeriodStartsAt': const FieldInfo(
          name: 'schedulingPeriodStartsAt',
          columnName: 'schedulingPeriodStartsAt',
          type: 'DateTime'),
      'schedulingPeriodEndsAt': const FieldInfo(
          name: 'schedulingPeriodEndsAt',
          columnName: 'schedulingPeriodEndsAt',
          type: 'DateTime'),
      'schedulingTimezone': const FieldInfo(
          name: 'schedulingTimezone',
          columnName: 'schedulingTimezone',
          type: 'String'),
      'status':
          const FieldInfo(name: 'status', columnName: 'status', type: 'String'),
      'feedbackSummary': const FieldInfo(
          name: 'feedbackSummary',
          columnName: 'feedbackSummary',
          type: 'String'),
      'recordingUrls': const FieldInfo(
          name: 'recordingUrls', columnName: 'recordingUrls', type: 'Json'),
      'classPlanId': const FieldInfo(
          name: 'classPlanId', columnName: 'classPlanId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'classPlan': RelationInfo.oneToOne(
        name: 'classPlan',
        targetModel: 'ClassPlan',
        foreignKey: 'classPlanId',
        isOwner: true,
      ),
      'appointments': RelationInfo.oneToMany(
        name: 'appointments',
        targetModel: 'Appointment',
        foreignKey: 'classId',
      ),
    },
  ));

  // ==================== @@map Models ====================

  // Account model (@@map('accounts'))
  schema.registerModel(ModelSchema(
    name: 'accounts',
    tableName: 'accounts',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'accountId': const FieldInfo(
          name: 'accountId', columnName: 'accountId', type: 'String'),
      'providerId': const FieldInfo(
          name: 'providerId', columnName: 'providerId', type: 'String'),
      'accessToken': const FieldInfo(
          name: 'accessToken', columnName: 'accessToken', type: 'String'),
      'refreshToken': const FieldInfo(
          name: 'refreshToken', columnName: 'refreshToken', type: 'String'),
      'accessTokenExpiresAt': const FieldInfo(
          name: 'accessTokenExpiresAt',
          columnName: 'accessTokenExpiresAt',
          type: 'DateTime'),
      'refreshTokenExpiresAt': const FieldInfo(
          name: 'refreshTokenExpiresAt',
          columnName: 'refreshTokenExpiresAt',
          type: 'DateTime'),
      'scope':
          const FieldInfo(name: 'scope', columnName: 'scope', type: 'String'),
      'idToken': const FieldInfo(
          name: 'idToken', columnName: 'idToken', type: 'String'),
      'password': const FieldInfo(
          name: 'password', columnName: 'password', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // Session model (@@map('sessions'))
  schema.registerModel(ModelSchema(
    name: 'sessions',
    tableName: 'sessions',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'token':
          const FieldInfo(name: 'token', columnName: 'token', type: 'String'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'expiresAt': const FieldInfo(
          name: 'expiresAt', columnName: 'expiresAt', type: 'DateTime'),
      'ipAddress': const FieldInfo(
          name: 'ipAddress', columnName: 'ipAddress', type: 'String'),
      'userAgent': const FieldInfo(
          name: 'userAgent', columnName: 'userAgent', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // Verification model (@@map('verifications'))
  schema.registerModel(ModelSchema(
    name: 'verifications',
    tableName: 'verifications',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'identifier': const FieldInfo(
          name: 'identifier', columnName: 'identifier', type: 'String'),
      'value':
          const FieldInfo(name: 'value', columnName: 'value', type: 'String'),
      'expiresAt': const FieldInfo(
          name: 'expiresAt', columnName: 'expiresAt', type: 'DateTime'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
  ));

  // ==================== Payment & Checkout Models ====================

  // Payment model
  schema.registerModel(ModelSchema(
    name: 'Payment',
    tableName: 'Payment',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'amount':
          const FieldInfo(name: 'amount', columnName: 'amount', type: 'Int'),
      'originalAmount': const FieldInfo(
          name: 'originalAmount', columnName: 'originalAmount', type: 'Int'),
      'taxAmount': const FieldInfo(
          name: 'taxAmount', columnName: 'taxAmount', type: 'Int'),
      'currency': const FieldInfo(
          name: 'currency', columnName: 'currency', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'receiptUrl': const FieldInfo(
          name: 'receiptUrl', columnName: 'receiptUrl', type: 'String'),
      'paymentMethod': const FieldInfo(
          name: 'paymentMethod', columnName: 'paymentMethod', type: 'String'),
      'paymentIntent': const FieldInfo(
          name: 'paymentIntent', columnName: 'paymentIntent', type: 'String'),
      'paymentGateway': const FieldInfo(
          name: 'paymentGateway', columnName: 'paymentGateway', type: 'String'),
      'paymentStatus': const FieldInfo(
          name: 'paymentStatus', columnName: 'paymentStatus', type: 'String'),
      'expiresAt': const FieldInfo(
          name: 'expiresAt', columnName: 'expiresAt', type: 'DateTime'),
      'isMockPayment': const FieldInfo(
          name: 'isMockPayment', columnName: 'isMockPayment', type: 'Boolean'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'appointmentId': const FieldInfo(
          name: 'appointmentId', columnName: 'appointmentId', type: 'String'),
      'discountCodeId': const FieldInfo(
          name: 'discountCodeId', columnName: 'discountCodeId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
      'appointment': RelationInfo.oneToOne(
        name: 'appointment',
        targetModel: 'Appointment',
        foreignKey: 'appointmentId',
        isOwner: true,
      ),
      'discountCode': RelationInfo.oneToOne(
        name: 'discountCode',
        targetModel: 'DiscountCode',
        foreignKey: 'discountCodeId',
        isOwner: true,
      ),
    },
  ));

  // DiscountCode model
  schema.registerModel(ModelSchema(
    name: 'DiscountCode',
    tableName: 'DiscountCode',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'code': const FieldInfo(name: 'code', columnName: 'code', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'discountType': const FieldInfo(
          name: 'discountType', columnName: 'discountType', type: 'String'),
      'discountValue': const FieldInfo(
          name: 'discountValue', columnName: 'discountValue', type: 'Float'),
      'isActive': const FieldInfo(
          name: 'isActive', columnName: 'isActive', type: 'Boolean'),
      'expiresAt': const FieldInfo(
          name: 'expiresAt', columnName: 'expiresAt', type: 'DateTime'),
      'maxUses':
          const FieldInfo(name: 'maxUses', columnName: 'maxUses', type: 'Int'),
      'currentUses': const FieldInfo(
          name: 'currentUses', columnName: 'currentUses', type: 'Int'),
      'maxDiscount': const FieldInfo(
          name: 'maxDiscount', columnName: 'maxDiscount', type: 'Float'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
  ));

  // Refund model
  schema.registerModel(ModelSchema(
    name: 'Refund',
    tableName: 'Refund',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'amount':
          const FieldInfo(name: 'amount', columnName: 'amount', type: 'Int'),
      'currency': const FieldInfo(
          name: 'currency', columnName: 'currency', type: 'String'),
      'reason':
          const FieldInfo(name: 'reason', columnName: 'reason', type: 'String'),
      'status':
          const FieldInfo(name: 'status', columnName: 'status', type: 'String'),
      'refundId': const FieldInfo(
          name: 'refundId', columnName: 'refundId', type: 'String'),
      'paymentGateway': const FieldInfo(
          name: 'paymentGateway', columnName: 'paymentGateway', type: 'String'),
      'metadata': const FieldInfo(
          name: 'metadata', columnName: 'metadata', type: 'Json'),
      'paymentId': const FieldInfo(
          name: 'paymentId', columnName: 'paymentId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'payment': RelationInfo.oneToOne(
        name: 'payment',
        targetModel: 'Payment',
        foreignKey: 'paymentId',
        isOwner: true,
      ),
    },
  ));

  // Dispute model
  schema.registerModel(ModelSchema(
    name: 'Dispute',
    tableName: 'Dispute',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'amount':
          const FieldInfo(name: 'amount', columnName: 'amount', type: 'Int'),
      'currency': const FieldInfo(
          name: 'currency', columnName: 'currency', type: 'String'),
      'reason':
          const FieldInfo(name: 'reason', columnName: 'reason', type: 'String'),
      'status':
          const FieldInfo(name: 'status', columnName: 'status', type: 'String'),
      'disputeId': const FieldInfo(
          name: 'disputeId', columnName: 'disputeId', type: 'String'),
      'paymentGateway': const FieldInfo(
          name: 'paymentGateway', columnName: 'paymentGateway', type: 'String'),
      'evidence': const FieldInfo(
          name: 'evidence', columnName: 'evidence', type: 'Json'),
      'dueBy':
          const FieldInfo(name: 'dueBy', columnName: 'dueBy', type: 'DateTime'),
      'isChargeRefundable': const FieldInfo(
          name: 'isChargeRefundable',
          columnName: 'isChargeRefundable',
          type: 'Boolean'),
      'paymentId': const FieldInfo(
          name: 'paymentId', columnName: 'paymentId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'payment': RelationInfo.oneToOne(
        name: 'payment',
        targetModel: 'Payment',
        foreignKey: 'paymentId',
        isOwner: true,
      ),
    },
  ));

  // ==================== Feedback & Webhook Models ====================

  // Feedback model
  schema.registerModel(ModelSchema(
    name: 'Feedback',
    tableName: 'Feedback',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'title':
          const FieldInfo(name: 'title', columnName: 'title', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'rating':
          const FieldInfo(name: 'rating', columnName: 'rating', type: 'Int'),
      'category': const FieldInfo(
          name: 'category', columnName: 'category', type: 'String'),
      'status':
          const FieldInfo(name: 'status', columnName: 'status', type: 'String'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // WebhookEvent model
  schema.registerModel(ModelSchema(
    name: 'WebhookEvent',
    tableName: 'WebhookEvent',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'provider': const FieldInfo(
          name: 'provider', columnName: 'provider', type: 'String'),
      'eventId': const FieldInfo(
          name: 'eventId', columnName: 'eventId', type: 'String'),
      'eventType': const FieldInfo(
          name: 'eventType', columnName: 'eventType', type: 'String'),
      'payload':
          const FieldInfo(name: 'payload', columnName: 'payload', type: 'Json'),
      'signature': const FieldInfo(
          name: 'signature', columnName: 'signature', type: 'String'),
      'processed': const FieldInfo(
          name: 'processed', columnName: 'processed', type: 'Boolean'),
      'processedAt': const FieldInfo(
          name: 'processedAt', columnName: 'processedAt', type: 'DateTime'),
      'error':
          const FieldInfo(name: 'error', columnName: 'error', type: 'String'),
      'receivedAt': const FieldInfo(
          name: 'receivedAt', columnName: 'receivedAt', type: 'DateTime'),
    },
  ));

  // ==================== Referral Models ====================

  // ReferralCode model
  schema.registerModel(ModelSchema(
    name: 'ReferralCode',
    tableName: 'ReferralCode',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'code': const FieldInfo(name: 'code', columnName: 'code', type: 'String'),
      'customCode': const FieldInfo(
          name: 'customCode', columnName: 'customCode', type: 'String'),
      'referrerReward': const FieldInfo(
          name: 'referrerReward', columnName: 'referrerReward', type: 'Int'),
      'refereeReward': const FieldInfo(
          name: 'refereeReward', columnName: 'refereeReward', type: 'Int'),
      'totalReferrals': const FieldInfo(
          name: 'totalReferrals', columnName: 'totalReferrals', type: 'Int'),
      'successfulReferrals': const FieldInfo(
          name: 'successfulReferrals',
          columnName: 'successfulReferrals',
          type: 'Int'),
      'totalEarned': const FieldInfo(
          name: 'totalEarned', columnName: 'totalEarned', type: 'Int'),
      'maxReferrals': const FieldInfo(
          name: 'maxReferrals', columnName: 'maxReferrals', type: 'Int'),
      'isActive': const FieldInfo(
          name: 'isActive', columnName: 'isActive', type: 'Boolean'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // Referral model
  schema.registerModel(ModelSchema(
    name: 'Referral',
    tableName: 'Referral',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'referralCodeId': const FieldInfo(
          name: 'referralCodeId', columnName: 'referralCodeId', type: 'String'),
      'referredUserId': const FieldInfo(
          name: 'referredUserId', columnName: 'referredUserId', type: 'String'),
      'status':
          const FieldInfo(name: 'status', columnName: 'status', type: 'String'),
      'referrerRewardAmount': const FieldInfo(
          name: 'referrerRewardAmount',
          columnName: 'referrerRewardAmount',
          type: 'Int'),
      'refereeRewardAmount': const FieldInfo(
          name: 'refereeRewardAmount',
          columnName: 'refereeRewardAmount',
          type: 'Int'),
      'referrerRewardPaidAt': const FieldInfo(
          name: 'referrerRewardPaidAt',
          columnName: 'referrerRewardPaidAt',
          type: 'DateTime'),
      'refereeRewardPaidAt': const FieldInfo(
          name: 'refereeRewardPaidAt',
          columnName: 'refereeRewardPaidAt',
          type: 'DateTime'),
      'signedUpAt': const FieldInfo(
          name: 'signedUpAt', columnName: 'signedUpAt', type: 'DateTime'),
      'qualifiedAt': const FieldInfo(
          name: 'qualifiedAt', columnName: 'qualifiedAt', type: 'DateTime'),
      'qualifyingAction': const FieldInfo(
          name: 'qualifyingAction',
          columnName: 'qualifyingAction',
          type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'referralCode': RelationInfo.oneToOne(
        name: 'referralCode',
        targetModel: 'ReferralCode',
        foreignKey: 'referralCodeId',
        isOwner: true,
      ),
      'referredUser': RelationInfo.oneToOne(
        name: 'referredUser',
        targetModel: 'users',
        foreignKey: 'referredUserId',
        isOwner: true,
      ),
    },
  ));

  // ReferralCredit model
  schema.registerModel(ModelSchema(
    name: 'ReferralCredit',
    tableName: 'ReferralCredit',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'amount':
          const FieldInfo(name: 'amount', columnName: 'amount', type: 'Int'),
      'currency': const FieldInfo(
          name: 'currency', columnName: 'currency', type: 'String'),
      'source':
          const FieldInfo(name: 'source', columnName: 'source', type: 'String'),
      'referralId': const FieldInfo(
          name: 'referralId', columnName: 'referralId', type: 'String'),
      'usedAmount': const FieldInfo(
          name: 'usedAmount', columnName: 'usedAmount', type: 'Int'),
      'remainingAmount': const FieldInfo(
          name: 'remainingAmount', columnName: 'remainingAmount', type: 'Int'),
      'expiresAt': const FieldInfo(
          name: 'expiresAt', columnName: 'expiresAt', type: 'DateTime'),
      'usedAt': const FieldInfo(
          name: 'usedAt', columnName: 'usedAt', type: 'DateTime'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // ==================== Collaborator Models ====================

  // WebinarCollaborator model
  schema.registerModel(ModelSchema(
    name: 'WebinarCollaborator',
    tableName: 'WebinarCollaborator',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'webinarPlanId': const FieldInfo(
          name: 'webinarPlanId', columnName: 'webinarPlanId', type: 'String'),
      'role': const FieldInfo(name: 'role', columnName: 'role', type: 'String'),
      'permissions': const FieldInfo(
          name: 'permissions', columnName: 'permissions', type: 'Json'),
      'revenueSharePercentage': const FieldInfo(
          name: 'revenueSharePercentage',
          columnName: 'revenueSharePercentage',
          type: 'Float'),
      'status':
          const FieldInfo(name: 'status', columnName: 'status', type: 'String'),
      'invitedById': const FieldInfo(
          name: 'invitedById', columnName: 'invitedById', type: 'String'),
      'respondedAt': const FieldInfo(
          name: 'respondedAt', columnName: 'respondedAt', type: 'DateTime'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'consultantProfile': RelationInfo.oneToOne(
        name: 'consultantProfile',
        targetModel: 'ConsultantProfile',
        foreignKey: 'consultantProfileId',
        isOwner: true,
      ),
      'webinarPlan': RelationInfo.oneToOne(
        name: 'webinarPlan',
        targetModel: 'WebinarPlan',
        foreignKey: 'webinarPlanId',
        isOwner: true,
      ),
      'invitedBy': RelationInfo.oneToOne(
        name: 'invitedBy',
        targetModel: 'ConsultantProfile',
        foreignKey: 'invitedById',
        isOwner: true,
      ),
    },
  ));

  // ClassCollaborator model
  schema.registerModel(ModelSchema(
    name: 'ClassCollaborator',
    tableName: 'ClassCollaborator',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'classPlanId': const FieldInfo(
          name: 'classPlanId', columnName: 'classPlanId', type: 'String'),
      'role': const FieldInfo(name: 'role', columnName: 'role', type: 'String'),
      'permissions': const FieldInfo(
          name: 'permissions', columnName: 'permissions', type: 'Json'),
      'revenueSharePercentage': const FieldInfo(
          name: 'revenueSharePercentage',
          columnName: 'revenueSharePercentage',
          type: 'Float'),
      'status':
          const FieldInfo(name: 'status', columnName: 'status', type: 'String'),
      'invitedById': const FieldInfo(
          name: 'invitedById', columnName: 'invitedById', type: 'String'),
      'respondedAt': const FieldInfo(
          name: 'respondedAt', columnName: 'respondedAt', type: 'DateTime'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'consultantProfile': RelationInfo.oneToOne(
        name: 'consultantProfile',
        targetModel: 'ConsultantProfile',
        foreignKey: 'consultantProfileId',
        isOwner: true,
      ),
      'classPlan': RelationInfo.oneToOne(
        name: 'classPlan',
        targetModel: 'ClassPlan',
        foreignKey: 'classPlanId',
        isOwner: true,
      ),
      'invitedBy': RelationInfo.oneToOne(
        name: 'invitedBy',
        targetModel: 'ConsultantProfile',
        foreignKey: 'invitedById',
        isOwner: true,
      ),
    },
  ));

  // ==================== PascalCase Aliases for @@map Models ====================
  // These allow PrismaClient delegates to resolve @@map model names.

  // User alias (PascalCase → users table)
  schema.registerModel(ModelSchema(
    name: 'User',
    tableName: 'users',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'name': const FieldInfo(name: 'name', columnName: 'name', type: 'String'),
      'email':
          const FieldInfo(name: 'email', columnName: 'email', type: 'String'),
      'emailVerified': const FieldInfo(
          name: 'emailVerified', columnName: 'emailVerified', type: 'Boolean'),
      'image':
          const FieldInfo(name: 'image', columnName: 'image', type: 'String'),
      'phone':
          const FieldInfo(name: 'phone', columnName: 'phone', type: 'String'),
      'address': const FieldInfo(
          name: 'address', columnName: 'address', type: 'String'),
      'onlineStatus': const FieldInfo(
          name: 'onlineStatus', columnName: 'onlineStatus', type: 'Boolean'),
      'timezone': const FieldInfo(
          name: 'timezone', columnName: 'timezone', type: 'String'),
      'onboardingCompleted': const FieldInfo(
          name: 'onboardingCompleted',
          columnName: 'onboardingCompleted',
          type: 'Boolean'),
      'role': const FieldInfo(name: 'role', columnName: 'role', type: 'String'),
      'dateOfBirth': const FieldInfo(
          name: 'dateOfBirth', columnName: 'dateOfBirth', type: 'DateTime'),
      'gender':
          const FieldInfo(name: 'gender', columnName: 'gender', type: 'String'),
      'city': const FieldInfo(name: 'city', columnName: 'city', type: 'String'),
      'country': const FieldInfo(
          name: 'country', columnName: 'country', type: 'String'),
      'linkedinUrl': const FieldInfo(
          name: 'linkedinUrl', columnName: 'linkedinUrl', type: 'String'),
      'bio': const FieldInfo(name: 'bio', columnName: 'bio', type: 'String'),
      'profileDisplayImage': const FieldInfo(
          name: 'profileDisplayImage',
          columnName: 'profileDisplayImage',
          type: 'String'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'consulteeProfileId': const FieldInfo(
          name: 'consulteeProfileId',
          columnName: 'consulteeProfileId',
          type: 'String'),
      'staffProfileId': const FieldInfo(
          name: 'staffProfileId', columnName: 'staffProfileId', type: 'String'),
      'adminProfileId': const FieldInfo(
          name: 'adminProfileId', columnName: 'adminProfileId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
  ));

  // Account alias (PascalCase → accounts table)
  schema.registerModel(ModelSchema(
    name: 'Account',
    tableName: 'accounts',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'accountId': const FieldInfo(
          name: 'accountId', columnName: 'accountId', type: 'String'),
      'providerId': const FieldInfo(
          name: 'providerId', columnName: 'providerId', type: 'String'),
      'accessToken': const FieldInfo(
          name: 'accessToken', columnName: 'accessToken', type: 'String'),
      'refreshToken': const FieldInfo(
          name: 'refreshToken', columnName: 'refreshToken', type: 'String'),
      'accessTokenExpiresAt': const FieldInfo(
          name: 'accessTokenExpiresAt',
          columnName: 'accessTokenExpiresAt',
          type: 'DateTime'),
      'refreshTokenExpiresAt': const FieldInfo(
          name: 'refreshTokenExpiresAt',
          columnName: 'refreshTokenExpiresAt',
          type: 'DateTime'),
      'scope':
          const FieldInfo(name: 'scope', columnName: 'scope', type: 'String'),
      'idToken': const FieldInfo(
          name: 'idToken', columnName: 'idToken', type: 'String'),
      'password': const FieldInfo(
          name: 'password', columnName: 'password', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // Session alias (PascalCase → sessions table)
  schema.registerModel(ModelSchema(
    name: 'Session',
    tableName: 'sessions',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'token':
          const FieldInfo(name: 'token', columnName: 'token', type: 'String'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'expiresAt': const FieldInfo(
          name: 'expiresAt', columnName: 'expiresAt', type: 'DateTime'),
      'ipAddress': const FieldInfo(
          name: 'ipAddress', columnName: 'ipAddress', type: 'String'),
      'userAgent': const FieldInfo(
          name: 'userAgent', columnName: 'userAgent', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // Verification alias (PascalCase → verifications table)
  schema.registerModel(ModelSchema(
    name: 'Verification',
    tableName: 'verifications',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'identifier': const FieldInfo(
          name: 'identifier', columnName: 'identifier', type: 'String'),
      'value':
          const FieldInfo(name: 'value', columnName: 'value', type: 'String'),
      'expiresAt': const FieldInfo(
          name: 'expiresAt', columnName: 'expiresAt', type: 'DateTime'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
  ));

  // CookiePreference (@@map → cookie_preferences)
  schema.registerModel(ModelSchema(
    name: 'CookiePreference',
    tableName: 'cookie_preferences',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'sessionId': const FieldInfo(
          name: 'sessionId', columnName: 'sessionId', type: 'String'),
      'essential': const FieldInfo(
          name: 'essential', columnName: 'essential', type: 'Boolean'),
      'analytics': const FieldInfo(
          name: 'analytics', columnName: 'analytics', type: 'Boolean'),
      'marketing': const FieldInfo(
          name: 'marketing', columnName: 'marketing', type: 'Boolean'),
      'functional': const FieldInfo(
          name: 'functional', columnName: 'functional', type: 'Boolean'),
      'consentGivenAt': const FieldInfo(
          name: 'consentGivenAt',
          columnName: 'consentGivenAt',
          type: 'DateTime'),
      'consentUpdatedAt': const FieldInfo(
          name: 'consentUpdatedAt',
          columnName: 'consentUpdatedAt',
          type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // NotificationPreference (@@map → notification_preferences)
  schema.registerModel(ModelSchema(
    name: 'NotificationPreference',
    tableName: 'notification_preferences',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'userId':
          const FieldInfo(name: 'userId', columnName: 'userId', type: 'String'),
      'allNotifications': const FieldInfo(
          name: 'allNotifications',
          columnName: 'allNotifications',
          type: 'Boolean'),
      'inAppEnabled': const FieldInfo(
          name: 'inAppEnabled', columnName: 'inAppEnabled', type: 'Boolean'),
      'emailEnabled': const FieldInfo(
          name: 'emailEnabled', columnName: 'emailEnabled', type: 'Boolean'),
      'pushEnabled': const FieldInfo(
          name: 'pushEnabled', columnName: 'pushEnabled', type: 'Boolean'),
      'mentions': const FieldInfo(
          name: 'mentions', columnName: 'mentions', type: 'Boolean'),
      'directMessages': const FieldInfo(
          name: 'directMessages',
          columnName: 'directMessages',
          type: 'Boolean'),
      'updates': const FieldInfo(
          name: 'updates', columnName: 'updates', type: 'Boolean'),
      'appointmentReminders': const FieldInfo(
          name: 'appointmentReminders',
          columnName: 'appointmentReminders',
          type: 'Boolean'),
      'paymentNotifications': const FieldInfo(
          name: 'paymentNotifications',
          columnName: 'paymentNotifications',
          type: 'Boolean'),
      'supportUpdates': const FieldInfo(
          name: 'supportUpdates',
          columnName: 'supportUpdates',
          type: 'Boolean'),
      'feedbackAlerts': const FieldInfo(
          name: 'feedbackAlerts',
          columnName: 'feedbackAlerts',
          type: 'Boolean'),
      'trialNotifications': const FieldInfo(
          name: 'trialNotifications',
          columnName: 'trialNotifications',
          type: 'Boolean'),
      'subscriptionAlerts': const FieldInfo(
          name: 'subscriptionAlerts',
          columnName: 'subscriptionAlerts',
          type: 'Boolean'),
      'marketingEmails': const FieldInfo(
          name: 'marketingEmails',
          columnName: 'marketingEmails',
          type: 'Boolean'),
      'quietHoursEnabled': const FieldInfo(
          name: 'quietHoursEnabled',
          columnName: 'quietHoursEnabled',
          type: 'Boolean'),
      'quietHoursStart': const FieldInfo(
          name: 'quietHoursStart',
          columnName: 'quietHoursStart',
          type: 'String'),
      'quietHoursEnd': const FieldInfo(
          name: 'quietHoursEnd', columnName: 'quietHoursEnd', type: 'String'),
      'quietHoursTimezone': const FieldInfo(
          name: 'quietHoursTimezone',
          columnName: 'quietHoursTimezone',
          type: 'String'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // ConsultantProfileVerification (no @@map, uses model name as table)
  schema.registerModel(ModelSchema(
    name: 'ConsultantProfileVerification',
    tableName: 'ConsultantProfileVerification',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'status': const FieldInfo(
          name: 'status', columnName: 'status', type: 'String'),
      'consultantProfileId': const FieldInfo(
          name: 'consultantProfileId',
          columnName: 'consultantProfileId',
          type: 'String'),
      'submittedAt': const FieldInfo(
          name: 'submittedAt', columnName: 'submittedAt', type: 'DateTime'),
      'notes': const FieldInfo(
          name: 'notes', columnName: 'notes', type: 'String'),
      'reviewedAt': const FieldInfo(
          name: 'reviewedAt', columnName: 'reviewedAt', type: 'DateTime'),
      'reviewedById': const FieldInfo(
          name: 'reviewedById',
          columnName: 'reviewedById',
          type: 'String'),
      'reviewNotes': const FieldInfo(
          name: 'reviewNotes', columnName: 'reviewNotes', type: 'String'),
      'rejectionReason': const FieldInfo(
          name: 'rejectionReason',
          columnName: 'rejectionReason',
          type: 'String'),
      'feedbackDetails': const FieldInfo(
          name: 'feedbackDetails',
          columnName: 'feedbackDetails',
          type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'consultantProfile': RelationInfo.oneToOne(
        name: 'consultantProfile',
        targetModel: 'ConsultantProfile',
        foreignKey: 'consultantProfileId',
        isOwner: true,
      ),
      'documents': RelationInfo.oneToMany(
        name: 'documents',
        targetModel: 'ProfileVerificationDocument',
        foreignKey: 'verificationId',
      ),
    },
  ));

  // ProfileVerificationDocument (no @@map)
  schema.registerModel(ModelSchema(
    name: 'ProfileVerificationDocument',
    tableName: 'ProfileVerificationDocument',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'fileName': const FieldInfo(
          name: 'fileName', columnName: 'fileName', type: 'String'),
      'originalName': const FieldInfo(
          name: 'originalName',
          columnName: 'originalName',
          type: 'String'),
      'fileSize': const FieldInfo(
          name: 'fileSize', columnName: 'fileSize', type: 'Int'),
      'mimeType': const FieldInfo(
          name: 'mimeType', columnName: 'mimeType', type: 'String'),
      'fileUrl': const FieldInfo(
          name: 'fileUrl', columnName: 'fileUrl', type: 'String'),
      'storagePath': const FieldInfo(
          name: 'storagePath', columnName: 'storagePath', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'isValid': const FieldInfo(
          name: 'isValid', columnName: 'isValid', type: 'Boolean'),
      'staffFeedback': const FieldInfo(
          name: 'staffFeedback',
          columnName: 'staffFeedback',
          type: 'String'),
      'verificationId': const FieldInfo(
          name: 'verificationId',
          columnName: 'verificationId',
          type: 'String'),
      'uploadedAt': const FieldInfo(
          name: 'uploadedAt', columnName: 'uploadedAt', type: 'DateTime'),
    },
    relations: {
      'verification': RelationInfo.oneToOne(
        name: 'verification',
        targetModel: 'ConsultantProfileVerification',
        foreignKey: 'verificationId',
        isOwner: true,
      ),
    },
  ));

  // WorkExperience (no @@map)
  schema.registerModel(ModelSchema(
    name: 'WorkExperience',
    tableName: 'WorkExperience',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'company': const FieldInfo(
          name: 'company', columnName: 'company', type: 'String'),
      'companyDomain': const FieldInfo(
          name: 'companyDomain',
          columnName: 'companyDomain',
          type: 'String'),
      'title': const FieldInfo(
          name: 'title', columnName: 'title', type: 'String'),
      'location': const FieldInfo(
          name: 'location', columnName: 'location', type: 'String'),
      'startDate': const FieldInfo(
          name: 'startDate', columnName: 'startDate', type: 'DateTime'),
      'endDate': const FieldInfo(
          name: 'endDate', columnName: 'endDate', type: 'DateTime'),
      'isCurrent': const FieldInfo(
          name: 'isCurrent', columnName: 'isCurrent', type: 'Boolean'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'userId': const FieldInfo(
          name: 'userId', columnName: 'userId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // Certification (no @@map)
  schema.registerModel(ModelSchema(
    name: 'Certification',
    tableName: 'Certification',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'name': const FieldInfo(
          name: 'name', columnName: 'name', type: 'String'),
      'issuingOrganization': const FieldInfo(
          name: 'issuingOrganization',
          columnName: 'issuingOrganization',
          type: 'String'),
      'issueDate': const FieldInfo(
          name: 'issueDate', columnName: 'issueDate', type: 'DateTime'),
      'expiryDate': const FieldInfo(
          name: 'expiryDate', columnName: 'expiryDate', type: 'DateTime'),
      'credentialId': const FieldInfo(
          name: 'credentialId',
          columnName: 'credentialId',
          type: 'String'),
      'credentialUrl': const FieldInfo(
          name: 'credentialUrl',
          columnName: 'credentialUrl',
          type: 'String'),
      'userId': const FieldInfo(
          name: 'userId', columnName: 'userId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // Education (no @@map)
  schema.registerModel(ModelSchema(
    name: 'Education',
    tableName: 'Education',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'institution': const FieldInfo(
          name: 'institution',
          columnName: 'institution',
          type: 'String'),
      'institutionDomain': const FieldInfo(
          name: 'institutionDomain',
          columnName: 'institutionDomain',
          type: 'String'),
      'degree': const FieldInfo(
          name: 'degree', columnName: 'degree', type: 'String'),
      'fieldOfStudy': const FieldInfo(
          name: 'fieldOfStudy',
          columnName: 'fieldOfStudy',
          type: 'String'),
      'startYear': const FieldInfo(
          name: 'startYear', columnName: 'startYear', type: 'Int'),
      'endYear': const FieldInfo(
          name: 'endYear', columnName: 'endYear', type: 'Int'),
      'grade': const FieldInfo(
          name: 'grade', columnName: 'grade', type: 'String'),
      'activities': const FieldInfo(
          name: 'activities', columnName: 'activities', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
      'userId': const FieldInfo(
          name: 'userId', columnName: 'userId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
    },
  ));

  // Waitlist (no @@map)
  schema.registerModel(ModelSchema(
    name: 'Waitlist',
    tableName: 'Waitlist',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'joinedAt': const FieldInfo(
          name: 'joinedAt', columnName: 'joinedAt', type: 'DateTime'),
      'position': const FieldInfo(
          name: 'position', columnName: 'position', type: 'Int'),
      'status': const FieldInfo(
          name: 'status', columnName: 'status', type: 'String'),
      'priority': const FieldInfo(
          name: 'priority', columnName: 'priority', type: 'Int'),
      'notifiedAt': const FieldInfo(
          name: 'notifiedAt', columnName: 'notifiedAt', type: 'DateTime'),
      'expiresAt': const FieldInfo(
          name: 'expiresAt', columnName: 'expiresAt', type: 'DateTime'),
      'reminderSentAt': const FieldInfo(
          name: 'reminderSentAt',
          columnName: 'reminderSentAt',
          type: 'DateTime'),
      'bookedAt': const FieldInfo(
          name: 'bookedAt', columnName: 'bookedAt', type: 'DateTime'),
      'respondedAt': const FieldInfo(
          name: 'respondedAt',
          columnName: 'respondedAt',
          type: 'DateTime'),
      'preferences': const FieldInfo(
          name: 'preferences', columnName: 'preferences', type: 'Json'),
      'userId': const FieldInfo(
          name: 'userId', columnName: 'userId', type: 'String'),
      'webinarId': const FieldInfo(
          name: 'webinarId', columnName: 'webinarId', type: 'String'),
      'classId': const FieldInfo(
          name: 'classId', columnName: 'classId', type: 'String'),
      'createdAt': const FieldInfo(
          name: 'createdAt', columnName: 'createdAt', type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt', columnName: 'updatedAt', type: 'DateTime'),
    },
    relations: {
      'user': RelationInfo.oneToOne(
        name: 'user',
        targetModel: 'users',
        foreignKey: 'userId',
        isOwner: true,
      ),
      'webinar': RelationInfo.oneToOne(
        name: 'webinar',
        targetModel: 'Webinar',
        foreignKey: 'webinarId',
        isOwner: true,
      ),
      'class': RelationInfo.oneToOne(
        name: 'class',
        targetModel: 'Class',
        foreignKey: 'classId',
        isOwner: true,
      ),
    },
  ));

  return schema;
}
