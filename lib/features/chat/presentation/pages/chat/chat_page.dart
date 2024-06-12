import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';

class ChatPage extends StatelessWidget {
  final void Function() onOpenDrawer;

  const ChatPage({
    super.key,
    required this.onOpenDrawer,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      brightness: Brightness.light,
      child: Scaffold(
        appBar: AppBar(
          title: const ReuseableText(
            "Chat",
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              onOpenDrawer();
            },
            icon: const FaIcon(
              FontAwesomeIcons.barsStaggered,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.circlePlus,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          10,
                          (index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              child: const Avatar(
                                size: 50,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(
                  4,
                  (index) {
                    return ListTile(
                      onTap: () {
                        context.router.push(const ChatDetailRoute());
                      },
                      leading: const Avatar(
                        size: 45,
                      ),
                      title: const Text("Dave"),
                      subtitle: const Text("How are you david?"),
                      trailing: const ReuseableText("21 July"),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
