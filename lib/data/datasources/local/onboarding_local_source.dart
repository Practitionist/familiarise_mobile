import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/errors/exceptions.dart';
import '../../../shared/providers/core_providers.dart';
import '../../models/onboarding/onboarding_draft_model.dart';

part 'onboarding_local_source.g.dart';

/// Storage key for onboarding draft
const String _draftKey = 'onboarding_draft';

/// Provider for OnboardingLocalSource
@riverpod
OnboardingLocalSource onboardingLocalSource(Ref ref) {
  return OnboardingLocalSourceImpl(
    ref.watch(sharedPreferencesProvider).requireValue,
  );
}

/// Local data source interface for onboarding draft persistence
abstract class OnboardingLocalSource {
  /// Save onboarding draft
  Future<void> saveDraft(OnboardingDraftModel draft);

  /// Load onboarding draft
  Future<OnboardingDraftModel?> loadDraft();

  /// Clear onboarding draft
  Future<void> clearDraft();

  /// Check if a draft exists
  Future<bool> hasDraft();
}

/// Implementation of OnboardingLocalSource using SharedPreferences
class OnboardingLocalSourceImpl implements OnboardingLocalSource {
  final SharedPreferences _prefs;

  OnboardingLocalSourceImpl(this._prefs);

  @override
  Future<void> saveDraft(OnboardingDraftModel draft) async {
    try {
      final jsonString = jsonEncode(draft.toJson());
      await _prefs.setString(_draftKey, jsonString);
    } catch (e) {
      throw CacheException(message: 'Failed to save onboarding draft: $e');
    }
  }

  @override
  Future<OnboardingDraftModel?> loadDraft() async {
    try {
      final jsonString = _prefs.getString(_draftKey);
      if (jsonString == null) return null;

      final json = jsonDecode(jsonString) as Map<String, dynamic>;
      return OnboardingDraftModel.fromJson(json);
    } catch (e) {
      // If parsing fails, clear the corrupted draft
      await clearDraft();
      return null;
    }
  }

  @override
  Future<void> clearDraft() async {
    try {
      await _prefs.remove(_draftKey);
    } catch (e) {
      throw CacheException(message: 'Failed to clear onboarding draft: $e');
    }
  }

  @override
  Future<bool> hasDraft() async {
    return _prefs.containsKey(_draftKey);
  }
}
