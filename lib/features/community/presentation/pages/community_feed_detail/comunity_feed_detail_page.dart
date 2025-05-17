import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatars/avatar.dart';
import 'package:jeka/common/widgets/avatars/user_avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/community/data/models/post.dart';
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart';
import 'package:jeka/features/community/presentation/widgets/post_attachment_widget.dart';
import 'package:jeka/features/community/presentation/widgets/post_item_type.dart';
import 'package:jeka/features/community/presentation/widgets/post_reaction_widget.dart';

@RoutePage()
class CommunityFeedDetailPage extends StatefulWidget {
  final Post post;
  const CommunityFeedDetailPage({super.key, required this.post});

  @override
  State<CommunityFeedDetailPage> createState() =>
      _CommunityFeedDetailPageState();
}

class _CommunityFeedDetailPageState extends State<CommunityFeedDetailPage> {
  bool _showCommentFiled = false;
  final commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final communityBloc = context.read<CommunityBloc>();

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
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: colorScheme.surfaceBright,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PostItemType(type: widget.post.postType),
                        Divider(
                          color: colorScheme.surface,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      UserAvatar(
                                        size: 35,
                                        uid: widget.post.writerId,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      ReuseableText(widget.post.writer ?? ""),
                                    ],
                                  ),
                                  ReuseableText(DateFormat("dd MMM || hh:MM")
                                      .format(widget.post.createdAt ??
                                          DateTime.now())),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              ReuseableText(
                                widget.post.desc ?? "",
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              PostAttachmentWidget(
                                  postFiles: widget.post.files),
                              const SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: colorScheme.surface,
                  ),
                  CommunityWidgetComments(post: widget.post),
                  ListTile(
                    onTap: () {
                      setState(() {
                        _showCommentFiled = true;
                      });
                    },
                    leading: const Avatar(
                      size: 35,
                    ),
                    title: const ReuseableText(
                      "Write a comment...",
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Visibility(
                visible: _showCommentFiled,
                child: Column(
                  children: [
                    Expanded(child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showCommentFiled = false;
                        });
                      },
                    )),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceBright,
                        boxShadow: [
                          BoxShadow(
                            color: colorScheme.shadow,
                            offset: const Offset(0, -2),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: colorScheme.shadow),
                              ),
                              child: TextFormField(
                                controller: commentController,
                                autofocus: true,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 12),
                                  hintText: "Comment...",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              communityBloc.add(
                                CreatePostComment(
                                  context,
                                  PostComment(
                                    comment: commentController.text,
                                    createdAt: DateTime.now(),
                                  ),
                                  widget.post,
                                  onDone: (p) {
                                    commentController.clear();
                                    context.router.replace(
                                      CommunityFeedDetailRoute(post: p),
                                    );
                                  },
                                ),
                              );
                            },
                            child: const ReuseableText("Send"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CommunityWidgetComments extends StatelessWidget {
  final Post post;
  const CommunityWidgetComments({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        post.comments.length,
        (index) {
          return ListTile(
            leading: UserAvatar(
              size: 35,
              uid: post.comments[index].writerId,
            ),
            title: ReuseableText(
              post.comments[index].writer ?? "",
              fontSize: 12,
              color: Colors.grey,
            ),
            subtitle: ReuseableText(
              post.comments[index].comment ?? "",
            ),
          );
        },
      ),
    );
  }
}
