import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/common/widgets/reuseable_text_form.dart';

@RoutePage()
class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      surfaceColor: colorScheme.primary,
      brightness: Brightness.light,
      child: Scaffold(
        backgroundColor: colorScheme.surface,
        appBar: AppBar(
          backgroundColor: colorScheme.primary,
          leading: IconButton(
            onPressed: () {
              context.router.maybePop();
            },
            icon: FaIcon(
              FontAwesomeIcons.chevronLeft,
              color: colorScheme.onPrimary,
            ),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Avatar(
                size: 35,
              ),
              const SizedBox(
                width: 8,
              ),
              ReuseableText(
                "Dave",
                color: colorScheme.onPrimary,
                fontSize: 21,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.ellipsisVertical,
                color: colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container();
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: colorScheme.surfaceBright,
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow,
                    blurRadius: 2,
                    offset: const Offset(0, -2),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableTextForm(hintText: "Type message..."),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.solidPaperPlane,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
