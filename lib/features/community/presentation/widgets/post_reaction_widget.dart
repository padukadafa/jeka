import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/community/data/models/post.dart';

class PostReactionWidget extends StatelessWidget {
  final List<PostReaction> reactions;
  const PostReactionWidget({
    super.key,
    required this.reactions,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ReuseableText(
            reactions
                .where((reaction) => reaction.reaction == 0)
                .length
                .toString(),
          ),
          const SizedBox(
            width: 4,
          ),
          const FaIcon(
            FontAwesomeIcons.solidThumbsUp,
            size: 16,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
