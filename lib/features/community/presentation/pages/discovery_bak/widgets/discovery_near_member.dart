import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/avatars/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';

class DiscoveryNearMember extends StatelessWidget {
  const DiscoveryNearMember({
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
                "Members Near Your",
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
              8,
              (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  child: const Avatar(
                    size: 50,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
