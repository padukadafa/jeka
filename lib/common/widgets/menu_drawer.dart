import 'package:auto_route/auto_route.dart';
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_selector.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Drawer(
      backgroundColor: colorScheme.surfaceBright,
      shape: const RoundedRectangleBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            UserAuthSelector(
              builder: (user) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Avatar(),
                    const SizedBox(
                      height: 24,
                    ),
                    Skeletonizer(
                      enabled: user == null,
                      child: ReuseableText(
                        user?.name ?? "",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                );
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ExpansionTileGroup(
              children: [
                ExpansionTileItem(
                  childrenPadding: const EdgeInsets.all(0),
                  isHasTopBorder: false,
                  isHasBottomBorder: false,
                  leading: const Avatar(
                    size: 26,
                  ),
                  tilePadding: const EdgeInsets.all(4),
                  title: const Text("Humanit"),
                  children: [
                    ...List.generate(
                      2,
                      (index) {
                        return ListTile(
                          onTap: () {},
                          contentPadding: const EdgeInsets.all(4),
                          minTileHeight: 0,
                          leading: const Avatar(
                            size: 26,
                          ),
                          title: const Text("Humanit"),
                        );
                      },
                    ),
                    ListTile(
                      onTap: () {},
                      contentPadding: const EdgeInsets.all(4),
                      minTileHeight: 0,
                      leading: Container(
                        alignment: Alignment.center,
                        width: 26,
                        child: const FaIcon(
                          FontAwesomeIcons.plus,
                          size: 21,
                        ),
                      ),
                      title: const Text("Add Community"),
                    ),
                    ListTile(
                      onTap: () {},
                      contentPadding: const EdgeInsets.all(4),
                      minTileHeight: 0,
                      leading: Container(
                        alignment: Alignment.center,
                        width: 26,
                        child: const FaIcon(
                          FontAwesomeIcons.plus,
                        ),
                      ),
                      title: const Text("Create Community"),
                    ),
                  ],
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.all(4),
              minTileHeight: 0,
              leading: Container(
                alignment: Alignment.center,
                width: 26,
                child: const FaIcon(
                  FontAwesomeIcons.solidUser,
                  size: 21,
                ),
              ),
              title: const Text("My Profile"),
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.all(4),
              minTileHeight: 0,
              leading: Container(
                alignment: Alignment.center,
                width: 26,
                child: const FaIcon(
                  FontAwesomeIcons.solidBookmark,
                  size: 21,
                ),
              ),
              title: const Text("Saved"),
            ),
            ListTile(
              onTap: () {
                context.router.push(const SettingsRoute());
              },
              contentPadding: const EdgeInsets.all(4),
              minTileHeight: 0,
              leading: Container(
                alignment: Alignment.center,
                width: 26,
                child: const FaIcon(
                  FontAwesomeIcons.gear,
                  size: 21,
                ),
              ),
              title: const Text("Settings"),
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.all(4),
              minTileHeight: 0,
              leading: Container(
                alignment: Alignment.center,
                width: 26,
                child: const FaIcon(
                  FontAwesomeIcons.share,
                  size: 18,
                ),
              ),
              title: const Text("Share"),
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.all(4),
              minTileHeight: 0,
              leading: Container(
                alignment: Alignment.center,
                width: 26,
                child: const FaIcon(
                  FontAwesomeIcons.circleInfo,
                  size: 21,
                ),
              ),
              title: const Text("About JeKa"),
            ),
          ],
        ),
      ),
    );
  }
}
