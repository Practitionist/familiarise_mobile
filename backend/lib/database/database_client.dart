import 'package:backend/database/repositories/repositories.dart';
import 'package:backend/generated/prisma_client.dart';
import 'package:postgres/postgres.dart' as pg;
import 'package:prisma_flutter_connector/runtime_server.dart';

// Re-export generated types for convenience
export '../generated/index.dart';

/// Build the schema registry with all model relations.
///
/// This enables includes with automatic JOINs for all models.
SchemaRegistry _buildSchemaRegistry() {
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

  // User model (users table)
  schema.registerModel(ModelSchema(
    name: 'users',
    tableName: 'users',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'name': const FieldInfo(name: 'name', columnName: 'name', type: 'String'),
      'email':
          const FieldInfo(name: 'email', columnName: 'email', type: 'String'),
      'image':
          const FieldInfo(name: 'image', columnName: 'image', type: 'String'),
    },
  ));

  // Domain model
  schema.registerModel(ModelSchema(
    name: 'Domain',
    tableName: 'Domain',
    fields: {
      'id': FieldInfo.id(name: 'id'),
      'name': const FieldInfo(name: 'name', columnName: 'name', type: 'String'),
      'description': const FieldInfo(
          name: 'description', columnName: 'description', type: 'String'),
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
      'price': const FieldInfo(name: 'price', columnName: 'price', type: 'Int'),
      'priceCurrency': const FieldInfo(
          name: 'priceCurrency', columnName: 'priceCurrency', type: 'String'),
      'durationInHours': const FieldInfo(
          name: 'durationInHours',
          columnName: 'durationInHours',
          type: 'Float'),
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
          name: 'createdAt',
          columnName: 'createdAt',
          type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt',
          columnName: 'updatedAt',
          type: 'DateTime'),
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
      'price': const FieldInfo(name: 'price', columnName: 'price', type: 'Int'),
      'priceCurrency': const FieldInfo(
          name: 'priceCurrency', columnName: 'priceCurrency', type: 'String'),
      'totalSessions': const FieldInfo(
          name: 'totalSessions', columnName: 'totalSessions', type: 'Int'),
      'sessionDurationInHours': const FieldInfo(
          name: 'sessionDurationInHours',
          columnName: 'sessionDurationInHours',
          type: 'Float'),
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
      'rating': const FieldInfo(
          name: 'rating', columnName: 'rating', type: 'Float'),
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
      'rating': const FieldInfo(
          name: 'rating', columnName: 'rating', type: 'Float'),
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
      'status': const FieldInfo(
          name: 'status', columnName: 'status', type: 'String'),
      'notes': const FieldInfo(
          name: 'notes', columnName: 'notes', type: 'String'),
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
          name: 'appointmentId',
          columnName: 'appointmentId',
          type: 'String'),
      'convertedToSubscriptionId': const FieldInfo(
          name: 'convertedToSubscriptionId',
          columnName: 'convertedToSubscriptionId',
          type: 'String'),
      'requestedAt': const FieldInfo(
          name: 'requestedAt',
          columnName: 'requestedAt',
          type: 'DateTime'),
      'completedAt': const FieldInfo(
          name: 'completedAt',
          columnName: 'completedAt',
          type: 'DateTime'),
      'createdAt': const FieldInfo(
          name: 'createdAt',
          columnName: 'createdAt',
          type: 'DateTime'),
      'updatedAt': const FieldInfo(
          name: 'updatedAt',
          columnName: 'updatedAt',
          type: 'DateTime'),
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
      'availabilityStartsAt': const FieldInfo(
          name: 'availabilityStartsAt',
          columnName: 'availabilityStartsAt',
          type: 'DateTime'),
      'availabilityEndsAt': const FieldInfo(
          name: 'availabilityEndsAt',
          columnName: 'availabilityEndsAt',
          type: 'DateTime'),
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
      'dayOfWeekForStartsAt': const FieldInfo(
          name: 'dayOfWeekForStartsAt',
          columnName: 'dayOfWeekForStartsAt',
          type: 'String'),
      'availabilityStartsAt': const FieldInfo(
          name: 'availabilityStartsAt',
          columnName: 'availabilityStartsAt',
          type: 'DateTime'),
      'dayOfWeekForEndsAt': const FieldInfo(
          name: 'dayOfWeekForEndsAt',
          columnName: 'dayOfWeekForEndsAt',
          type: 'String'),
      'availabilityEndsAt': const FieldInfo(
          name: 'availabilityEndsAt',
          columnName: 'availabilityEndsAt',
          type: 'DateTime'),
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

  return schema;
}

