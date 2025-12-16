import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Result type alias using fpdart's Either
/// Left = Failure, Right = Success value
typedef Result<T> = Either<Failure, T>;

/// Base failure class using Freezed for immutability
/// All failure types extend from this sealed class
@freezed
sealed class Failure with _$Failure {
  /// Server error with optional status code
  const factory Failure.server({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  /// Network connectivity error
  const factory Failure.network({
    @Default('No internet connection') String message,
  }) = NetworkFailure;

  /// Authentication/authorization error
  const factory Failure.auth({
    required String message,
  }) = AuthFailure;

  /// Form validation error with field-level errors
  const factory Failure.validation({
    required Map<String, List<String>> errors,
  }) = ValidationFailure;

  /// Resource not found error
  const factory Failure.notFound({
    required String resource,
  }) = NotFoundFailure;

  /// Cache/local storage error
  const factory Failure.cache({
    @Default('Cache operation failed') String message,
  }) = CacheFailure;

  /// Unknown/unexpected error
  const factory Failure.unknown({
    String? message,
  }) = UnknownFailure;
}

/// Extension to get user-friendly error messages
extension FailureX on Failure {
  String get displayMessage => switch (this) {
        ServerFailure(:final message) => message,
        NetworkFailure(:final message) => message,
        AuthFailure(:final message) => message,
        ValidationFailure(:final errors) =>
          errors.values.expand((e) => e).join('\n'),
        NotFoundFailure(:final resource) => '$resource not found',
        CacheFailure(:final message) => message,
        UnknownFailure(:final message) =>
          message ?? 'An unexpected error occurred',
      };
}
