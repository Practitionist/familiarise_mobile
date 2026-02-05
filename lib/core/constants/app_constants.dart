/// Shared application constants
/// Centralized location for reusable constant values
library;

import 'enums.dart';

// =============================================================================
// LANGUAGE CONSTANTS
// =============================================================================

/// Common languages supported in the app
/// Used for consultant languages, consultee preferred language, etc.
class LanguageConstants {
  LanguageConstants._();

  /// Most common languages (for quick selection)
  static const List<String> commonLanguages = [
    'English',
    'Spanish',
    'French',
    'German',
    'Mandarin',
    'Hindi',
    'Portuguese',
    'Japanese',
    'Korean',
    'Arabic',
  ];

  /// Extended language list for comprehensive selection
  static const List<String> allLanguages = [
    'English',
    'Spanish',
    'French',
    'German',
    'Mandarin',
    'Hindi',
    'Portuguese',
    'Japanese',
    'Korean',
    'Arabic',
    'Russian',
    'Italian',
    'Dutch',
    'Turkish',
    'Polish',
    'Vietnamese',
    'Thai',
    'Indonesian',
    'Malay',
    'Bengali',
    'Tamil',
    'Telugu',
    'Marathi',
    'Gujarati',
    'Kannada',
    'Punjabi',
    'Urdu',
    'Persian',
    'Hebrew',
    'Greek',
    'Czech',
    'Swedish',
    'Danish',
    'Norwegian',
    'Finnish',
    'Hungarian',
    'Romanian',
    'Ukrainian',
  ];
}

// =============================================================================
// SESSION TYPE CONSTANTS
// =============================================================================

/// Helper class for SessionType enum operations
class SessionTypeHelper {
  SessionTypeHelper._();

  /// User-friendly labels for session types
  static const Map<SessionType, String> labels = {
    SessionType.oneOnOne: 'One-on-One Sessions',
    SessionType.group: 'Group Sessions',
    SessionType.asyncReview: 'Async Review (Code/Resume)',
  };

  /// Get user-friendly label for a session type
  static String getLabel(SessionType type) => labels[type] ?? type.name;

  /// Convert SessionType enum to API string (database enum format)
  static String toApiString(SessionType type) {
    switch (type) {
      case SessionType.oneOnOne:
        return 'ONE_ON_ONE';
      case SessionType.group:
        return 'GROUP';
      case SessionType.asyncReview:
        return 'ASYNC_REVIEW';
    }
  }

  /// Parse API string to SessionType enum
  static SessionType? fromApiString(String? value) {
    if (value == null) return null;
    switch (value.toUpperCase()) {
      case 'ONE_ON_ONE':
        return SessionType.oneOnOne;
      case 'GROUP':
        return SessionType.group;
      case 'ASYNC_REVIEW':
        return SessionType.asyncReview;
      default:
        return null;
    }
  }

  /// Convert list of SessionType to API strings
  static List<String> toApiStrings(List<SessionType> types) {
    return types.map(toApiString).toList();
  }

  /// Parse list of API strings to SessionType enums
  static List<SessionType> fromApiStrings(List<dynamic>? values) {
    if (values == null) return [];
    return values
        .map((v) => fromApiString(v.toString()))
        .whereType<SessionType>()
        .toList();
  }
}

// =============================================================================
// MENTORING STYLE CONSTANTS
// =============================================================================

/// Common mentoring styles
class MentoringStyleConstants {
  MentoringStyleConstants._();

  static const List<String> styles = [
    'Hands-on',
    'Supportive',
    'Challenging',
    'Structured',
    'Flexible',
    'Goal-oriented',
  ];
}
