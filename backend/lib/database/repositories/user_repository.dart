import 'package:backend/database/repositories/base_repository.dart';
import 'package:backend/generated/index.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';
import 'package:uuid/uuid.dart';

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
    return _prisma.user.findFirstRaw(where: {'email': email});
  }

  /// Find user by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    return _prisma.user.findFirstRaw(where: {'id': id});
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
    final data = <String, dynamic>{
      'id': id,
      'email': email,
      'name': name,
      'image': image,
      'emailVerified': false,
      'role': role,
      'onboardingCompleted': false,
      'createdAt': nowIso8601,
      'updatedAt': nowIso8601,
    };

    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.create)
        .data(data)
        .build();

    final result = await executeQueryAsSingleMap(query, txn: txn);
    if (result == null) {
      throw Exception('Failed to create user in database');
    }
    return result;
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
    final data = <String, dynamic>{
      'updatedAt': nowIso8601,
    };
    if (name != null) data['name'] = name;
    if (image != null) data['image'] = image;
    if (phone != null) data['phone'] = phone;
    if (bio != null) data['bio'] = bio;
    if (dateOfBirth != null) data['dateOfBirth'] = dateOfBirth;
    if (gender != null) data['gender'] = gender;
    if (city != null) data['city'] = city;
    if (country != null) data['country'] = country;
    if (address != null) data['address'] = address;
    if (linkedinUrl != null) data['linkedinUrl'] = linkedinUrl;
    if (timezone != null) data['timezone'] = timezone;
    if (profileDisplayImage != null) {
      data['profileDisplayImage'] = profileDisplayImage;
    }

    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.update)
        .where({'id': id})
        .data(data)
        .build();

    return executeQueryAsSingleMap(query);
  }

  /// Update emailVerified status
  Future<Map<String, dynamic>?> updateEmailVerified({
    required String id,
    required bool verified,
  }) async {
    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.update)
        .where({'id': id})
        .data({
      'emailVerified': verified,
      'updatedAt': nowIso8601,
    }).build();

    return executeQueryAsSingleMap(query);
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
    final data = <String, dynamic>{
      'role': role,
      'name': name,
      'onboardingCompleted': onboardingCompleted,
      'updatedAt': nowIso8601,
    };

    // Add optional fields only if provided
    if (phone != null) data['phone'] = phone;
    if (dateOfBirth != null) {
      data['dateOfBirth'] = dateOfBirth.toIso8601String();
    }
    if (gender != null) data['gender'] = gender;
    if (timezone != null) data['timezone'] = timezone;
    if (image != null) data['image'] = image;
    if (city != null) data['city'] = city;
    if (country != null) data['country'] = country;
    if (address != null) data['address'] = address;
    if (linkedinUrl != null) data['linkedinUrl'] = linkedinUrl;
    if (bio != null) data['bio'] = bio;
    if (consulteeProfileId != null) {
      data['consulteeProfileId'] = consulteeProfileId;
    }
    if (consultantProfileId != null) {
      data['consultantProfileId'] = consultantProfileId;
    }

    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.update)
        .where({'id': id})
        .data(data)
        .build();

    return executeQueryAsSingleMap(query, txn: txn);
  }

  /// Create default CookiePreference and NotificationPreference for a user.
  ///
  /// Matches the web app's BetterAuth databaseHooks.user.create behavior.
  /// Should be called within the signup transaction for data consistency.
  Future<void> createDefaultPreferences(
    String userId, {
    TransactionExecutor? txn,
  }) async {
    final now = nowIso8601;

    const uuid = Uuid();

    // Create CookiePreference with defaults (essential: true, rest: false)
    final cookieQuery = JsonQueryBuilder()
        .model('cookie_preferences')
        .action(QueryAction.create)
        .data({
      'id': uuid.v4(),
      'userId': userId,
      'essential': true,
      'analytics': false,
      'marketing': false,
      'functional': false,
      'consentGivenAt': now,
      'consentUpdatedAt': now,
    }).build();

    await executeMutation(cookieQuery, txn: txn);

    // Create NotificationPreference with defaults
    final notifQuery = JsonQueryBuilder()
        .model('notification_preferences')
        .action(QueryAction.create)
        .data({
      'id': uuid.v4(),
      'userId': userId,
      'allNotifications': true,
      'inAppEnabled': true,
      'emailEnabled': true,
      'pushEnabled': false,
      'mentions': false,
      'directMessages': false,
      'updates': false,
      'appointmentReminders': true,
      'paymentNotifications': true,
      'supportUpdates': true,
      'feedbackAlerts': true,
      'trialNotifications': true,
      'subscriptionAlerts': true,
      'marketingEmails': false,
      'quietHoursEnabled': false,
    }).build();

    await executeMutation(notifQuery, txn: txn);
  }

  /// Delete a user by ID (for cleanup on failed registration)
  Future<void> delete(String id) async {
    await _prisma.user.delete(
      where: UserWhereUniqueInput(id: id),
    );
  }
}
