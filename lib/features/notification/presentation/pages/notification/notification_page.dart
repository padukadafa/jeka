import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';

class Notificationpage extends StatelessWidget {
  final void Function() onOpenDrawer;
  const Notificationpage({super.key, required this.onOpenDrawer});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Scaffold(
        appBar: AppBar(
          title: const ReuseableText(
            "Notifications",
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
        ),
        body: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const FaIcon(
                  FontAwesomeIcons.solidBell,
                  color: Colors.blue,
                ),
              ),
              title: const ReuseableText(
                "Sokola Pelangi want to Collaborate",
                fontWeight: FontWeight.bold,
              ),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ReuseableText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus efficitur enim sed nibh fringilla, ac blandit nisl elementum. Phasellus iaculis volutpat mi et iaculis",
                  ),
                  ReuseableText(
                    "12 june",
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
