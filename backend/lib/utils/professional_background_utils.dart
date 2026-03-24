import 'package:prisma_flutter_connector/runtime_server.dart';

/// Shared utility for creating professional background records
/// within a database transaction.
///
/// Used by both onboarding submit and the professional-background PUT route.
class ProfessionalBackgroundUtils {
  /// Create work experience, education, and certification records
  /// for a user within a transaction.
  static Future<void> createRecords({
    required String userId,
    required TransactionExecutor txn,
    List<dynamic>? workExperiences,
    List<dynamic>? education,
    List<dynamic>? certifications,
  }) async {
    final now = DateTime.now().toUtc().toIso8601String();

    if (workExperiences != null) {
      for (final we in workExperiences) {
        final item = we as Map<String, dynamic>;
        final query = JsonQueryBuilder()
            .model('WorkExperience')
            .action(QueryAction.create)
            .data({
          'userId': userId,
          'company': item['company'],
          'companyDomain': item['companyDomain'],
          'title': item['title'],
          'location': item['location'],
          'startDate': item['startDate'],
          'endDate': item['endDate'],
          'isCurrent': item['isCurrent'] ?? false,
          'description': item['description'],
          'createdAt': now,
          'updatedAt': now,
        }).build();
        await txn.executeMutation(query);
      }
    }

    if (education != null) {
      for (final edu in education) {
        final item = edu as Map<String, dynamic>;
        final query = JsonQueryBuilder()
            .model('Education')
            .action(QueryAction.create)
            .data({
          'userId': userId,
          'institution': item['institution'],
          'institutionDomain': item['institutionDomain'],
          'degree': item['degree'],
          'fieldOfStudy': item['fieldOfStudy'],
          'startYear': item['startYear'],
          'endYear': item['endYear'],
          'grade': item['grade'],
          'activities': item['activities'],
          'description': item['description'],
          'createdAt': now,
          'updatedAt': now,
        }).build();
        await txn.executeMutation(query);
      }
    }

    if (certifications != null) {
      for (final cert in certifications) {
        final item = cert as Map<String, dynamic>;
        final query = JsonQueryBuilder()
            .model('Certification')
            .action(QueryAction.create)
            .data({
          'userId': userId,
          'name': item['name'],
          'issuingOrganization': item['issuingOrganization'],
          'issueDate': item['issueDate'],
          'expiryDate': item['expiryDate'],
          'credentialId': item['credentialId'],
          'credentialUrl': item['credentialUrl'],
          'createdAt': now,
          'updatedAt': now,
        }).build();
        await txn.executeMutation(query);
      }
    }
  }

  /// Delete all professional background records for a user
  /// within a transaction.
  static Future<void> deleteRecords({
    required String userId,
    required TransactionExecutor txn,
  }) async {
    for (final model in [
      'WorkExperience',
      'Education',
      'Certification',
    ]) {
      final query = JsonQueryBuilder()
          .model(model)
          .action(QueryAction.deleteMany)
          .where({'userId': userId})
          .build();
      await txn.executeMutation(query);
    }
  }

  /// Replace all professional background records (delete + create).
  static Future<void> replaceRecords({
    required String userId,
    required TransactionExecutor txn,
    List<dynamic>? workExperiences,
    List<dynamic>? education,
    List<dynamic>? certifications,
  }) async {
    await deleteRecords(userId: userId, txn: txn);
    await createRecords(
      userId: userId,
      txn: txn,
      workExperiences: workExperiences,
      education: education,
      certifications: certifications,
    );
  }
}
