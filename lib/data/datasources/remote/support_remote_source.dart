import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/exceptions.dart';
import '../../../domain/entities/support/support_entities.dart';
import '../../../shared/providers/core_providers.dart';

part 'support_remote_source.g.dart';

/// Provider for SupportRemoteSource
@riverpod
SupportRemoteSource supportRemoteSource(Ref ref) {
  return SupportRemoteSourceImpl(ref.watch(dioProvider));
}

/// Remote data source interface for support ticket operations
abstract class SupportRemoteSource {
  /// Get user's support tickets with pagination
  Future<SupportTicketsResponse> getTickets({
    String? status,
    int page = 0,
    int pageSize = 20,
  });

  /// Get a single ticket with its responses
  Future<SupportTicket> getTicketById(String ticketId);

  /// Create a new support ticket
  Future<SupportTicket> createTicket(CreateTicketRequest request);

  /// Add a response to a ticket
  Future<SupportResponse> addResponse({
    required String ticketId,
    required String message,
  });
}

/// Implementation of SupportRemoteSource
class SupportRemoteSourceImpl implements SupportRemoteSource {
  final Dio _dio;

  SupportRemoteSourceImpl(this._dio);

  @override
  Future<SupportTicketsResponse> getTickets({
    String? status,
    int page = 0,
    int pageSize = 20,
  }) async {
    try {
      final queryParams = <String, dynamic>{
        'page': page,
        'pageSize': pageSize,
      };
      if (status != null) {
        queryParams['status'] = status;
      }

      final response = await _dio.get(
        '/api/support',
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseTicketsResponse(data);
      }

      throw ServerException(
        message: 'Failed to fetch support tickets',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch support tickets',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<SupportTicket> getTicketById(String ticketId) async {
    try {
      final response = await _dio.get('/api/support/$ticketId');

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseTicket(data);
      }

      throw ServerException(
        message: 'Failed to fetch ticket details',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw const NotFoundException(resource: 'Support ticket');
      }
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: e.message ?? 'Failed to fetch ticket details',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<SupportTicket> createTicket(CreateTicketRequest request) async {
    try {
      final response = await _dio.post(
        '/api/support',
        data: request.toRequestJson(),
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseTicket(data);
      }

      throw ServerException(
        message: 'Failed to create support ticket',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      final errorMessage = _extractErrorMessage(e);
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: errorMessage ?? 'Failed to create support ticket',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  @override
  Future<SupportResponse> addResponse({
    required String ticketId,
    required String message,
  }) async {
    try {
      final response = await _dio.post(
        '/api/support/$ticketId/responses',
        data: {'message': message},
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        return _parseResponse(data);
      }

      throw ServerException(
        message: 'Failed to add response',
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw const NotFoundException(resource: 'Support ticket');
      }
      final errorMessage = _extractErrorMessage(e);
      if (e.error is AppException) {
        throw e.error as AppException;
      }
      throw ServerException(
        message: errorMessage ?? 'Failed to add response',
        statusCode: e.response?.statusCode,
        originalError: e,
      );
    }
  }

  /// Parse tickets response with pagination
  SupportTicketsResponse _parseTicketsResponse(Map<String, dynamic> json) {
    final ticketsJson = json['tickets'] as List<dynamic>? ?? [];
    final paginationJson =
        json['pagination'] as Map<String, dynamic>? ?? <String, dynamic>{};

    final tickets =
        ticketsJson.map((t) => _parseTicket(t as Map<String, dynamic>)).toList();

    final pagination = SupportPagination(
      page: paginationJson['page'] as int? ?? 0,
      pageSize: paginationJson['pageSize'] as int? ?? 20,
      totalCount: paginationJson['totalCount'] as int? ?? 0,
      totalPages: paginationJson['totalPages'] as int? ?? 0,
    );

    return SupportTicketsResponse(tickets: tickets, pagination: pagination);
  }

  /// Parse a single ticket from JSON
  SupportTicket _parseTicket(Map<String, dynamic> json) {
    final responsesJson = json['responses'] as List<dynamic>?;

    return SupportTicket(
      id: json['id'] as String,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      status: TicketStatus.fromString(json['status'] as String? ?? 'OPEN'),
      priority:
          TicketPriority.fromString(json['priority'] as String? ?? 'MEDIUM'),
      issueType: json['issueType'] != null
          ? SupportIssueType.fromString(json['issueType'] as String)
          : null,
      category: json['category'] as String?,
      consultationId: json['consultationId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
      paymentId: json['paymentId'] as String?,
      refundId: json['refundId'] as String?,
      assignedToName: _extractAssignedToName(json),
      createdAt: _parseDateTime(json['createdAt']),
      updatedAt: _parseDateTime(json['updatedAt']),
      resolvedAt: _parseDateTime(json['resolvedAt']),
      responses: responsesJson
          ?.map((r) => _parseResponse(r as Map<String, dynamic>))
          .toList(),
    );
  }

  /// Parse a ticket response from JSON
  SupportResponse _parseResponse(Map<String, dynamic> json) {
    final responder = json['responder'] as Map<String, dynamic>?;

    return SupportResponse(
      id: json['id'] as String,
      message: json['message'] as String? ?? '',
      responderId: json['responderId'] as String? ?? '',
      responderName: responder?['name'] as String?,
      responderImage: responder?['image'] as String?,
      isStaff: json['isStaff'] as bool? ?? false,
      createdAt: _parseDateTime(json['createdAt']),
    );
  }

  /// Extract assigned staff name from nested relation
  String? _extractAssignedToName(Map<String, dynamic> json) {
    final assignedTo = json['assignedTo'] as Map<String, dynamic>?;
    return assignedTo?['name'] as String?;
  }

  /// Parse datetime from string or null
  DateTime? _parseDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;
    if (value is String) return DateTime.tryParse(value);
    return null;
  }

  /// Extract error message from DioException
  String? _extractErrorMessage(DioException e) {
    final data = e.response?.data;
    if (data is Map<String, dynamic>) {
      final error = data['error'];
      if (error is Map<String, dynamic>) {
        return error['message'] as String?;
      }
    }
    return e.message;
  }
}
