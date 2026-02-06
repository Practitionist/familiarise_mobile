/// Shared utility functions for booking widgets
library;

/// Compares two dates to check if they represent the same day.
/// Both dates are converted to local timezone for accurate comparison.
bool isSameDay(DateTime a, DateTime b) {
  final localA = a.toLocal();
  final localB = b.toLocal();
  return localA.year == localB.year &&
      localA.month == localB.month &&
      localA.day == localB.day;
}

/// Formats a [DateTime] to a human-readable string (e.g., "January 15, 2025").
String formatBookingDate(DateTime date) {
  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  return '${months[date.month - 1]} ${date.day}, ${date.year}';
}
