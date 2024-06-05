import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTopbar extends StatelessWidget {
  const AuthTopbar({
    super.key,
    required this.size,
    required this.desc,
  });

  final Size size;
  final String desc;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: colorScheme.primary,
      alignment: Alignment.center,
      height: 140,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "JeKa",
            style: GoogleFonts.sora(
              fontWeight: FontWeight.bold,
              color: colorScheme.onPrimary,
              fontSize: 32,
            ),
          ),
          Text(
            desc,
            style: GoogleFonts.sourceSans3(
              fontWeight: FontWeight.w600,
              color: colorScheme.onPrimary,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
