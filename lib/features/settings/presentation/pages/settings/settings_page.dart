import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/app_bar.dart';
import 'package:jeka/common/widgets/app_layout.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_account.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_general.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_logout.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_support.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_theme.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_user_detail.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppLayout(
      child: Scaffold(
        backgroundColor: colorScheme.surfaceBright,
        appBar: ReuseableAppBar(
          context: context,
          title: const Text("Settings"),
          showBackButton: true,
          backgroundColor: colorScheme.surfaceBright,
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SettingsUserDetail(),
                SizedBox(
                  height: 12,
                ),
                SettingsGeneral(),
                SizedBox(
                  height: 12,
                ),
                SettingsTheme(),
                SizedBox(
                  height: 12,
                ),
                SettingsAccount(),
                SizedBox(
                  height: 12,
                ),
                SettingsSupport(),
                SizedBox(
                  height: 22,
                ),
                SettingsLogout(),
                SizedBox(
                  height: 22,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
