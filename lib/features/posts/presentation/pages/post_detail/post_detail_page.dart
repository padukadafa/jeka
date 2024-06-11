import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_selector.dart';
import 'package:jeka/features/generative_text_editor/presentation/generative_text_editor/generative_text_viewer.dart';
import 'package:jeka/features/posts/data/models/post.dart';

@RoutePage()
class PostDetailPage extends StatelessWidget {
  final Post post;
  const PostDetailPage({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Scaffold(
        appBar: ReuseableAppBar(
          context: context,
          showBackButton: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.ellipsisVertical,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Text(
                      post.title,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Avatar(
                          size: 45,
                          url: post.creator.imageProfileUrl,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ReuseableText(
                                  post.creator.name ?? "",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.all(5),
                                    minimumSize: Size.zero,
                                  ),
                                  child: const ReuseableText(
                                    "Follow",
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            ReuseableText(
                              DateFormat("d MM, yyyy").format(
                                post.creator.createdAt ?? DateTime.now(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              UserAuthSelector(
                builder: (user) {
                  if (user?.desc != null) {
                    return GenerativeTextViewer(user!.desc!);
                  }
                  return const SizedBox();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
