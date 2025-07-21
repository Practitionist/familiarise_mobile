import 'package:supabase_flutter/supabase_flutter.dart';

class AppointmentService {
  static final AppointmentService _instance = AppointmentService._internal();
  factory AppointmentService() => _instance;
  AppointmentService._internal();

  SupabaseClient get _client => Supabase.instance.client;

  Future<List<Map<String, dynamic>>> getAppointments({
    String? status,
    String? consultantId,
    int? limit,
    int? offset,
  }) async {
    var query = _client.from('appointments').select();
    
    // Add filters if provided
    // Note: You'll need to adjust these field names based on your actual schema
    
    final result = await query;
    return List<Map<String, dynamic>>.from(result);
  }

  Future<Map<String, dynamic>?> getAppointmentById(String appointmentId) async {
    final result = await _client
        .from('appointments')
        .select()
        .eq('id', appointmentId)
        .maybeSingle();
    
    return result;
  }

  Future<Map<String, dynamic>> createAppointment({
    required String consultantId,
    required String slotId,
    required String planId,
    String? notes,
  }) async {
    final result = await _client.from('appointments').insert({
      'consultantId': consultantId,
      'slotId': slotId,
      'planId': planId,
      if (notes != null) 'notes': notes,
    }).select().single();
    
    return result;
  }

  Future<Map<String, dynamic>> cancelAppointment(String appointmentId, {String? reason}) async {
    final result = await _client
        .from('appointments')
        .update({
          'status': 'CANCELLED',
          if (reason != null) 'cancellationReason': reason,
        })
        .eq('id', appointmentId)
        .select()
        .single();
        
    return result;
  }

  Future<Map<String, dynamic>> rescheduleAppointment({
    required String appointmentId,
    required String newSlotId,
    String? reason,
  }) async {
    final result = await _client
        .from('appointments')
        .update({
          'slotId': newSlotId,
          'status': 'RESCHEDULED',
          if (reason != null) 'rescheduleReason': reason,
        })
        .eq('id', appointmentId)
        .select()
        .single();
        
    return result;
  }
}