/// Database client using Prisma Flutter Connector
///
/// This is the main entry point for database operations. It initializes the
/// connection and provides access to all repositories.
///
/// Uses the runtime_server.dart import which provides:
/// - PostgresAdapter for database connection
/// - QueryExecutor for query execution
/// - JsonQueryBuilder for type-safe query building
class DatabaseClient {
  DatabaseClient._(this._executor, this._adapter, this._schema) {
    // Initialize type-safe PrismaClient
    _prisma = PrismaClient(adapter: _adapter);

    // Initialize repositories
    _userRepository = UserRepository(_executor);
    _accountRepository = AccountRepository(_executor);
    _sessionRepository = SessionRepository(_executor, _userRepository);
    _consulteeProfileRepository = ConsulteeProfileRepository(_executor);
    _consultantProfileRepository = ConsultantProfileRepository(_executor);
    _domainRepository = DomainRepository(_executor);
    _consultantExploreRepository = ConsultantExploreRepository(_executor);
    _slotRepository = SlotRepository(_executor);
    _appointmentRepository = AppointmentRepository(_executor);
    _programsRepository = ProgramsRepository(_executor);
    _checkoutRepository = CheckoutRepository(_executor);
    _webhookEventRepository = WebhookEventRepository(_executor);
    _refundRepository = RefundRepository(_executor);
    _disputeRepository = DisputeRepository(_executor);
    _supportTicketRepository = SupportTicketRepository(_executor);
    _reviewRepository = ReviewRepository(_executor);
    _feedbackRepository = FeedbackRepository(_executor);
    _meetingSessionRepository = MeetingSessionRepository(_executor);
    _dashboardRepository = DashboardRepository(_executor);
  }

  static DatabaseClient? _instance;
  final QueryExecutor _executor;
  final PostgresAdapter _adapter;
  final SchemaRegistry _schema;

  // Type-safe PrismaClient (use this for new code)
  late final PrismaClient _prisma;

  // Legacy repositories (for backward compatibility)
  late final UserRepository _userRepository;
  late final AccountRepository _accountRepository;
  late final SessionRepository _sessionRepository;
  late final ConsulteeProfileRepository _consulteeProfileRepository;
  late final ConsultantProfileRepository _consultantProfileRepository;
  late final DomainRepository _domainRepository;
  late final ConsultantExploreRepository _consultantExploreRepository;
  late final SlotRepository _slotRepository;
  late final AppointmentRepository _appointmentRepository;
  late final ProgramsRepository _programsRepository;
  late final CheckoutRepository _checkoutRepository;
  late final WebhookEventRepository _webhookEventRepository;
  late final RefundRepository _refundRepository;
  late final DisputeRepository _disputeRepository;
  late final SupportTicketRepository _supportTicketRepository;
  late final ReviewRepository _reviewRepository;
  late final FeedbackRepository _feedbackRepository;
  late final MeetingSessionRepository _meetingSessionRepository;
  late final DashboardRepository _dashboardRepository;

  /// Initialize the database client with a connection URL
  static Future<DatabaseClient> initialize(String connectionUrl) async {
    if (_instance != null) return _instance!;

    final uri = Uri.parse(connectionUrl);

    // Parse credentials from URL
    // Use indexOf to handle passwords that may contain colons
    final userInfo = uri.userInfo;
    final colonIndex = userInfo.indexOf(':');
    final username =
        colonIndex == -1 ? userInfo : userInfo.substring(0, colonIndex);
    final password = colonIndex == -1 ? '' : userInfo.substring(colonIndex + 1);

    final connection = await pg.Connection.open(
      pg.Endpoint(
        host: uri.host,
        port: uri.port,
        database:
            uri.pathSegments.isNotEmpty ? uri.pathSegments.first : 'postgres',
        username: username,
        password: password,
      ),
      settings: const pg.ConnectionSettings(sslMode: pg.SslMode.require),
    );

    final adapter = PostgresAdapter(connection);
    final schema = _buildSchemaRegistry();
    final executor = QueryExecutor(adapter: adapter, schema: schema);

    _instance = DatabaseClient._(executor, adapter, schema);
    return _instance!;
  }

  // ==================== Repository Accessors ====================

  /// Get the type-safe PrismaClient for new code
  ///
  /// Use this for type-safe database operations with compile-time checking.
  /// Example:
  /// ```dart
  /// final profile = await db.prisma.consulteeProfile.update(
  ///   where: ConsulteeProfileWhereUniqueInput(id: profileId),
  ///   data: UpdateConsulteeProfileInput(careerStage: CareerStage.earlyCareer),
  /// );
  /// ```
  PrismaClient get prisma => _prisma;

  /// Get the query executor for direct access (advanced usage)
  QueryExecutor get executor => _executor;

  /// User operations repository
  UserRepository get users => _userRepository;

  /// Account operations repository
  AccountRepository get accounts => _accountRepository;

  /// Session operations repository
  SessionRepository get sessions => _sessionRepository;

  /// Consultee profile operations repository
  ConsulteeProfileRepository get consulteeProfiles =>
      _consulteeProfileRepository;

  /// Consultant profile operations repository
  ConsultantProfileRepository get consultantProfiles =>
      _consultantProfileRepository;

  /// Domain operations repository
  DomainRepository get domains => _domainRepository;

  /// Consultant explore repository (for browsing and discovery)
  ConsultantExploreRepository get consultantExplore =>
      _consultantExploreRepository;

  /// Slot repository (for availability queries)
  SlotRepository get slots => _slotRepository;

