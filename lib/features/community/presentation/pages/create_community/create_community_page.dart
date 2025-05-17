import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/di.dart';
import 'package:jeka/features/community/data/repository/community_repository.dart';
import 'package:jeka/features/community/presentation/pages/create_community/create_community_detail.dart';
import 'package:jeka/features/community/presentation/pages/create_community/create_community_rules.dart';
import 'package:jeka/features/community/presentation/pages/create_community/create_community_types.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_cubit.dart';
import 'package:jeka/features/community/presentation/pages/create_community/cubit/create_community_selector.dart';

@RoutePage()
class CreateCommunityPage extends StatelessWidget {
  final pageController = PageController();
  CreateCommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Scaffold(
        appBar: ReuseableAppBar(context: context),
        body: BlocProvider(
          create: (context) =>
              CreateCommunityCubit(getIt.get<CommunityRepository>()),
          child: Column(
            children: [
              CreateCommunityPageView(pageController: pageController),
              CreateCommunityNextButton(pageController: pageController),
            ],
          ),
        ),
      ),
    );
  }
}

class CreateCommunityPageView extends StatelessWidget {
  const CreateCommunityPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final createCommunityCubit = context.read<CreateCommunityCubit>();

    return Expanded(
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          createCommunityCubit.changePage(index);
        },
        scrollDirection: Axis.horizontal,
        children: const [
          CreateCommunityTypes(),
          CreateCommunityDetail(),
          CreateCommunityRules(),
        ],
      ),
    );
  }
}

class CreateCommunityNextButton extends StatelessWidget {
  const CreateCommunityNextButton({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final createCommunityCubit = context.read<CreateCommunityCubit>();
    return PageCreateCommunitySelector(
      builder: (page) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: () {
              if (page == 0) {
                if (createCommunityCubit.state.types.isEmpty) {
                  EasyLoading.showError("Please select min 1 types");
                  return;
                }
              }
              if (page == 1) {
                if (createCommunityCubit.state.logo == null) {
                  EasyLoading.showError("Please add logo");
                  return;
                }
                if (createCommunityCubit.state.name == null ||
                    createCommunityCubit.state.name!.isEmpty) {
                  EasyLoading.showError("Please add community name");
                  return;
                }
                if (createCommunityCubit.state.province == null ||
                    createCommunityCubit.state.province!.isEmpty) {
                  EasyLoading.showError("Please add province");
                  return;
                }
                if (createCommunityCubit.state.regency == null ||
                    createCommunityCubit.state.regency!.isEmpty) {
                  EasyLoading.showError("Please add Regency");
                  return;
                }
                if (createCommunityCubit.state.desc == null ||
                    createCommunityCubit.state.desc!.isEmpty) {
                  EasyLoading.showError("Please add Community Description");
                  return;
                }
              }
              if (page == 2) {
                if (createCommunityCubit.state.rules.length < 2) {
                  EasyLoading.showError("Please add min 2 rules");
                  return;
                }
                createCommunityCubit.createCommunity(context);
                return;
              }
              pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            },
            child: Text(page == 2 ? "Create" : "Next"),
          ),
        );
      },
    );
  }
}
