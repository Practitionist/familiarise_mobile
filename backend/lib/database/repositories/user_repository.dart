import 'package:backend/database/repositories/base_repository.dart';
import 'package:prisma_flutter_connector/runtime_server.dart';

/// Repository for user-related database operations
class UserRepository extends BaseRepository {
  /// Create a user repository with the given executor
  UserRepository(super._executor);

  /// Find user by email
  Future<Map<String, dynamic>?> findByEmail(String email) async {
    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.findFirst)
        .where({'email': email}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Find user by ID
  Future<Map<String, dynamic>?> findById(String id) async {
    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.findUnique)
        .where({'id': id}).build();

    return executeQueryAsSingleMap(query);
  }

  /// Create a new user
  ///
  /// Optionally accepts a [TransactionExecutor] to run within a transaction.
  Future<Map<String, dynamic>> create({
    required String id,
    required String email,
    String? name,
    String? image,
    String? hashedPassword,
    String role = 'CONSULTEE',
    TransactionExecutor? txn,
  }) async {
    final data = <String, dynamic>{
      'id': id,
      'email': email,
      'name': name,
      'image': image,
      'role': role,
      'onboardingCompleted': false,
      'createdAt': nowIso8601,
      'updatedAt': nowIso8601,
    };

    // Add password if provided (for credentials auth)
    if (hashedPassword != null) {
      data['password'] = hashedPassword;
    }

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

  /// Update user data (name, image)
  Future<Map<String, dynamic>?> update({
    required String id,
    String? name,
    String? image,
  }) async {
    final data = <String, dynamic>{
      'updatedAt': nowIso8601,
    };
    if (name != null) data['name'] = name;
    if (image != null) data['image'] = image;

    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.update)
        .where({'id': id})
        .data(data)
        .build();

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

  /// Delete a user by ID (for cleanup on failed registration)
  Future<void> delete(String id) async {
    final query = JsonQueryBuilder()
        .model('users')
        .action(QueryAction.delete)
        .where({'id': id}).build();

    await executeMutation(query);
  }
}
