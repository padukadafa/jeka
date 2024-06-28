import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_selector.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/core/theme/theme.dark.dart';
import 'package:jeka/core/theme/theme.light.dart';
import 'package:jeka/di.dart';
import 'package:jeka/init.dart';
import 'package:appflowy_editor/appflowy_editor.dart';
import 'package:toastification/toastification.dart';

void main() async {
  await init();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: GlobalBlocProviders(
        child: SettingsThemeSelector(
          builder: (theme) {
            return MaterialApp.router(
              theme: lightTheme,
              debugShowCheckedModeBanner: false,
              darkTheme: darkTheme,
              localizationsDelegates: const [
                AppFlowyEditorLocalizations.delegate,
              ],
              themeMode: theme,
              routerConfig: _appRouter.config(),
              builder: EasyLoading.init(),
            );
          },
        ),
      ),
    );
  }
}
