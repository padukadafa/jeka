import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

@RoutePage()
class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.scheduleFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      context.router.replaceAll([OnBoardingRoute()]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      context,
      surfaceColor: Theme.of(context).brightness == Brightness.light
          ? Colors.white
          : Theme.of(context).colorScheme.surface,
      brightness: Theme.of(context).brightness == Brightness.light
          ? Brightness.dark
          : Brightness.light,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Theme.of(context).brightness == Brightness.light
                    ? "assets/icons/logo_light.png"
                    : "assets/icons/logo_dark.png",
                width: 200,
              ),
              LoadingAnimationWidget.prograssiveDots(
                color: Theme.of(context).colorScheme.primary,
                size: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
