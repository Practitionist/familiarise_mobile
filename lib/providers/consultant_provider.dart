import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/consultant_profile.dart';
import '../models/domain.dart';
import '../services/consultant_service.dart';

// Service provider
final consultantServiceProvider = Provider<ConsultantService>((ref) {
  return ConsultantService();
});

// Consultants list provider
final consultantsProvider = FutureProvider<List<ConsultantProfile>>((ref) {
  final consultantService = ref.read(consultantServiceProvider);
  return consultantService.getConsultants();
});

// Top consultants provider (limited to 5)
final topConsultantsProvider = FutureProvider<List<ConsultantProfile>>((ref) {
  final consultantService = ref.read(consultantServiceProvider);
  return consultantService.getConsultants(limit: 5);
});

// Single consultant provider
final consultantProvider = FutureProvider.family<ConsultantProfile?, String>((ref, id) {
  final consultantService = ref.read(consultantServiceProvider);
  return consultantService.getConsultantById(id);
});

// Domains provider
final domainsProvider = FutureProvider<List<Domain>>((ref) {
  final consultantService = ref.read(consultantServiceProvider);
  return consultantService.getDomains();
});

// Search consultants provider
final searchConsultantsProvider = FutureProvider.family<List<ConsultantProfile>, String>((ref, query) {
  final consultantService = ref.read(consultantServiceProvider);
  if (query.isEmpty) {
    return consultantService.getConsultants();
  }
  return consultantService.searchConsultants(query);
}); 