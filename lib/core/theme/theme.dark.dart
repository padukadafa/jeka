import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surfaceBright: Color(0xff121212),
    onPrimary: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: const Color(0xff6F15F2),
      textStyle: const TextStyle(fontSize: 16, color: Color(0xffF7F4FB)),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      foregroundColor: const Color(0xffF7F4FB),
      overlayColor: Colors.white.withOpacity(0.2),
    ),
  ),
);
