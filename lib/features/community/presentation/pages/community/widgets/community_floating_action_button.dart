import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/community/presentation/bloc/community_selector.dart';

class CommunityFloatingActionButton extends StatelessWidget {
  const CommunityFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return CommunityTabIndexSelector(
      builder: (index) {
        return Visibility(
          visible: index != 1,
          replacement: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: FloatingActionButton(
                onPressed: () {},
                shape: const CircleBorder(),
                child: const FaIcon(FontAwesomeIcons.magnifyingGlass),
              ),
            ),
          ),
          child: FloatingActionButton(onPressed: () {
              context.router.push(const CommunityCreatePostRoute());
            },child: FaIcon(FontAwesomeIcons.plus),)
        );
      },
    );
  }
}
