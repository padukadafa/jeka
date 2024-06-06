import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/pages/about/about_page.dart';
import 'package:jeka/common/pages/community_guidelines/community_guidelines_page.dart';
import 'package:jeka/common/pages/faq/faq_page.dart';
import 'package:jeka/common/pages/home/home_page.dart';
import 'package:jeka/common/pages/loading/loading_page.dart';
import 'package:jeka/common/pages/onboarding/onboarding_page.dart';
import 'package:jeka/common/pages/rules_and_agreement/rules_and_agreement_page.dart';
import 'package:jeka/features/auth/presentation/pages/forgot_password/forgot_password_page.dart';
import 'package:jeka/features/auth/presentation/pages/login/login_page.dart';
import 'package:jeka/features/auth/presentation/pages/register/register_page.dart';
import 'package:jeka/features/settings/presentation/pages/settings/settings_page.dart';
import 'package:jeka/features/user/presentation/pages/change_password/change_password_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoadingRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: OnBoardingRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: ForgotPasswordRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: ChangePasswordRoute.page),
        AutoRoute(page: AboutRoute.page),
        AutoRoute(page: RulesAndAgreementRoute.page),
        AutoRoute(page: CommunityGuidelinesRoute.page),
        AutoRoute(page: FAQRoute.page),
      ];
}
