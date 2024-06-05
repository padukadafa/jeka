import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/core/constants.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadingController {
  init(BuildContext context) {
    WidgetsBinding.instance.scheduleFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 300));
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      final auth = FirebaseAuth.instance;
      EasyLoading.instance.errorWidget = const FaIcon(
        FontAwesomeIcons.triangleExclamation,
        color: Colors.white,
        size: 50,
      );
      if (auth.currentUser != null) {
        context.read<AuthBloc>().add(const UpdateUser());
        context.router.replaceAll([HomeRoute()]);
        return;
      }
      if (!(sharedPreferences.getBool(AppConstants.ONBOARDING_STATUS) ??
          false)) {
        context.router.replaceAll([OnBoardingRoute()]);
        return;
      }
      context.router.replaceAll([LoginRoute()]);
      return;
    });
  }
}
