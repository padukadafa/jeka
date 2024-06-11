import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/community/presentation/pages/discovery/discovery_page.dart';

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          child: const FaIcon(FontAwesomeIcons.plus),
        ),
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
                expandedHeight: 200,
                flexibleSpace: const FlexibleSpaceBar(
                  background: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Avatar(
                          size: 80,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: ReuseableText(
                            "Rumah Baca Babe Inyoel",
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                      text: "Members",
                    ),
                    Tab(
                      text: "Feed",
                    ),
                    Tab(
                      text: "Event",
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
              DiscoveryPage(),
              DiscoveryPage(),
              DiscoveryPage(),
            ],
          ),
        ),
      ),
    );
  }
}
