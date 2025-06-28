import 'package:flutter/material.dart';
import '../models/consultant_profile.dart';
import '../models/consultation_plan.dart';
import '../models/domain.dart';
import '../models/appointment.dart';

class AppStateProvider extends ChangeNotifier {
  String _selectedDomainId = '';
  String _selectedRegion = '';
  List<Domain> _domains = [];
  List<ConsultantProfile> _consultants = [];
  List<ConsultationPlan> _consultationPlans = [];
  List<Appointment> _appointments = [];
  bool _isLoading = false;

  String get selectedDomainId => _selectedDomainId;
  String get selectedRegion => _selectedRegion;
  List<Domain> get domains => _domains;
  List<ConsultantProfile> get consultants => _consultants;
  List<ConsultationPlan> get consultationPlans => _consultationPlans;
  List<Appointment> get appointments => _appointments;
  bool get isLoading => _isLoading;

  Domain? get selectedDomain {
    if (_selectedDomainId.isEmpty) return null;
    try {
      return _domains.firstWhere((domain) => domain.id == _selectedDomainId);
    } catch (e) {
      return null;
    }
  }

  List<ConsultantProfile> get filteredConsultants {
    if (_selectedDomainId.isEmpty) return _consultants;
    return _consultants.where((consultant) => consultant.domainId == _selectedDomainId).toList();
  }

  void setSelectedDomain(String domainId) {
    _selectedDomainId = domainId;
    notifyListeners();
  }

  void setSelectedRegion(String region) {
    _selectedRegion = region;
    notifyListeners();
  }

  void setDomains(List<Domain> domains) {
    _domains = domains;
    if (domains.isNotEmpty && _selectedDomainId.isEmpty) {
      _selectedDomainId = domains.first.id;
    }
    notifyListeners();
  }

  void setConsultants(List<ConsultantProfile> consultants) {
    _consultants = consultants;
    notifyListeners();
  }

  void setConsultationPlans(List<ConsultationPlan> plans) {
    _consultationPlans = plans;
    notifyListeners();
  }

  void setAppointments(List<Appointment> appointments) {
    _appointments = appointments;
    notifyListeners();
  }

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  ConsultantProfile? getConsultantById(String id) {
    try {
      return _consultants.firstWhere((consultant) => consultant.id == id);
    } catch (e) {
      return null;
    }
  }

  List<ConsultationPlan> getConsultationPlansForConsultant(String consultantId) {
    return _consultationPlans
        .where((plan) => plan.consultantProfileId == consultantId)
        .toList();
  }

  ConsultationPlan? getConsultationPlanById(String id) {
    try {
      return _consultationPlans.firstWhere((plan) => plan.id == id);
    } catch (e) {
      return null;
    }
  }
}