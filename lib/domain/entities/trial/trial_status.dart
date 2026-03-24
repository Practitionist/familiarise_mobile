import 'package:freezed_annotation/freezed_annotation.dart';

enum TrialStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('SCHEDULED')
  scheduled,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CONVERTED')
  converted,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('REJECTED')
  rejected,
}

extension TrialStatusX on TrialStatus {
  String get displayLabel => switch (this) {
        TrialStatus.pending => 'Pending',
        TrialStatus.scheduled => 'Scheduled',
        TrialStatus.completed => 'Completed',
        TrialStatus.converted => 'Converted',
        TrialStatus.cancelled => 'Cancelled',
        TrialStatus.rejected => 'Rejected',
      };

  bool get isPending => this == TrialStatus.pending;
  bool get isActive =>
      this == TrialStatus.pending || this == TrialStatus.scheduled;
}
