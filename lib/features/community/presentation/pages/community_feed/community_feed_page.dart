import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/features/community/presentation/pages/community_feed/widgets/community_feed_item.dart';

class CommunityFeedPage extends StatelessWidget {
  const CommunityFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Column(
                children: List.generate(
                  4,
                  (index) {
                    return const CommunityFeedItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