  /// Appointment repository (for booking operations)
  AppointmentRepository get appointments => _appointmentRepository;

  /// Programs repository (for webinars and classes)
  ProgramsRepository get programs => _programsRepository;

  /// Checkout repository (for payment operations)
  CheckoutRepository get checkout => _checkoutRepository;

  /// Webhook event repository (for idempotent webhook processing)
  WebhookEventRepository get webhookEvents => _webhookEventRepository;

  /// Refund repository (for refund tracking)
  RefundRepository get refunds => _refundRepository;

  /// Dispute repository (for dispute visibility)
  DisputeRepository get disputes => _disputeRepository;

  /// Support ticket repository (for user support)
  SupportTicketRepository get supportTickets => _supportTicketRepository;

  /// Review repository (for consultant reviews)
  ReviewRepository get reviews => _reviewRepository;

  /// Feedback repository (for app feedback)
  FeedbackRepository get feedback => _feedbackRepository;

  /// Meeting session repository (for video meetings)
  MeetingSessionRepository get meetingSessions => _meetingSessionRepository;

  /// Dashboard repository (for aggregated dashboard data)
  DashboardRepository get dashboard => _dashboardRepository;

  // ==================== Legacy Methods ====================
  // These methods delegate to repositories. They will be deprecated once all
  // services are updated to use repositories directly.

  /// @deprecated Use users.findByEmail instead
  Future<Map<String, dynamic>?> findUserByEmail(String email) =>
      _userRepository.findByEmail(email);

  /// @deprecated Use users.findById instead
  Future<Map<String, dynamic>?> findUserById(String id) =>
      _userRepository.findById(id);

  /// @deprecated Use users.create instead
  Future<Map<String, dynamic>> createUser({
    required String id,
    required String email,
    String? name,
    String? image,
    String? hashedPassword,
    String role = 'CONSULTEE',
    TransactionExecutor? executor,
  }) =>
      _userRepository.create(
        id: id,
        email: email,
        name: name,
        image: image,
        hashedPassword: hashedPassword,
        role: role,
        txn: executor,
      );

  /// @deprecated Use users.delete instead
  Future<void> deleteUser(String id) => _userRepository.delete(id);

  /// @deprecated Use accounts.findByUserAndProvider instead
  Future<Map<String, dynamic>?> findAccountByUserAndProvider(
    String userId,
    String provider,
  ) =>
      _accountRepository.findByUserAndProvider(userId, provider);

  /// @deprecated Use users.update instead
  Future<Map<String, dynamic>?> updateUser({
    required String id,
    String? name,
    String? image,
  }) =>
      _userRepository.update(id: id, name: name, image: image);

  /// @deprecated Use accounts.createOAuth instead
  Future<Map<String, dynamic>> createOAuthAccount({
    required String id,
    required String userId,
    required String provider,
    required String providerAccountId,
    String? accessToken,
    String? idToken,
    TransactionExecutor? executor,
  }) =>
      _accountRepository.createOAuth(
        id: id,
        userId: userId,
        provider: provider,
        providerAccountId: providerAccountId,
        accessToken: accessToken,
        idToken: idToken,
        txn: executor,
      );

  /// @deprecated Use accounts.createCredentials instead
  Future<Map<String, dynamic>> createCredentialsAccount({
    required String id,
    required String userId,
    TransactionExecutor? executor,
  }) =>
      _accountRepository.createCredentials(
        id: id,
        userId: userId,
        txn: executor,
      );

  /// @deprecated Use sessions.findById instead
  Future<Map<String, dynamic>?> findSessionById(String sessionId) =>
      _sessionRepository.findById(sessionId);

  /// @deprecated Use sessions.findByToken instead
  Future<Map<String, dynamic>?> findSessionByToken(String sessionToken) =>
      _sessionRepository.findByToken(sessionToken);

  /// @deprecated Use sessions.create instead
  Future<Map<String, dynamic>> createSession({
    required String id,
    required String sessionToken,
    required String userId,
    required DateTime expires,
  }) =>
      _sessionRepository.create(
        id: id,
        sessionToken: sessionToken,
        userId: userId,
        expires: expires,
      );

  /// @deprecated Use sessions.delete instead
  Future<void> deleteSession(String sessionId) =>
      _sessionRepository.delete(sessionId);

  /// @deprecated Use sessions.deleteByUserId instead
  Future<void> deleteUserSessions(String userId) =>
      _sessionRepository.deleteByUserId(userId);

  /// @deprecated Use consulteeProfiles.create instead
  Future<Map<String, dynamic>> createConsulteeProfile({
    required String id,
    required String userId,
    TransactionExecutor? executor,
  }) =>
      _consulteeProfileRepository.create(
        id: id,
        userId: userId,
        txn: executor,
      );

  /// Execute within a transaction
  Future<T> executeInTransaction<T>(
    Future<T> Function(TransactionExecutor) callback,
  ) async {
    return _executor.executeInTransaction(callback);
  }

  /// Close the database connection
  Future<void> close() async {
    await _executor.dispose();
    _instance = null;
  }
}
