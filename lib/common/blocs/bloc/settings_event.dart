part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.themeChanged(ThemeMode theme) =
      SettingsThemeChanged;
}
