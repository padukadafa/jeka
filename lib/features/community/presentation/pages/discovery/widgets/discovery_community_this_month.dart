import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';

class DiscoveryCommunityThisMonth extends StatelessWidget {
  const DiscoveryCommunityThisMonth({
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
                "Community This Month",
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
              6,
              (index) {
                return GestureDetector(
                  onTap: () {
                    context.router.push(const CommunityDetailRoute());
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: const Column(
                      children: [
                        Avatar(),
                        SizedBox(
                          height: 6,
                        ),
                        ReuseableText("Rise World"),
                      ],
                    ),
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
