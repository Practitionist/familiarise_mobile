import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/consultant_repository_impl.dart';
import '../../../domain/entities/explore/consultant_details.dart';

part 'consultant_detail_provider.g.dart';

/// Provider for fetching consultant details by ID
@riverpod
Future<ConsultantDetails?> consultantDetails(
  Ref ref,
  String consultantId,
) async {
  final repository = ref.watch(consultantRepositoryProvider);
  return repository.getConsultantById(consultantId);
}
