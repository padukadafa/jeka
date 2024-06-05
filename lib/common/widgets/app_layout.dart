import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLayout extends StatelessWidget {
  final Widget child;
  final Brightness? brightness;
  final Color? surfaceColor;
  const AppLayout(
      {super.key, required this.child, this.brightness, this.surfaceColor});

  @override
  Widget build(BuildContext context) {
    final statusBrightness = brightness ??
        (Theme.of(context).brightness == Brightness.light
            ? Brightness.dark
            : Brightness.light);
    final surface = surfaceColor ??
        (Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Theme.of(context).colorScheme.surface);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: surface,
        systemNavigationBarColor: Theme.of(context).colorScheme.surface,
        statusBarBrightness: statusBrightness,
        statusBarIconBrightness: statusBrightness,
      ),
      child: SafeArea(child: child),
    );
  }
}
