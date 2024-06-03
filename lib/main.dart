import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:jeka/common/blocs/bloc/settings_selector.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/core/theme/theme.dark.dart';
import 'package:jeka/core/theme/theme.light.dart';
import 'package:jeka/di.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 3));
  await configureDependencies();
  FlutterNativeSplash.remove();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalBlocProviders(
      child: SettingsThemeSelector(
        builder: (theme) {
          return MaterialApp.router(
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            darkTheme: darkTheme,
            themeMode: theme,
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}
