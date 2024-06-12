import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        backgroundColor: colorScheme.surface,
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
                  onTap: (index) {},
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
