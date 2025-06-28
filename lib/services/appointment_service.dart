import 'api_service.dart';

class AppointmentService {
  static final AppointmentService _instance = AppointmentService._internal();
  factory AppointmentService() => _instance;
  AppointmentService._internal();

  final ApiService _apiService = ApiService();

  Future<List<Map<String, dynamic>>> getAppointments({
    String? status,
    String? consultantId,
    int? limit,
    int? offset,
  }) async {
    final queryParams = <String, String>{};
    if (status != null) queryParams['status'] = status;
    if (consultantId != null) queryParams['consultantId'] = consultantId;
    if (limit != null) queryParams['limit'] = limit.toString();
    if (offset != null) queryParams['offset'] = offset.toString();

    final uri = Uri.parse('/api/appointments').replace(queryParameters: queryParams);
    final result = await _apiService.get(uri.toString());
    return List<Map<String, dynamic>>.from(result['data'] ?? []);
  }

  Future<Map<String, dynamic>> getAppointmentById(String appointmentId) async {
    return await _apiService.get('/api/appointments/$appointmentId');
  }

  Future<Map<String, dynamic>> createAppointment({
    required String consultantId,
    required String slotId,
    required String planId,
    String? notes,
  }) async {
    return await _apiService.post('/api/appointments', {
      'consultantId': consultantId,
      'slotId': slotId,
      'planId': planId,
      if (notes != null) 'notes': notes,
    });
  }

  Future<Map<String, dynamic>> cancelAppointment(String appointmentId, {String? reason}) async {
    return await _apiService.post('/api/appointments/$appointmentId/cancel', {
      if (reason != null) 'reason': reason,
    });
  }

  Future<Map<String, dynamic>> rescheduleAppointment({
    required String appointmentId,
    required String newSlotId,
    String? reason,
  }) async {
    return await _apiService.post('/api/appointments/$appointmentId/reschedule', {
      'newSlotId': newSlotId,
      if (reason != null) 'reason': reason,
    });
  }
}