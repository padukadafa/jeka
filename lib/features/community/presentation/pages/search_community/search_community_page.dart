import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/constants.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/community/data/data_source/local/communirt_local_data_source.dart';
import 'package:jeka/features/community/presentation/widgets/new_community.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class SearchCommunityPage extends StatefulWidget {
  const SearchCommunityPage({super.key});

  @override
  State<SearchCommunityPage> createState() => _SearchCommunityPageState();
}

class _SearchCommunityPageState extends State<SearchCommunityPage> {
  final searchController = TextEditingController();
  bool _showSearch = false;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    if (_showSearch) {
      return AppLayout(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: colorScheme.surfaceBright,
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.shadow,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        searchController.clear();

                        setState(() {
                          _showSearch = false;
                        });
                      },
                      icon: const FaIcon(FontAwesomeIcons.xmark),
                    ),
                    Expanded(
                      child: TextFormField(
                        autofocus: true,
                        onFieldSubmitted: (v) async {
                          getIt<CommunityLocalDataSource>().addRecentSearch(v);

                          await context.router
                              .push(SearchCommunityResultRoute(query: v));
                          setState(() {});
                        },
                        controller: searchController,
                        decoration: const InputDecoration(
                          hintText: "Search Community",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SearchCommunityRecent(),
            ],
          ),
        ),
      );
    }
    return AppLayout(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.router.maybePop();
                  },
                  icon: const FaIcon(FontAwesomeIcons.chevronLeft),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showSearch = true;
                      });
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      margin: const EdgeInsets.only(right: 24),
                      padding: const EdgeInsets.only(left: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: colorScheme.shadow),
                        color: colorScheme.surfaceBright,
                      ),
                      child: const ReuseableText(
                        "Search Community",
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SearchCommunityRecent(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: AppConstants.communityTypes.map(
                  (type) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          context.router
                              .push(SearchCommunityResultRoute(type: type));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: colorScheme.shadow),
                          ),
                          child: Text(type),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            NewCommunity(),
          ],
        ),
      ),
    );
  }
}

class SearchCommunityRecent extends StatefulWidget {
  const SearchCommunityRecent({
    super.key,
  });

  @override
  State<SearchCommunityRecent> createState() => _SearchCommunityRecentState();
}

class _SearchCommunityRecentState extends State<SearchCommunityRecent> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return FutureBuilder<List<String>>(
        future: getIt<CommunityLocalDataSource>().getRecentSearch(4),
        builder: (context, snapshot) {
          if (snapshot.data?.isEmpty ?? true) {
            return const SizedBox();
          }
          return Skeletonizer(
            enabled: !snapshot.hasData,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                  ),
                  alignment: Alignment.centerLeft,
                  child: const Text("Your recent search"),
                ),
                Column(
                  children: List.generate(
                    snapshot.data?.length ?? 2,
                    (index) {
                      return ListTile(
                        onTap: () async {
                          if (snapshot.data?[index] != null) {
                            await context.router.push(
                                SearchCommunityResultRoute(
                                    query: snapshot.data?[index]));
                            getIt<CommunityLocalDataSource>()
                                .addRecentSearch(snapshot.data![index]);
                            setState(() {});
                          }
                        },
                        leading: FaIcon(
                          FontAwesomeIcons.clockRotateLeft,
                          size: 21,
                          color: colorScheme.shadow,
                        ),
                        title: ReuseableText(
                          snapshot.data?[index] ?? "",
                          fontSize: 14,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
