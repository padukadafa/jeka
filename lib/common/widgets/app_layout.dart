import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget AppLayout(
  BuildContext context, {
  required Widget child,
  Brightness? brightness,
  Color? surfaceColor,
}) {
  return AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle(
      statusBarColor: surfaceColor ?? Theme.of(context).colorScheme.surface,
      systemNavigationBarColor:
          surfaceColor ?? Theme.of(context).colorScheme.surface,
      statusBarBrightness:
          brightness ?? Theme.of(context).colorScheme.brightness,
      statusBarIconBrightness:
          brightness ?? Theme.of(context).colorScheme.brightness,
    ),
    child: SafeArea(child: child),
  );
}
