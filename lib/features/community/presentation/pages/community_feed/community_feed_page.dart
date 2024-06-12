import 'package:flutter/material.dart';
import 'package:jeka/features/community/presentation/pages/community_feed/widgets/community_feed_item.dart';

class CommunityFeedPage extends StatelessWidget {
  const CommunityFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Create Feed"),
                    ),
                  ),
                ],
              ),
              Column(
                children: List.generate(
                  4,
                  (index) {
                    return const CommunityFeedItem();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
