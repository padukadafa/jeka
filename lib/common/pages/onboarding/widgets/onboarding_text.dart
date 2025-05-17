import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingText extends StatelessWidget {
  const OnboardingText({
    super.key,
    required this.desc,
    required this.title,
  });
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 470),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.sourceSans3(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            desc,
            style: GoogleFonts.sourceSans3(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
