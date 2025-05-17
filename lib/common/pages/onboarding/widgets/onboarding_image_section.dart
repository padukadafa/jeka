import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingImageSection extends StatelessWidget {
  final String imagePath;
  const OnboardingImageSection(
    this.imagePath, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 120,
        ),
        SvgPicture.asset(imagePath),
      ],
    );
  }
}
