import 'package:flutter/material.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/community/data/data_source/remote/community_remote_data_source.dart';
import 'package:jeka/features/community/data/models/post.dart';
import 'package:jeka/features/community/presentation/bloc/community_selector.dart';
import 'package:jeka/features/community/presentation/pages/community_feed/widgets/community_feed_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CommunityFeedPage extends StatefulWidget {
  const CommunityFeedPage({super.key});

  @override
  State<CommunityFeedPage> createState() => _CommunityFeedPageState();
}

class _CommunityFeedPageState extends State<CommunityFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: CurrentCommunitySelector(
          builder: (community) {
            return FutureBuilder<List<Post>>(
              future: getIt<CommunityRemoteDataSource>()
                  .getPosts(community?.id ?? ""),
              builder: (context, snapshot) {
                final data = snapshot.data;
                return Skeletonizer(
                  enabled: !snapshot.hasData,
                  child: RefreshIndicator(
                    onRefresh: () async {
                      setState(() {});
                    },
                    child: ListView.builder(
                      itemCount: data?.length ?? 4,
                      itemBuilder: (context, index) {
                        return CommunityFeedItem(
                          post: data?[index] ?? const Post(),
                        );
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
