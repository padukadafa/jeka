import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/common/widgets/avatars/user_avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/community/presentation/bloc/community_bloc.dart';

@RoutePage()
class CommunityMemberPage extends StatelessWidget {
  const CommunityMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<CommunityBloc, CommunityState>(
          builder: (context, state) {
            return Column(
              children: [
                Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.all(12),
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
                        "Organizer",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      Column(
                        children: (state.community?.members
                                    .where((val) => val.role != "member") ??
                                [])
                            .map(
                          (member) {
                            return ListTile(
                              minLeadingWidth: 0,
                              contentPadding: EdgeInsets.all(0),
                              leading: UserAvatar(
                                uid: member.userId,
                                size: 35,
                              ),
                              title: Text(member.name ?? ""),
                              trailing: ReuseableText(
                                member.role ?? "Admin",
                                fontSize: 14,
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(16),
                  width: double.maxFinite,
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
                        "Member",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      Column(
                        children: (state.community?.members
                                    .where((val) => val.role == "member") ??
                                [])
                            .map(
                          (member) {
                            return ListTile(
                              leading: UserAvatar(
                                uid: member.userId,
                                size: 35,
                              ),
                              title: Text(member.name ?? ""),
                              trailing: ReuseableText(
                                member.role ?? "Member",
                                fontSize: 14,
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
