import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    colorScheme: const ColorScheme.dark(
      primary: Colors.deepPurple,
      secondary: Colors.deepPurpleAccent,

      surface: Color(0xff1e1e1e),

      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
    ),

    scaffoldBackgroundColor: const Color(0xFF121212),

    cardTheme: const CardThemeData(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: Color(0xFF1E1E1E),
    ),
  );
}
