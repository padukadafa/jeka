import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/community/data/models/post.dart';
import 'package:jeka/features/community/domain/usecases/like_post_usecase.dart';

class PostReactionWidget extends StatefulWidget {
  final Post post;
  const PostReactionWidget({
    super.key,
    required this.post,
  });

  @override
  State<PostReactionWidget> createState() => _PostReactionWidgetState();
}

class _PostReactionWidgetState extends State<PostReactionWidget> {
  late int likesCount;

  @override
  void initState() {
    super.initState();
    likesCount = widget.post.likesCount;
  }

  Future<void> _handleLike() async {
    if (widget.post.id == null) return;

    

    try {
      await getIt<LikePostUsecase>().call(widget.post.id!);
      setState(() {
        likesCount += 1;
      });
    } catch (e) {
      setState(() {
        likesCount -= 1;
      });
      debugPrint("Failed to like post: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: _handleLike,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
            ReuseableText(likesCount.toString()),
            const SizedBox(width: 4),
            const FaIcon(
              FontAwesomeIcons.solidThumbsUp,
              size: 16,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
