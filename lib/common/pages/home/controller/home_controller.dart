import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/pages/home/cubit/home_cubit.dart';
import 'package:jeka/features/chat/presentation/pages/chat/chat_page.dart';
import 'package:jeka/features/community/presentation/pages/community/community_page.dart';
import 'package:jeka/features/notification/presentation/pages/notification/notification_page.dart';
import 'package:jeka/features/search/presentation/pages/search/search_page.dart';
import 'package:jeka/features/user/presentation/pages/user/user_page.dart';

class HomeController {
  late BuildContext context;
  final pageController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late HomeCubit cubit;

  final List<BottomNavigationBarItem> bottomNavbarItems = [
    BottomNavigationBarItem(
      icon: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        width: 24,
        height: 24,
      ),
      label: "Home",
    ),
    const BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.message),
      label: "Chat",
      activeIcon: FaIcon(FontAwesomeIcons.solidMessage),
    ),
    const BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
      label: "Search",
    ),
    const BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.bell),
      label: "Notifications",
      activeIcon: FaIcon(FontAwesomeIcons.solidBell),
    ),
    const BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.user),
      label: "Chat",
      activeIcon: FaIcon(FontAwesomeIcons.solidUser),
    ),
  ];
  List<Widget> get pages => [
        CommunityPage(
          onOpenDrawer: onOpenDrawer,
        ),
        const ChatPage(),
        const SearchPage(),
        const Notificationpage(),
        const UserPage(),
      ];
  updateContext(BuildContext context) {
    this.context = context;
    cubit = context.read<HomeCubit>();
  }

  onPageChange(int index) {
    cubit.changePage(index);
  }

  changePage(int index) async {
    pageController.jumpToPage(index);
    onPageChange(index);
  }

  onOpenDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }
}
