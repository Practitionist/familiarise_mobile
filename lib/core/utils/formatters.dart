import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../extensions/date_extensions.dart';

/// Date and currency formatters
abstract final class Formatters {
  // Date formatters
  static final _dateFormat = DateFormat('MMM d, yyyy');
  static final _dateTimeFormat = DateFormat('MMM d, yyyy • h:mm a');
  static final _timeFormat = DateFormat('h:mm a');
  static final _dayMonthFormat = DateFormat('MMM d');
  static final _fullDateFormat = DateFormat('EEEE, MMMM d, yyyy');
  static final _monthYearFormat = DateFormat('MMMM yyyy');
  static final _shortDateFormat = DateFormat('d/M/yy');

  // Currency formatter for INR
  static final _inrFormat = NumberFormat.currency(
    locale: 'en_IN',
    symbol: '\u20B9', // Rupee symbol
    decimalDigits: 0,
  );

  // Currency formatter with decimals
  static final _inrDecimalFormat = NumberFormat.currency(
    locale: 'en_IN',
    symbol: '\u20B9',
    decimalDigits: 2,
  );

  /// Format date as "Jan 15, 2024"
  static String date(DateTime dateTime) {
    return _dateFormat.format(dateTime);
  }

  /// Format date and time as "Jan 15, 2024 • 3:00 PM"
  static String dateTime(DateTime dateTime) {
    return _dateTimeFormat.format(dateTime);
  }

  /// Format time as "3:00 PM"
  static String time(DateTime dateTime) {
    return _timeFormat.format(dateTime);
  }

  /// Format as "Jan 15"
  static String dayMonth(DateTime dateTime) {
    return _dayMonthFormat.format(dateTime);
  }

  /// Format as "Monday, January 15, 2024"
  static String fullDate(DateTime dateTime) {
    return _fullDateFormat.format(dateTime);
  }

  /// Format as "January 2024"
  static String monthYear(DateTime dateTime) {
    return _monthYearFormat.format(dateTime);
  }

  /// Format as "15/1/24"
  static String shortDate(DateTime dateTime) {
    return _shortDateFormat.format(dateTime);
  }

  /// Format as relative time "2 hours ago", "just now", etc.
  static String relative(DateTime dateTime) {
    return timeago.format(dateTime);
  }

  /// Format as relative time with short format "2h", "5m"
  static String relativeShort(DateTime dateTime) {
    return timeago.format(dateTime, locale: 'en_short');
  }

  /// Format time range "3:00 PM - 4:00 PM"
  static String timeRange(DateTime start, DateTime end) {
    return '${time(start)} - ${time(end)}';
  }

  /// Format currency in INR without decimals (e.g., "₹2,500")
  static String inr(num amount) {
    return _inrFormat.format(amount);
  }

  /// Format currency in INR with decimals (e.g., "₹2,500.00")
  static String inrDecimal(num amount) {
    return _inrDecimalFormat.format(amount);
  }

  /// Format duration as "1h 30m", "45m", "2h"
  /// Delegates to DurationX.formattedCompact extension
  static String duration(Duration duration) => duration.formattedCompact;

  /// Format duration as "1 hour 30 minutes"
  static String durationLong(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);

    final parts = <String>[];
    if (hours > 0) {
      parts.add('$hours ${hours == 1 ? 'hour' : 'hours'}');
    }
    if (minutes > 0) {
      parts.add('$minutes ${minutes == 1 ? 'minute' : 'minutes'}');
    }

    return parts.isEmpty ? '0 minutes' : parts.join(' ');
  }

  /// Format remaining time for meeting "45:23"
  static String meetingTimer(Duration remaining) {
    final minutes = remaining.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = remaining.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  /// Format number with commas (e.g., "1,234,567")
  static String number(num value) {
    return NumberFormat('#,##0').format(value);
  }

  /// Format rating as "4.9"
  static String rating(double value) {
    return value.toStringAsFixed(1);
  }

  /// Format count with suffix (e.g., "124 reviews", "1 review")
  static String countWithLabel(int count, String singular, String plural) {
    return '$count ${count == 1 ? singular : plural}';
  }
}

/// Initialize timeago locales (call in main.dart)
void initializeTimeago() {
  timeago.setLocaleMessages('en_short', timeago.EnMessages());
}
