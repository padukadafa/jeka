import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/posts/data/models/post.dart';

enum DiscoveryPostItemType {
  type1,
  type2,
}

class DiscoveryPostItem extends StatelessWidget {
  final DiscoveryPostItemType type;
  final Post post;
  const DiscoveryPostItem({
    super.key,
    required this.post,
    this.type = DiscoveryPostItemType.type1,
  });
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    if (type == DiscoveryPostItemType.type2) {
      return GestureDetector(
        onTap: () {
          context.router.push(PostDetailRoute(post: post));
        },
        child: CachedNetworkImage(
          imageUrl: post.image,
          imageBuilder: (context, imageProvider) {
            return Container(
              width: 220,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colorScheme.onSurface,
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow,
                    blurRadius: 4,
                  ),
                ],
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.2),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Column(
                        children: [
                          ReuseableText(
                            post.title,
                            fontWeight: FontWeight.bold,
                            height: 0,
                            color: Colors.white,
                          ),
                          const ReuseableText(
                            "As you engage with other members here in the app, you....",
                            fontWeight: FontWeight.w300,
                            height: 0,
                            color: Colors.white,
                          ),
                          Row(
                            children: [
                              Avatar(
                                size: 21,
                                url: post.creator.imageProfileUrl,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              ReuseableText(
                                post.creator.name ?? "",
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          errorWidget: (context, url, error) {
            return Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                color: colorScheme.surfaceBright,
              ),
            );
          },
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        context.router.push(PostDetailRoute(post: post));
      },
      child: Container(
        width: 220,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
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
            CachedNetworkImage(
              imageUrl: post.image,
              imageBuilder: (context, imageProvider) {
                return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              errorWidget: (context, url, error) {
                return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: colorScheme.surfaceBright,
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  const ReuseableText(
                    "Tips for navigating This Community",
                    fontWeight: FontWeight.bold,
                    height: 0,
                  ),
                  const ReuseableText(
                    "As you engage with other members here in the app, you....",
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                  Row(
                    children: [
                      Avatar(
                        size: 21,
                        url: post.creator.imageProfileUrl,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ReuseableText(post.creator.name ?? ""),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
