import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/common/pages/home/controller/home_controller.dart';
import 'package:jeka/common/pages/home/cubit/home_cubit.dart';
import 'package:jeka/common/pages/home/cubit/home_state_wrapper.dart';
import 'package:jeka/common/widgets/app_layout.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: HomeStateWrapper(
        controller: controller,
        child: Scaffold(
          bottomNavigationBar: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return BottomNavigationBar(
                items: controller.bottomNavbarItems,
                currentIndex: state.pageIndex,
                onTap: controller.onPageChange,
                unselectedItemColor: Theme.of(context).colorScheme.onSurface,
                selectedItemColor: Theme.of(context).colorScheme.primary,
              );
            },
          ),
          body: PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChange,
            children: controller.pages,
          ),
        ),
      ),
    );
  }
}
