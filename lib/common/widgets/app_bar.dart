import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar ReuseableAppBar({
  required BuildContext context,
  Widget? title,
  bool showBackButton = false,
  Color? backgroundColor,
  List<Widget>? actions,
}) {
  return AppBar(
    leading: showBackButton
        ? IconButton(
            onPressed: () => context.router.maybePop(),
            icon: const FaIcon(FontAwesomeIcons.chevronLeft),
          )
        : null,
    title: title,
    backgroundColor: backgroundColor,
    actions: actions,
  );
}
