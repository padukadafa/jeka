import 'package:auto_route/auto_route.dart';
import 'package:jeka/common/pages/home/home_page.dart';
import 'package:jeka/common/pages/loading/loading_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: LoadingRoute.page, initial: true),
        AutoRoute(page: OnBoardingRoute.page),
      ];
}
