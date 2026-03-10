/// Notification preference settings for a user.
///
/// Simple data class (no freezed) to avoid build_runner dependency
/// for this straightforward model.
class NotificationPreference {
  final bool emailEnabled;
  final bool pushEnabled;
  final bool inAppEnabled;
  final Map<String, bool> categories;
  final bool quietHoursEnabled;
  final String? quietHoursStart;
  final String? quietHoursEnd;
  final String? timezone;

  const NotificationPreference({
    this.emailEnabled = true,
    this.pushEnabled = true,
    this.inAppEnabled = true,
    this.categories = const {
      'appointments': true,
      'payments': true,
      'support': true,
      'feedback': true,
      'subscriptions': true,
      'marketing': false,
    },
    this.quietHoursEnabled = false,
    this.quietHoursStart,
    this.quietHoursEnd,
    this.timezone,
  });

  factory NotificationPreference.fromJson(Map<String, dynamic> json) {
    final categoriesJson = json['categories'] as Map<String, dynamic>?;
    final parsedCategories = <String, bool>{};

    if (categoriesJson != null) {
      for (final entry in categoriesJson.entries) {
        parsedCategories[entry.key] = entry.value as bool? ?? false;
      }
    }

    return NotificationPreference(
      emailEnabled: json['emailEnabled'] as bool? ?? true,
      pushEnabled: json['pushEnabled'] as bool? ?? true,
      inAppEnabled: json['inAppEnabled'] as bool? ?? true,
      categories: parsedCategories.isNotEmpty
          ? parsedCategories
          : const {
              'appointments': true,
              'payments': true,
              'support': true,
              'feedback': true,
              'subscriptions': true,
              'marketing': false,
            },
      quietHoursEnabled: json['quietHoursEnabled'] as bool? ?? false,
      quietHoursStart: json['quietHoursStart'] as String?,
      quietHoursEnd: json['quietHoursEnd'] as String?,
      timezone: json['timezone'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'emailEnabled': emailEnabled,
      'pushEnabled': pushEnabled,
      'inAppEnabled': inAppEnabled,
      'categories': categories,
      'quietHoursEnabled': quietHoursEnabled,
      'quietHoursStart': quietHoursStart,
      'quietHoursEnd': quietHoursEnd,
      'timezone': timezone,
    };
  }

  NotificationPreference copyWith({
    bool? emailEnabled,
    bool? pushEnabled,
    bool? inAppEnabled,
    Map<String, bool>? categories,
    bool? quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    String? timezone,
  }) {
    return NotificationPreference(
      emailEnabled: emailEnabled ?? this.emailEnabled,
      pushEnabled: pushEnabled ?? this.pushEnabled,
      inAppEnabled: inAppEnabled ?? this.inAppEnabled,
      categories: categories ?? this.categories,
      quietHoursEnabled: quietHoursEnabled ?? this.quietHoursEnabled,
      quietHoursStart: quietHoursStart ?? this.quietHoursStart,
      quietHoursEnd: quietHoursEnd ?? this.quietHoursEnd,
      timezone: timezone ?? this.timezone,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationPreference &&
          runtimeType == other.runtimeType &&
          emailEnabled == other.emailEnabled &&
          pushEnabled == other.pushEnabled &&
          inAppEnabled == other.inAppEnabled &&
          quietHoursEnabled == other.quietHoursEnabled &&
          quietHoursStart == other.quietHoursStart &&
          quietHoursEnd == other.quietHoursEnd &&
          timezone == other.timezone;

  @override
  int get hashCode => Object.hash(
        emailEnabled,
        pushEnabled,
        inAppEnabled,
        quietHoursEnabled,
        quietHoursStart,
        quietHoursEnd,
        timezone,
      );

  @override
  String toString() =>
      'NotificationPreference(email: $emailEnabled, push: $pushEnabled, '
      'inApp: $inAppEnabled, quietHours: $quietHoursEnabled)';
}
