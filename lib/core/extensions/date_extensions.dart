/// DateTime extension methods for common date operations
extension DateTimeX on DateTime {
  /// Check if this date is today
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Check if this date is tomorrow
  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day;
  }

  /// Check if this date is yesterday
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }

  /// Check if this date is in the past
  bool get isPast => isBefore(DateTime.now());

  /// Check if this date is in the future
  bool get isFuture => isAfter(DateTime.now());

  /// Check if this date is in the same week as now
  bool get isThisWeek {
    final now = DateTime.now();
    final startOfWeek = now.startOfWeek;
    final endOfWeek = now.endOfWeek;
    return isAfter(startOfWeek.subtract(const Duration(seconds: 1))) &&
        isBefore(endOfWeek.add(const Duration(seconds: 1)));
  }

  /// Check if this date is in the same month as now
  bool get isThisMonth {
    final now = DateTime.now();
    return year == now.year && month == now.month;
  }

  /// Check if this date is in the same year as now
  bool get isThisYear {
    return year == DateTime.now().year;
  }

  /// Get the start of the day (00:00:00)
  DateTime get startOfDay => DateTime(year, month, day);

  /// Get the end of the day (23:59:59.999)
  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59, 999);

  /// Get the start of the week (Monday)
  DateTime get startOfWeek {
    final daysToSubtract = weekday - 1;
    return DateTime(year, month, day - daysToSubtract);
  }

  /// Get the end of the week (Sunday)
  DateTime get endOfWeek {
    final daysToAdd = 7 - weekday;
    return DateTime(year, month, day + daysToAdd, 23, 59, 59, 999);
  }

  /// Get the start of the month
  DateTime get startOfMonth => DateTime(year, month, 1);

  /// Get the end of the month
  DateTime get endOfMonth => DateTime(year, month + 1, 0, 23, 59, 59, 999);

  /// Get the start of the year
  DateTime get startOfYear => DateTime(year, 1, 1);

  /// Get the end of the year
  DateTime get endOfYear => DateTime(year, 12, 31, 23, 59, 59, 999);

  /// Add a number of days
  DateTime addDays(int days) => add(Duration(days: days));

  /// Subtract a number of days
  DateTime subtractDays(int days) => subtract(Duration(days: days));

  /// Add a number of months
  DateTime addMonths(int months) {
    var newMonth = month + months;
    var newYear = year;

    while (newMonth > 12) {
      newMonth -= 12;
      newYear++;
    }
    while (newMonth < 1) {
      newMonth += 12;
      newYear--;
    }

    // Handle day overflow (e.g., Jan 31 + 1 month = Feb 28/29)
    final lastDayOfMonth = DateTime(newYear, newMonth + 1, 0).day;
    final newDay = day > lastDayOfMonth ? lastDayOfMonth : day;

    return DateTime(newYear, newMonth, newDay, hour, minute, second);
  }

  /// Subtract a number of months
  DateTime subtractMonths(int months) => addMonths(-months);

  /// Check if same day as another date
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  /// Check if same month as another date
  bool isSameMonth(DateTime other) {
    return year == other.year && month == other.month;
  }

  /// Get the difference in days from another date
  int differenceInDays(DateTime other) {
    return startOfDay.difference(other.startOfDay).inDays;
  }

  /// Get a relative description ("Today", "Tomorrow", "Yesterday", or date)
  String get relativeDay {
    if (isToday) return 'Today';
    if (isTomorrow) return 'Tomorrow';
    if (isYesterday) return 'Yesterday';
    return null.toString(); // Will be formatted by caller
  }

  /// Get the age from this date
  int get age {
    final now = DateTime.now();
    var age = now.year - year;
    if (now.month < month || (now.month == month && now.day < day)) {
      age--;
    }
    return age;
  }

  /// Convert to UTC if not already
  DateTime get toUtcIfNeeded => isUtc ? this : toUtc();

  /// Convert to local if not already
  DateTime get toLocalIfNeeded => isUtc ? toLocal() : this;

  /// Create a copy with modified fields
  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }
}

/// Extension on Duration for formatting
extension DurationX on Duration {
  /// Format as "HH:MM:SS"
  String get formatted {
    final hours = inHours.toString().padLeft(2, '0');
    final minutes = inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds';
  }

  /// Format as "MM:SS"
  String get formattedShort {
    final minutes = inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  /// Format as "1h 30m" or "45m"
  String get formattedCompact {
    final hours = inHours;
    final minutes = inMinutes.remainder(60);

    if (hours > 0 && minutes > 0) {
      return '${hours}h ${minutes}m';
    } else if (hours > 0) {
      return '${hours}h';
    } else {
      return '${minutes}m';
    }
  }
}
