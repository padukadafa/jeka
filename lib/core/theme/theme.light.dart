import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: const Color(0xff6F15F2),
    surface: const Color(0xffF7F4FB),
    onSurface: const Color(0xff0B1215),
    shadow: Colors.black.withOpacity(0.1),
    surfaceBright: const Color(0xffffffff),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    titleTextStyle: GoogleFonts.sourceSans3(
      color: const Color(0xff0b1214),
      fontWeight: FontWeight.w500,
      fontSize: 18,
    ),
    titleSpacing: 0,
  ),
  fontFamily: GoogleFonts.sourceSans3().fontFamily,
  textTheme: GoogleFonts.sourceSans3TextTheme(),
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
      shadowColor: Colors.black.withOpacity(0.1),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      overlayColor: Colors.transparent,
      textStyle: GoogleFonts.sourceSans3(
        color: const Color(0xff6F15F2),
      ),
    ),
  ),
);
