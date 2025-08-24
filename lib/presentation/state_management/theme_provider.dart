import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_theme.dart';
import '../../services/local_storage.dart';

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(AppThemes.lightTheme(Colors.orange));

  Future<void> loadTheme() async {
    bool isDark = await LocalStorageService.loadThemeMode();
    String colorHex = await LocalStorageService.loadPrimaryColor();
    Color primaryColor = Color(int.parse(colorHex.replaceFirst("#", "0xff")));

    state = isDark ? AppThemes.darkTheme(primaryColor) : AppThemes.lightTheme(primaryColor);
  }

  void toggleTheme(bool isDark) async {
    await LocalStorageService.saveThemeMode(isDark);
    String colorHex = await LocalStorageService.loadPrimaryColor();
    Color primaryColor = Color(int.parse(colorHex.replaceFirst("#", "0xff")));

    state = isDark ? AppThemes.darkTheme(primaryColor) : AppThemes.lightTheme(primaryColor);
  }

  void updatePrimaryColor(Color newColor) async {
    String hexColor = "#${newColor.value.toRadixString(16).substring(2)}";
    await LocalStorageService.savePrimaryColor(hexColor);
    state = state.brightness == Brightness.dark
        ? AppThemes.darkTheme(newColor)
        : AppThemes.lightTheme(newColor);
  }
}

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier();
});
