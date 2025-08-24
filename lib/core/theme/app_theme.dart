 import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme(Color primaryColor) {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }

  static ThemeData darkTheme(Color primaryColor) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}
