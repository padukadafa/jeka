import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:flutter_quill_delta_from_html/flutter_quill_delta_from_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/avatars/avatar.dart';
import 'package:jeka/common/widgets/avatars/community_logo.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/community/data/data_source/remote/community_remote_data_source.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class SearchCommunityResultPage extends StatelessWidget {
  final String? query;
  final String? type;
  const SearchCommunityResultPage({super.key, this.query, this.type});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        appBar:
            ReuseableAppBar(context: context, title: Text(query ?? type ?? "")),
        body: FutureBuilder(
          future: (query != null
              ? getIt<CommunityRemoteDataSource>().searchCommunity(query!)
              : getIt<CommunityRemoteDataSource>()
                  .searchCommunityByType(type!)),
          builder: (context, snapshot) {
            final data = snapshot.data;
            return ListView.builder(
              itemCount: data?.length ?? 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (data?[index] != null) {
                      context.router
                          .push(CommunityDetailRoute(community: data![index]));
                    }
                  },
                  child: Skeletonizer(
                    enabled: data == null,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 24),
                      decoration: BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide(color: colorScheme.shadow),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  runSpacing: 2,
                                  children: (data?[index].types ?? []).map(
                                    (f) {
                                      return Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 2,
                                        ),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 2),
                                        decoration: BoxDecoration(
                                          color: colorScheme.primary,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: ReuseableText(
                                          f,
                                          color: colorScheme.onPrimary,
                                          fontSize: 12,
                                        ),
                                      );
                                    },
                                  ).toList(),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                ReuseableText(
                                  data?[index].name ?? "",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.locationDot,
                                        size: 12),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    ReuseableText(
                                      data?[index].regency ?? "",
                                      color: Colors.grey,
                                      fontSize: 12,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                ReuseableText(
                                  Document.fromDelta(
                                          HtmlToDelta().convert(
                                          data?[index].desc ?? "<br>something",transformTableAsEmbed: true))
                                      .toPlainText()
                                      .trim(),
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                          CommunityLogo(
                            uid: data?[index].id,
                          ),
                        ],
                      ),
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
