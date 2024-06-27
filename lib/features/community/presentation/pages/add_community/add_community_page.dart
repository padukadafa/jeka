import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/constants.dart';

@RoutePage()
class AddCommunityPage extends StatelessWidget {
  const AddCommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.router.maybePop();
                  },
                  icon: const FaIcon(FontAwesomeIcons.chevronLeft),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    margin: const EdgeInsets.only(right: 24),
                    padding: const EdgeInsets.only(left: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: colorScheme.shadow),
                      color: colorScheme.surfaceBright,
                    ),
                    child: const ReuseableText(
                      "Search Community",
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 16,
                top: 16,
              ),
              alignment: Alignment.centerLeft,
              child: const Text("Your recent search"),
            ),
            Column(
              children: List.generate(
                4,
                (index) {
                  return ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.clockRotateLeft,
                      size: 21,
                      color: colorScheme.shadow,
                    ),
                    title: const ReuseableText(
                      "Something",
                      fontSize: 14,
                    ),
                  );
                },
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: AppConstants.communityTypes.map(
                  (type) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: colorScheme.shadow),
                        ),
                        child: Text(type),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 16,
                top: 16,
              ),
              alignment: Alignment.centerLeft,
              child: const Text("New Community"),
            ),
          ],
        ),
      ),
    );
  }
}
