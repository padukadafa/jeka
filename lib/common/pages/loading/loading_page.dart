import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/pages/loading/controller/loading_controller.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

@RoutePage()
class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  late LoadingController controller;
  @override
  void initState() {
    super.initState();
    controller = LoadingController();
    controller.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
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
