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
          visible: index != 2,
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
          child: ExpandableFab(
            openButtonBuilder: RotateFloatingActionButtonBuilder(
              child: const FaIcon(FontAwesomeIcons.plus),
              fabSize: ExpandableFabSize.regular,
              foregroundColor: colorScheme.onPrimary,
              backgroundColor: colorScheme.primary,
              shape: const CircleBorder(),
              heroTag: "open",
            ),
            closeButtonBuilder: RotateFloatingActionButtonBuilder(
              child: const Icon(Icons.close),
              fabSize: ExpandableFabSize.regular,
              foregroundColor: colorScheme.onPrimary,
              backgroundColor: colorScheme.primary,
              shape: const CircleBorder(),
              heroTag: "close",
            ),
            type: ExpandableFabType.up,
            distance: 70,
            children: [
              FloatingActionButton.extended(
                label: ReuseableText(
                  "Create post",
                  color: colorScheme.onSurface,
                ),
                heroTag: "Create post",
                backgroundColor: colorScheme.surfaceBright,
                onPressed: () {
                  context.router.push(const CommunityCreatePostRoute());
                },
              ),
              FloatingActionButton.extended(
                label: ReuseableText(
                  "Create Event",
                  color: colorScheme.onSurface,
                ),
                heroTag: "create event",
                backgroundColor: colorScheme.surfaceBright,
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
