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
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    titleTextStyle: GoogleFonts.sourceSans3(
      color: const Color(0xff0b1214),
      fontWeight: FontWeight.w600,
      fontSize: 21,
    ),
    titleSpacing: 0,
  ),
);
