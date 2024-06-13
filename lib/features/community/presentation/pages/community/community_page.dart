import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart';
import 'package:jeka/features/community/presentation/bloc/community_selector.dart';
import 'package:jeka/features/community/presentation/pages/community_event/community_event_page.dart';
import 'package:jeka/features/community/presentation/pages/community_feed/community_feed_page.dart';
import 'package:jeka/features/community/presentation/pages/community_member/community_member_page.dart';
import 'package:jeka/features/community/presentation/pages/discovery/discovery_page.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CommunityPage extends StatefulWidget {
  final void Function() onOpenDrawer;
  const CommunityPage({
    super.key,
    required this.onOpenDrawer,
  });

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);

    super.initState();
    tabController.addListener(() {
      context
          .read<CommunityBloc>()
          .add(ChangeCommunityTab(tabController.index));
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AppLayout(
      child: Scaffold(
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton: const CommunityFloatingActionButton(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                leading: IconButton(
                  onPressed: () {
                    widget.onOpenDrawer();
                  },
                  icon: const FaIcon(FontAwesomeIcons.barsStaggered),
                ),
                backgroundColor: colorScheme.surfaceBright,
                surfaceTintColor: colorScheme.surfaceBright,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: CurrentCommunitySelector(builder: (community) {
                    return Skeletonizer(
                      enabled: community == null,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Avatar(
                              size: 80,
                              url: community?.logo,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: ReuseableText(
                                community?.name ??
                                    "Loading Community Name.....",
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                pinned: true,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
                  ),
                ],
                bottom: TabBar(
                  controller: tabController,
                  tabs: const [
                    Tab(
                      text: "Discovery",
                    ),
                    Tab(
                      text: "Feed",
                    ),
                    Tab(
                      text: "Event",
                    ),
                    Tab(
                      text: "Members",
                    ),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: [
              DiscoveryPage(),
              CommunityFeedPage(),
              CommunityEventPage(),
              CommunityMemberPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class CommunityFloatingActionButton extends StatelessWidget {
  const CommunityFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return CommunityTabIndexSelector(builder: (index) {
      return Visibility(
        visible: index != 3,
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
                "Create Post",
                color: colorScheme.onSurface,
              ),
              heroTag: "Create Post",
              backgroundColor: colorScheme.surfaceBright,
              onPressed: () {
                context.router.push(const CreatePostRoute());
              },
            ),
            FloatingActionButton.extended(
              label: ReuseableText(
                "Create Feed",
                color: colorScheme.onSurface,
              ),
              heroTag: "Create feed",
              backgroundColor: colorScheme.surfaceBright,
              onPressed: () {
                context.router.push(const CommunityCreateFeedRoute());
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
    });
  }
}
