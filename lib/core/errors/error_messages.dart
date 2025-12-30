import 'package:dio/dio.dart';

import 'exceptions.dart';

/// Utility class to convert exceptions to user-friendly error messages
class ErrorMessages {
  ErrorMessages._();

  /// Convert any error to a user-friendly message
  static String getUserFriendlyMessage(Object error) {
    if (error is AppException) {
      return _getAppExceptionMessage(error);
    }

    if (error is DioException) {
      return _getDioExceptionMessage(error);
    }

    // Generic error message for unexpected errors
    return 'Something went wrong. Please try again later.';
  }

  /// Get user-friendly message from AppException types
  static String _getAppExceptionMessage(AppException error) {
    if (error is NetworkException) {
      return 'Unable to connect. Please check your internet connection.';
    }

    if (error is AuthException) {
      return 'Your session has expired. Please sign in again.';
    }

    if (error is NotFoundException) {
      return 'The requested ${error.resource.toLowerCase()} was not found.';
    }

    if (error is SlotConflictException) {
      return 'This time slot is no longer available. Please choose another.';
    }

    if (error is ValidationException) {
      // Return first validation error message
      final firstError = error.errors.values.firstOrNull?.firstOrNull;
      return firstError ?? 'Please check your input and try again.';
    }

    if (error is ServerException) {
      // Check for specific error codes first
      final errorCodeMessage = _getErrorCodeMessage(error.errorCode);
      if (errorCodeMessage != null) {
        return errorCodeMessage;
      }
      return _getServerErrorMessage(error.statusCode);
    }

    return 'Something went wrong. Please try again later.';
  }

  /// Get user-friendly message based on API error code
  static String? _getErrorCodeMessage(String? errorCode) {
    if (errorCode == null) return null;

    return switch (errorCode) {
      'PLAN_NOT_FOUND' =>
        'This consultation plan is no longer available. Please select another.',
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

  /// Get user-friendly message from DioException
  static String _getDioExceptionMessage(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timed out. Please check your internet and try again.';

      case DioExceptionType.connectionError:
        return 'Unable to connect to the server. Please check your internet connection.';

      case DioExceptionType.badResponse:
        return _getServerErrorMessage(error.response?.statusCode);

      case DioExceptionType.cancel:
        return 'Request was cancelled.';

      case DioExceptionType.badCertificate:
        return 'Security certificate error. Please try again later.';

      case DioExceptionType.unknown:
        return 'Something went wrong. Please try again later.';
    }
  }

  /// Get user-friendly message based on HTTP status code
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

  /// Get specific error messages for different contexts
  static String getWebinarsLoadError(Object error) {
    if (error is NetworkException || error is DioException) {
      return 'Unable to load webinars. Please check your internet connection.';
    }
    return 'Unable to load webinars. Please try again.';
  }

  static String getClassesLoadError(Object error) {
    if (error is NetworkException || error is DioException) {
      return 'Unable to load classes. Please check your internet connection.';
    }
    return 'Unable to load classes. Please try again.';
  }

  static String getConsultantsLoadError(Object error) {
    if (error is NetworkException || error is DioException) {
      return 'Unable to load consultants. Please check your internet connection.';
    }
    return 'Unable to load consultants. Please try again.';
  }

  static String getBookingError(Object error) {
    if (error is SlotConflictException) {
      return 'This time slot is no longer available. Please choose another.';
    }
    if (error is NetworkException || error is DioException) {
      return 'Unable to complete booking. Please check your internet connection.';
    }
    return 'Unable to complete booking. Please try again.';
  }

  static String getPaymentError(Object error) {
    if (error is NetworkException || error is DioException) {
      return 'Payment could not be processed. Please check your internet connection.';
    }
    return 'Payment could not be processed. Please try again.';
  }
}
