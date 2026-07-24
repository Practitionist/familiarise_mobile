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
    final callback = invocation.positionalArguments.first
        as Future<T> Function(PrismaClient);
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
