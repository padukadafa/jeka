import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:jeka/common/pages/home/controller/home_controller.dart';
import 'package:jeka/common/pages/home/cubit/home_cubit.dart';
import 'package:jeka/common/pages/home/cubit/home_state_wrapper.dart';
import 'package:jeka/common/widgets/menu_drawer.dart';
import 'package:toastification/toastification.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((v) {
      toastification.show(
        context: context,
        title: const Text('Hi, this app is under development'),
        autoCloseDuration: const Duration(seconds: 5),
        style: ToastificationStyle.fillColored,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeStateWrapper(
      controller: controller,
      child: Scaffold(
        key: controller.scaffoldKey,
        bottomNavigationBar: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return BottomNavigationBar(
              items: controller.bottomNavbarItems,
              currentIndex: state.pageIndex,
              onTap: controller.changePage,
              showSelectedLabels: false,
              unselectedItemColor: Theme.of(context).colorScheme.onSurface,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
            );
          },
        ),
        body: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: controller.pages,
        ),
        drawer: const MenuDrawer(),
      ),
    );
  }
}
