import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';

class CommunityPage extends StatelessWidget {
  final void Function() onOpenDrawer;
  const CommunityPage({
    super.key,
    required this.onOpenDrawer,
  });

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              onOpenDrawer();
            },
            icon: const FaIcon(FontAwesomeIcons.barsStaggered),
          ),
        ),
      ),
    );
  }
}
