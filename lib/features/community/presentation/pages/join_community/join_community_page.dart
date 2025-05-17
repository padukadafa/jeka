import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/avatars/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/community/data/models/community.dart';
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart';

@RoutePage()
class JoinCommunityPage extends StatelessWidget {
  final Community community;
  const JoinCommunityPage({super.key, required this.community});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final communityBloc = context.read<CommunityBloc>();
    return Scaffold(
      appBar: ReuseableAppBar(
        context: context,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 16),
                    child: const ReuseableText(
                      "Community Rules",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: community.rules.map((val) {
                        return Container(
                          margin: const EdgeInsets.only(top: 12),
                          decoration: BoxDecoration(
                            border: Border.all(color: colorScheme.shadow),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(
                            title: Text(val),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.surfaceBright,
              boxShadow: [
                BoxShadow(
                  color: colorScheme.shadow,
                  offset: const Offset(0, -2),
                )
              ],
            ),
            child: Column(
              children: [
                const ReuseableText(
                    "with join this community you agree with the community rules"),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      communityBloc
                          .add(JoinCommunity(community.id!, onDone: (c) {
                        context.router.maybePop<Community>(c);
                      }));
                    },
                    child: const Text("Join community"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
