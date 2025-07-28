import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/consultant_profile.dart';
import '../models/domain.dart';
import '../services/user_service.dart';

/// Updated to use consolidated UserService based on schema.prisma
/// This provider now uses real database data instead of mock data

// Service provider - using consolidated UserService
final userServiceProvider = Provider<UserService>((ref) {
  return UserService();
});

// Consultants list provider
final consultantsProvider = FutureProvider<List<ConsultantProfile>>((ref) async {
  final userService = ref.read(userServiceProvider);
  return await userService.getConsultants();
});

// Top consultants provider (limited to 5 for home screen)
final topConsultantsProvider = FutureProvider<List<ConsultantProfile>>((ref) async {
  final userService = ref.read(userServiceProvider);
  return await userService.getConsultants(limit: 5);
});

// Single consultant provider
final consultantProvider = FutureProvider.family<ConsultantProfile?, String>((ref, id) async {
  final userService = ref.read(userServiceProvider);
  return await userService.getConsultantById(id);
});

// Domains provider - for filtering consultants by domain
final domainsProvider = FutureProvider<List<Domain>>((ref) async {
  final userService = ref.read(userServiceProvider);
  return await userService.getDomains();
});

// Consultants by domain provider
final consultantsByDomainProvider = FutureProvider.family<List<ConsultantProfile>, String?>((ref, domainId) async {
  final userService = ref.read(userServiceProvider);
  return await userService.getConsultants(domainId: domainId);
});

// Search consultants provider (future enhancement)
final searchConsultantsProvider = FutureProvider.family<List<ConsultantProfile>, String>((ref, query) async {
  final userService = ref.read(userServiceProvider);
  // For now, just return all consultants - search can be implemented later
  return await userService.getConsultants();
}); 