import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/avatars/avatar.dart';
import 'package:jeka/core/router/app_router.dart';

class UserBackground extends StatelessWidget {
  const UserBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 185,
      width: size.width,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.all(12),
            width: size.width,
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/profile_bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            // child: GestureDetector(
            //   onTap: () {
            //     context.router.push(const SettingsRoute());
            //   },
            //   child: Container(
            //     padding: const EdgeInsets.all(8),
            //     decoration: BoxDecoration(
            //       color: colorScheme.primary,
            //       shape: BoxShape.circle,
            //       boxShadow: [
            //         BoxShadow(color: colorScheme.shadow),
            //       ],
            //     ),
            //     child: FaIcon(
            //       FontAwesomeIcons.gear,
            //       color: colorScheme.onPrimary,
            //       size: 18,
            //     ),
            //   ),
            // ),
          ),
          const Align(
            alignment: Alignment(-0.95, 1),
            child: Avatar(
              size: 80,
            ),
          ),
        ],
      ),
    );
  }
}
