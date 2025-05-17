import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_selector.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserFirstDetail extends StatelessWidget {
  const UserFirstDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colorScheme.surfaceBright,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow,
            blurRadius: 4,
          ),
        ],
      ),
      child: UserAuthSelector(
        builder: (user) {
          return Skeletonizer(
            enabled: user == null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReuseableText(
                  user?.name ?? "",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                ReuseableText(
                  user?.email ?? "",
                  fontWeight: FontWeight.w500,
                ),
                ReuseableText(
                  user?.job ?? "Set on edit profile",
                  color: colorScheme.onSurface,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          context.router.push(EditUserRoute());
                        },
                        label: ReuseableText(
                          "Edit Profile",
                          fontSize: 14,
                          color: colorScheme.onPrimary,
                        ),
                        icon: const FaIcon(
                          FontAwesomeIcons.pen,
                          size: 14,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Share.share(
                              'Hi, i have to join JeKa. https://www.jeka.com');
                        },
                        label: ReuseableText(
                          "Share",
                          fontSize: 14,
                          color: colorScheme.onPrimary,
                        ),
                        icon: const FaIcon(
                          FontAwesomeIcons.share,
                          size: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
