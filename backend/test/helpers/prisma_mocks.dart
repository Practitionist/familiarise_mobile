import 'package:backend/generated/index.dart';
import 'package:mocktail/mocktail.dart';

/// Shared mocktail doubles for the generated typed Prisma surface.
///
/// The JQB→typed-delegate migration moved repositories off the raw
/// [QueryExecutor] and onto [PrismaClient] delegates, so tests now stub
/// delegates instead of executor queries.
class MockPrismaClient extends Mock implements PrismaClient {}

class MockUserDelegate extends Mock implements UserDelegate {}

class MockAccountDelegate extends Mock implements AccountDelegate {}

class MockSessionDelegate extends Mock implements SessionDelegate {}

class MockVerificationDelegate extends Mock implements VerificationDelegate {}

class MockConsulteeProfileDelegate extends Mock
    implements ConsulteeProfileDelegate {}

class MockCookiePreferenceDelegate extends Mock
    implements CookiePreferenceDelegate {}

class MockNotificationPreferenceDelegate extends Mock
    implements NotificationPreferenceDelegate {}

class MockSupportTicketDelegate extends Mock implements SupportTicketDelegate {}

class MockSupportResponseDelegate extends Mock
    implements SupportResponseDelegate {}

class MockSupportTicketAttachmentDelegate extends Mock
    implements SupportTicketAttachmentDelegate {}

// ---------------------------------------------------------------------------
// Fallbacks for `any(named: ...)` on typed inputs.
// ---------------------------------------------------------------------------

class FakeUserWhereInput extends Fake implements UserWhereInput {}

class FakeUserWhereUniqueInput extends Fake implements UserWhereUniqueInput {}

class FakeCreateUserInput extends Fake implements CreateUserInput {}

class FakeUpdateUserInput extends Fake implements UpdateUserInput {}

class FakeAccountWhereInput extends Fake implements AccountWhereInput {}

class FakeAccountWhereUniqueInput extends Fake
    implements AccountWhereUniqueInput {}

class FakeCreateAccountInput extends Fake implements CreateAccountInput {}

class FakeUpdateAccountInput extends Fake implements UpdateAccountInput {}

class FakeSessionWhereInput extends Fake implements SessionWhereInput {}

class FakeCreateSessionInput extends Fake implements CreateSessionInput {}

class FakeVerificationWhereInput extends Fake
    implements VerificationWhereInput {}

class FakeCreateVerificationInput extends Fake
    implements CreateVerificationInput {}

class FakeSupportTicketWhereInput extends Fake
    implements SupportTicketWhereInput {}

class FakeSupportTicketWhereUniqueInput extends Fake
    implements SupportTicketWhereUniqueInput {}

class FakeCreateSupportTicketInput extends Fake
    implements CreateSupportTicketInput {}

class FakeUpdateSupportTicketInput extends Fake
    implements UpdateSupportTicketInput {}

class FakeSupportTicketOrderByInput extends Fake
    implements SupportTicketOrderByInput {}

class FakeSupportTicketInclude extends Fake implements SupportTicketInclude {}

class FakeCreateSupportResponseInput extends Fake
    implements CreateSupportResponseInput {}

class FakeCreateSupportTicketAttachmentInput extends Fake
    implements CreateSupportTicketAttachmentInput {}

class FakeCreateConsulteeProfileInput extends Fake
    implements CreateConsulteeProfileInput {}

class FakeCreateCookiePreferenceInput extends Fake
    implements CreateCookiePreferenceInput {}

class FakeCreateNotificationPreferenceInput extends Fake
    implements CreateNotificationPreferenceInput {}

