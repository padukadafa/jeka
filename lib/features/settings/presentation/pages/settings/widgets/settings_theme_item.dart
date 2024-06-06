import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/common/widgets/reuseable_text.dart';
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_bloc.dart';

class SettingsThemeItem extends StatelessWidget {
  const SettingsThemeItem({
    super.key,
    required this.theme,
    required this.currentTheme,
    required this.title,
  });
  final ThemeMode theme;
  final ThemeMode currentTheme;
  final String title;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final settingsBloc = context.read<SettingsBloc>();

    return Expanded(
      child: GestureDetector(
        onTap: () {
          settingsBloc.add(SettingsThemeChanged(theme));
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: currentTheme == theme
                ? colorScheme.primary.withOpacity(0.1)
                : null,
            borderRadius: BorderRadius.circular(4),
          ),
          height: 38,
          child: ReuseableText(title),
        ),
      ),
    );
  }
}
