import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jeka/features/settings/presentation/blocs/bloc/settings_bloc.dart';

class SettingsSelector<T> extends BlocSelector<SettingsBloc, SettingsState, T> {
  SettingsSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(
          builder: (_, value) => builder(value),
        );
}

class SettingsThemeSelector extends SettingsSelector<ThemeMode> {
  SettingsThemeSelector({
    super.key,
    required super.builder,
  }) : super(
          selector: (state) => state.theme,
        );
}

class SettingsNotificationSelector extends SettingsSelector<bool> {
  SettingsNotificationSelector({super.key, required super.builder})
      : super(
          selector: (state) => state.isShowNotification,
        );
}

class SettingsLanguageSelector extends SettingsSelector<String> {
  SettingsLanguageSelector({super.key, required super.builder})
      : super(
          selector: (state) => state.language,
        );
}

class SettingsPrivateSelector extends SettingsSelector<bool> {
  SettingsPrivateSelector({super.key, required super.builder})
      : super(
          selector: (state) => state.isPrivate,
        );
}