/// Register every typed-input fallback used by the shared stubs.
void registerPrismaFallbacks() {
  registerFallbackValue(FakeUserWhereInput());
  registerFallbackValue(FakeUserWhereUniqueInput());
  registerFallbackValue(FakeCreateUserInput());
  registerFallbackValue(FakeUpdateUserInput());
  registerFallbackValue(FakeAccountWhereInput());
  registerFallbackValue(FakeAccountWhereUniqueInput());
  registerFallbackValue(FakeCreateAccountInput());
  registerFallbackValue(FakeUpdateAccountInput());
  registerFallbackValue(FakeSessionWhereInput());
  registerFallbackValue(FakeCreateSessionInput());
  registerFallbackValue(FakeVerificationWhereInput());
  registerFallbackValue(FakeCreateVerificationInput());
  registerFallbackValue(FakeSupportTicketWhereInput());
  registerFallbackValue(FakeSupportTicketWhereUniqueInput());
  registerFallbackValue(FakeCreateSupportTicketInput());
  registerFallbackValue(FakeUpdateSupportTicketInput());
  registerFallbackValue(FakeSupportTicketOrderByInput());
  registerFallbackValue(FakeSupportTicketInclude());
  registerFallbackValue(FakeCreateSupportResponseInput());
  registerFallbackValue(FakeCreateSupportTicketAttachmentInput());
  registerFallbackValue(FakeCreateConsulteeProfileInput());
  registerFallbackValue(FakeCreateCookiePreferenceInput());
  registerFallbackValue(FakeCreateNotificationPreferenceInput());
}

