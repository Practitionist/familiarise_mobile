/// Base exception class for all app exceptions
abstract class AppException implements Exception {
  final String message;
  final int? statusCode;
  final String? errorCode;
  final dynamic originalError;

  const AppException({
    required this.message,
    this.statusCode,
    this.errorCode,
    this.originalError,
  });

  @override
  String toString() =>
      'AppException: $message (statusCode: $statusCode, code: $errorCode)';
}

/// Server/API exception
/// Thrown when API returns an error response
class ServerException extends AppException {
  const ServerException({
    required super.message,
    super.statusCode,
    super.errorCode,
    super.originalError,
  });

  @override
  String toString() =>
      'ServerException: $message (statusCode: $statusCode, code: $errorCode)';
}

/// Network exception
/// Thrown when there's no internet connectivity
class NetworkException extends AppException {
  const NetworkException({
    super.message = 'No internet connection',
    super.originalError,
  }) : super(statusCode: null);

  @override
  String toString() => 'NetworkException: $message';
}

/// Authentication exception
/// Thrown when user is not authenticated or token expired
class AuthException extends AppException {
  const AuthException({
    required super.message,
    super.statusCode,
    super.originalError,
  });

  @override
  String toString() => 'AuthException: $message (statusCode: $statusCode)';
}

/// Cache/local storage exception
/// Thrown when cache operations fail
class CacheException extends AppException {
  const CacheException({
    super.message = 'Cache operation failed',
    super.originalError,
  }) : super(statusCode: null);

  @override
  String toString() => 'CacheException: $message';
}

/// Validation exception
/// Thrown when input validation fails
class ValidationException extends AppException {
  final Map<String, List<String>> errors;

  const ValidationException({
    required this.errors,
    super.message = 'Validation failed',
    super.originalError,
  }) : super(statusCode: null);

  @override
  String toString() => 'ValidationException: $errors';
}

/// Not found exception
/// Thrown when a requested resource doesn't exist
class NotFoundException extends AppException {
  final String resource;

  const NotFoundException({
    required this.resource,
    super.originalError,
  }) : super(
          message: '$resource not found',
          statusCode: 404,
        );

  @override
  String toString() => 'NotFoundException: $resource not found';
}

/// Slot conflict exception
/// Thrown when a time slot is no longer available (409 Conflict)
class SlotConflictException extends AppException {
  final List<String> conflictingSlots;

  const SlotConflictException({
    required super.message,
    this.conflictingSlots = const [],
    super.originalError,
  }) : super(statusCode: 409);

  @override
  String toString() => 'SlotConflictException: $message';
}
