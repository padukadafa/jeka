import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:jeka/common/widgets/avatars/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/community/data/models/post.dart';
import 'package:jeka/features/community/presentation/widgets/post_attachment_widget.dart';
import 'package:jeka/features/community/presentation/widgets/post_item_type.dart';
import 'package:jeka/features/community/presentation/widgets/post_reaction_widget.dart';

class CommunityFeedItem extends StatelessWidget {
  final Post post;
  const CommunityFeedItem({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    if (post.postType == 2) {
      return GestureDetector(
        onTap: () {
          context.router.push(CommunityFeedDetailRoute(post: post));
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
              PostItemType(
                type: post.postType,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PostAttachmentWidget(
                      postFiles: post.files,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        PostReactionWidget(
                          reactions: post.postReactions,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        ReuseableText("${post.comments.length} comments"),
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
    return GestureDetector(
      onTap: () {
        context.router.push(CommunityFeedDetailRoute(post: post));
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
            PostItemType(
              type: post.postType,
            ),
            Divider(
              color: colorScheme.surface,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                          ReuseableText(post.writer ?? ""),
                        ],
                      ),
                      ReuseableText(DateFormat("dd MMM || hh:MM")
                          .format(post.createdAt ?? DateTime.now())),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ReuseableText(
                    post.desc ?? "",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  PostAttachmentWidget(
                    postFiles: post.files,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      PostReactionWidget(
                        reactions: post.postReactions,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      ReuseableText("${post.comments.length} comments"),
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
