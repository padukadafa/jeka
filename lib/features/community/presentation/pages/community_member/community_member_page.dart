import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';

class CommunityMemberPage extends StatelessWidget {
  const CommunityMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const FaIcon(FontAwesomeIcons.magnifyingGlass),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.surfaceBright,
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReuseableText(
                    "Organizer",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  Column(
                    children: List.generate(
                      4,
                      (index) {
                        return const ListTile(
                          minLeadingWidth: 0,
                          contentPadding: EdgeInsets.all(0),
                          leading: Avatar(
                            size: 35,
                          ),
                          title: Text("Budioan"),
                          trailing: ReuseableText(
                            "Member",
                            fontSize: 14,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.surfaceBright,
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReuseableText(
                    "Member",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  Column(
                    children: List.generate(
                      8,
                      (index) {
                        return const ListTile(
                          leading: Avatar(
                            size: 35,
                          ),
                          title: Text("Budioan"),
                          trailing: ReuseableText(
                            "Member",
                            fontSize: 14,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
