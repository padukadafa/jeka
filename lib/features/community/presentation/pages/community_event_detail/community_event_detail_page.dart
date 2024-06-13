import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';

@RoutePage()
class CommunityEventDetailPage extends StatelessWidget {
  const CommunityEventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        appBar: ReuseableAppBar(
          context: context,
          showBackButton: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.calendar,
                            color: colorScheme.primary,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const ReuseableText("feb 03 || 3pm"),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const ReuseableText(
                          "Public",
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const ReuseableText(
                        "Focus Group Discussion",
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow,
                    offset: const Offset(0, -2),
                    blurRadius: 2,
                  ),
                ],
                color: colorScheme.surfaceBright,
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Attend"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
