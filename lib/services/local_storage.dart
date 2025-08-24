import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static Future<void> saveThemeMode(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('themeMode', isDarkMode);
  }

  static Future<bool> loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('themeMode') ?? false;  // Default: Light Mode
  }

  static Future<void> savePrimaryColor(String color) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('primaryColor', color);
  }

  static Future<String> loadPrimaryColor() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('primaryColor') ?? "#FFA500"; // Default: Orange
  }

  static Future<void> saveFontSize(double fontSize) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setDouble('fontSize', fontSize);
  }

  static Future<double> loadFontSize() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getDouble('fontSize') ?? 16.0;  // Default: 16

  }

  static Future<void> saveLanguageContent(Map<String, dynamic> content) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageContent', json.encode(content));
  }

  static Future<Map<String, dynamic>> loadLanguageContent() async {
    final prefs = await SharedPreferences.getInstance();
    String? content = prefs.getString('languageContent');
    return content != null ? json.decode(content) : {};
  }

  static Future<void> saveLanguage(String langCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', langCode);
  }

  static Future<String> loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('language') ?? 'en'; // Default: English
  }
}
