import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';

class CommunityFeedItem extends StatelessWidget {
  const CommunityFeedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        context.router.push(const CommunityFeedDetailRoute());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: colorScheme.surfaceBright,
          boxShadow: [
            BoxShadow(
              color: colorScheme.shadow,
              blurRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidLightbulb,
                    size: 16,
                    color: colorScheme.primary,
                  ),
                  ReuseableText(
                    "Announcement",
                    color: colorScheme.primary,
                  ),
                ],
              ),
            ),
            Divider(
              color: colorScheme.surface,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Avatar(
                            size: 35,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          ReuseableText("Lucas Bradly"),
                        ],
                      ),
                      ReuseableText("08:13 am"),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const ReuseableText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin id lacinia nisi. Sed scelerisque ultricies malesuada. Nunc sagittis blandit eros, a imperdiet elit mollis vel. Aenean a viverra risus. Nam scelerisque eu nisl sit amet rutrum. Nunc iaculis vehicula ipsum in dignissim. Aliquam finibus nibh vitae ipsum egestas aliquet. Aenean non lorem mi. Sed vitae",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceBright,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.shadow,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidFilePdf,
                          color: Colors.red,
                          size: 18,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        ReuseableText("Pitch deck.pdf"),
                        SizedBox(
                          width: 6,
                        ),
                        ReuseableText("Uploaded"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceBright,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: colorScheme.shadow,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: const Row(
                          children: [
                            ReuseableText("12"),
                            SizedBox(
                              width: 4,
                            ),
                            FaIcon(
                              FontAwesomeIcons.solidFaceSurprise,
                              size: 16,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            ReuseableText("12"),
                            SizedBox(
                              width: 4,
                            ),
                            FaIcon(
                              FontAwesomeIcons.solidFaceLaugh,
                              size: 16,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const ReuseableText("4 comments"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
