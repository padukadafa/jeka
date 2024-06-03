import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/common/blocs/bloc/settings_bloc.dart';
import 'package:jeka/common/widgets/app_bar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsBloc = context.read<SettingsBloc>();
    return Scaffold(
      appBar: ReuseableAppBar(
        context: context,
        title: const Text("Something"),
        showBackButton: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                settingsBloc.add(const SettingsThemeChanged(ThemeMode.dark));
              },
              child: const Text("Dark"),
            ),
            ElevatedButton(
              onPressed: () {
                settingsBloc.add(const SettingsThemeChanged(ThemeMode.light));
              },
              child: const Text("Light"),
            ),
            ElevatedButton(
              onPressed: () {
                settingsBloc.add(const SettingsThemeChanged(ThemeMode.system));
              },
              child: const Text("System"),
            ),
          ],
        ),
      ),
    );
  }
}
