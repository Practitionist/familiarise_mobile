/// Backend exception classes for consistent error handling

/// Base exception for backend errors
abstract class BackendException implements Exception {
  final String message;
  final int statusCode;
  final String? errorCode;

  const BackendException({
    required this.message,
    required this.statusCode,
    this.errorCode,
  });

  @override
  String toString() => '$runtimeType: $message';
}

/// Already exists exception (409 Conflict)
/// Thrown when trying to create a resource that already exists
class AlreadyExistsException extends BackendException {
  final String resource;

  const AlreadyExistsException({
    required this.resource,
    String? message,
  }) : super(
          message: message ?? '$resource already exists',
          statusCode: 409,
          errorCode: 'ALREADY_EXISTS',
        );
}

/// Not found exception (404)
/// Thrown when a requested resource doesn't exist
class NotFoundException extends BackendException {
  final String resource;

  const NotFoundException({
    required this.resource,
    String? message,
  }) : super(
          message: message ?? '$resource not found',
          statusCode: 404,
          errorCode: 'NOT_FOUND',
        );
}

/// Validation exception (400)
/// Thrown when input validation fails
class ValidationException extends BackendException {
  final Map<String, String>? fieldErrors;

  const ValidationException({
    required String message,
    this.fieldErrors,
  }) : super(
          message: message,
          statusCode: 400,
          errorCode: 'VALIDATION_ERROR',
        );
}
