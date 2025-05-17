import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/features/auth/presentation/blocs/bloc/auth_bloc.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_item.dart';

class SettingsLogout extends StatelessWidget {
  const SettingsLogout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final authBloc = context.read<AuthBloc>();
    return Container(
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
      child: SettingsItem(
        icon: FontAwesomeIcons.rightFromBracket,
        title: "Logout",
        onTap: () {
          authBloc.add(Logout(context));
        },
      ),
    );
  }
}
