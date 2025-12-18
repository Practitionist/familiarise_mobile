import 'package:fpdart/fpdart.dart';

import '../../core/errors/failures.dart';
import '../entities/onboarding/onboarding_state.dart';
import '../entities/user.dart';

/// Repository interface for onboarding operations
abstract class OnboardingRepository {
  /// Submit the complete onboarding data
  ///
  /// Returns the updated [User] on success, or a [Failure] on error.
  Future<Either<Failure, User>> submitOnboarding(OnboardingState state);
}
