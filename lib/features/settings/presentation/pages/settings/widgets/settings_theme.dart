import 'package:flutter/material.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_selector.dart';
import 'package:jeka/features/settings/presentation/pages/settings/widgets/settings_theme_item.dart';

class SettingsTheme extends StatelessWidget {
  const SettingsTheme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ReuseableText(
          "Theme",
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        const SizedBox(
          height: 8,
        ),
        SettingsThemeSelector(
          builder: (theme) {
            return Container(
              padding: const EdgeInsets.all(8),
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
              child: Row(
                children: [
                  SettingsThemeItem(
                    currentTheme: theme,
                    theme: ThemeMode.dark,
                    title: "Dark",
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SettingsThemeItem(
                    currentTheme: theme,
                    theme: ThemeMode.light,
                    title: "Light",
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SettingsThemeItem(
                    currentTheme: theme,
                    theme: ThemeMode.system,
                    title: "System",
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
