import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/avatars/avatar.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/community/data/data_source/remote/community_remote_data_source.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewCommunity extends StatelessWidget {
  const NewCommunity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 16,
            top: 16,
          ),
          alignment: Alignment.centerLeft,
          child: const Text("New Community"),
        ),
        const SizedBox(
          height: 12,
        ),
        FutureBuilder(
          future: getIt<CommunityRemoteDataSource>().getNewCommunities(6),
          builder: (context, snapshot) {
            final data = snapshot.data;
            return Skeletonizer(
              enabled: data == null,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    data?.length ?? 4,
                    (index) {
                      return GestureDetector(
                        onTap: () {
                          if (data?[index] != null) {
                            context.router.push(
                                CommunityDetailRoute(community: data![index]));
                          }
                        },
                        child: Container(
                          width: 60,
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              Avatar(
                                url: data?[index].logo,
                              ),
                              ReuseableText(
                                data?[index].name ?? "",
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
