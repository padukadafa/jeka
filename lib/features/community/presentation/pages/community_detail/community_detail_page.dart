import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/presentation/pages/community_detail/widgets/community_upcoming_event.dart';

@RoutePage()
class CommunityDetailPage extends StatelessWidget {
  final Community community;
  const CommunityDetailPage({
    super.key,
    required this.community,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        backgroundColor: colorScheme.surface,
        appBar: ReuseableAppBar(
          context: context,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                  children: [
                    Row(
                      children: [
                        Avatar(
                          url: community.logo,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReuseableText(
                              community.name,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.earthAsia,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                ReuseableText("Public"),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: ["Literacy", "Valunteer"].map(
                        (f) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 2,
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              color: colorScheme.primary,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: ReuseableText(
                              f,
                              color: colorScheme.onPrimary,
                            ),
                          );
                        },
                      ).toList(),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.locationDot,
                              size: 16,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            ReuseableText("Bandar Lampung"),
                          ],
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.instagram,
                              size: 16,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            ReuseableText("rumah_baca_babe_inyoel"),
                          ],
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.xTwitter,
                              size: 16,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            ReuseableText("rumah_baca_babe_inyoel"),
                          ],
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.user,
                              size: 16,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            ReuseableText("125 members"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseableText(
                      "About Community",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ReuseableText("""
Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
"""),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
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
                    const CommunityUpcomingEvent(),
                    const SizedBox(
                      height: 12,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ListTile(
                      title: const Text("Members"),
                      leading: Container(
                        height: 40,
                        width: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.orange,
                          boxShadow: [
                            BoxShadow(
                              color: colorScheme.shadow,
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: const FaIcon(
                          FontAwesomeIcons.user,
                          size: 19,
                          color: Colors.white,
                        ),
                      ),
                      trailing: const ReuseableText(
                        "128",
                        fontSize: 16,
                      ),
                    ),
                    ListTile(
                      title: const Text("Events"),
                      leading: Container(
                        height: 40,
                        width: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: colorScheme.shadow,
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: const FaIcon(
                          FontAwesomeIcons.calendarCheck,
                          size: 19,
                          color: Colors.white,
                        ),
                      ),
                      trailing: const ReuseableText(
                        "14",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
