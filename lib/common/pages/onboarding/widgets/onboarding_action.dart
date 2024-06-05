import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/pages/onboarding/controller/onboarding_controller.dart';
import 'package:jeka/core/router/app_router.dart';

class OnboardingAction extends StatelessWidget {
  const OnboardingAction({
    super.key,
    required this.controller,
    required this.index,
  });

  final OnboardingController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (index == 2) {
      return Align(
        alignment: const Alignment(0, 1),
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          child: SizedBox(
            width: width,
            child: ElevatedButton(
              onPressed: () {
                context.router.replaceAll([LoginRoute()]);
              },
              child: const Text("Get Started"),
            ),
          ),
        ),
      );
    }
    return Align(
      alignment: const Alignment(0, 1),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width * 0.3,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    foregroundColor: Theme.of(context).colorScheme.onSurface),
                onPressed: () {
                  controller.animatedToPage(context, 2);
                },
                child: const Text("Skip"),
              ),
            ),
            SizedBox(
              width: width * 0.6,
              child: ElevatedButton(
                onPressed: () {
                  controller.nextPage(context);
                },
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
