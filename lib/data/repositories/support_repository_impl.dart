import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/support/support_entities.dart';
import '../datasources/remote/support_remote_source.dart';

part 'support_repository_impl.g.dart';

/// Provider for SupportRepository
@riverpod
SupportRepository supportRepository(Ref ref) {
  return SupportRepositoryImpl(
    remoteSource: ref.watch(supportRemoteSourceProvider),
  );
}

/// Repository interface for support operations
abstract class SupportRepository {
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

/// Implementation of SupportRepository
class SupportRepositoryImpl implements SupportRepository {
  final SupportRemoteSource _remoteSource;

  SupportRepositoryImpl({required SupportRemoteSource remoteSource})
      : _remoteSource = remoteSource;

  @override
  Future<SupportTicketsResponse> getTickets({
    String? status,
    int page = 0,
    int pageSize = 20,
  }) {
    return _remoteSource.getTickets(
      status: status,
      page: page,
      pageSize: pageSize,
    );
  }

  @override
  Future<SupportTicket> getTicketById(String ticketId) {
    return _remoteSource.getTicketById(ticketId);
  }

  @override
  Future<SupportTicket> createTicket(CreateTicketRequest request) {
    return _remoteSource.createTicket(request);
  }

  @override
  Future<SupportResponse> addResponse({
    required String ticketId,
    required String message,
  }) {
    return _remoteSource.addResponse(ticketId: ticketId, message: message);
  }
}
