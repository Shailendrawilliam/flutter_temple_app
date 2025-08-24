import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../services/api_service.dart';
import '../../services/local_storage.dart';

class LanguageNotifier extends StateNotifier<Locale> {
  LanguageNotifier() : super(const Locale('en'));

  Future<void> loadLanguage() async {
    String langCode = await LocalStorageService.loadLanguage();
    await _loadLanguageContent(langCode);
    state = Locale(langCode);
  }

  Future<void> _loadLanguageContent(String langCode) async {
    try {
      final languageContent = await ApiService.fetchLanguageContent(langCode);
      await LocalStorageService.saveLanguageContent(languageContent); // Store it for offline
    } catch (e) {
      print("Failed to load language content from API: $e");
    }
  }

  void updateLanguage(String langCode) async {
    state = Locale(langCode);
    await LocalStorageService.saveLanguage(langCode);
    await _loadLanguageContent(langCode);
  }
}

final languageProvider = StateNotifierProvider<LanguageNotifier, Locale>((ref) {
  return LanguageNotifier();
});
