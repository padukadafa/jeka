import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatars/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart';
import 'package:jeka/features/community/presentation/pages/community_member/community_member_page.dart';

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
          backgroundColor: colorScheme.surface,

          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
          //   ),
          // ],
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: community.types.map(
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
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.locationDot,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            ReuseableText(community.regency ?? ""),
                          ],
                        ),
                        Visibility(
                          visible: community.instagram != null,
                          child: Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.instagram,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              ReuseableText(community.instagram ?? ""),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: community.xTwitter != null,
                          child: Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.xTwitter,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              ReuseableText(community.xTwitter ?? ""),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.user,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            ReuseableText(
                                "${community.members.length} members"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    JoinCommunityStatus(
                      community: community,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReuseableText(
                      "About Community",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    HtmlWidget(community.desc),
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
                    // const CommunityUpcomingEvent(),s
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
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              children: [
                                SizedBox(
                                  height: 24,
                                ),
                                Expanded(child: CommunityMemberPage()),
                              ],
                            );
                          },
                        );
                      },
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
                      trailing: ReuseableText(
                        community.members.length.toString(),
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

class JoinCommunityStatus extends StatelessWidget {
  final Community community;
  const JoinCommunityStatus({
    super.key,
    required this.community,
  });

  @override
  Widget build(BuildContext context) {
    final auth = getIt<FirebaseAuth>();
    print(community.membersId);
    if (community.membersId.contains(auth.currentUser?.uid)) {
      return SizedBox(
        width: double.maxFinite,
        child: ElevatedButton(
          onPressed: () async {
            context
                .read<CommunityBloc>()
                .add(LeaveCommunity(context, community.id!, onDone: (v) {
                  context
                      .read<CommunityBloc>()
                      .add(UpdateCommunityList(context));
                  context.router.replace(CommunityDetailRoute(community: v));
                }));
          },
          child: const Text("Leave"),
        ),
      );
    }
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () async {
          final response = await context.router
              .push<Community>(JoinCommunityRoute(community: community));
          if (response != null) {
            context.read<CommunityBloc>().add(UpdateCommunityList(context));
            context.router.replaceAll([HomeRoute()]);
          }
        },
        child: const Text("Join"),
      ),
    );
  }
}
