import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_bloc.dart';
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_selector.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_item.dart';

class SettingsGeneral extends StatelessWidget {
  const SettingsGeneral({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final SettingsBloc settingsBloc = context.read<SettingsBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ReuseableText(
          "General",
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
              SettingsNotificationSelector(
                builder: (isShowStatus) {
                  return SettingsItem(
                    icon: FontAwesomeIcons.solidBell,
                    title: "Notifications",
                    trailing: Switch(
                      value: isShowStatus,
                      onChanged: (_) =>
                          settingsBloc.add(const ToggleNotification()),
                    ),
                  );
                },
              ),
              SettingsLanguageSelector(
                builder: (lang) {
                  return SettingsItem(
                    icon: FontAwesomeIcons.language,
                    title: "Language",
                    trailing: DropdownButton(
                      value: lang,
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(
                          value: "en",
                          child: Text("English"),
                        ),
                        DropdownMenuItem(
                          value: "id",
                          child: Text("Indonesia"),
                        ),
                      ],
                      onChanged: (val) {
                        if (val != null) {
                          settingsBloc.add(SetLanguage(val));
                        }
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