/// Build a [User] with the required scalars filled in.
User buildUser({
  String id = 'user-1',
  String name = 'Test User',
  String email = 'test@example.com',
  UserRole role = UserRole.consultee,
  bool emailVerified = false,
  bool onboardingCompleted = false,
  String? image,
  String? consulteeProfileId,
}) {
  final now = DateTime.utc(2026, 1, 1);
  return User(
    id: id,
    name: name,
    email: email,
    role: role,
    emailVerified: emailVerified,
    onboardingCompleted: onboardingCompleted,
    image: image,
    consulteeProfileId: consulteeProfileId,
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [ConsulteeProfile] with the required scalars filled in.
ConsulteeProfile buildConsulteeProfile({
  String id = 'consultee-profile-1',
  String userId = 'user-1',
}) {
  final now = DateTime.utc(2026, 1, 1);
  return ConsulteeProfile(
    id: id,
    userId: userId,
    createdAt: now,
    updatedAt: now,
  );
}

/// Make `client.$transaction<T>(cb)` run [cb] against [client] itself, so the
/// same delegate stubs serve both transactional and non-transactional calls.
void stubTransaction<T>(MockPrismaClient client) {
  when(() => client.$transaction<T>(any())).thenAnswer((invocation) async {
    final callback = invocation.positionalArguments.first as Future<T> Function(
        PrismaClient);
    return callback(client);
  });
}

/// Build an [Account] with the required scalars filled in.
Account buildAccount({
  String id = 'account-1',
  String userId = 'user-1',
  String accountId = 'account-1',
  String providerId = 'credential',
}) {
  final now = DateTime.utc(2026, 1, 1);
  return Account(
    id: id,
    userId: userId,
    accountId: accountId,
    providerId: providerId,
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [CookiePreference] with the required scalars filled in.
CookiePreference buildCookiePreference({String id = 'cookie-pref-1'}) {
  final now = DateTime.utc(2026, 1, 1);
  return CookiePreference(
    id: id,
    consentGivenAt: now,
    consentUpdatedAt: now,
  );
}

/// Build a [NotificationPreference] with the required scalars filled in.
NotificationPreference buildNotificationPreference({
  String id = 'notif-pref-1',
  String userId = 'user-1',
}) {
  return NotificationPreference(id: id, userId: userId);
}

/// Build a [Verification] with the required scalars filled in.
Verification buildVerification({
  String id = 'verification-1',
  String identifier = 'password-reset:test@example.com',
  String value = 'token123',
  DateTime? expiresAt,
}) {
  final now = DateTime.utc(2026, 1, 1);
  return Verification(
    id: id,
    identifier: identifier,
    value: value,
    expiresAt: expiresAt ?? now.add(const Duration(hours: 1)),
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [Session] with the required scalars filled in.
Session buildSession({
  String id = 'session-1',
  String token = 'session-token',
  String userId = 'user-1',
  DateTime? expiresAt,
}) {
  final now = DateTime.utc(2026, 1, 1);
  return Session(
    id: id,
    token: token,
    userId: userId,
    expiresAt: expiresAt ?? now.add(const Duration(days: 7)),
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [SupportTicket] with the required scalars filled in.
SupportTicket buildSupportTicket({
  String id = 'ticket-1',
  String title = 'Test ticket',
  String description = 'Something is broken',
  String userId = 'user-1',
  SupportTicketStatus status = SupportTicketStatus.open,
  SupportPriority priority = SupportPriority.medium,
  SupportIssueType? issueType,
}) {
  final now = DateTime.utc(2026, 1, 1);
  return SupportTicket(
    id: id,
    title: title,
    description: description,
    userId: userId,
    status: status,
    priority: priority,
    issueType: issueType,
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [SupportResponse] with the required scalars filled in.
SupportResponse buildSupportResponse({
  String id = 'response-1',
  String message = 'We are on it',
  String supportTicketId = 'ticket-1',
  String userId = 'user-1',
}) {
  final now = DateTime.utc(2026, 1, 1);
  return SupportResponse(
    id: id,
    message: message,
    supportTicketId: supportTicketId,
    userId: userId,
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [SupportTicketAttachment] with the required scalars filled in.
SupportTicketAttachment buildSupportTicketAttachment({
  String id = 'attachment-1',
  String fileName = 'screenshot.png',
  String ticketId = 'ticket-1',
}) {
  return SupportTicketAttachment(
    id: id,
    fileName: fileName,
    originalName: fileName,
    fileSize: 1024,
    mimeType: 'image/png',
    fileUrl: 'https://example.test/$fileName',
    storagePath: 'tickets/$ticketId/$fileName',
    ticketId: ticketId,
    uploadedAt: DateTime.utc(2026, 1, 1),
  );
}

class MockConsultantProfileDelegate extends Mock
    implements ConsultantProfileDelegate {}

class MockConsultantReviewDelegate extends Mock
    implements ConsultantReviewDelegate {}

class MockConsultationPlanDelegate extends Mock
    implements ConsultationPlanDelegate {}

class MockSubscriptionPlanDelegate extends Mock
    implements SubscriptionPlanDelegate {}

class FakeConsultantProfileWhereInput extends Fake
    implements ConsultantProfileWhereInput {}

class FakeConsultantReviewWhereInput extends Fake
    implements ConsultantReviewWhereInput {}

class FakeConsultationPlanWhereInput extends Fake
    implements ConsultationPlanWhereInput {}

class FakeSubscriptionPlanWhereInput extends Fake
    implements SubscriptionPlanWhereInput {}

class FakeConsulteeProfileWhereInput extends Fake
    implements ConsulteeProfileWhereInput {}

/// Register fallbacks for the explore/profile typed inputs.
void registerExploreFallbacks() {
  registerFallbackValue(FakeConsultantProfileWhereInput());
  registerFallbackValue(FakeConsultantReviewWhereInput());
  registerFallbackValue(FakeConsultationPlanWhereInput());
  registerFallbackValue(FakeSubscriptionPlanWhereInput());
  registerFallbackValue(FakeConsulteeProfileWhereInput());
}

class MockConsultationDelegate extends Mock implements ConsultationDelegate {}

class MockSubscriptionDelegate extends Mock implements SubscriptionDelegate {}

class MockAppointmentDelegate extends Mock implements AppointmentDelegate {}

class MockSlotOfAppointmentDelegate extends Mock
    implements SlotOfAppointmentDelegate {}

class MockPaymentDelegate extends Mock implements PaymentDelegate {}

class MockDiscountCodeDelegate extends Mock implements DiscountCodeDelegate {}

class FakeConsultationWhereInput extends Fake
    implements ConsultationWhereInput {}

class FakeSubscriptionWhereInput extends Fake
    implements SubscriptionWhereInput {}

class FakeAppointmentWhereInput extends Fake implements AppointmentWhereInput {}

class FakeSlotOfAppointmentWhereInput extends Fake
    implements SlotOfAppointmentWhereInput {}

class FakePaymentWhereInput extends Fake implements PaymentWhereInput {}

class FakeDiscountCodeWhereInput extends Fake
    implements DiscountCodeWhereInput {}

class FakePaymentWhereUniqueInput extends Fake
    implements PaymentWhereUniqueInput {}

class FakeCreatePaymentInput extends Fake implements CreatePaymentInput {}

class FakeUpdatePaymentInput extends Fake implements UpdatePaymentInput {}

class FakeConsultationWhereUniqueInput extends Fake
    implements ConsultationWhereUniqueInput {}

class FakeUpdateConsultationInput extends Fake
    implements UpdateConsultationInput {}

class FakeSubscriptionWhereUniqueInput extends Fake
    implements SubscriptionWhereUniqueInput {}

class FakeUpdateSubscriptionInput extends Fake
    implements UpdateSubscriptionInput {}

class FakeConsultationPlanWhereUniqueInput extends Fake
    implements ConsultationPlanWhereUniqueInput {}

class FakeSubscriptionPlanWhereUniqueInput extends Fake
    implements SubscriptionPlanWhereUniqueInput {}

class FakeUpdateSlotOfAppointmentInput extends Fake
    implements UpdateSlotOfAppointmentInput {}

class FakeAppointmentInclude extends Fake implements AppointmentInclude {}

class FakeAppointmentWhereUniqueInput extends Fake
    implements AppointmentWhereUniqueInput {}

class FakeConsultantProfileWhereUniqueInput extends Fake
    implements ConsultantProfileWhereUniqueInput {}

class FakeConsultantProfileInclude extends Fake
    implements ConsultantProfileInclude {}

class FakeConsultationPlanInclude extends Fake
    implements ConsultationPlanInclude {}

class FakeSubscriptionPlanInclude extends Fake
    implements SubscriptionPlanInclude {}

class FakeConsultationInclude extends Fake implements ConsultationInclude {}

class FakeSubscriptionInclude extends Fake implements SubscriptionInclude {}

/// Register fallbacks for the booking/checkout typed inputs.
void registerBookingFallbacks() {
  registerFallbackValue(FakeConsultationWhereInput());
  registerFallbackValue(FakeSubscriptionWhereInput());
  registerFallbackValue(FakeAppointmentWhereInput());
  registerFallbackValue(FakeSlotOfAppointmentWhereInput());
  registerFallbackValue(FakePaymentWhereInput());
  registerFallbackValue(FakeDiscountCodeWhereInput());
  registerFallbackValue(FakePaymentWhereUniqueInput());
  registerFallbackValue(FakeCreatePaymentInput());
  registerFallbackValue(FakeUpdatePaymentInput());
  registerFallbackValue(FakeConsultationWhereUniqueInput());
  registerFallbackValue(FakeUpdateConsultationInput());
  registerFallbackValue(FakeSubscriptionWhereUniqueInput());
  registerFallbackValue(FakeUpdateSubscriptionInput());
  registerFallbackValue(FakeConsultationPlanWhereUniqueInput());
  registerFallbackValue(FakeSubscriptionPlanWhereUniqueInput());
  registerFallbackValue(FakeUpdateSlotOfAppointmentInput());
  registerFallbackValue(FakeAppointmentInclude());
  registerFallbackValue(FakeAppointmentWhereUniqueInput());
  registerFallbackValue(FakeConsultantProfileWhereUniqueInput());
  registerFallbackValue(FakeConsultantProfileInclude());
  registerFallbackValue(FakeConsultationPlanInclude());
  registerFallbackValue(FakeSubscriptionPlanInclude());
  registerFallbackValue(FakeConsultationInclude());
  registerFallbackValue(FakeSubscriptionInclude());
}

class MockClassModelDelegate extends Mock implements ClassModelDelegate {}

class MockClassPlanDelegate extends Mock implements ClassPlanDelegate {}

class MockWebinarDelegate extends Mock implements WebinarDelegate {}

class MockWebinarPlanDelegate extends Mock implements WebinarPlanDelegate {}

class MockTrialSessionDelegate extends Mock implements TrialSessionDelegate {}

class FakeClassModelWhereInput extends Fake implements ClassModelWhereInput {}

class FakeClassPlanWhereInput extends Fake implements ClassPlanWhereInput {}

class FakeWebinarWhereInput extends Fake implements WebinarWhereInput {}

class FakeWebinarPlanWhereInput extends Fake implements WebinarPlanWhereInput {}

class FakeTrialSessionWhereInput extends Fake
    implements TrialSessionWhereInput {}

/// Register fallbacks for the program (class/webinar/trial) typed inputs.
void registerProgramFallbacks() {
  registerFallbackValue(FakeClassModelWhereInput());
  registerFallbackValue(FakeClassPlanWhereInput());
  registerFallbackValue(FakeWebinarWhereInput());
  registerFallbackValue(FakeWebinarPlanWhereInput());
  registerFallbackValue(FakeTrialSessionWhereInput());
}

/// Build a [Payment] with the required scalars filled in.
Payment buildPayment({
  String id = 'pay-1',
  int amount = 5000,
  Currency currency = Currency.inr,
  PaymentGateway paymentGateway = PaymentGateway.stripe,
  PaymentStatus paymentStatus = PaymentStatus.pending,
  String userId = 'user-1',
}) {
  final now = DateTime.utc(2026, 1, 1);
  return Payment(
    id: id,
    amount: BigInt.from(amount),
    originalAmount: BigInt.from(amount),
    taxAmount: BigInt.zero,
    paymentMethod: 'CARD',
    paymentIntent: 'pi_$id',
    paymentGateway: paymentGateway,
    paymentStatus: paymentStatus,
    currency: currency,
    userId: userId,
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [ConsultationPlan] with the required scalars filled in.
ConsultationPlan buildConsultationPlan({
  String id = 'plan-1',
  String title = 'Consultation plan',
  int price = 5000,
  String consultantProfileId = 'consultant-1',
}) {
  final now = DateTime.utc(2026, 1, 1);
  return ConsultationPlan(
    id: id,
    title: title,
    price: BigInt.from(price),
    consultantProfileId: consultantProfileId,
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [SubscriptionPlan] with the required scalars filled in.
SubscriptionPlan buildSubscriptionPlan({
  String id = 'sub-plan-1',
  String title = 'Subscription plan',
  int price = 20000,
  String consultantProfileId = 'consultant-1',
}) {
  final now = DateTime.utc(2026, 1, 1);
  return SubscriptionPlan(
    id: id,
    title: title,
    price: BigInt.from(price),
    trialPriceInPaise: BigInt.zero,
    consultantProfileId: consultantProfileId,
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [DiscountCode] with the required scalars filled in.
DiscountCode buildDiscountCode({
  String id = 'disc-1',
  String code = 'SAVE10',
  DiscountType discountType = DiscountType.percentage,
  int discountValue = 10,
  DateTime? expiresAt,
  int? maxUses,
  int currentUses = 0,
  BigInt? maxDiscount,
}) {
  final now = DateTime.utc(2026, 1, 1);
  return DiscountCode(
    id: id,
    code: code,
    description: 'Test discount',
    discountType: discountType,
    discountValue: discountValue,
    expiresAt: expiresAt,
    maxUses: maxUses,
    currentUses: currentUses,
    maxDiscount: maxDiscount,
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [Consultation] with the required scalars filled in.
Consultation buildConsultation({
  String id = 'cons-1',
  String consultationPlanId = 'plan-1',
  String requestedById = 'consultee-1',
  AppointmentStatus status = AppointmentStatus.pending,
}) {
  final now = DateTime.utc(2026, 1, 1);
  return Consultation(
    id: id,
    consultationPlanId: consultationPlanId,
    requestedById: requestedById,
    status: status,
    requestedAt: now,
    createdAt: now,
    updatedAt: now,
  );
}

/// Build a [Subscription] with the required scalars filled in.
Subscription buildSubscription({
  String id = 'sub-1',
  String subscriptionPlanId = 'sub-plan-1',
  String requestedById = 'consultee-1',
  AppointmentStatus status = AppointmentStatus.pending,
}) {
  final now = DateTime.utc(2026, 1, 1);
  return Subscription(
    id: id,
    subscriptionPlanId: subscriptionPlanId,
    requestedById: requestedById,
    status: status,
    schedulingPeriodStartsAt: now,
    schedulingPeriodEndsAt: now.add(const Duration(days: 30)),
    requestedAt: now,
    createdAt: now,
    updatedAt: now,
  );
}

/// Build an [Appointment] with the required scalars filled in.
Appointment buildAppointment({
  String id = 'apt-1',
  AppointmentsType appointmentType = AppointmentsType.consultation,
}) {
  final now = DateTime.utc(2026, 1, 1);
  return Appointment(
    id: id,
    appointmentType: appointmentType,
    createdAt: now,
    updatedAt: now,
  );
}
