import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/enums.dart';

part 'preferences_data.freezed.dart';
part 'preferences_data.g.dart';

/// Consultee preferences collected in Step 2
@freezed
class PreferencesData with _$PreferencesData {
  const factory PreferencesData({
    /// Preferred method of consultation
    @Default(CommunicationMethod.video)
    CommunicationMethod preferredCommunicationMethod,

    /// Preferred language for consultations
    String? preferredLanguage,

    /// Budget preference for consultations
    BudgetPreference? budgetPreference,
  }) = _PreferencesData;

  const PreferencesData._();

  factory PreferencesData.fromJson(Map<String, dynamic> json) =>
      _$PreferencesDataFromJson(json);

  /// Preferences are always valid (all have defaults or are optional)
  bool get isValid => true;
}
