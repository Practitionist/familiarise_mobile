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
  /// Server error with optional status code and error code
  const factory Failure.server({
    required String message,
    int? statusCode,
    String? errorCode,
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

  /// Slot conflict error (409) - slot is no longer available
  const factory Failure.slotConflict({
    required String message,
    @Default([]) List<String> conflictingSlots,
  }) = SlotConflictFailure;
}

/// Extension to get user-friendly error messages
extension FailureX on Failure {
  /// Get user-friendly error message for display
  String get displayMessage => switch (this) {
        ServerFailure(:final statusCode, :final errorCode) =>
          _getErrorCodeMessage(errorCode) ?? _getServerErrorMessage(statusCode),
        NetworkFailure() =>
          'Unable to connect. Please check your internet connection.',
        AuthFailure(:final message) => message,
        ValidationFailure(:final errors) =>
          errors.values.expand((e) => e).firstOrNull ??
              'Please check your input and try again.',
        NotFoundFailure(:final resource) =>
          'The requested ${resource.toLowerCase()} was not found.',
        CacheFailure() => 'Unable to load cached data. Please try again.',
        UnknownFailure() => 'Something went wrong. Please try again later.',
        SlotConflictFailure() =>
          'This time slot is no longer available. Please choose another.',
      };

  /// Get technical error message for debugging
  String get technicalMessage => switch (this) {
        ServerFailure(:final message) => message,
        NetworkFailure(:final message) => message,
        AuthFailure(:final message) => message,
        ValidationFailure(:final errors) =>
          errors.values.expand((e) => e).join('\n'),
        NotFoundFailure(:final resource) => '$resource not found',
        CacheFailure(:final message) => message,
        UnknownFailure(:final message) =>
          message ?? 'An unexpected error occurred',
        SlotConflictFailure(:final message) => message,
      };

  /// Check if this is a slot conflict failure
  bool get isSlotConflict => this is SlotConflictFailure;

  /// Get user-friendly server error message based on status code
  static String _getServerErrorMessage(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Invalid request. Please check your input.';
      case 401:
        return 'Your session has expired. Please sign in again.';
      case 403:
        return 'You don\'t have permission to perform this action.';
      case 404:
        return 'The requested item was not found.';
      case 409:
        return 'This action conflicts with existing data. Please try again.';
      case 422:
        return 'Unable to process your request. Please check your input.';
      case 429:
        return 'Too many requests. Please wait a moment and try again.';
      case 500:
        return 'Server error. Our team has been notified.';
      case 502:
      case 503:
      case 504:
        return 'Server is temporarily unavailable. Please try again later.';
      default:
        return 'Something went wrong. Please try again later.';
    }
  }

  /// Get user-friendly message based on API error code
  static String? _getErrorCodeMessage(String? errorCode) {
    if (errorCode == null) return null;

    return switch (errorCode) {
      'PLAN_NOT_FOUND' =>
        'This plan is no longer available. Please select another.',
      'BOOKING_NOT_FOUND' =>
        'This booking was not found. It may have been cancelled.',
      'SLOT_CONFLICT' =>
        'This time slot is no longer available. Please choose another.',
      'DUPLICATE_BOOKING' =>
        'You already have an active booking with this consultant.',
      'MISSING_CONSULTEE_PROFILE' =>
        'Please complete your profile setup to continue.',
      'MISSING_REQUIRED_FIELDS' => 'Some required information is missing.',
      'INVALID_CHECKOUT_REQUEST' =>
        'Unable to process checkout. Please try again.',
      'MISSING_SLOT_TIME' => 'Please select a time slot for your consultation.',
      'MISSING_SCHEDULING_PERIOD' =>
        'Please select a scheduling period for your subscription.',
      'INTERNAL_ERROR' =>
        'We encountered an error. Our team has been notified.',
      _ => null, // Unknown error code, fall back to status code message
    };
  }
}
