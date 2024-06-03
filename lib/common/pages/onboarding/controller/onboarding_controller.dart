import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/common/pages/onboarding/cubit/cubit/onboarding_cubit.dart';
import 'package:jeka/core/router/app_router.dart';

class OnboardingController {
  final pageController = PageController();

  onPageChange(BuildContext context, int index) {
    context.read<OnboardingCubit>().changePage(index);
  }

  animatedToPage(BuildContext context, index) async {
    await pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    context.read<OnboardingCubit>().changePage(index);
  }

  nextPage(BuildContext context) {
    if (context.read<OnboardingCubit>().state.pageIndex == 2) {
      context.router.replaceAll([const HomeRoute()]);
    } else {
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      context.read<OnboardingCubit>().incrementPage();
    }
  }
}
