import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_entities.freezed.dart';
part 'support_entities.g.dart';

/// Support ticket status enum
enum TicketStatus {
  open('OPEN', 'Open'),
  inProgress('IN_PROGRESS', 'In Progress'),
  resolved('RESOLVED', 'Resolved'),
  closed('CLOSED', 'Closed');

  final String value;
  final String displayName;
  const TicketStatus(this.value, this.displayName);

  static TicketStatus fromString(String value) {
    return TicketStatus.values.firstWhere(
      (s) => s.value == value,
      orElse: () => TicketStatus.open,
    );
  }
}

/// Support ticket priority enum
enum TicketPriority {
  low('LOW', 'Low'),
  medium('MEDIUM', 'Medium'),
  high('HIGH', 'High'),
  urgent('URGENT', 'Urgent');

  final String value;
  final String displayName;
  const TicketPriority(this.value, this.displayName);

  static TicketPriority fromString(String value) {
    return TicketPriority.values.firstWhere(
      (p) => p.value == value,
      orElse: () => TicketPriority.medium,
    );
  }
}

/// Support issue type enum - matches backend SupportIssueType
enum SupportIssueType {
  // Session-related
  consultantNoShow('CONSULTANT_NO_SHOW', 'Consultant no-show'),
  consultantLate('CONSULTANT_LATE', 'Consultant was late'),
  sessionEndedEarly('SESSION_ENDED_EARLY', 'Session ended early'),
  sessionQualityPoor('SESSION_QUALITY_POOR', 'Poor session quality'),
  communicationIssue('COMMUNICATION_ISSUE', 'Communication issue'),
  technicalIssues('TECHNICAL_ISSUES', 'Technical issues'),
  wrongConsultant('WRONG_CONSULTANT', 'Wrong consultant'),

  // Access-related
  accessIssue('ACCESS_ISSUE', 'Access issue'),
  timezoneConfusion('TIMEZONE_CONFUSION', 'Timezone confusion'),
  reschedulingHelp('RESCHEDULING_HELP', 'Need rescheduling help'),

  // Payment-related
  paymentFailed('PAYMENT_FAILED', 'Payment failed'),
  chargedTwice('CHARGED_TWICE', 'Charged twice'),
  refundRequest('REFUND_REQUEST', 'Refund request'),
  billingQuestion('BILLING_QUESTION', 'Billing question'),

  // Document-related
  documentIssue('DOCUMENT_ISSUE', 'Document issue'),

  // Cancellation-related
  wantToCancel('WANT_TO_CANCEL', 'Want to cancel'),
  cancellationIssue('CANCELLATION_ISSUE', 'Cancellation issue'),

  // General
  accountIssue('ACCOUNT_ISSUE', 'Account issue'),
  generalInquiry('GENERAL_INQUIRY', 'General inquiry'),
  other('OTHER', 'Other');

  final String value;
  final String displayName;
  const SupportIssueType(this.value, this.displayName);

  static SupportIssueType fromString(String value) {
    return SupportIssueType.values.firstWhere(
      (t) => t.value == value,
      orElse: () => SupportIssueType.other,
    );
  }

  /// Group issue types by category for picker UI
  static Map<String, List<SupportIssueType>> get groupedByCategory => {
        'Session Issues': [
          consultantNoShow,
          consultantLate,
          sessionEndedEarly,
          sessionQualityPoor,
          communicationIssue,
          technicalIssues,
          wrongConsultant,
        ],
        'Access & Scheduling': [
          accessIssue,
          timezoneConfusion,
          reschedulingHelp,
        ],
        'Payment & Billing': [
          paymentFailed,
          chargedTwice,
          refundRequest,
          billingQuestion,
        ],
        'Cancellation': [
          wantToCancel,
          cancellationIssue,
        ],
        'Other': [
          documentIssue,
          accountIssue,
          generalInquiry,
          other,
        ],
      };
}

/// Support ticket entity
@freezed
class SupportTicket with _$SupportTicket {
  const factory SupportTicket({
    required String id,
    required String title,
    required String description,
    required TicketStatus status,
    required TicketPriority priority,
    SupportIssueType? issueType,
    String? category,
    String? consultationId,
    String? subscriptionId,
    String? paymentId,
    String? refundId,
    String? assignedToName,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? resolvedAt,
    List<SupportResponse>? responses,
  }) = _SupportTicket;

  factory SupportTicket.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketFromJson(json);
}

/// Support ticket response entity
@freezed
class SupportResponse with _$SupportResponse {
  const factory SupportResponse({
    required String id,
    required String message,
    required String responderId,
    String? responderName,
    String? responderImage,
    @Default(false) bool isStaff,
    DateTime? createdAt,
  }) = _SupportResponse;

  factory SupportResponse.fromJson(Map<String, dynamic> json) =>
      _$SupportResponseFromJson(json);
}

/// Support tickets list response with pagination
@freezed
class SupportTicketsResponse with _$SupportTicketsResponse {
  const factory SupportTicketsResponse({
    required List<SupportTicket> tickets,
    required SupportPagination pagination,
  }) = _SupportTicketsResponse;
}

/// Pagination info for support tickets
@freezed
class SupportPagination with _$SupportPagination {
  const factory SupportPagination({
    required int page,
    required int pageSize,
    required int totalCount,
    required int totalPages,
  }) = _SupportPagination;
}

/// Request to create a support ticket
@freezed
class CreateTicketRequest with _$CreateTicketRequest {
  const factory CreateTicketRequest({
    required String title,
    required String description,
    String? issueType,
    String? priority,
    String? category,
    String? consultationId,
    String? subscriptionId,
    String? paymentId,
  }) = _CreateTicketRequest;

  factory CreateTicketRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTicketRequestFromJson(json);
}

extension CreateTicketRequestX on CreateTicketRequest {
  Map<String, dynamic> toRequestJson() {
    return {
      'title': title,
      'description': description,
      if (issueType != null) 'issueType': issueType,
      if (priority != null) 'priority': priority,
      if (category != null) 'category': category,
      if (consultationId != null) 'consultationId': consultationId,
      if (subscriptionId != null) 'subscriptionId': subscriptionId,
      if (paymentId != null) 'paymentId': paymentId,
    };
  }
}
