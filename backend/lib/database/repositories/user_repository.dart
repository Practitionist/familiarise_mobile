import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/utils/enum_utils.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for user-related database operations
///
/// BetterAuth schema changes:
///   - password moved to accounts table (removed from users)
///   - emailVerified is now Boolean (not DateTime?)
class UserRepository extends BaseRepository {
  /// Create a user repository with the given executor
  UserRepository(super._executor, this._prisma);
  final PrismaClient _prisma;

  /// Find user by email
  Future<Map<String, dynamic>?> findByEmail(String email) async {
    final result = await _prisma.user.findFirst(
      where: UserWhereInput(email: StringFilter(equals: email)),
    );
    return result?.toJson();
  }

  /// Find user by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    final result = await _prisma.user.findFirst(
      where: UserWhereInput(id: StringFilter(equals: id)),
    );
    return result?.toJson();
  }

  /// Create a new user
  ///
  /// In BetterAuth schema, passwords are stored in the accounts table,
  /// not the users table. Use AccountRepository.createCredentials() for
  /// password storage.
  ///
  /// Optionally accepts a [TransactionExecutor] to run within a transaction.
  Future<Map<String, dynamic>> create({
    required String id,
    required String email,
    String? name,
    String? image,
    String role = 'CONSULTEE',
    TransactionExecutor? txn,
  }) async {
    // id/createdAt/updatedAt are autofilled by the schema defaults; callers
    // should use the returned row's id (CreateUserInput has no id param).
    final delegate = txn == null ? _prisma.user : UserDelegate(txn);
    final result = await delegate.create(
      data: CreateUserInput(
        email: email,
        name: name ?? '',
        image: image,
        role: enumFromWire(UserRole.values, role, field: 'role'),
      ),
    );
    return result.toJson();
  }

  /// Update user profile data
  Future<Map<String, dynamic>?> update({
    required String id,
    String? name,
    String? image,
    String? phone,
    String? bio,
    String? dateOfBirth,
    String? gender,
    String? city,
    String? country,
    String? address,
    String? linkedinUrl,
    String? timezone,
    String? profileDisplayImage,
  }) async {
    // updatedAt auto-refreshes on typed update.
    final result = await _prisma.user.update(
      where: UserWhereUniqueInput(id: id),
      data: UpdateUserInput(
        name: name,
        image: image,
        phone: phone,
        bio: bio,
        dateOfBirth: dateOfBirth != null ? DateTime.parse(dateOfBirth) : null,
        gender: gender != null
            ? enumFromWire(Gender.values, gender, field: 'gender')
            : null,
        city: city,
        country: country,
        address: address,
        linkedinUrl: linkedinUrl,
        timezone: timezone,
        profileDisplayImage: profileDisplayImage,
      ),
    );
    return result.toJson();
  }

  /// Update emailVerified status
  Future<Map<String, dynamic>?> updateEmailVerified({
    required String id,
    required bool verified,
  }) async {
    final result = await _prisma.user.update(
      where: UserWhereUniqueInput(id: id),
      data: UpdateUserInput(emailVerified: verified),
    );
    return result.toJson();
  }

  /// Update user for onboarding completion
  ///
  /// Updates personal info and marks onboarding as complete.
  Future<Map<String, dynamic>?> updateForOnboarding({
    required String id,
    required String role,
    required String name,
    required bool onboardingCompleted,
    String? phone,
    DateTime? dateOfBirth,
    String? gender,
    String? timezone,
    String? image,
    String? city,
    String? country,
    String? address,
    String? linkedinUrl,
    String? bio,
    String? consulteeProfileId,
    String? consultantProfileId,
    TransactionExecutor? txn,
  }) async {
    // updatedAt auto-refreshes on typed update.
    final delegate = txn == null ? _prisma.user : UserDelegate(txn);
    final result = await delegate.update(
      where: UserWhereUniqueInput(id: id),
      data: UpdateUserInput(
        role: enumFromWire(UserRole.values, role, field: 'role'),
        name: name,
        onboardingCompleted: onboardingCompleted,
        phone: phone,
        dateOfBirth: dateOfBirth,
        gender: gender != null
            ? enumFromWire(Gender.values, gender, field: 'gender')
            : null,
        timezone: timezone,
        image: image,
        city: city,
        country: country,
        address: address,
        linkedinUrl: linkedinUrl,
        bio: bio,
        consulteeProfileId: consulteeProfileId,
        consultantProfileId: consultantProfileId,
      ),
    );
    return result.toJson();
  }

  /// Create default CookiePreference and NotificationPreference for a user.
  ///
  /// Matches the web app's BetterAuth databaseHooks.user.create behavior.
  /// Should be called within the signup transaction for data consistency.
  Future<void> createDefaultPreferences(
    String userId, {
    TransactionExecutor? txn,
  }) async {
    // id/consent timestamps are autofilled by schema defaults; the boolean
    // defaults on the Create inputs match the old explicit values exactly.
    final cookieDelegate =
        txn == null ? _prisma.cookiePreference : CookiePreferenceDelegate(txn);
    await cookieDelegate.create(
      data: CreateCookiePreferenceInput(userId: userId),
    );

    final notifDelegate = txn == null
        ? _prisma.notificationPreference
        : NotificationPreferenceDelegate(txn);
    await notifDelegate.create(
      data: CreateNotificationPreferenceInput(userId: userId),
    );
  }

  /// Delete a user by ID (for cleanup on failed registration)
  Future<void> delete(String id) async {
    await _prisma.user.delete(
      where: UserWhereUniqueInput(id: id),
    );
  }
}
