import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/community/presentation/pages/discovery/widgets/discovery_post_item.dart';

class DiscoveryTopPosts extends StatelessWidget {
  const DiscoveryTopPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ReuseableText(
                "Top Posts",
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              ReuseableText("See more"),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              4,
              (index) {
                return DiscoveryPostItem(
                  type: (index % 2 == 0)
                      ? DiscoveryPostItemType.type1
                      : DiscoveryPostItemType.type2,
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
