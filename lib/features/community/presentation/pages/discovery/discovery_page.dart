import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/features/community/presentation/pages/discovery/widgets/discovery_community_this_month.dart';
import 'package:jeka/features/community/presentation/pages/discovery/widgets/discovery_near_member.dart';
import 'package:jeka/features/community/presentation/pages/discovery/widgets/discovery_top_post.dart';
import 'package:jeka/features/community/presentation/pages/discovery/widgets/discovery_upcoming_event.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            DiscoveryTopPosts(),
            DiscoveryCommunityThisMonth(),
            DiscoveryNearMember(),
            DiscoveryUpcomingEvent(),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
