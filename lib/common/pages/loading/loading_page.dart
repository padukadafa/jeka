import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/blocs/bloc/settings_selector.dart';
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
      if (context.mounted) {
        context.router.replaceAll([const LoadingRoute()]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SettingsThemeSelector(builder: (theme) {
              return Image.asset(
                theme == ThemeMode.light
                    ? "assets/icons/logo_light.png"
                    : "assets/icons/logo_dark.png",
                width: 200,
              );
            }),
            LoadingAnimationWidget.prograssiveDots(
              color: Theme.of(context).colorScheme.primary,
              size: 60,
            ),
          ],
        ),
      ),
    );
  }
}
