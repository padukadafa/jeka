import 'package:auto_route/auto_route.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/common/pages/onboarding/controller/onboarding_controller.dart';
import 'package:jeka/common/pages/onboarding/cubit/onboarding_cubit.dart';
import 'package:jeka/common/pages/onboarding/widgets/onboarding_action.dart';
import 'package:jeka/common/pages/onboarding/widgets/onboarding_image_section.dart';
import 'package:jeka/common/pages/onboarding/widgets/onboarding_text.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/core/constants.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  final controller = OnboardingController();
  OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: AppLayout(
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
                        .map((onboarding) =>
                            OnboardingImageSection(onboarding.imagePath))
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
                  OnboardingAction(
                    controller: controller,
                    index: state.pageIndex,
                  ),
                  OnboardingText(
                    desc: AppConstants.onBoardings[state.pageIndex].desc,
                    title: AppConstants.onBoardings[state.pageIndex].title,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
