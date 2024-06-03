import 'package:auto_route/auto_route.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeka/common/pages/onboarding/controller/onboarding_controller.dart';
import 'package:jeka/common/pages/onboarding/cubit/cubit/onboarding_cubit.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/core/constants.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  final controller = OnboardingController();
  OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: AppLayout(
        context,
        surfaceColor: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Theme.of(context).colorScheme.surface,
        brightness: Theme.of(context).brightness == Brightness.light
            ? Brightness.dark
            : Brightness.light,
        child: Scaffold(
          body: BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              return Stack(
                children: [
                  PageView(
                    controller: controller.pageController,
                    onPageChanged: (index) =>
                        controller.onPageChange(context, index),
                    physics: const NeverScrollableScrollPhysics(),
                    children: AppConstants.onBoardings
                        .map((onboarding) => ImageSection(onboarding.imagePath))
                        .toList(),
                  ),
                  Align(
                    alignment: const Alignment(0, 0),
                    child: DotsIndicator(
                      dotsCount: 3,
                      position: state.pageIndex,
                      onTap: (index) {
                        controller.animatedToPage(context, index);
                      },
                      decorator: DotsDecorator(
                        activeSize: const Size(28, 12),
                        activeColor: Theme.of(context).colorScheme.primary,
                        color: Colors.grey,
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Align(
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
                                  backgroundColor:
                                      Theme.of(context).colorScheme.surface,
                                  foregroundColor:
                                      Theme.of(context).colorScheme.onSurface),
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
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 15, right: 15, top: 470),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          AppConstants.onBoardings[state.pageIndex].title,
                          style: GoogleFonts.sourceSans3(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          AppConstants.onBoardings[state.pageIndex].desc,
                          style: GoogleFonts.sourceSans3(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  final String imagePath;
  const ImageSection(
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
