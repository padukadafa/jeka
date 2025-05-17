import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/core/router/app_router.dart';
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_bloc.dart';
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_selector.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_item.dart';

class SettingsAccount extends StatelessWidget {
  const SettingsAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final settingsBloc = context.read<SettingsBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ReuseableText(
          "Account",
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: colorScheme.surfaceBright,
            boxShadow: [
              BoxShadow(
                color: colorScheme.shadow,
                blurRadius: 2,
              )
            ],
          ),
          child: Column(
            children: [
              SettingsItem(
                icon: FontAwesomeIcons.key,
                title: "Change Password",
                onTap: () {
                  context.router.push(ChangePasswordRoute());
                },
              ),
              SettingsPrivateSelector(
                builder: (isPrivate) {
                  return SettingsItem(
                    icon: FontAwesomeIcons.lock,
                    title: "Private Account",
                    trailing: Switch(
                      value: isPrivate,
                      onChanged: (_) {
                        settingsBloc.add(const TogglePrivate());
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
